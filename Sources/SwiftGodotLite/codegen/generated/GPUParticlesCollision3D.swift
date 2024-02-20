// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Abstract base class for 3D particle collision shapes affecting ``GPUParticles3D`` nodes.
/// 
/// Particle collision shapes can be used to make particles stop or bounce against them.
/// 
/// Particle collision shapes work in real-time and can be moved, rotated and scaled during gameplay. Unlike attractors, non-uniform scaling of collision shapes is _not_ supported.
/// 
/// Particle collision shapes can be temporarily disabled by hiding them.
/// 
/// > Note: ``ParticleProcessMaterial/collisionMode`` must be ``ParticleProcessMaterial/CollisionMode/collisionRigid`` or ``ParticleProcessMaterial/CollisionMode/collisionHideOnContact`` on the ``GPUParticles3D``'s process material for collision to work.
/// 
/// > Note: Particle collision only affects ``GPUParticles3D``, not ``CPUParticles3D``.
/// 
/// > Note: Particles pushed by a collider that is being moved will not be interpolated, which can result in visible stuttering. This can be alleviated by setting ``GPUParticles3D/fixedFps`` to `0` or a value that matches or exceeds the target framerate.
/// 
open class GPUParticlesCollision3D: VisualInstance3D {
    override open class var godotClassName: StringName { "GPUParticlesCollision3D" }
    
    /* Properties */
    
    /// The particle rendering layers (``VisualInstance3D/layers``) that will be affected by the collision shape. By default, all particles that have ``ParticleProcessMaterial/collisionMode`` set to ``ParticleProcessMaterial/CollisionMode/collisionRigid`` or ``ParticleProcessMaterial/CollisionMode/collisionHideOnContact`` will be affected by a collision shape.
    /// 
    /// After configuring particle nodes accordingly, specific layers can be unchecked to prevent certain particles from being affected by attractors. For example, this can be used if you're using an attractor as part of a spell effect but don't want the attractor to affect unrelated weather particles at the same position.
    /// 
    /// Particle attraction can also be disabled on a per-process material basis by setting ``ParticleProcessMaterial/attractorInteractionEnabled`` on the ``GPUParticles3D`` node.
    /// 
    final public var cullMask: UInt32 {
        get {
            return get_cull_mask ()
        }
        
        set {
            set_cull_mask (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_cull_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_cull_mask")
        return withUnsafePointer (to: &GPUParticlesCollision3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cull_mask (_ mask: UInt32) {
        #if true
        
        var copy_mask: Int = Int (mask)
        
        gi.object_method_bind_ptrcall_v (GPUParticlesCollision3D.method_set_cull_mask, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mask)
        
        #else
        
        var copy_mask: Int = Int (mask)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mask) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GPUParticlesCollision3D.method_set_cull_mask, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_cull_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_cull_mask")
        return withUnsafePointer (to: &GPUParticlesCollision3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cull_mask ()-> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall (GPUParticlesCollision3D.method_get_cull_mask, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

