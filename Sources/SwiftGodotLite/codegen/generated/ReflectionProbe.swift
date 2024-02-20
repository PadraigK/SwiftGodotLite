// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Captures its surroundings to create fast, accurate reflections from a given point.
/// 
/// Captures its surroundings as a cubemap, and stores versions of it with increasing levels of blur to simulate different material roughnesses.
/// 
/// The ``ReflectionProbe`` is used to create high-quality reflections at a low performance cost (when ``updateMode`` is .updateOnce). ``ReflectionProbe``s can be blended together and with the rest of the scene smoothly. ``ReflectionProbe``s can also be combined with ``VoxelGI``, SDFGI (``Environment/sdfgiEnabled``) and screen-space reflections (``Environment/ssrEnabled``) to get more accurate reflections in specific areas. ``ReflectionProbe``s render all objects within their ``cullMask``, so updating them can be quite expensive. It is best to update them once with the important static objects and then leave them as-is.
/// 
/// > Note: Unlike ``VoxelGI`` and SDFGI, ``ReflectionProbe``s only source their environment from a ``WorldEnvironment`` node. If you specify an ``Environment`` resource within a ``Camera3D`` node, it will be ignored by the ``ReflectionProbe``. This can lead to incorrect lighting within the ``ReflectionProbe``.
/// 
/// > Note: Reflection probes are only supported in the Forward+ and Mobile rendering methods, not Compatibility. When using the Mobile rendering method, only 8 reflection probes can be displayed on each mesh resource. Attempting to display more than 8 reflection probes on a single mesh resource will result in reflection probes flickering in and out as the camera moves.
/// 
/// > Note: When using the Mobile rendering method, reflection probes will only correctly affect meshes whose visibility AABB intersects with the reflection probe's AABB. If using a shader to deform the mesh in a way that makes it go outside its AABB, ``GeometryInstance3D/extraCullMargin`` must be increased on the mesh. Otherwise, the reflection probe may not be visible on the mesh.
/// 
open class ReflectionProbe: VisualInstance3D {
    override open class var godotClassName: StringName { "ReflectionProbe" }
    public enum UpdateMode: Int64 {
        /// Update the probe once on the next frame (recommended for most objects). The corresponding radiance map will be generated over the following six frames. This takes more time to update than .updateAlways, but it has a lower performance cost and can result in higher-quality reflections. The ReflectionProbe is updated when its transform changes, but not when nearby geometry changes. You can force a ``ReflectionProbe`` update by moving the ``ReflectionProbe`` slightly in any direction.
        case once = 0 // UPDATE_ONCE
        /// Update the probe every frame. This provides better results for fast-moving dynamic objects (such as cars). However, it has a significant performance cost. Due to the cost, it's recommended to only use one ReflectionProbe with .updateAlways at most per scene. For all other use cases, use .updateOnce.
        case always = 1 // UPDATE_ALWAYS
    }
    
    public enum AmbientMode: Int64 {
        /// Do not apply any ambient lighting inside the ``ReflectionProbe``'s box defined by its ``size``.
        case disabled = 0 // AMBIENT_DISABLED
        /// Apply automatically-sourced environment lighting inside the ``ReflectionProbe``'s box defined by its ``size``.
        case environment = 1 // AMBIENT_ENVIRONMENT
        /// Apply custom ambient lighting inside the ``ReflectionProbe``'s box defined by its ``size``. See ``ambientColor`` and ``ambientColorEnergy``.
        case color = 2 // AMBIENT_COLOR
    }
    
    
    /* Properties */
    
    /// Sets how frequently the ``ReflectionProbe`` is updated. Can be .updateOnce or .updateAlways.
    final public var updateMode: ReflectionProbe.UpdateMode {
        get {
            return get_update_mode ()
        }
        
        set {
            set_update_mode (newValue)
        }
        
    }
    
    /// Defines the reflection intensity. Intensity modulates the strength of the reflection.
    final public var intensity: Double {
        get {
            return get_intensity ()
        }
        
        set {
            set_intensity (newValue)
        }
        
    }
    
    /// The maximum distance away from the ``ReflectionProbe`` an object can be before it is culled. Decrease this to improve performance, especially when using the .updateAlways ``updateMode``.
    /// 
    /// > Note: The maximum reflection distance is always at least equal to the probe's extents. This means that decreasing ``maxDistance`` will not always cull objects from reflections, especially if the reflection probe's box defined by its ``size`` is already large.
    /// 
    final public var maxDistance: Double {
        get {
            return get_max_distance ()
        }
        
        set {
            set_max_distance (newValue)
        }
        
    }
    
    /// The size of the reflection probe. The larger the size, the more space covered by the probe, which will lower the perceived resolution. It is best to keep the size only as large as you need it.
    /// 
    /// > Note: To better fit areas that are not aligned to the grid, you can rotate the ``ReflectionProbe`` node.
    /// 
    final public var size: Vector3 {
        get {
            return get_size ()
        }
        
        set {
            set_size (newValue)
        }
        
    }
    
    /// Sets the origin offset to be used when this ``ReflectionProbe`` is in ``boxProjection`` mode. This can be set to a non-zero value to ensure a reflection fits a rectangle-shaped room, while reducing the number of objects that "get in the way" of the reflection.
    final public var originOffset: Vector3 {
        get {
            return get_origin_offset ()
        }
        
        set {
            set_origin_offset (newValue)
        }
        
    }
    
    /// If `true`, enables box projection. This makes reflections look more correct in rectangle-shaped rooms by offsetting the reflection center depending on the camera's location.
    /// 
    /// > Note: To better fit rectangle-shaped rooms that are not aligned to the grid, you can rotate the ``ReflectionProbe`` node.
    /// 
    final public var boxProjection: Bool {
        get {
            return is_box_projection_enabled ()
        }
        
        set {
            set_enable_box_projection (newValue)
        }
        
    }
    
    /// If `true`, reflections will ignore sky contribution.
    final public var interior: Bool {
        get {
            return is_set_as_interior ()
        }
        
        set {
            set_as_interior (newValue)
        }
        
    }
    
    /// If `true`, computes shadows in the reflection probe. This makes the reflection probe slower to render; you may want to disable this if using the .updateAlways ``updateMode``.
    final public var enableShadows: Bool {
        get {
            return are_shadows_enabled ()
        }
        
        set {
            set_enable_shadows (newValue)
        }
        
    }
    
    /// Sets the cull mask which determines what objects are drawn by this probe. Every ``VisualInstance3D`` with a layer included in this cull mask will be rendered by the probe. To improve performance, it is best to only include large objects which are likely to take up a lot of space in the reflection.
    final public var cullMask: UInt32 {
        get {
            return get_cull_mask ()
        }
        
        set {
            set_cull_mask (newValue)
        }
        
    }
    
    /// The automatic LOD bias to use for meshes rendered within the ``ReflectionProbe`` (this is analog to ``Viewport/meshLodThreshold``). Higher values will use less detailed versions of meshes that have LOD variations generated. If set to `0.0`, automatic LOD is disabled. Increase ``meshLodThreshold`` to improve performance at the cost of geometry detail, especially when using the .updateAlways ``updateMode``.
    /// 
    /// > Note: ``meshLodThreshold`` does not affect ``GeometryInstance3D`` visibility ranges (also known as "manual" LOD or hierarchical LOD).
    /// 
    final public var meshLodThreshold: Double {
        get {
            return get_mesh_lod_threshold ()
        }
        
        set {
            set_mesh_lod_threshold (newValue)
        }
        
    }
    
    /// The ambient color to use within the ``ReflectionProbe``'s box defined by its ``size``. The ambient color will smoothly blend with other ``ReflectionProbe``s and the rest of the scene (outside the ``ReflectionProbe``'s box defined by its ``size``).
    final public var ambientMode: ReflectionProbe.AmbientMode {
        get {
            return get_ambient_mode ()
        }
        
        set {
            set_ambient_mode (newValue)
        }
        
    }
    
    /// The custom ambient color to use within the ``ReflectionProbe``'s box defined by its ``size``. Only effective if ``ambientMode`` is .ambientColor.
    final public var ambientColor: Color {
        get {
            return get_ambient_color ()
        }
        
        set {
            set_ambient_color (newValue)
        }
        
    }
    
    /// The custom ambient color energy to use within the ``ReflectionProbe``'s box defined by its ``size``. Only effective if ``ambientMode`` is .ambientColor.
    final public var ambientColorEnergy: Double {
        get {
            return get_ambient_color_energy ()
        }
        
        set {
            set_ambient_color_energy (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_intensity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_intensity")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_intensity (_ intensity: Double) {
        #if true
        
        var copy_intensity = intensity
        
        gi.object_method_bind_ptrcall_v (ReflectionProbe.method_set_intensity, UnsafeMutableRawPointer (mutating: handle), nil, &copy_intensity)
        
        #else
        
        var copy_intensity = intensity
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_intensity) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ReflectionProbe.method_set_intensity, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_intensity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_intensity")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_intensity ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (ReflectionProbe.method_get_intensity, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_ambient_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_ambient_mode")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1748981278)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ambient_mode (_ ambient: ReflectionProbe.AmbientMode) {
        #if true
        
        var copy_ambient = Int64 (ambient.rawValue)
        
        gi.object_method_bind_ptrcall_v (ReflectionProbe.method_set_ambient_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_ambient)
        
        #else
        
        var copy_ambient = Int64 (ambient.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_ambient) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ReflectionProbe.method_set_ambient_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_ambient_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_ambient_mode")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1014607621)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ambient_mode ()-> ReflectionProbe.AmbientMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (ReflectionProbe.method_get_ambient_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return ReflectionProbe.AmbientMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_ambient_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_ambient_color")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ambient_color (_ ambient: Color) {
        #if true
        
        var copy_ambient = ambient
        
        gi.object_method_bind_ptrcall_v (ReflectionProbe.method_set_ambient_color, UnsafeMutableRawPointer (mutating: handle), nil, &copy_ambient)
        
        #else
        
        var copy_ambient = ambient
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_ambient) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ReflectionProbe.method_set_ambient_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_ambient_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_ambient_color")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ambient_color ()-> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall (ReflectionProbe.method_get_ambient_color, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_ambient_color_energy: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_ambient_color_energy")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ambient_color_energy (_ ambientEnergy: Double) {
        #if true
        
        var copy_ambient_energy = ambientEnergy
        
        gi.object_method_bind_ptrcall_v (ReflectionProbe.method_set_ambient_color_energy, UnsafeMutableRawPointer (mutating: handle), nil, &copy_ambient_energy)
        
        #else
        
        var copy_ambient_energy = ambientEnergy
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_ambient_energy) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ReflectionProbe.method_set_ambient_color_energy, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_ambient_color_energy: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_ambient_color_energy")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ambient_color_energy ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (ReflectionProbe.method_get_ambient_color_energy, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_max_distance: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_max_distance")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_distance (_ maxDistance: Double) {
        #if true
        
        var copy_max_distance = maxDistance
        
        gi.object_method_bind_ptrcall_v (ReflectionProbe.method_set_max_distance, UnsafeMutableRawPointer (mutating: handle), nil, &copy_max_distance)
        
        #else
        
        var copy_max_distance = maxDistance
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_max_distance) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ReflectionProbe.method_set_max_distance, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_max_distance: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_max_distance")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_distance ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (ReflectionProbe.method_get_max_distance, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_mesh_lod_threshold: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_mesh_lod_threshold")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mesh_lod_threshold (_ ratio: Double) {
        #if true
        
        var copy_ratio = ratio
        
        gi.object_method_bind_ptrcall_v (ReflectionProbe.method_set_mesh_lod_threshold, UnsafeMutableRawPointer (mutating: handle), nil, &copy_ratio)
        
        #else
        
        var copy_ratio = ratio
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_ratio) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ReflectionProbe.method_set_mesh_lod_threshold, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_mesh_lod_threshold: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_mesh_lod_threshold")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mesh_lod_threshold ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (ReflectionProbe.method_get_mesh_lod_threshold, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_size")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_size (_ size: Vector3) {
        #if true
        
        var copy_size = size
        
        gi.object_method_bind_ptrcall_v (ReflectionProbe.method_set_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_size)
        
        #else
        
        var copy_size = size
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ReflectionProbe.method_set_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_size")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_size ()-> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall (ReflectionProbe.method_get_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_origin_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_origin_offset")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_origin_offset (_ originOffset: Vector3) {
        #if true
        
        var copy_origin_offset = originOffset
        
        gi.object_method_bind_ptrcall_v (ReflectionProbe.method_set_origin_offset, UnsafeMutableRawPointer (mutating: handle), nil, &copy_origin_offset)
        
        #else
        
        var copy_origin_offset = originOffset
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_origin_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ReflectionProbe.method_set_origin_offset, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_origin_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_origin_offset")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_origin_offset ()-> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall (ReflectionProbe.method_get_origin_offset, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_as_interior: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_as_interior")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_as_interior (_ enable: Bool) {
        #if true
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (ReflectionProbe.method_set_as_interior, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ReflectionProbe.method_set_as_interior, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_set_as_interior: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_set_as_interior")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_set_as_interior ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (ReflectionProbe.method_is_set_as_interior, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_enable_box_projection: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_enable_box_projection")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enable_box_projection (_ enable: Bool) {
        #if true
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (ReflectionProbe.method_set_enable_box_projection, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ReflectionProbe.method_set_enable_box_projection, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_box_projection_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_box_projection_enabled")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_box_projection_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (ReflectionProbe.method_is_box_projection_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_enable_shadows: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_enable_shadows")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enable_shadows (_ enable: Bool) {
        #if true
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (ReflectionProbe.method_set_enable_shadows, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ReflectionProbe.method_set_enable_shadows, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_are_shadows_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("are_shadows_enabled")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func are_shadows_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (ReflectionProbe.method_are_shadows_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_cull_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_cull_mask")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cull_mask (_ layers: UInt32) {
        #if true
        
        var copy_layers: Int = Int (layers)
        
        gi.object_method_bind_ptrcall_v (ReflectionProbe.method_set_cull_mask, UnsafeMutableRawPointer (mutating: handle), nil, &copy_layers)
        
        #else
        
        var copy_layers: Int = Int (layers)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_layers) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ReflectionProbe.method_set_cull_mask, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_cull_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_cull_mask")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cull_mask ()-> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall (ReflectionProbe.method_get_cull_mask, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_update_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_update_mode")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4090221187)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_update_mode (_ mode: ReflectionProbe.UpdateMode) {
        #if true
        
        var copy_mode = Int64 (mode.rawValue)
        
        gi.object_method_bind_ptrcall_v (ReflectionProbe.method_set_update_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mode)
        
        #else
        
        var copy_mode = Int64 (mode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ReflectionProbe.method_set_update_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_update_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_update_mode")
        return withUnsafePointer (to: &ReflectionProbe.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2367550552)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_update_mode ()-> ReflectionProbe.UpdateMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (ReflectionProbe.method_get_update_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return ReflectionProbe.UpdateMode (rawValue: _result)!
    }
    
}

