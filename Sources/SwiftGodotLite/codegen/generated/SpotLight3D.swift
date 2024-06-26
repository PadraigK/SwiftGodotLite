// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A spotlight, such as a reflector spotlight or a lantern.
/// 
/// A Spotlight is a type of ``Light3D`` node that emits lights in a specific direction, in the shape of a cone. The light is attenuated through the distance. This attenuation can be configured by changing the energy, radius and attenuation parameters of ``Light3D``.
/// 
/// > Note: When using the Mobile rendering method, only 8 spot lights can be displayed on each mesh resource. Attempting to display more than 8 spot lights on a single mesh resource will result in spot lights flickering in and out as the camera moves. When using the Compatibility rendering method, only 8 spot lights can be displayed on each mesh resource by default, but this can be increased by adjusting ``ProjectSettings/rendering/limits/opengl/maxLightsPerObject``.
/// 
/// > Note: When using the Mobile or Compatibility rendering methods, spot lights will only correctly affect meshes whose visibility AABB intersects with the light's AABB. If using a shader to deform the mesh in a way that makes it go outside its AABB, ``GeometryInstance3D/extraCullMargin`` must be increased on the mesh. Otherwise, the light may not be visible on the mesh.
/// 
open class SpotLight3D: Light3D {
    override open class var godotClassName: StringName { "SpotLight3D" }
    
    /* Properties */
    
    /// The maximal range that can be reached by the spotlight. Note that the effectively lit area may appear to be smaller depending on the ``spotAttenuation`` in use. No matter the ``spotAttenuation`` in use, the light will never reach anything outside this range.
    /// 
    /// > Note: ``spotRange`` is not affected by ``Node3D/scale`` (the light's scale or its parent's scale).
    /// 
    final public var spotRange: Double {
        get {
            return get_param (Light3D.Param (rawValue: 4)!)
        }
        
        set {
            set_param (Light3D.Param (rawValue: 4)!, newValue)
        }
        
    }
    
    /// The spotlight's light energy (drop-off) attenuation curve. A number of presets are available in the **Inspector** by right-clicking the curve. Zero and negative values are allowed but can produce unusual effects. See also ``spotAngleAttenuation``.
    /// 
    /// > Note: Very high ``spotAttenuation`` values (typically above 10) can impact performance negatively if the light is made to use a larger ``spotRange`` to compensate. This is because culling opportunities will become less common and shading costs will be increased (as the light will cover more pixels on screen while resulting in the same amount of brightness). To improve performance, use the lowest ``spotAttenuation`` value possible for the visuals you're trying to achieve.
    /// 
    final public var spotAttenuation: Double {
        get {
            return get_param (Light3D.Param (rawValue: 6)!)
        }
        
        set {
            set_param (Light3D.Param (rawValue: 6)!, newValue)
        }
        
    }
    
    /// The spotlight's angle in degrees.
    /// 
    /// > Note: ``spotAngle`` is not affected by ``Node3D/scale`` (the light's scale or its parent's scale).
    /// 
    final public var spotAngle: Double {
        get {
            return get_param (Light3D.Param (rawValue: 7)!)
        }
        
        set {
            set_param (Light3D.Param (rawValue: 7)!, newValue)
        }
        
    }
    
    /// The spotlight's _angular_ attenuation curve. See also ``spotAttenuation``.
    final public var spotAngleAttenuation: Double {
        get {
            return get_param (Light3D.Param (rawValue: 8)!)
        }
        
        set {
            set_param (Light3D.Param (rawValue: 8)!, newValue)
        }
        
    }
    
}

