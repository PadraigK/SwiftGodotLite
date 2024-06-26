// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A region that contributes to the default volumetric fog from the world environment.
/// 
/// ``FogVolume``s are used to add localized fog into the global volumetric fog effect. ``FogVolume``s can also remove volumetric fog from specific areas if using a ``FogMaterial`` with a negative ``FogMaterial/density``.
/// 
/// Performance of ``FogVolume``s is directly related to their relative size on the screen and the complexity of their attached ``FogMaterial``. It is best to keep ``FogVolume``s relatively small and simple where possible.
/// 
/// > Note: ``FogVolume``s only have a visible effect if ``Environment/volumetricFogEnabled`` is `true`. If you don't want fog to be globally visible (but only within ``FogVolume`` nodes), set ``Environment/volumetricFogDensity`` to `0.0`.
/// 
open class FogVolume: VisualInstance3D {
    override open class var godotClassName: StringName { "FogVolume" }
    
    /* Properties */
    
    /// The size of the ``FogVolume`` when ``shape`` is ``RenderingServer/FogVolumeShape/ellipsoid``, ``RenderingServer/FogVolumeShape/cone``, ``RenderingServer/FogVolumeShape/cylinder`` or ``RenderingServer/FogVolumeShape/box``.
    /// 
    /// > Note: Thin fog volumes may appear to flicker when the camera moves or rotates. This can be alleviated by increasing ``ProjectSettings/rendering/environment/volumetricFog/volumeDepth`` (at a performance cost) or by decreasing ``Environment/volumetricFogLength`` (at no performance cost, but at the cost of lower fog range). Alternatively, the ``FogVolume`` can be made thicker and use a lower density in the ``material``.
    /// 
    /// > Note: If ``shape`` is ``RenderingServer/FogVolumeShape/cone`` or ``RenderingServer/FogVolumeShape/cylinder``, the cone/cylinder will be adjusted to fit within the size. Non-uniform scaling of cone/cylinder shapes via the ``size`` property is not supported, but you can scale the ``FogVolume`` node instead.
    /// 
    final public var size: Vector3 {
        get {
            return get_size ()
        }
        
        set {
            set_size (newValue)
        }
        
    }
    
    /// The shape of the ``FogVolume``. This can be set to either ``RenderingServer/FogVolumeShape/ellipsoid``, ``RenderingServer/FogVolumeShape/cone``, ``RenderingServer/FogVolumeShape/cylinder``, ``RenderingServer/FogVolumeShape/box`` or ``RenderingServer/FogVolumeShape/world``.
    final public var shape: RenderingServer.FogVolumeShape {
        get {
            return get_shape ()
        }
        
        set {
            set_shape (newValue)
        }
        
    }
    
    /// The ``Material`` used by the ``FogVolume``. Can be either a built-in ``FogMaterial`` or a custom ``ShaderMaterial``.
    final public var material: Material? {
        get {
            return get_material ()
        }
        
        set {
            set_material (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_size")
        return withUnsafePointer (to: &FogVolume.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_size (_ size: Vector3) {
        #if false
        
        var copy_size = size
        
        gi.object_method_bind_ptrcall_v (FogVolume.method_set_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_size)
        
        #else
        
        var copy_size = size
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (FogVolume.method_set_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_size")
        return withUnsafePointer (to: &FogVolume.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_size ()-> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall (FogVolume.method_get_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_shape: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_shape")
        return withUnsafePointer (to: &FogVolume.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1416323362)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shape (_ shape: RenderingServer.FogVolumeShape) {
        #if false
        
        var copy_shape = Int64 (shape.rawValue)
        
        gi.object_method_bind_ptrcall_v (FogVolume.method_set_shape, UnsafeMutableRawPointer (mutating: handle), nil, &copy_shape)
        
        #else
        
        var copy_shape = Int64 (shape.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_shape) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (FogVolume.method_set_shape, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_shape: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_shape")
        return withUnsafePointer (to: &FogVolume.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3920334604)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shape ()-> RenderingServer.FogVolumeShape {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (FogVolume.method_get_shape, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return RenderingServer.FogVolumeShape (rawValue: _result)!
    }
    
    fileprivate static var method_set_material: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_material")
        return withUnsafePointer (to: &FogVolume.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2757459619)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_material (_ material: Material?) {
        #if false
        
        var copy_material_handle = material?.handle
        
        gi.object_method_bind_ptrcall_v (FogVolume.method_set_material, UnsafeMutableRawPointer (mutating: handle), nil, &copy_material_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: material?.handle) { p0 in
        _args.append (material == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (FogVolume.method_set_material, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_material: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_material")
        return withUnsafePointer (to: &FogVolume.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 5934680)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_material ()-> Material? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (FogVolume.method_get_material, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

