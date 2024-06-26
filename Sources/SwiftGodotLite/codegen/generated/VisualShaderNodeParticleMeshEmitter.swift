// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A visual shader node that makes particles emitted in a shape defined by a ``Mesh``.
/// 
/// ``VisualShaderNodeParticleEmitter`` that makes the particles emitted in a shape of the assigned ``mesh``. It will emit from the mesh's surfaces, either all or only the specified one.
open class VisualShaderNodeParticleMeshEmitter: VisualShaderNodeParticleEmitter {
    override open class var godotClassName: StringName { "VisualShaderNodeParticleMeshEmitter" }
    
    /* Properties */
    
    /// The ``Mesh`` that defines emission shape.
    final public var mesh: Mesh? {
        get {
            return get_mesh ()
        }
        
        set {
            set_mesh (newValue)
        }
        
    }
    
    /// If `true`, the particles will emit from all surfaces of the mesh.
    final public var useAllSurfaces: Bool {
        get {
            return is_use_all_surfaces ()
        }
        
        set {
            set_use_all_surfaces (newValue)
        }
        
    }
    
    /// Index of the surface that emits particles. ``useAllSurfaces`` must be `false` for this to take effect.
    final public var surfaceIndex: Int32 {
        get {
            return get_surface_index ()
        }
        
        set {
            set_surface_index (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_mesh")
        return withUnsafePointer (to: &VisualShaderNodeParticleMeshEmitter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 194775623)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mesh (_ mesh: Mesh?) {
        #if false
        
        var copy_mesh_handle = mesh?.handle
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeParticleMeshEmitter.method_set_mesh, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mesh_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: mesh?.handle) { p0 in
        _args.append (mesh == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeParticleMeshEmitter.method_set_mesh, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_mesh")
        return withUnsafePointer (to: &VisualShaderNodeParticleMeshEmitter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1808005922)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mesh ()-> Mesh? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (VisualShaderNodeParticleMeshEmitter.method_get_mesh, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_use_all_surfaces: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_use_all_surfaces")
        return withUnsafePointer (to: &VisualShaderNodeParticleMeshEmitter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_all_surfaces (_ enabled: Bool) {
        #if false
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeParticleMeshEmitter.method_set_use_all_surfaces, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeParticleMeshEmitter.method_set_use_all_surfaces, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_use_all_surfaces: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_use_all_surfaces")
        return withUnsafePointer (to: &VisualShaderNodeParticleMeshEmitter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_use_all_surfaces ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (VisualShaderNodeParticleMeshEmitter.method_is_use_all_surfaces, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_surface_index: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_surface_index")
        return withUnsafePointer (to: &VisualShaderNodeParticleMeshEmitter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_surface_index (_ surfaceIndex: Int32) {
        #if false
        
        var copy_surface_index: Int = Int (surfaceIndex)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeParticleMeshEmitter.method_set_surface_index, UnsafeMutableRawPointer (mutating: handle), nil, &copy_surface_index)
        
        #else
        
        var copy_surface_index: Int = Int (surfaceIndex)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_surface_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeParticleMeshEmitter.method_set_surface_index, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_surface_index: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_surface_index")
        return withUnsafePointer (to: &VisualShaderNodeParticleMeshEmitter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_surface_index ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (VisualShaderNodeParticleMeshEmitter.method_get_surface_index, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

