// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A 2D physics body that can't be moved by external forces. When moved manually, it doesn't affect other bodies in its path.
/// 
/// A static 2D physics body. It can't be moved by external forces or contacts, but can be moved manually by other means such as code, ``AnimationMixer``s (with ``AnimationMixer/callbackModeProcess`` set to ``AnimationMixer/AnimationCallbackModeProcess/physics``), and ``RemoteTransform2D``.
/// 
/// When ``StaticBody2D`` is moved, it is teleported to its new position without affecting other physics bodies in its path. If this is not desired, use ``AnimatableBody2D`` instead.
/// 
/// ``StaticBody2D`` is useful for completely static objects like floors and walls, as well as moving surfaces like conveyor belts and circular revolving platforms (by using ``constantLinearVelocity`` and ``constantAngularVelocity``).
/// 
open class StaticBody2D: PhysicsBody2D {
    override open class var godotClassName: StringName { "StaticBody2D" }
    
    /* Properties */
    
    /// The physics material override for the body.
    /// 
    /// If a material is assigned to this property, it will be used instead of any other physics material, such as an inherited one.
    /// 
    final public var physicsMaterialOverride: PhysicsMaterial? {
        get {
            return get_physics_material_override ()
        }
        
        set {
            set_physics_material_override (newValue)
        }
        
    }
    
    /// The body's constant linear velocity. This does not move the body, but affects touching bodies, as if it were moving.
    final public var constantLinearVelocity: Vector2 {
        get {
            return get_constant_linear_velocity ()
        }
        
        set {
            set_constant_linear_velocity (newValue)
        }
        
    }
    
    /// The body's constant angular velocity. This does not rotate the body, but affects touching bodies, as if it were rotating.
    final public var constantAngularVelocity: Double {
        get {
            return get_constant_angular_velocity ()
        }
        
        set {
            set_constant_angular_velocity (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_constant_linear_velocity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_constant_linear_velocity")
        return withUnsafePointer (to: &StaticBody2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_constant_linear_velocity (_ vel: Vector2) {
        #if false
        
        var copy_vel = vel
        
        gi.object_method_bind_ptrcall_v (StaticBody2D.method_set_constant_linear_velocity, UnsafeMutableRawPointer (mutating: handle), nil, &copy_vel)
        
        #else
        
        var copy_vel = vel
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_vel) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (StaticBody2D.method_set_constant_linear_velocity, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_constant_angular_velocity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_constant_angular_velocity")
        return withUnsafePointer (to: &StaticBody2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_constant_angular_velocity (_ vel: Double) {
        #if false
        
        var copy_vel = vel
        
        gi.object_method_bind_ptrcall_v (StaticBody2D.method_set_constant_angular_velocity, UnsafeMutableRawPointer (mutating: handle), nil, &copy_vel)
        
        #else
        
        var copy_vel = vel
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_vel) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (StaticBody2D.method_set_constant_angular_velocity, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_constant_linear_velocity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_constant_linear_velocity")
        return withUnsafePointer (to: &StaticBody2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_constant_linear_velocity ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (StaticBody2D.method_get_constant_linear_velocity, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_constant_angular_velocity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_constant_angular_velocity")
        return withUnsafePointer (to: &StaticBody2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_constant_angular_velocity ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (StaticBody2D.method_get_constant_angular_velocity, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_physics_material_override: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_physics_material_override")
        return withUnsafePointer (to: &StaticBody2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1784508650)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_physics_material_override (_ physicsMaterialOverride: PhysicsMaterial?) {
        #if false
        
        var copy_physics_material_override_handle = physicsMaterialOverride?.handle
        
        gi.object_method_bind_ptrcall_v (StaticBody2D.method_set_physics_material_override, UnsafeMutableRawPointer (mutating: handle), nil, &copy_physics_material_override_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: physicsMaterialOverride?.handle) { p0 in
        _args.append (physicsMaterialOverride == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (StaticBody2D.method_set_physics_material_override, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_physics_material_override: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_physics_material_override")
        return withUnsafePointer (to: &StaticBody2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2521850424)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_physics_material_override ()-> PhysicsMaterial? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (StaticBody2D.method_get_physics_material_override, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

