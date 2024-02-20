// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A node that provides a ``Shape3D`` to a ``CollisionObject3D`` parent.
/// 
/// A node that provides a ``Shape3D`` to a ``CollisionObject3D`` parent and allows to edit it. This can give a detection shape to an ``Area3D`` or turn a ``PhysicsBody3D`` into a solid object.
/// 
/// > Warning: A non-uniformly scaled ``CollisionShape3D`` will likely not behave as expected. Make sure to keep its scale the same on all axes and adjust its ``shape`` resource instead.
/// 
open class CollisionShape3D: Node3D {
    override open class var godotClassName: StringName { "CollisionShape3D" }
    
    /* Properties */
    
    /// The actual shape owned by this collision shape.
    final public var shape: Shape3D? {
        get {
            return get_shape ()
        }
        
        set {
            set_shape (newValue)
        }
        
    }
    
    /// A disabled collision shape has no effect in the world.
    final public var disabled: Bool {
        get {
            return is_disabled ()
        }
        
        set {
            set_disabled (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_resource_changed: GDExtensionMethodBindPtr = {
        let methodName = StringName ("resource_changed")
        return withUnsafePointer (to: &CollisionShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 968641751)!
            }
            
        }
        
    }()
    
    /// _Obsoleted._ Use [signal Resource.changed] instead.
    public final func resourceChanged (resource: Resource?) {
        #if true
        
        var copy_resource_handle = resource?.handle
        
        gi.object_method_bind_ptrcall_v (CollisionShape3D.method_resource_changed, UnsafeMutableRawPointer (mutating: handle), nil, &copy_resource_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: resource?.handle) { p0 in
        _args.append (resource == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (CollisionShape3D.method_resource_changed, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_shape: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_shape")
        return withUnsafePointer (to: &CollisionShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1549710052)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shape (_ shape: Shape3D?) {
        #if true
        
        var copy_shape_handle = shape?.handle
        
        gi.object_method_bind_ptrcall_v (CollisionShape3D.method_set_shape, UnsafeMutableRawPointer (mutating: handle), nil, &copy_shape_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: shape?.handle) { p0 in
        _args.append (shape == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (CollisionShape3D.method_set_shape, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_shape: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_shape")
        return withUnsafePointer (to: &CollisionShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3214262478)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shape ()-> Shape3D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (CollisionShape3D.method_get_shape, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_disabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_disabled")
        return withUnsafePointer (to: &CollisionShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_disabled (_ enable: Bool) {
        #if true
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (CollisionShape3D.method_set_disabled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CollisionShape3D.method_set_disabled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_disabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_disabled")
        return withUnsafePointer (to: &CollisionShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_disabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (CollisionShape3D.method_is_disabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_make_convex_from_siblings: GDExtensionMethodBindPtr = {
        let methodName = StringName ("make_convex_from_siblings")
        return withUnsafePointer (to: &CollisionShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Sets the collision shape's shape to the addition of all its convexed ``MeshInstance3D`` siblings geometry.
    public final func makeConvexFromSiblings () {
        gi.object_method_bind_ptrcall (CollisionShape3D.method_make_convex_from_siblings, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
}

