// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

open class GLTFAnimation: Resource {
    override open class var godotClassName: StringName { "GLTFAnimation" }
    
    /* Properties */
    
    final public var loop: Bool {
        get {
            return get_loop ()
        }
        
        set {
            set_loop (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_loop: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_loop")
        return withUnsafePointer (to: &GLTFAnimation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_loop ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (GLTFAnimation.method_get_loop, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_loop: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_loop")
        return withUnsafePointer (to: &GLTFAnimation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop (_ loop: Bool) {
        #if false
        
        var copy_loop = loop
        
        gi.object_method_bind_ptrcall_v (GLTFAnimation.method_set_loop, UnsafeMutableRawPointer (mutating: handle), nil, &copy_loop)
        
        #else
        
        var copy_loop = loop
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_loop) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFAnimation.method_set_loop, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
}

