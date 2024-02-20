// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A 2D physics body that can't be moved by external forces. When moved manually, it affects other bodies in its path.
/// 
/// An animatable 2D physics body. It can't be moved by external forces or contacts, but can be moved manually by other means such as code, ``AnimationMixer``s (with ``AnimationMixer/callbackModeProcess`` set to ``AnimationMixer/AnimationCallbackModeProcess/physics``), and ``RemoteTransform2D``.
/// 
/// When ``AnimatableBody2D`` is moved, its linear and angular velocity are estimated and used to affect other physics bodies in its path. This makes it useful for moving platforms, doors, and other moving objects.
/// 
open class AnimatableBody2D: StaticBody2D {
    override open class var godotClassName: StringName { "AnimatableBody2D" }
    
    /* Properties */
    
    /// If `true`, the body's movement will be synchronized to the physics frame. This is useful when animating movement via ``AnimationPlayer``, for example on moving platforms. Do **not** use together with ``PhysicsBody2D/moveAndCollide(motion:testOnly:safeMargin:recoveryAsCollision:)``.
    final public var syncToPhysics: Bool {
        get {
            return is_sync_to_physics_enabled ()
        }
        
        set {
            set_sync_to_physics (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_sync_to_physics: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_sync_to_physics")
        return withUnsafePointer (to: &AnimatableBody2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sync_to_physics (_ enable: Bool) {
        #if false
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (AnimatableBody2D.method_set_sync_to_physics, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AnimatableBody2D.method_set_sync_to_physics, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_sync_to_physics_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_sync_to_physics_enabled")
        return withUnsafePointer (to: &AnimatableBody2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_sync_to_physics_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (AnimatableBody2D.method_is_sync_to_physics_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

