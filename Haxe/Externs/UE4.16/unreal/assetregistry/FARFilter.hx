package unreal.assetregistry;

@:glueCppIncludes("ARFilter.h")
@:uextern extern class FARFilter {
    public function new();
    public var ClassNames:TArray<FName>;
}
