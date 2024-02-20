// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

open class SkinReference: RefCounted {
    override open class var godotClassName: StringName { "SkinReference" }
    /* Methods */
    fileprivate static var method_get_skeleton: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_skeleton")
        return withUnsafePointer (to: &SkinReference.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// 
    public final func getSkeleton ()-> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall (SkinReference.method_get_skeleton, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_skin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_skin")
        return withUnsafePointer (to: &SkinReference.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2074563878)!
            }
            
        }
        
    }()
    
    /// 
    public final func getSkin ()-> Skin? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (SkinReference.method_get_skin, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}
