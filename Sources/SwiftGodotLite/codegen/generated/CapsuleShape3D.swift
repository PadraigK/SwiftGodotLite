// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A 3D capsule shape used for physics collision.
/// 
/// A 3D capsule shape, intended for use in physics. Usually used to provide a shape for a ``CollisionShape3D``.
/// 
/// **Performance:** ``CapsuleShape3D`` is fast to check collisions against. It is faster than ``CylinderShape3D``, but slower than ``SphereShape3D`` and ``BoxShape3D``.
/// 
open class CapsuleShape3D: Shape3D {
    override open class var godotClassName: StringName { "CapsuleShape3D" }
    
    /* Properties */
    
    /// The capsule's radius.
    final public var radius: Double {
        get {
            return get_radius ()
        }
        
        set {
            set_radius (newValue)
        }
        
    }
    
    /// The capsule's height.
    final public var height: Double {
        get {
            return get_height ()
        }
        
        set {
            set_height (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_radius")
        return withUnsafePointer (to: &CapsuleShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_radius (_ radius: Double) {
        #if true
        
        var copy_radius = radius
        
        gi.object_method_bind_ptrcall_v (CapsuleShape3D.method_set_radius, UnsafeMutableRawPointer (mutating: handle), nil, &copy_radius)
        
        #else
        
        var copy_radius = radius
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_radius) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CapsuleShape3D.method_set_radius, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_radius")
        return withUnsafePointer (to: &CapsuleShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_radius ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (CapsuleShape3D.method_get_radius, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_height: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_height")
        return withUnsafePointer (to: &CapsuleShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_height (_ height: Double) {
        #if true
        
        var copy_height = height
        
        gi.object_method_bind_ptrcall_v (CapsuleShape3D.method_set_height, UnsafeMutableRawPointer (mutating: handle), nil, &copy_height)
        
        #else
        
        var copy_height = height
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_height) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CapsuleShape3D.method_set_height, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_height: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_height")
        return withUnsafePointer (to: &CapsuleShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_height ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (CapsuleShape3D.method_get_height, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

