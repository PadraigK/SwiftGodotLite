// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A singleton for managing ``PhysicsServer3D`` implementations.
/// 
/// ``PhysicsServer3DManager`` is the API for registering ``PhysicsServer3D`` implementations and for setting the default implementation.
/// 
/// > Note: It is not possible to switch physics servers at runtime. This class is only used on startup at the server initialization level, by Godot itself and possibly by GDExtensions.
/// 
open class PhysicsServer3DManager: Object {
    /// The shared instance of this class
    public static var shared: PhysicsServer3DManager = {
        return withUnsafePointer (to: &PhysicsServer3DManager.godotClassName.content) { ptr in
            PhysicsServer3DManager (nativeHandle: gi.global_get_singleton (ptr)!)
        }
        
    }()
    
    override open class var godotClassName: StringName { "PhysicsServer3DManager" }
    /* Methods */
    fileprivate static var method_register_server: GDExtensionMethodBindPtr = {
        let methodName = StringName ("register_server")
        return withUnsafePointer (to: &PhysicsServer3DManager.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2137474292)!
            }
            
        }
        
    }()
    
    /// Register a ``PhysicsServer3D`` implementation by passing a `name` and a ``Callable`` that returns a ``PhysicsServer3D`` object.
    public static func registerServer (name: String, createCallback: Callable) {
        #if true
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (PhysicsServer3DManager.method_register_server, UnsafeMutableRawPointer (mutating: shared.handle), nil, &gstr_name.content, &createCallback.content)
        
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &createCallback.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (PhysicsServer3DManager.method_register_server, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_default_server: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_default_server")
        return withUnsafePointer (to: &PhysicsServer3DManager.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2956805083)!
            }
            
        }
        
    }()
    
    /// Set the default ``PhysicsServer3D`` implementation to the one identified by `name`, if `priority` is greater than the priority of the current default implementation.
    public static func setDefaultServer (name: String, priority: Int32) {
        #if true
        
        let gstr_name = GString (name)
        var copy_priority: Int = Int (priority)
        
        gi.object_method_bind_ptrcall_v (PhysicsServer3DManager.method_set_default_server, UnsafeMutableRawPointer (mutating: shared.handle), nil, &gstr_name.content, &copy_priority)
        
        #else
        
        let gstr_name = GString (name)
        var copy_priority: Int = Int (priority)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_priority) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (PhysicsServer3DManager.method_set_default_server, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
            }
        }
        
        #endif
    }
    
}

