// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Casts light in a 2D environment.
/// 
/// Casts light in a 2D environment. A light is defined as a color, an energy value, a mode (see constants), and various other parameters (range and shadows-related).
open class Light2D: Node2D {
    override open class var godotClassName: StringName { "Light2D" }
    public enum ShadowFilter: Int64 {
        /// No filter applies to the shadow map. This provides hard shadow edges and is the fastest to render. See ``shadowFilter``.
        case none = 0 // SHADOW_FILTER_NONE
        /// Percentage closer filtering (5 samples) applies to the shadow map. This is slower compared to hard shadow rendering. See ``shadowFilter``.
        case pcf5 = 1 // SHADOW_FILTER_PCF5
        /// Percentage closer filtering (13 samples) applies to the shadow map. This is the slowest shadow filtering mode, and should be used sparingly. See ``shadowFilter``.
        case pcf13 = 2 // SHADOW_FILTER_PCF13
    }
    
    public enum BlendMode: Int64 {
        /// Adds the value of pixels corresponding to the Light2D to the values of pixels under it. This is the common behavior of a light.
        case add = 0 // BLEND_MODE_ADD
        /// Subtracts the value of pixels corresponding to the Light2D to the values of pixels under it, resulting in inversed light effect.
        case sub = 1 // BLEND_MODE_SUB
        /// Mix the value of pixels corresponding to the Light2D to the values of pixels under it by linear interpolation.
        case mix = 2 // BLEND_MODE_MIX
    }
    
    
    /* Properties */
    
    /// If `true`, Light2D will emit light.
    final public var enabled: Bool {
        get {
            return is_enabled ()
        }
        
        set {
            set_enabled (newValue)
        }
        
    }
    
    /// If `true`, Light2D will only appear when editing the scene.
    final public var editorOnly: Bool {
        get {
            return is_editor_only ()
        }
        
        set {
            set_editor_only (newValue)
        }
        
    }
    
    /// The Light2D's ``Color``.
    final public var color: Color {
        get {
            return get_color ()
        }
        
        set {
            set_color (newValue)
        }
        
    }
    
    /// The Light2D's energy value. The larger the value, the stronger the light.
    final public var energy: Double {
        get {
            return get_energy ()
        }
        
        set {
            set_energy (newValue)
        }
        
    }
    
    /// The Light2D's blend mode. See ``Light2D/BlendMode`` constants for values.
    final public var blendMode: Light2D.BlendMode {
        get {
            return get_blend_mode ()
        }
        
        set {
            set_blend_mode (newValue)
        }
        
    }
    
    /// Minimum `z` value of objects that are affected by the Light2D.
    final public var rangeZMin: Int32 {
        get {
            return get_z_range_min ()
        }
        
        set {
            set_z_range_min (newValue)
        }
        
    }
    
    /// Maximum `z` value of objects that are affected by the Light2D.
    final public var rangeZMax: Int32 {
        get {
            return get_z_range_max ()
        }
        
        set {
            set_z_range_max (newValue)
        }
        
    }
    
    /// Minimum layer value of objects that are affected by the Light2D.
    final public var rangeLayerMin: Int32 {
        get {
            return get_layer_range_min ()
        }
        
        set {
            set_layer_range_min (newValue)
        }
        
    }
    
    /// Maximum layer value of objects that are affected by the Light2D.
    final public var rangeLayerMax: Int32 {
        get {
            return get_layer_range_max ()
        }
        
        set {
            set_layer_range_max (newValue)
        }
        
    }
    
    /// The layer mask. Only objects with a matching ``CanvasItem/lightMask`` will be affected by the Light2D. See also ``shadowItemCullMask``, which affects which objects can cast shadows.
    /// 
    /// > Note: ``rangeItemCullMask`` is ignored by ``DirectionalLight2D``, which will always light a 2D node regardless of the 2D node's ``CanvasItem/lightMask``.
    /// 
    final public var rangeItemCullMask: Int32 {
        get {
            return get_item_cull_mask ()
        }
        
        set {
            set_item_cull_mask (newValue)
        }
        
    }
    
    /// If `true`, the Light2D will cast shadows.
    final public var shadowEnabled: Bool {
        get {
            return is_shadow_enabled ()
        }
        
        set {
            set_shadow_enabled (newValue)
        }
        
    }
    
    /// ``Color`` of shadows cast by the Light2D.
    final public var shadowColor: Color {
        get {
            return get_shadow_color ()
        }
        
        set {
            set_shadow_color (newValue)
        }
        
    }
    
    /// Shadow filter type. See ``Light2D/ShadowFilter`` for possible values.
    final public var shadowFilter: Light2D.ShadowFilter {
        get {
            return get_shadow_filter ()
        }
        
        set {
            set_shadow_filter (newValue)
        }
        
    }
    
    /// Smoothing value for shadows. Higher values will result in softer shadows, at the cost of visible streaks that can appear in shadow rendering. ``shadowFilterSmooth`` only has an effect if ``shadowFilter`` is .pcf5 or .pcf13.
    final public var shadowFilterSmooth: Double {
        get {
            return get_shadow_smooth ()
        }
        
        set {
            set_shadow_smooth (newValue)
        }
        
    }
    
    /// The shadow mask. Used with ``LightOccluder2D`` to cast shadows. Only occluders with a matching ``CanvasItem/lightMask`` will cast shadows. See also ``rangeItemCullMask``, which affects which objects can _receive_ the light.
    final public var shadowItemCullMask: Int32 {
        get {
            return get_item_shadow_cull_mask ()
        }
        
        set {
            set_item_shadow_cull_mask (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_enabled")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enabled (_ enabled: Bool) {
        #if false
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (Light2D.method_set_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Light2D.method_set_enabled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_enabled")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (Light2D.method_is_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_editor_only: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_editor_only")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_editor_only (_ editorOnly: Bool) {
        #if false
        
        var copy_editor_only = editorOnly
        
        gi.object_method_bind_ptrcall_v (Light2D.method_set_editor_only, UnsafeMutableRawPointer (mutating: handle), nil, &copy_editor_only)
        
        #else
        
        var copy_editor_only = editorOnly
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_editor_only) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Light2D.method_set_editor_only, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_editor_only: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_editor_only")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_editor_only ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (Light2D.method_is_editor_only, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_color")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_color (_ color: Color) {
        #if false
        
        var copy_color = color
        
        gi.object_method_bind_ptrcall_v (Light2D.method_set_color, UnsafeMutableRawPointer (mutating: handle), nil, &copy_color)
        
        #else
        
        var copy_color = color
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_color) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Light2D.method_set_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_color")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_color ()-> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall (Light2D.method_get_color, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_energy: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_energy")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_energy (_ energy: Double) {
        #if false
        
        var copy_energy = energy
        
        gi.object_method_bind_ptrcall_v (Light2D.method_set_energy, UnsafeMutableRawPointer (mutating: handle), nil, &copy_energy)
        
        #else
        
        var copy_energy = energy
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_energy) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Light2D.method_set_energy, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_energy: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_energy")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_energy ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (Light2D.method_get_energy, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_z_range_min: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_z_range_min")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_z_range_min (_ z: Int32) {
        #if false
        
        var copy_z: Int = Int (z)
        
        gi.object_method_bind_ptrcall_v (Light2D.method_set_z_range_min, UnsafeMutableRawPointer (mutating: handle), nil, &copy_z)
        
        #else
        
        var copy_z: Int = Int (z)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_z) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Light2D.method_set_z_range_min, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_z_range_min: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_z_range_min")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_z_range_min ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (Light2D.method_get_z_range_min, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_z_range_max: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_z_range_max")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_z_range_max (_ z: Int32) {
        #if false
        
        var copy_z: Int = Int (z)
        
        gi.object_method_bind_ptrcall_v (Light2D.method_set_z_range_max, UnsafeMutableRawPointer (mutating: handle), nil, &copy_z)
        
        #else
        
        var copy_z: Int = Int (z)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_z) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Light2D.method_set_z_range_max, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_z_range_max: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_z_range_max")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_z_range_max ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (Light2D.method_get_z_range_max, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_layer_range_min: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_layer_range_min")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_layer_range_min (_ layer: Int32) {
        #if false
        
        var copy_layer: Int = Int (layer)
        
        gi.object_method_bind_ptrcall_v (Light2D.method_set_layer_range_min, UnsafeMutableRawPointer (mutating: handle), nil, &copy_layer)
        
        #else
        
        var copy_layer: Int = Int (layer)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_layer) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Light2D.method_set_layer_range_min, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_layer_range_min: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_layer_range_min")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_layer_range_min ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (Light2D.method_get_layer_range_min, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_layer_range_max: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_layer_range_max")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_layer_range_max (_ layer: Int32) {
        #if false
        
        var copy_layer: Int = Int (layer)
        
        gi.object_method_bind_ptrcall_v (Light2D.method_set_layer_range_max, UnsafeMutableRawPointer (mutating: handle), nil, &copy_layer)
        
        #else
        
        var copy_layer: Int = Int (layer)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_layer) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Light2D.method_set_layer_range_max, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_layer_range_max: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_layer_range_max")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_layer_range_max ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (Light2D.method_get_layer_range_max, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_item_cull_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_item_cull_mask")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_item_cull_mask (_ itemCullMask: Int32) {
        #if false
        
        var copy_item_cull_mask: Int = Int (itemCullMask)
        
        gi.object_method_bind_ptrcall_v (Light2D.method_set_item_cull_mask, UnsafeMutableRawPointer (mutating: handle), nil, &copy_item_cull_mask)
        
        #else
        
        var copy_item_cull_mask: Int = Int (itemCullMask)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_item_cull_mask) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Light2D.method_set_item_cull_mask, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_item_cull_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_item_cull_mask")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_item_cull_mask ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (Light2D.method_get_item_cull_mask, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_item_shadow_cull_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_item_shadow_cull_mask")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_item_shadow_cull_mask (_ itemShadowCullMask: Int32) {
        #if false
        
        var copy_item_shadow_cull_mask: Int = Int (itemShadowCullMask)
        
        gi.object_method_bind_ptrcall_v (Light2D.method_set_item_shadow_cull_mask, UnsafeMutableRawPointer (mutating: handle), nil, &copy_item_shadow_cull_mask)
        
        #else
        
        var copy_item_shadow_cull_mask: Int = Int (itemShadowCullMask)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_item_shadow_cull_mask) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Light2D.method_set_item_shadow_cull_mask, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_item_shadow_cull_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_item_shadow_cull_mask")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_item_shadow_cull_mask ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (Light2D.method_get_item_shadow_cull_mask, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_shadow_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_shadow_enabled")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shadow_enabled (_ enabled: Bool) {
        #if false
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (Light2D.method_set_shadow_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Light2D.method_set_shadow_enabled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_shadow_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_shadow_enabled")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_shadow_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (Light2D.method_is_shadow_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_shadow_smooth: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_shadow_smooth")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shadow_smooth (_ smooth: Double) {
        #if false
        
        var copy_smooth = smooth
        
        gi.object_method_bind_ptrcall_v (Light2D.method_set_shadow_smooth, UnsafeMutableRawPointer (mutating: handle), nil, &copy_smooth)
        
        #else
        
        var copy_smooth = smooth
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_smooth) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Light2D.method_set_shadow_smooth, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_shadow_smooth: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_shadow_smooth")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shadow_smooth ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (Light2D.method_get_shadow_smooth, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_shadow_filter: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_shadow_filter")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3209356555)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shadow_filter (_ filter: Light2D.ShadowFilter) {
        #if false
        
        var copy_filter = Int64 (filter.rawValue)
        
        gi.object_method_bind_ptrcall_v (Light2D.method_set_shadow_filter, UnsafeMutableRawPointer (mutating: handle), nil, &copy_filter)
        
        #else
        
        var copy_filter = Int64 (filter.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_filter) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Light2D.method_set_shadow_filter, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_shadow_filter: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_shadow_filter")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1973619177)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shadow_filter ()-> Light2D.ShadowFilter {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (Light2D.method_get_shadow_filter, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return Light2D.ShadowFilter (rawValue: _result)!
    }
    
    fileprivate static var method_set_shadow_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_shadow_color")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shadow_color (_ shadowColor: Color) {
        #if false
        
        var copy_shadow_color = shadowColor
        
        gi.object_method_bind_ptrcall_v (Light2D.method_set_shadow_color, UnsafeMutableRawPointer (mutating: handle), nil, &copy_shadow_color)
        
        #else
        
        var copy_shadow_color = shadowColor
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_shadow_color) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Light2D.method_set_shadow_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_shadow_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_shadow_color")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shadow_color ()-> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall (Light2D.method_get_shadow_color, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_blend_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_blend_mode")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2916638796)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_blend_mode (_ mode: Light2D.BlendMode) {
        #if false
        
        var copy_mode = Int64 (mode.rawValue)
        
        gi.object_method_bind_ptrcall_v (Light2D.method_set_blend_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mode)
        
        #else
        
        var copy_mode = Int64 (mode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Light2D.method_set_blend_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_blend_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_blend_mode")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 936255250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_blend_mode ()-> Light2D.BlendMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (Light2D.method_get_blend_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return Light2D.BlendMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_height: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_height")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Sets the light's height, which is used in 2D normal mapping. See ``PointLight2D/height`` and ``DirectionalLight2D/height``.
    public final func setHeight (_ height: Double) {
        #if false
        
        var copy_height = height
        
        gi.object_method_bind_ptrcall_v (Light2D.method_set_height, UnsafeMutableRawPointer (mutating: handle), nil, &copy_height)
        
        #else
        
        var copy_height = height
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_height) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Light2D.method_set_height, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_height: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_height")
        return withUnsafePointer (to: &Light2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the light's height, which is used in 2D normal mapping. See ``PointLight2D/height`` and ``DirectionalLight2D/height``.
    public final func getHeight ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (Light2D.method_get_height, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

