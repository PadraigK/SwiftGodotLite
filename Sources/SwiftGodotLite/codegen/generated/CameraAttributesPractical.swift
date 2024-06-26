// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Camera settings in an easy to use format.
/// 
/// Controls camera-specific attributes such as auto-exposure, depth of field, and exposure override.
/// 
/// When used in a ``WorldEnvironment`` it provides default settings for exposure, auto-exposure, and depth of field that will be used by all cameras without their own ``CameraAttributes``, including the editor camera. When used in a ``Camera3D`` it will override any ``CameraAttributes`` set in the ``WorldEnvironment``. When used in ``VoxelGI`` or ``LightmapGI``, only the exposure settings will be used.
/// 
open class CameraAttributesPractical: CameraAttributes {
    override open class var godotClassName: StringName { "CameraAttributesPractical" }
    
    /* Properties */
    
    /// Enables depth of field blur for objects further than ``dofBlurFarDistance``. Strength of blur is controlled by ``dofBlurAmount`` and modulated by ``dofBlurFarTransition``.
    /// 
    /// > Note: Depth of field blur is only supported in the Forward+ and Mobile rendering methods, not Compatibility.
    /// 
    final public var dofBlurFarEnabled: Bool {
        get {
            return is_dof_blur_far_enabled ()
        }
        
        set {
            set_dof_blur_far_enabled (newValue)
        }
        
    }
    
    /// Objects further from the ``Camera3D`` by this amount will be blurred by the depth of field effect. Measured in meters.
    final public var dofBlurFarDistance: Double {
        get {
            return get_dof_blur_far_distance ()
        }
        
        set {
            set_dof_blur_far_distance (newValue)
        }
        
    }
    
    /// When positive, distance over which (starting from ``dofBlurFarDistance``) blur effect will scale from 0 to ``dofBlurAmount``. When negative, uses physically-based scaling so depth of field effect will scale from 0 at ``dofBlurFarDistance`` and will increase in a physically accurate way as objects get further from the ``Camera3D``.
    final public var dofBlurFarTransition: Double {
        get {
            return get_dof_blur_far_transition ()
        }
        
        set {
            set_dof_blur_far_transition (newValue)
        }
        
    }
    
    /// Enables depth of field blur for objects closer than ``dofBlurNearDistance``. Strength of blur is controlled by ``dofBlurAmount`` and modulated by ``dofBlurNearTransition``.
    /// 
    /// > Note: Depth of field blur is only supported in the Forward+ and Mobile rendering methods, not Compatibility.
    /// 
    final public var dofBlurNearEnabled: Bool {
        get {
            return is_dof_blur_near_enabled ()
        }
        
        set {
            set_dof_blur_near_enabled (newValue)
        }
        
    }
    
    /// Objects closer from the ``Camera3D`` by this amount will be blurred by the depth of field effect. Measured in meters.
    final public var dofBlurNearDistance: Double {
        get {
            return get_dof_blur_near_distance ()
        }
        
        set {
            set_dof_blur_near_distance (newValue)
        }
        
    }
    
    /// When positive, distance over which blur effect will scale from 0 to ``dofBlurAmount``, ending at ``dofBlurNearDistance``. When negative, uses physically-based scaling so depth of field effect will scale from 0 at ``dofBlurNearDistance`` and will increase in a physically accurate way as objects get closer to the ``Camera3D``.
    final public var dofBlurNearTransition: Double {
        get {
            return get_dof_blur_near_transition ()
        }
        
        set {
            set_dof_blur_near_transition (newValue)
        }
        
    }
    
    /// Sets the maximum amount of blur. When using physically-based blur amounts, will instead act as a multiplier. High values lead to an increased amount of bluriness, but can be much more expensive to calculate. It is best to keep this as low as possible for a given art style.
    final public var dofBlurAmount: Double {
        get {
            return get_dof_blur_amount ()
        }
        
        set {
            set_dof_blur_amount (newValue)
        }
        
    }
    
    /// The minimum sensitivity (in ISO) used when calculating auto exposure. When calculating scene average luminance, color values will be clamped to at least this value. This limits the auto-exposure from exposing above a certain brightness, resulting in a cut off point where the scene will remain dark.
    final public var autoExposureMinSensitivity: Double {
        get {
            return get_auto_exposure_min_sensitivity ()
        }
        
        set {
            set_auto_exposure_min_sensitivity (newValue)
        }
        
    }
    
    /// The maximum sensitivity (in ISO) used when calculating auto exposure. When calculating scene average luminance, color values will be clamped to at least this value. This limits the auto-exposure from exposing below a certain brightness, resulting in a cut off point where the scene will remain bright.
    final public var autoExposureMaxSensitivity: Double {
        get {
            return get_auto_exposure_max_sensitivity ()
        }
        
        set {
            set_auto_exposure_max_sensitivity (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_dof_blur_far_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_dof_blur_far_enabled")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_dof_blur_far_enabled (_ enabled: Bool) {
        #if false
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (CameraAttributesPractical.method_set_dof_blur_far_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CameraAttributesPractical.method_set_dof_blur_far_enabled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_dof_blur_far_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_dof_blur_far_enabled")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_dof_blur_far_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (CameraAttributesPractical.method_is_dof_blur_far_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_dof_blur_far_distance: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_dof_blur_far_distance")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_dof_blur_far_distance (_ distance: Double) {
        #if false
        
        var copy_distance = distance
        
        gi.object_method_bind_ptrcall_v (CameraAttributesPractical.method_set_dof_blur_far_distance, UnsafeMutableRawPointer (mutating: handle), nil, &copy_distance)
        
        #else
        
        var copy_distance = distance
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_distance) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CameraAttributesPractical.method_set_dof_blur_far_distance, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_dof_blur_far_distance: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_dof_blur_far_distance")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_dof_blur_far_distance ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (CameraAttributesPractical.method_get_dof_blur_far_distance, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_dof_blur_far_transition: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_dof_blur_far_transition")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_dof_blur_far_transition (_ distance: Double) {
        #if false
        
        var copy_distance = distance
        
        gi.object_method_bind_ptrcall_v (CameraAttributesPractical.method_set_dof_blur_far_transition, UnsafeMutableRawPointer (mutating: handle), nil, &copy_distance)
        
        #else
        
        var copy_distance = distance
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_distance) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CameraAttributesPractical.method_set_dof_blur_far_transition, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_dof_blur_far_transition: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_dof_blur_far_transition")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_dof_blur_far_transition ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (CameraAttributesPractical.method_get_dof_blur_far_transition, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_dof_blur_near_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_dof_blur_near_enabled")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_dof_blur_near_enabled (_ enabled: Bool) {
        #if false
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (CameraAttributesPractical.method_set_dof_blur_near_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CameraAttributesPractical.method_set_dof_blur_near_enabled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_dof_blur_near_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_dof_blur_near_enabled")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_dof_blur_near_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (CameraAttributesPractical.method_is_dof_blur_near_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_dof_blur_near_distance: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_dof_blur_near_distance")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_dof_blur_near_distance (_ distance: Double) {
        #if false
        
        var copy_distance = distance
        
        gi.object_method_bind_ptrcall_v (CameraAttributesPractical.method_set_dof_blur_near_distance, UnsafeMutableRawPointer (mutating: handle), nil, &copy_distance)
        
        #else
        
        var copy_distance = distance
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_distance) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CameraAttributesPractical.method_set_dof_blur_near_distance, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_dof_blur_near_distance: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_dof_blur_near_distance")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_dof_blur_near_distance ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (CameraAttributesPractical.method_get_dof_blur_near_distance, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_dof_blur_near_transition: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_dof_blur_near_transition")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_dof_blur_near_transition (_ distance: Double) {
        #if false
        
        var copy_distance = distance
        
        gi.object_method_bind_ptrcall_v (CameraAttributesPractical.method_set_dof_blur_near_transition, UnsafeMutableRawPointer (mutating: handle), nil, &copy_distance)
        
        #else
        
        var copy_distance = distance
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_distance) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CameraAttributesPractical.method_set_dof_blur_near_transition, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_dof_blur_near_transition: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_dof_blur_near_transition")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_dof_blur_near_transition ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (CameraAttributesPractical.method_get_dof_blur_near_transition, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_dof_blur_amount: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_dof_blur_amount")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_dof_blur_amount (_ amount: Double) {
        #if false
        
        var copy_amount = amount
        
        gi.object_method_bind_ptrcall_v (CameraAttributesPractical.method_set_dof_blur_amount, UnsafeMutableRawPointer (mutating: handle), nil, &copy_amount)
        
        #else
        
        var copy_amount = amount
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_amount) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CameraAttributesPractical.method_set_dof_blur_amount, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_dof_blur_amount: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_dof_blur_amount")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_dof_blur_amount ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (CameraAttributesPractical.method_get_dof_blur_amount, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_auto_exposure_max_sensitivity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_auto_exposure_max_sensitivity")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_auto_exposure_max_sensitivity (_ maxSensitivity: Double) {
        #if false
        
        var copy_max_sensitivity = maxSensitivity
        
        gi.object_method_bind_ptrcall_v (CameraAttributesPractical.method_set_auto_exposure_max_sensitivity, UnsafeMutableRawPointer (mutating: handle), nil, &copy_max_sensitivity)
        
        #else
        
        var copy_max_sensitivity = maxSensitivity
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_max_sensitivity) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CameraAttributesPractical.method_set_auto_exposure_max_sensitivity, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_auto_exposure_max_sensitivity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_auto_exposure_max_sensitivity")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_auto_exposure_max_sensitivity ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (CameraAttributesPractical.method_get_auto_exposure_max_sensitivity, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_auto_exposure_min_sensitivity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_auto_exposure_min_sensitivity")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_auto_exposure_min_sensitivity (_ minSensitivity: Double) {
        #if false
        
        var copy_min_sensitivity = minSensitivity
        
        gi.object_method_bind_ptrcall_v (CameraAttributesPractical.method_set_auto_exposure_min_sensitivity, UnsafeMutableRawPointer (mutating: handle), nil, &copy_min_sensitivity)
        
        #else
        
        var copy_min_sensitivity = minSensitivity
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_min_sensitivity) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CameraAttributesPractical.method_set_auto_exposure_min_sensitivity, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_auto_exposure_min_sensitivity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_auto_exposure_min_sensitivity")
        return withUnsafePointer (to: &CameraAttributesPractical.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_auto_exposure_min_sensitivity ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (CameraAttributesPractical.method_get_auto_exposure_min_sensitivity, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

