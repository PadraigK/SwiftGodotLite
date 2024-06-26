// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Contains baked voxel global illumination data for use in a ``VoxelGI`` node.
/// 
/// ``VoxelGIData`` contains baked voxel global illumination for use in a ``VoxelGI`` node. ``VoxelGIData`` also offers several properties to adjust the final appearance of the global illumination. These properties can be adjusted at run-time without having to bake the ``VoxelGI`` node again.
/// 
/// > Note: To prevent text-based scene files (`.tscn`) from growing too much and becoming slow to load and save, always save ``VoxelGIData`` to an external binary resource file (`.res`) instead of embedding it within the scene. This can be done by clicking the dropdown arrow next to the ``VoxelGIData`` resource, choosing **Edit**, clicking the floppy disk icon at the top of the Inspector then choosing **Save As...**.
/// 
open class VoxelGIData: Resource {
    override open class var godotClassName: StringName { "VoxelGIData" }
    
    /* Properties */
    
    /// The dynamic range to use (`1.0` represents a low dynamic range scene brightness). Higher values can be used to provide brighter indirect lighting, at the cost of more visible color banding in dark areas (both in indirect lighting and reflections). To avoid color banding, it's recommended to use the lowest value that does not result in visible light clipping.
    final public var dynamicRange: Double {
        get {
            return get_dynamic_range ()
        }
        
        set {
            set_dynamic_range (newValue)
        }
        
    }
    
    /// The energy of the indirect lighting and reflections produced by the ``VoxelGI`` node. Higher values result in brighter indirect lighting. If indirect lighting looks too flat, try decreasing ``propagation`` while increasing ``energy`` at the same time. See also ``useTwoBounces`` which influences the indirect lighting's effective brightness.
    final public var energy: Double {
        get {
            return get_energy ()
        }
        
        set {
            set_energy (newValue)
        }
        
    }
    
    /// The normal bias to use for indirect lighting and reflections. Higher values reduce self-reflections visible in non-rough materials, at the cost of more visible light leaking and flatter-looking indirect lighting. To prioritize hiding self-reflections over lighting quality, set ``bias`` to `0.0` and ``normalBias`` to a value between `1.0` and `2.0`.
    final public var bias: Double {
        get {
            return get_bias ()
        }
        
        set {
            set_bias (newValue)
        }
        
    }
    
    /// The normal bias to use for indirect lighting and reflections. Higher values reduce self-reflections visible in non-rough materials, at the cost of more visible light leaking and flatter-looking indirect lighting. See also ``bias``. To prioritize hiding self-reflections over lighting quality, set ``bias`` to `0.0` and ``normalBias`` to a value between `1.0` and `2.0`.
    final public var normalBias: Double {
        get {
            return get_normal_bias ()
        }
        
        set {
            set_normal_bias (newValue)
        }
        
    }
    
    /// The multiplier to use when light bounces off a surface. Higher values result in brighter indirect lighting. If indirect lighting looks too flat, try decreasing ``propagation`` while increasing ``energy`` at the same time. See also ``useTwoBounces`` which influences the indirect lighting's effective brightness.
    final public var propagation: Double {
        get {
            return get_propagation ()
        }
        
        set {
            set_propagation (newValue)
        }
        
    }
    
    /// If `true`, performs two bounces of indirect lighting instead of one. This makes indirect lighting look more natural and brighter at a small performance cost. The second bounce is also visible in reflections. If the scene appears too bright after enabling ``useTwoBounces``, adjust ``propagation`` and ``energy``.
    final public var useTwoBounces: Bool {
        get {
            return is_using_two_bounces ()
        }
        
        set {
            set_use_two_bounces (newValue)
        }
        
    }
    
    /// If `true`, ``Environment`` lighting is ignored by the ``VoxelGI`` node. If `false`, ``Environment`` lighting is taken into account by the ``VoxelGI`` node. ``Environment`` lighting updates in real-time, which means it can be changed without having to bake the ``VoxelGI`` node again.
    final public var interior: Bool {
        get {
            return is_interior ()
        }
        
        set {
            set_interior (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_allocate: GDExtensionMethodBindPtr = {
        let methodName = StringName ("allocate")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4041601946)!
            }
            
        }
        
    }()
    
    /// 
    public final func allocate (toCellXform: Transform3D, aabb: AABB, octreeSize: Vector3, octreeCells: PackedByteArray, dataCells: PackedByteArray, distanceField: PackedByteArray, levelCounts: PackedInt32Array) {
        #if false
        
        var copy_to_cell_xform = toCellXform
        var copy_aabb = aabb
        var copy_octree_size = octreeSize
        
        gi.object_method_bind_ptrcall_v (VoxelGIData.method_allocate, UnsafeMutableRawPointer (mutating: handle), nil, &copy_to_cell_xform, &copy_aabb, &copy_octree_size, &octreeCells.content, &dataCells.content, &distanceField.content, &levelCounts.content)
        
        #else
        
        var copy_to_cell_xform = toCellXform
        var copy_aabb = aabb
        var copy_octree_size = octreeSize
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_to_cell_xform) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_aabb) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_octree_size) { p2 in
                    _args.append (p2)
                    withUnsafePointer (to: &octreeCells.content) { p3 in
                        _args.append (p3)
                        withUnsafePointer (to: &dataCells.content) { p4 in
                            _args.append (p4)
                            withUnsafePointer (to: &distanceField.content) { p5 in
                                _args.append (p5)
                                withUnsafePointer (to: &levelCounts.content) { p6 in
                                    _args.append (p6)
        
                                    gi.object_method_bind_ptrcall (VoxelGIData.method_allocate, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                                }
                            }
                        }
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_bounds: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bounds")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1068685055)!
            }
            
        }
        
    }()
    
    /// Returns the bounds of the baked voxel data as an ``AABB``, which should match ``VoxelGI/size`` after being baked (which only contains the size as a ``Vector3``).
    /// 
    /// > Note: If the size was modified without baking the VoxelGI data, then the value of ``getBounds()`` and ``VoxelGI/size`` will not match.
    /// 
    public final func getBounds ()-> AABB {
        var _result: AABB = AABB ()
        gi.object_method_bind_ptrcall (VoxelGIData.method_get_bounds, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_octree_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_octree_size")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// 
    public final func getOctreeSize ()-> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall (VoxelGIData.method_get_octree_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_to_cell_xform: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_to_cell_xform")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3229777777)!
            }
            
        }
        
    }()
    
    /// 
    public final func getToCellXform ()-> Transform3D {
        var _result: Transform3D = Transform3D ()
        gi.object_method_bind_ptrcall (VoxelGIData.method_get_to_cell_xform, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_octree_cells: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_octree_cells")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2362200018)!
            }
            
        }
        
    }()
    
    /// 
    public final func getOctreeCells ()-> PackedByteArray {
        let _result: PackedByteArray = PackedByteArray ()
        gi.object_method_bind_ptrcall (VoxelGIData.method_get_octree_cells, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_data_cells: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_data_cells")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2362200018)!
            }
            
        }
        
    }()
    
    /// 
    public final func getDataCells ()-> PackedByteArray {
        let _result: PackedByteArray = PackedByteArray ()
        gi.object_method_bind_ptrcall (VoxelGIData.method_get_data_cells, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_level_counts: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_level_counts")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1930428628)!
            }
            
        }
        
    }()
    
    /// 
    public final func getLevelCounts ()-> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall (VoxelGIData.method_get_level_counts, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_dynamic_range: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_dynamic_range")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_dynamic_range (_ dynamicRange: Double) {
        #if false
        
        var copy_dynamic_range = dynamicRange
        
        gi.object_method_bind_ptrcall_v (VoxelGIData.method_set_dynamic_range, UnsafeMutableRawPointer (mutating: handle), nil, &copy_dynamic_range)
        
        #else
        
        var copy_dynamic_range = dynamicRange
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_dynamic_range) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VoxelGIData.method_set_dynamic_range, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_dynamic_range: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_dynamic_range")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_dynamic_range ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (VoxelGIData.method_get_dynamic_range, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_energy: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_energy")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_energy (_ energy: Double) {
        #if false
        
        var copy_energy = energy
        
        gi.object_method_bind_ptrcall_v (VoxelGIData.method_set_energy, UnsafeMutableRawPointer (mutating: handle), nil, &copy_energy)
        
        #else
        
        var copy_energy = energy
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_energy) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VoxelGIData.method_set_energy, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_energy: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_energy")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_energy ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (VoxelGIData.method_get_energy, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_bias: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_bias")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bias (_ bias: Double) {
        #if false
        
        var copy_bias = bias
        
        gi.object_method_bind_ptrcall_v (VoxelGIData.method_set_bias, UnsafeMutableRawPointer (mutating: handle), nil, &copy_bias)
        
        #else
        
        var copy_bias = bias
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_bias) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VoxelGIData.method_set_bias, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_bias: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bias")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bias ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (VoxelGIData.method_get_bias, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_normal_bias: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_normal_bias")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_normal_bias (_ bias: Double) {
        #if false
        
        var copy_bias = bias
        
        gi.object_method_bind_ptrcall_v (VoxelGIData.method_set_normal_bias, UnsafeMutableRawPointer (mutating: handle), nil, &copy_bias)
        
        #else
        
        var copy_bias = bias
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_bias) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VoxelGIData.method_set_normal_bias, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_normal_bias: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_normal_bias")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_normal_bias ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (VoxelGIData.method_get_normal_bias, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_propagation: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_propagation")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_propagation (_ propagation: Double) {
        #if false
        
        var copy_propagation = propagation
        
        gi.object_method_bind_ptrcall_v (VoxelGIData.method_set_propagation, UnsafeMutableRawPointer (mutating: handle), nil, &copy_propagation)
        
        #else
        
        var copy_propagation = propagation
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_propagation) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VoxelGIData.method_set_propagation, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_propagation: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_propagation")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_propagation ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (VoxelGIData.method_get_propagation, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_interior: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_interior")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_interior (_ interior: Bool) {
        #if false
        
        var copy_interior = interior
        
        gi.object_method_bind_ptrcall_v (VoxelGIData.method_set_interior, UnsafeMutableRawPointer (mutating: handle), nil, &copy_interior)
        
        #else
        
        var copy_interior = interior
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_interior) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VoxelGIData.method_set_interior, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_interior: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_interior")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_interior ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (VoxelGIData.method_is_interior, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_use_two_bounces: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_use_two_bounces")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_two_bounces (_ enable: Bool) {
        #if false
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (VoxelGIData.method_set_use_two_bounces, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VoxelGIData.method_set_use_two_bounces, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_using_two_bounces: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_using_two_bounces")
        return withUnsafePointer (to: &VoxelGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_two_bounces ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (VoxelGIData.method_is_using_two_bounces, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

