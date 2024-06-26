// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A box-shaped attractor with varying directions and strengths defined in it that influences particles from ``GPUParticles3D`` nodes.
/// 
/// A box-shaped attractor with varying directions and strengths defined in it that influences particles from ``GPUParticles3D`` nodes.
/// 
/// Unlike ``GPUParticlesAttractorBox3D``, ``GPUParticlesAttractorVectorField3D`` uses a ``texture`` to affect attraction strength within the box. This can be used to create complex attraction scenarios where particles travel in different directions depending on their location. This can be useful for weather effects such as sandstorms.
/// 
/// Particle attractors work in real-time and can be moved, rotated and scaled during gameplay. Unlike collision shapes, non-uniform scaling of attractors is also supported.
/// 
/// > Note: Particle attractors only affect ``GPUParticles3D``, not ``CPUParticles3D``.
/// 
open class GPUParticlesAttractorVectorField3D: GPUParticlesAttractor3D {
    override open class var godotClassName: StringName { "GPUParticlesAttractorVectorField3D" }
    
    /* Properties */
    
    /// The size of the vector field box in 3D units.
    final public var size: Vector3 {
        get {
            return get_size ()
        }
        
        set {
            set_size (newValue)
        }
        
    }
    
    /// The 3D texture to be used. Values are linearly interpolated between the texture's pixels.
    /// 
    /// > Note: To get better performance, the 3D texture's resolution should reflect the ``size`` of the attractor. Since particle attraction is usually low-frequency data, the texture can be kept at a low resolution such as 64×64×64.
    /// 
    final public var texture: Texture3D? {
        get {
            return get_texture ()
        }
        
        set {
            set_texture (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_size")
        return withUnsafePointer (to: &GPUParticlesAttractorVectorField3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_size (_ size: Vector3) {
        #if false
        
        var copy_size = size
        
        gi.object_method_bind_ptrcall_v (GPUParticlesAttractorVectorField3D.method_set_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_size)
        
        #else
        
        var copy_size = size
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GPUParticlesAttractorVectorField3D.method_set_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_size")
        return withUnsafePointer (to: &GPUParticlesAttractorVectorField3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_size ()-> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall (GPUParticlesAttractorVectorField3D.method_get_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_texture")
        return withUnsafePointer (to: &GPUParticlesAttractorVectorField3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1188404210)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture (_ texture: Texture3D?) {
        #if false
        
        var copy_texture_handle = texture?.handle
        
        gi.object_method_bind_ptrcall_v (GPUParticlesAttractorVectorField3D.method_set_texture, UnsafeMutableRawPointer (mutating: handle), nil, &copy_texture_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: texture?.handle) { p0 in
        _args.append (texture == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (GPUParticlesAttractorVectorField3D.method_set_texture, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_texture")
        return withUnsafePointer (to: &GPUParticlesAttractorVectorField3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373985333)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture ()-> Texture3D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (GPUParticlesAttractorVectorField3D.method_get_texture, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

