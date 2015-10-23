package ue4hx.internal;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type;
using haxe.macro.TypeTools;
using Lambda;
using StringTools;

/**
  Represents a Haxe type whose glue code will be generated. Contains all the information
  on how to generate the glue code for the type

  @see TypeConvInfo
 **/
@:forward abstract TypeConv(TypeConvInfo) from TypeConvInfo
{
  public var haxeGlueType(get,never):TypeRef;
  public var glueType(get,never):TypeRef;

  inline function new(obj)
    this = obj;

  inline function underlying()
    return this;

  public function hasTypeParams():Bool {
    return this.isTypeParam || (this.args != null && this.args.exists(function(v) return v.hasTypeParams()));
  }

  public function haxeToGlue(expr:String, ctx:Map<String,String>)
  {
    if (this.haxeToGlueExpr == null)
      return expr;
    return expand(this.haxeToGlueExpr, expr, ctx);
  }

  public function glueToHaxe(expr:String, ctx:Map<String,String>)
  {
    if (this.glueToHaxeExpr == null)
      return expr;
    return expand(this.glueToHaxeExpr, expr, ctx);
  }

  public function glueToUe(expr:String, ctx:Map<String,String>) {
    if (this.glueToUeExpr == null)
      return expr;
    return expand(this.glueToUeExpr, expr, ctx);
  }

  public function ueToGlue(expr:String, ctx:Map<String,String>) {
    if (this.ueToGlueExpr == null)
      return expr;
    return expand(this.ueToGlueExpr, expr, ctx);
  }

  public function getAllCppIncludes(map:Map<String, String>) {
    if (this.glueCppIncludes != null) {
      for (incl in this.glueCppIncludes)
        map[incl] = incl;
    }
    if (this.args != null) {
      for (arg in this.args) {
        arg.getAllCppIncludes(map);
      }
    }
  }

  public function getAllHeaderIncludes(map:Map<String, String>) {
    if (this.glueHeaderIncludes != null) {
      for (incl in this.glueHeaderIncludes)
        map[incl] = incl;
    }
    if (this.args != null) {
      for (arg in this.args) {
        arg.getAllHeaderIncludes(map);
      }
    }
  }

  static function expand(expr:String, ethis:String, ctx:Map<String,String>) {
    var buf = new StringBuf();
    var i = -1, len = expr.length;
    while(++i < len) {
      switch(expr.fastCodeAt(i)) {
      case '%'.code:
        buf.add(ethis);
      case '$'.code:
        var next = expr.fastCodeAt(i+1);
        if (next == '$'.code) {
          i++;
          buf.addChar('$'.code);
        } else {
          var start = i;
          while (++i < len) {
            var chr = expr.fastCodeAt(i);
            if (!((chr >= 'a'.code && chr <= 'z'.code) || (chr >= 'A'.code && chr <= 'Z'.code)))
              break;
          }
          var data = ctx == null ? null : ctx[expr.substring(start + 1,i)];
          buf.add(data);
        }
      case chr:
        buf.addChar(chr);
      }
    }
    return buf.toString();
  }

  private static function typeIsUObject(t:Type) {
    var uobj = Globals.cur.uobject;
    if (uobj == null) {
      Globals.cur.uobject = uobj = Context.getType('unreal.UObject');
    }
    return Context.unify(t, uobj);
  }

  private function get_haxeGlueType():TypeRef {
    return this.haxeGlueType != null ? this.haxeGlueType : this.haxeType;
  }

  private function get_glueType():TypeRef {
    return this.glueType != null ? this.glueType : this.ueType;
  }

  private static function getTypeCtx(type:Type, pos:Position):TypeConvCtx {
    // we'll loop until we find a type we're interested in
    // when found, we'll get its name, type parameters and
    // if it's a class, its meta too
    var originalType = null;
    while(true) {
      switch(type) {
      case TInst(iref,tl):
        var it = iref.get();
        var name = iref.toString();
        var native = getMetaString(it.meta, ':native');
        if (native != null)
          name = native;
        return {
          name: name,
          args: tl,
          meta: it.meta,

          superClass: it.superClass,
          baseType: it,
          isUObject: TypeConv.typeIsUObject(type),
          originalType: originalType,
          isTypeParam: it.kind.match(KTypeParameter(_)),
        };

      case TEnum(eref,tl):
        var e = eref.get();
        return {
          name: eref.toString(),
          args: tl,
          meta: e.meta,
          isEnum: true,

          baseType: e,
          originalType: originalType
        }

      case TAbstract(aref,tl):
        var at = aref.get();
        if (at.meta.has(':coreType') || at.meta.has(':unrealType'))
        {
          return {
            name: aref.toString(),
            args: tl,
            meta: at.meta,

            baseType: at,
            isBasic: true,
            originalType: originalType
          }
        }
        if (originalType == null)
          originalType = at;
        // follow it
#if (haxe_ver >= 3.3)
        // this is more robust than the 3.2 version, since it will also correctly
        // follow @:multiType abstracts
        type = type.followWithAbstracts(true);
#else
        type = at.type.applyTypeParameters(at.params, tl);
#end

      case TType(tref,tl):
        var t = tref.get();
        if (t.meta.has(':unrealType'))
        {
          return {
            name: tref.toString(),
            args: tl,
            meta: t.meta,

            isBasic: true,
            originalType: originalType
          }
        }
        type = type.follow(true);
      case TMono(mono):
        type = mono.get();
        if (type == null) {
          throw 'assert';
          throw new Error('Unreal Glue: Type cannot be Unknown', pos);
        }
      case TLazy(f):
        type = f();
      case _:
        throw new Error('Unreal Glue: Invalid type $type', pos);
      }
    }
    throw 'assert';
  }

  private static function isPOwnership(ctx:TypeConvCtx) {
    if (!ctx.isBasic)
      return false;
    switch (ctx.name) {
    case 'unreal.PHaxeCreated' | 'unreal.PExternal' | 'unreal.PStruct' |
         'unreal.TSharedPtr' | 'unreal.TSharedRef' | 'unreal.TWeakPtr' | 'unreal.PRef':
      return true;
    case 'ue4hx.internal.PHaxeCreatedDef' | 'ue4hx.internal.PExternalDef' | 'ue4hx.internal.PStructDef' |
         'ue4hx.internal.PRefDef':
      ctx.name = 'unreal.' + ctx.name.split('.').pop().substr(0,-3);
      return true;
    case _:
      return false;
    }
  }

  public static function get(type:Type, pos:Position, ?ownershipOverride:String = null, registerTParam=true):TypeConv
  {

    var ctx = getTypeCtx(type, pos);
    var ownershipModifier = null;
    if (isPOwnership(ctx)) {
      // TODO: cleanup so it plays nicely when more modifiers are added (e.g. Const, etc)
      ownershipModifier = ctx;
      ctx = getTypeCtx(ctx.args[0], pos);
      var has = isPOwnership(ctx);
      while(isPOwnership(ctx))
        ctx = getTypeCtx(ctx.args[0], pos);
      // if (isPOwnership(ctx))
      //   throw new Error('Unreal Glue: You cannot use two pointer modifiers in the same type (${ownershipModifier.name}<${ctx.name}<>>)', pos);
    }

    var name = ctx.name,
        args = ctx.args,
        meta = ctx.meta,
        superClass = ctx.superClass;
    var baseType = ctx.baseType;
    var isBasic = ctx.isBasic,
        isUObject = ctx.isUObject;
    var modf = ownershipOverride;
    if (modf == null) {
      if (ownershipModifier != null) {
        modf = ownershipModifier.name;
      }
    }

    // this helper function will handle `modf` (`ownershipModifier`)
    // on types that don't have a special way to handle it
    // FIXME: implement this to get basic types working
    // inline function wrapOwnership(info:TypeConvInfo):TypeConvInfo {
    //   if (modf != null) {
    //     switch (modf) {
    //     // TODO: (we need temp vars to make this work :(
    //     // case 'unreal.PExternal' | 'unreal.PHaxeCreated':
    //     //   info.ueType = new TypeRef(['cpp'], 'RawPointer', [info.ueType]);
    //     //   if (info.ueToGlueExpr != null)
    //     //     info.ueToGlueExpr = '&(' + info.ueToGlueExpr + ')';
    //     //   if (info.glueToUeExpr != null
    //     case 'unreal.PRef':
    //       // if (info.ueType.name == 'RawPointer') {
    //         // info.ueType = new TypeRef(['cpp'], 'Reference', info.ueType.params);
    //       // } else {
    //         info.ueType = new TypeRef(['cpp'], 'Reference', [info.ueType]);
    //       // }
    //     case _:
    //     }
    //   }
    //   return info;
    // }
    // if we have it defined as a basic (special) type, use it
    var basic = basicTypes[name];
    if (basic != null) return basic;

    if (name == 'unreal.TSubclassOf') {
      var ofType = TypeConv.get(args[0], pos);
      var ueType = if (ofType.ueType.isPointer())
        ofType.ueType.params[0];
      else
        ofType.ueType;
      var ret = TypeConv.get( Context.follow(type), pos );
      ret.glueCppIncludes.push("UObject/ObjectBase.h");
      ret.ueType = new TypeRef('TSubclassOf', [ueType]);
      ret.ueToGlueExpr = '( (UClass *) % )';
      return ret;
    }

    var typeRef = baseType != null ? TypeRef.fromBaseType(baseType, pos) : TypeRef.parseClassName( name );
    var convArgs = null;
    if (args != null && args.length > 0) {
      convArgs = [ for (arg in args) TypeConv.get(arg, pos) ];
      typeRef = typeRef.withParams([ for (arg in convArgs) arg.haxeType ]);
      if (baseType != null && registerTParam) {
        var shouldAdd = true;
        for (arg in convArgs) {
          if (arg.hasTypeParams()) {
            shouldAdd = false;
            break;
          }
        }
        if (shouldAdd)
          Globals.cur.typeParamsToBuild = Globals.cur.typeParamsToBuild.add({ base:baseType, args:convArgs, pos:pos });
      }
    }
    // FIXME: check conversion and maybe add cast if needed
    var originalTypeRef = ctx.originalType == null ? typeRef : TypeRef.fromBaseType( ctx.originalType, pos );
    var refName = new TypeRef(typeRef.name);
    if (meta != null && meta.has(':uname')) refName = TypeRef.parseClassName(getMetaString(meta, ':uname'));
    if (typeRef.params.length > 0) {
      refName = refName.withParams( typeRef.params );
    }

    if (meta != null && meta.has(':uextern')) {
      if (isUObject) {
        var ret:TypeConvInfo = {
          haxeType: originalTypeRef,
          ueType: new TypeRef(['cpp'], 'RawPointer', [refName]),
          haxeGlueType: voidStar,
          glueType: voidStar,

          isUObject: true,

          glueCppIncludes: getMetaArray(meta, ':glueCppIncludes'),

          haxeToGlueExpr: '@:privateAccess %.wrapped',
          glueToHaxeExpr: typeRef.getClassPath() + '.wrap( cast % )',
          glueToUeExpr: '( (${refName.getCppType()} *) % )',
          ownershipModifier: modf,
          args: convArgs,
        };
        if (modf == 'unreal.PRef') {
          ret.ueType = new TypeRef(['cpp'], 'Reference', [ret.ueType]);
          ret.haxeToGlueExpr = 'cpp.Pointer.addressOf( ' + ret.haxeToGlueExpr + ' ).rawCast()';
          ret.glueToUeExpr = '(static_cast<${refName.getCppType()} *&> (*( (${refName.getCppType()} **) % )))';
        }
        return ret;
      } else if (ctx.isEnum) {
        var conv = new TypeRef(typeRef.pack, typeRef.name + '_EnumConv', typeRef.moduleName != null ? typeRef.moduleName : typeRef.name, typeRef.params);
        return {
          haxeType: originalTypeRef,
          ueType: refName,
          haxeGlueType: new TypeRef("Int"),
          glueType: new TypeRef("Int"),

          glueCppIncludes: getMetaArray(meta, ':glueCppIncludes'),
          haxeToGlueExpr: conv.getClassPath() + '.unwrap(%)',
          glueToHaxeExpr: conv.getClassPath() + '.wrap(%)',
          glueToUeExpr: '( (${refName.getCppType()}) % )',
          ueToGlueExpr: '( (int) % )',
          args: convArgs,
        };
      } else {
        var ueType = refName;
        if (convArgs != null)
          ueType = ueType.withParams([ for (arg in convArgs) arg.ueType ]);
        var metaArray = getMetaArray(meta, ':glueCppIncludes');
        if (metaArray == null) {
          Context.warning('Unreal Glue Code: glueCppIncludes missing for $typeRef', pos);
          metaArray = [];
        }
        var ret:TypeConvInfo = {
          haxeType: originalTypeRef,
          ueType: new TypeRef(['cpp'], 'RawPointer', [ueType]),
          haxeGlueType: uePointer,
          glueType: uePointer,
          glueCppIncludes: ['<OPointers.h>'].concat(metaArray),
          glueHeaderIncludes:['<unreal/helpers/UEPointer.h>'],
          haxeToGlueExpr: '@:privateAccess %.wrapped.get_raw()',
          glueToHaxeExpr: typeRef.getClassPath() + '.wrap( cast (%), $$parent )',
          glueToUeExpr: '( (${ueType.getCppType()} *) %->getPointer() )',
          ownershipModifier: modf,
          args: convArgs,
        };
        if (originalTypeRef != typeRef)
          ret.glueToHaxeExpr = '( cast ' + ret.glueToHaxeExpr + ' : ${originalTypeRef} )';
        if (modf == null) {
          return ret;
        }
        ret.haxeType = TypeRef.parseClassName(modf, [originalTypeRef]);
        switch (modf) {
          case 'unreal.PExternal':
            ret.ueToGlueExpr = 'PExternal<${ueType.getCppType()}>::wrap( % )';
          case 'unreal.PHaxeCreated':
            ret.ueToGlueExpr = 'PHaxeCreated<${ueType.getCppType()}>::wrap( % )';
            ret.glueToHaxeExpr = '@:privateAccess new unreal.PHaxeCreated(' + ret.glueToHaxeExpr + ')';
          case 'unreal.PStruct':
            ret.ueToGlueExpr = 'new PStruct<${ueType.getCppType()}>( % )';
            // ret.glueToHaxeExpr = '@:privateAccess new unreal.PStruct(' + ret.glueToHaxeExpr + ')';
            ret.glueToUeExpr = '*(' + ret.glueToUeExpr + ')';
            ret.ueType = ret.ueType.params[0];
          case 'unreal.TSharedPtr':
            ret.ueType = new TypeRef('TSharedPtr',[ueType]);
            ret.ueToGlueExpr = 'PSharedPtr<${ueType.getCppType()}>::wrap( % )';
            ret.glueToUeExpr = '( (PSharedPtr<${ueType.getCppType()}> *) %->toSharedPtr() )->value';
            ret.glueToHaxeExpr = '( cast ' + ret.glueToHaxeExpr + ' : unreal.TSharedPtr<${typeRef}> )';
          case 'unreal.TSharedRef':
            ret.ueType = new TypeRef('TSharedRef',[ueType]);
            ret.ueToGlueExpr = 'new PSharedRef<${ueType.getCppType()}>( % )';
            ret.glueToUeExpr = '( (PSharedRef<${ueType.getCppType()}> *) %->toSharedRef() )->value';
            ret.glueToHaxeExpr = '( cast ' + ret.glueToHaxeExpr + ' : unreal.TSharedRef<${typeRef}> )';
          case 'unreal.TWeakPtr':
            ret.ueType = new TypeRef('TWeakPtr',[ueType]);
            ret.ueToGlueExpr = 'PWeakPtr<${ueType.getCppType()}>::wrap( % )';
            ret.glueToUeExpr = '( (PWeakPtr<${ueType.getCppType()}> *) %->toWeakPtr() )->value';
            ret.glueToHaxeExpr = '( cast ' + ret.glueToHaxeExpr + ' : unreal.TWeakPtr<${typeRef}> )';
          case 'unreal.PRef':
            @:privateAccess ret.ueType.name = 'Reference';
            ret.ueToGlueExpr = 'new PExternal<${ueType.getCppType()}>( &(%) )';
            ret.glueToUeExpr = '*(' + ret.glueToUeExpr + ')';
          case _:
            throw 'assert: $modf';
        }

        if (typeRef.params.length > 0) {
          ret.glueCppIncludes.push('<' + typeRef.getGlueHelperType().getClassPath().replace('.','/') + '_UE.h>');
          ret.ueToGlueExpr = 'new ' + typeRef.getGlueHelperType().getCppClass() + '_UE_obj<' +
            [ for (param in args) TypeConv.get(param, pos).ueType.getCppType() ].join(',') +
          '>(' + ret.ueToGlueExpr + ')';
        }
        return ret;
      }
    }

    // check if extends @:uextern
    var uextension = false;
    if (ctx.isUObject) {
      while (superClass != null) {
        var cur = superClass.t.get();
        if (cur.meta.has(':uextern')) {
          uextension = true;
          break;
        }
        superClass = cur.superClass;
      }
    }

    if (uextension) {
      var glueCppIncludes = getMetaArray(meta, ':glueCppIncludes');
      if (glueCppIncludes == null) glueCppIncludes = [];
      glueCppIncludes.push('<unreal/helpers/HxcppRuntime.h>');
      var mod = getMetaArray(meta, ':umodule');
      var module = mod == null ? null : mod[0];
      var dir = Globals.cur.haxeRuntimeDir;
      if (module != null)
        dir = dir + '/../$module';

      glueCppIncludes.push('$dir/Generated/Public/${typeRef.withoutPrefix().name}.h');
      var ret:TypeConvInfo = {
        haxeType: typeRef,
        ueType: new TypeRef(['cpp'], 'RawPointer', [refName]),
        haxeGlueType: voidStar,
        glueType: voidStar,

        isUObject: true,

        glueCppIncludes: glueCppIncludes,

        haxeToGlueExpr: 'unreal.helpers.HaxeHelpers.dynamicToPointer(%)',
        glueToHaxeExpr: '( unreal.helpers.HaxeHelpers.pointerToDynamic(%) : ${typeRef.getClassPath()})',
        ueToGlueExpr: '%->haxeGcRef.get()',
        glueToUeExpr: '((::${refName.getCppType()} *) ::unreal::helpers::HxcppRuntime::getWrapped( % ))',
        ownershipModifier: modf,
      };

      if (modf == 'unreal.PRef') {
        ret.ueType = new TypeRef(['cpp'], 'Reference', [ret.ueType]);
        ret.glueToUeExpr =
          '(static_cast<${refName.getCppType()} *&> (*( (${refName.getCppType()} **) ::unreal::helpers::HxcppRuntime::getWrappedRef( % ) )))';
      }

      return ret;
    }
    if (isBasic)
      return {
        ueType: typeRef,
        haxeType: typeRef,
        glueHeaderIncludes:['<hxcpp.h>'],
        isBasic: true,
        args: convArgs,
      };

    if (ctx.isTypeParam) {
      var haxeType = new TypeRef(typeRef.name),
          ueType = new TypeRef(['cpp'], 'RawPointer', [haxeType]);
      var isRef = false;
      if (modf != null) {
        // HACK: work around Haxe issue #4591. Change back to use modf itself when fixed
        switch(modf) {
        case 'unreal.PStruct':
          haxeType = new TypeRef(['ue4hx','internal'], 'PStructDef', [haxeType]);
          ueType = haxeType;
        case 'unreal.PHaxeCreated':
          haxeType = new TypeRef(['ue4hx','internal'], 'PHaxeCreatedDef', [haxeType]);
        case 'unreal.PExternal':
          haxeType = new TypeRef(['ue4hx','internal'], 'PExternalDef', [haxeType]);
        case 'unreal.PRef':
          // we'll use haxeToUePtr
          isRef = true;
          ueType = haxeType;
          haxeType = new TypeRef(['ue4hx','internal'], 'PRefDef', [haxeType]);
        case _:
          ueType = new TypeRef( modf.split('.').pop(), [haxeType] );
          haxeType = TypeRef.parseClassName( modf, [haxeType] );
        }
      } else {
        ueType = ueType.params[0];
      }
      var ret:TypeConvInfo = {
        ueType: ueType,
        haxeType: haxeType,
        glueType: voidStar,
        haxeGlueType: voidStar,

        glueCppIncludes: ['<TypeParamGlue.h>'],

        ueToGlueExpr: 'TypeParamGlue<${ueType.getCppType()}>::ueToHaxe( % )',
        glueToUeExpr: 'TypeParamGlue<${ueType.getCppType()}>::haxeToUe( % )',
        haxeToGlueExpr: 'unreal.helpers.HaxeHelpers.dynamicToPointer( % )',
        glueToHaxeExpr: '(unreal.helpers.HaxeHelpers.pointerToDynamic( % ) : ${haxeType.toString()})',
        args: convArgs,
        isTypeParam: true,
        ownershipModifier: modf,
      };
      if (isRef) {
        ret.ueToGlueExpr = 'TypeParamGlue<${ueType.getCppType()}>::ueToHaxeRef( % )';
        ret.glueToUeExpr = 'TypeParamGlue<${ueType.getCppType()}>::haxeToUePtr( % )';
      }
      return ret;
    }
    throw new Error('Unreal Glue: Type $name is not supported', pos);
  }

  static function getMetaArray(meta:MetaAccess, name:String):Null<Array<String>>
  {
    if (meta == null) return null;
    var extracted = meta.extract(name);
    if (extracted == null || extracted.length == 0)
      return null;
    var ret = [];
    for (entry in extracted) {
      if (entry.params != null) {
        for (param in entry.params) {
          switch(param.expr)
          {
          case EConst(CString(s) | CIdent(s)):
            ret.push(s);
          case _:
            throw new Error('Unreal Glue: Unexpected non-string expression at meta $name', param.pos);
          }
        }
      }
    }

    return ret;
  }

  static function getMetaString(meta:MetaAccess, name:String):Null<String>
  {
    if (meta == null) return null;
    var extracted = meta.extract(name);
    if (extracted == null || extracted.length == 0 || extracted[0].params == null)
      return null;
    switch(extracted[0].params[0].expr) {
    case EConst(CString(s) | CIdent(s)):
      return s;
    case _:
      throw new Error('Unreal Glue: Unexpected non-string expression at meta $name', extracted[0].params[0].pos);
    }
  }

  static var voidStar(default,null) = new TypeRef(['cpp'],'RawPointer', [new TypeRef(['cpp'],'Void')]);
  static var uePointer(default,null) = new TypeRef(['cpp'],'RawPointer', [new TypeRef(['unreal','helpers'],'UEPointer')]);

  static var basicTypes:Map<String, TypeConvInfo> = {
    var basicConvert = [
      "cpp.Float32" => "float",
      "cpp.Float64" => "double",
      "Float" => "double",
      "cpp.Int16" => "int16",
      "cpp.Int32" => "int32",
      "Int" => "int32",
      "Int8" => "int8",
      "UInt16" => "uint16",
      "UInt8" => "uint8"
    ];

    var infos:Array<TypeConvInfo> = [
      {
        ueType: new TypeRef('bool'),
        haxeType: new TypeRef('Bool'),
        isBasic: true,
      },
      {
        ueType: new TypeRef('void'),
        haxeType: new TypeRef('Void'),
        isBasic: true,
      },
      {
        ueType: new TypeRef('uint32'),
        haxeType: new TypeRef(['unreal'],'FakeUInt32'),
        haxeGlueType: new TypeRef(['cpp'],'Int32'),
        glueType: new TypeRef(['cpp'], 'Int32'),

        haxeToGlueExpr: 'cast (%)',
        glueToHaxeExpr: 'cast (%)',
        isBasic: true,
      },
      {
        ueType: new TypeRef('uint64'),
        haxeType: new TypeRef(['unreal'],'FakeUInt64'),
        haxeGlueType: new TypeRef(['ue4hx','internal'], 'Int64Glue'),
        glueType: new TypeRef(['cpp'], 'Int64'),

        haxeToGlueExpr: 'cast (%)',
        glueToHaxeExpr: 'cast (%)',
        isBasic: true,
      },
      {
        ueType: new TypeRef('int64'),
        haxeType: new TypeRef(['unreal'],'Int64'),
        haxeGlueType: new TypeRef(['ue4hx','internal'], 'Int64Glue'),
        glueType: new TypeRef(['cpp'], 'Int64'),

        haxeToGlueExpr: 'cast (%)',
        glueToHaxeExpr: 'cast (%)',
        isBasic: true,
      },
      {
        ueType: new TypeRef('void'),
        haxeType: new TypeRef('Void'),
        isBasic: true,
      },
      // FString
      {
        haxeType: new TypeRef(['unreal'],'FString'),
        ueType: new TypeRef('FString'),
        haxeGlueType: voidStar,
        glueType: voidStar,

        glueCppIncludes:['Engine.h', '<unreal/helpers/HxcppRuntime.h>'],
        glueHeaderIncludes:['<hxcpp.h>'],

        ueToGlueExpr:'::unreal::helpers::HxcppRuntime::constCharToString(TCHAR_TO_UTF8( *(%) ))',
        glueToUeExpr:'::FString( UTF8_TO_TCHAR(::unreal::helpers::HxcppRuntime::stringToConstChar(%)) )',
        haxeToGlueExpr:'unreal.helpers.HaxeHelpers.dynamicToPointer( % )',
        glueToHaxeExpr:'(unreal.helpers.HaxeHelpers.pointerToDynamic( % ) : String)',
        isBasic: false,
      },
      // FText
      {
        haxeType: new TypeRef(['unreal'],'FText'),
        ueType: new TypeRef('FText'),
        haxeGlueType: voidStar,
        glueType: voidStar,

        glueCppIncludes:['Engine.h', '<unreal/helpers/HxcppRuntime.h>'],
        glueHeaderIncludes:['<hxcpp.h>'],

        ueToGlueExpr:'::unreal::helpers::HxcppRuntime::constCharToString(TCHAR_TO_UTF8( *((%).ToString()) ))',
        glueToUeExpr:'::FText::FromString( ::FString(UTF8_TO_TCHAR(::unreal::helpers::HxcppRuntime::stringToConstChar(%)) ))',
        haxeToGlueExpr:'unreal.helpers.HaxeHelpers.dynamicToPointer( % )',
        glueToHaxeExpr:'(unreal.helpers.HaxeHelpers.pointerToDynamic( % ) : String)',
        isBasic: false
      },
    ];
    infos = infos.concat([ for (key in basicConvert.keys()) {
      ueType: TypeRef.parseClassName(basicConvert[key]),
      glueType: TypeRef.parseClassName(key),
      haxeType: TypeRef.parseClassName(key),
      glueHeaderIncludes:['<hxcpp.h>'],
      isBasic: true
    }]);
    var ret = new Map();
    for (info in infos)
    {
      ret[info.haxeType.getClassPath()] = info;
    }
    ret;
  };
}

typedef TypeConvInfo = {
  /**
    Represents the Haxe-side type
   **/
  public var haxeType:TypeRef;
  /**
    Represents the UE-side type (e.g. `FString` on case of FString)
   **/
  public var ueType:TypeRef;

  /**
    Represents the type in the glue helper as seen by Haxe. Again in the `FString` example,
    its `haxeGlueType` will be `cpp.ConstCharStar`.

    If null, this will be the same as `haxeType`
   **/
  @:optional public var haxeGlueType:Null<TypeRef>;
  /**
    Represents the actual glue type. Normally, it will be the same as the ueType;
    However, in some special cases, it will be different.
    One classic case where it is different is `FString`: While `ueType` is the
    actual `FString` type, its `glueType` will be `const char *`

    If null, this will be the same as `ueType`
   **/
  @:optional public var glueType:Null<TypeRef>;
  // @:optional public var glueHelperType:TypeRef;

  /**
    Represents the public includes that can be included in the glue header
    These can only be includes that are safe to be included in both UE4 and hxcpp sides
   **/
  @:optional public var glueHeaderIncludes:Null<Array<String>>;
  /**
    Represents the private includes to the glue cpp files. These can be UE4 includes,
    since the CPP file is only compiled by the UE4 side
   **/
  @:optional public var glueCppIncludes:Null<Array<String>>;

  /**
    Gets the wrapping expression from UE type to the glue Type
    e.g. on `FString` this would be what transforms `FString` into `const char *`
   **/
  @:optional public var ueToGlueExpr:Null<String>;
  /**
    Gets the wrapping expression from hxcpp `glueType` to UE4.
    e.g. on `FString` this would be `FString( UTF8_TO_TCHAR(%) )`
   **/
  @:optional public var glueToUeExpr:Null<String>;
  /**
    Gets the wrapping expression from Haxe type to the glue type
   **/
  @:optional public var haxeToGlueExpr:Null<String>;
  /**
    Gets the wrapping expression from the Glue type to the Haxe type
   **/
  @:optional public var glueToHaxeExpr:Null<String>;

  /**
    Tells whether the type refers to a UObject type
   **/
  @:optional public var isUObject:Bool;

  /**
    Tells whether the type is a basic type
   **/
  @:optional public var isBasic:Bool;

  @:optional public var ownershipModifier:String;

  @:optional public var args:Array<TypeConv>;
  @:optional public var params:Array<String>;

  @:optional public var isTypeParam:Bool;
}

typedef TypeConvCtx = {
  name:String,
  args:Array<Type>,
  meta:MetaAccess,

  ?superClass:Null<{ t : Ref<ClassType>, params : Array<Type> }>,
  ?baseType:Null<BaseType>,
  ?isBasic:Bool,
  ?isUObject:Bool,
  ?isEnum:Bool,

  ?originalType:BaseType,
  ?isTypeParam:Bool,
}
