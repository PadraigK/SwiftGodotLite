// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

open class JavaClassWrapper: Object {
    /// The shared instance of this class
    public static var shared: JavaClassWrapper = {
        return withUnsafePointer (to: &JavaClassWrapper.godotClassName.content) { ptr in
            JavaClassWrapper (nativeHandle: gi.global_get_singleton (ptr)!)
        }
        
    }()
    
    override open class var godotClassName: StringName { "JavaClassWrapper" }
    /* Methods */
    fileprivate static var method_wrap: GDExtensionMethodBindPtr = {
        let methodName = StringName ("wrap")
        return withUnsafePointer (to: &JavaClassWrapper.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1124367868)!
            }
            
        }
        
    }()
    
    /// 
    public static func wrap (name: String)-> JavaClass? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if false
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (JavaClassWrapper.method_wrap, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &gstr_name.content)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (JavaClassWrapper.method_wrap, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
}

