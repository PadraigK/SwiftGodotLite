// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Omnidirectional light, such as a light bulb or a candle.
/// 
/// An Omnidirectional light is a type of ``Light3D`` that emits light in all directions. The light is attenuated by distance and this attenuation can be configured by changing its energy, radius, and attenuation parameters.
/// 
/// > Note: When using the Mobile rendering method, only 8 omni lights can be displayed on each mesh resource. Attempting to display more than 8 omni lights on a single mesh resource will result in omni lights flickering in and out as the camera moves. When using the Compatibility rendering method, only 8 omni lights can be displayed on each mesh resource by default, but this can be increased by adjusting ``ProjectSettings/rendering/limits/opengl/maxLightsPerObject``.
/// 
/// > Note: When using the Mobile or Compatibility rendering methods, omni lights will only correctly affect meshes whose visibility AABB intersects with the light's AABB. If using a shader to deform the mesh in a way that makes it go outside its AABB, ``GeometryInstance3D/extraCullMargin`` must be increased on the mesh. Otherwise, the light may not be visible on the mesh.
/// 
open class OmniLight3D: Light3D {
    override open class var godotClassName: StringName { "OmniLight3D" }
    public enum ShadowMode: Int64 {
        /// Shadows are rendered to a dual-paraboloid texture. Faster than .shadowCube, but lower-quality.
        case dualParaboloid = 0 // SHADOW_DUAL_PARABOLOID
        /// Shadows are rendered to a cubemap. Slower than .shadowDualParaboloid, but higher-quality.
        case cube = 1 // SHADOW_CUBE
    }
    
    
    /* Properties */
    
    /// The light's radius. Note that the effectively lit area may appear to be smaller depending on the ``omniAttenuation`` in use. No matter the ``omniAttenuation`` in use, the light will never reach anything outside this radius.
    /// 
    /// > Note: ``omniRange`` is not affected by ``Node3D/scale`` (the light's scale or its parent's scale).
    /// 
    final public var omniRange: Double {
        get {
            return get_param (Light3D.Param (rawValue: 4)!)
        }
        
        set {
            set_param (Light3D.Param (rawValue: 4)!, newValue)
        }
        
    }
    
    /// The light's attenuation (drop-off) curve. A number of presets are available in the **Inspector** by right-clicking the curve. Zero and negative values are allowed but can produce unusual effects.
    /// 
    /// > Note: Very high ``omniAttenuation`` values (typically above 10) can impact performance negatively if the light is made to use a larger ``omniRange`` to compensate. This is because culling opportunities will become less common and shading costs will be increased (as the light will cover more pixels on screen while resulting in the same amount of brightness). To improve performance, use the lowest ``omniAttenuation`` value possible for the visuals you're trying to achieve.
    /// 
    final public var omniAttenuation: Double {
        get {
            return get_param (Light3D.Param (rawValue: 6)!)
        }
        
        set {
            set_param (Light3D.Param (rawValue: 6)!, newValue)
        }
        
    }
    
    /// See ``OmniLight3D/ShadowMode``.
    final public var omniShadowMode: OmniLight3D.ShadowMode {
        get {
            return get_shadow_mode ()
        }
        
        set {
            set_shadow_mode (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_shadow_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_shadow_mode")
        return withUnsafePointer (to: &OmniLight3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 121862228)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shadow_mode (_ mode: OmniLight3D.ShadowMode) {
        #if false
        
        var copy_mode = Int64 (mode.rawValue)
        
        gi.object_method_bind_ptrcall_v (OmniLight3D.method_set_shadow_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mode)
        
        #else
        
        var copy_mode = Int64 (mode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (OmniLight3D.method_set_shadow_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_shadow_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_shadow_mode")
        return withUnsafePointer (to: &OmniLight3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4181586331)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shadow_mode ()-> OmniLight3D.ShadowMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (OmniLight3D.method_get_shadow_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return OmniLight3D.ShadowMode (rawValue: _result)!
    }
    
}

