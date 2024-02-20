// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Describes a Bézier curve in 2D space.
/// 
/// This class describes a Bézier curve in 2D space. It is mainly used to give a shape to a ``Path2D``, but can be manually sampled for other purposes.
/// 
/// It keeps a cache of precalculated points along the curve, to speed up further calculations.
/// 
open class Curve2D: Resource {
    override open class var godotClassName: StringName { "Curve2D" }
    
    /* Properties */
    
    /// The distance in pixels between two adjacent cached points. Changing it forces the cache to be recomputed the next time the ``getBakedPoints()`` or ``getBakedLength()`` function is called. The smaller the distance, the more points in the cache and the more memory it will consume, so use with care.
    final public var bakeInterval: Double {
        get {
            return get_bake_interval ()
        }
        
        set {
            set_bake_interval (newValue)
        }
        
    }
    
    /// The number of points describing the curve.
    final public var pointCount: Int32 {
        get {
            return get_point_count ()
        }
        
        set {
            set_point_count (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_point_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_count")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_point_count ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (Curve2D.method_get_point_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_point_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_point_count")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_point_count (_ count: Int32) {
        #if false
        
        var copy_count: Int = Int (count)
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_set_point_count, UnsafeMutableRawPointer (mutating: handle), nil, &copy_count)
        
        #else
        
        var copy_count: Int = Int (count)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_count) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve2D.method_set_point_count, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_add_point: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_point")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4175465202)!
            }
            
        }
        
    }()
    
    /// Adds a point with the specified `position` relative to the curve's own position, with control points `in` and `out`. Appends the new point at the end of the point list.
    /// 
    /// If `index` is given, the new point is inserted before the existing point identified by index `index`. Every existing point starting from `index` is shifted further down the list of points. The index must be greater than or equal to `0` and must not exceed the number of existing points in the line. See ``pointCount``.
    /// 
    public final func addPoint (position: Vector2, `in`: Vector2 = Vector2 (x: 0, y: 0), out: Vector2 = Vector2 (x: 0, y: 0), index: Int32 = -1) {
        #if false
        
        var copy_position = position
        var copy_in = `in`
        var copy_out = out
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_add_point, UnsafeMutableRawPointer (mutating: handle), nil, &copy_position, &copy_in, &copy_out, &copy_index)
        
        #else
        
        var copy_position = position
        var copy_in = `in`
        var copy_out = out
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_position) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_in) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_out) { p2 in
                    _args.append (p2)
                    withUnsafePointer (to: &copy_index) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (Curve2D.method_add_point, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_point_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_point_position")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 163021252)!
            }
            
        }
        
    }()
    
    /// Sets the position for the vertex `idx`. If the index is out of bounds, the function sends an error to the console.
    public final func setPointPosition (idx: Int32, position: Vector2) {
        #if false
        
        var copy_idx: Int = Int (idx)
        var copy_position = position
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_set_point_position, UnsafeMutableRawPointer (mutating: handle), nil, &copy_idx, &copy_position)
        
        #else
        
        var copy_idx: Int = Int (idx)
        var copy_position = position
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_position) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Curve2D.method_set_point_position, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_point_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_position")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2299179447)!
            }
            
        }
        
    }()
    
    /// Returns the position of the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0)`.
    public final func getPointPosition (idx: Int32)-> Vector2 {
        var _result: Vector2 = Vector2 ()
        #if false
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_get_point_position, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve2D.method_get_point_position, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_point_in: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_point_in")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 163021252)!
            }
            
        }
        
    }()
    
    /// Sets the position of the control point leading to the vertex `idx`. If the index is out of bounds, the function sends an error to the console. The position is relative to the vertex.
    public final func setPointIn (idx: Int32, position: Vector2) {
        #if false
        
        var copy_idx: Int = Int (idx)
        var copy_position = position
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_set_point_in, UnsafeMutableRawPointer (mutating: handle), nil, &copy_idx, &copy_position)
        
        #else
        
        var copy_idx: Int = Int (idx)
        var copy_position = position
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_position) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Curve2D.method_set_point_in, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_point_in: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_in")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2299179447)!
            }
            
        }
        
    }()
    
    /// Returns the position of the control point leading to the vertex `idx`. The returned position is relative to the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0)`.
    public final func getPointIn (idx: Int32)-> Vector2 {
        var _result: Vector2 = Vector2 ()
        #if false
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_get_point_in, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve2D.method_get_point_in, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_point_out: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_point_out")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 163021252)!
            }
            
        }
        
    }()
    
    /// Sets the position of the control point leading out of the vertex `idx`. If the index is out of bounds, the function sends an error to the console. The position is relative to the vertex.
    public final func setPointOut (idx: Int32, position: Vector2) {
        #if false
        
        var copy_idx: Int = Int (idx)
        var copy_position = position
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_set_point_out, UnsafeMutableRawPointer (mutating: handle), nil, &copy_idx, &copy_position)
        
        #else
        
        var copy_idx: Int = Int (idx)
        var copy_position = position
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_position) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Curve2D.method_set_point_out, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_point_out: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_out")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2299179447)!
            }
            
        }
        
    }()
    
    /// Returns the position of the control point leading out of the vertex `idx`. The returned position is relative to the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0)`.
    public final func getPointOut (idx: Int32)-> Vector2 {
        var _result: Vector2 = Vector2 ()
        #if false
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_get_point_out, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve2D.method_get_point_out, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_remove_point: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_point")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Deletes the point `idx` from the curve. Sends an error to the console if `idx` is out of bounds.
    public final func removePoint (idx: Int32) {
        #if false
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_remove_point, UnsafeMutableRawPointer (mutating: handle), nil, &copy_idx)
        
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve2D.method_remove_point, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_clear_points: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear_points")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all points from the curve.
    public final func clearPoints () {
        gi.object_method_bind_ptrcall (Curve2D.method_clear_points, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_sample: GDExtensionMethodBindPtr = {
        let methodName = StringName ("sample")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 26514310)!
            }
            
        }
        
    }()
    
    /// Returns the position between the vertex `idx` and the vertex `idx + 1`, where `t` controls if the point is the first vertex (`t = 0.0`), the last vertex (`t = 1.0`), or in between. Values of `t` outside the range (`0.0 >= t <=1`) give strange, but predictable results.
    /// 
    /// If `idx` is out of bounds it is truncated to the first or last vertex, and `t` is ignored. If the curve has no points, the function sends an error to the console, and returns `(0, 0)`.
    /// 
    public final func sample (idx: Int32, t: Double)-> Vector2 {
        var _result: Vector2 = Vector2 ()
        #if false
        
        var copy_idx: Int = Int (idx)
        var copy_t = t
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_sample, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_idx, &copy_t)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var copy_t = t
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_t) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Curve2D.method_sample, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_samplef: GDExtensionMethodBindPtr = {
        let methodName = StringName ("samplef")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3588506812)!
            }
            
        }
        
    }()
    
    /// Returns the position at the vertex `fofs`. It calls ``sample(idx:t:)`` using the integer part of `fofs` as `idx`, and its fractional part as `t`.
    public final func samplef (fofs: Double)-> Vector2 {
        var _result: Vector2 = Vector2 ()
        #if false
        
        var copy_fofs = fofs
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_samplef, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_fofs)
        return _result
        #else
        
        var copy_fofs = fofs
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_fofs) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve2D.method_samplef, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_bake_interval: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_bake_interval")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bake_interval (_ distance: Double) {
        #if false
        
        var copy_distance = distance
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_set_bake_interval, UnsafeMutableRawPointer (mutating: handle), nil, &copy_distance)
        
        #else
        
        var copy_distance = distance
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_distance) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve2D.method_set_bake_interval, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_bake_interval: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bake_interval")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bake_interval ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (Curve2D.method_get_bake_interval, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_baked_length: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_baked_length")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the total length of the curve, based on the cached points. Given enough density (see ``bakeInterval``), it should be approximate enough.
    public final func getBakedLength ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (Curve2D.method_get_baked_length, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_sample_baked: GDExtensionMethodBindPtr = {
        let methodName = StringName ("sample_baked")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3464257706)!
            }
            
        }
        
    }()
    
    /// Returns a point within the curve at position `offset`, where `offset` is measured as a pixel distance along the curve.
    /// 
    /// To do that, it finds the two cached points where the `offset` lies between, then interpolates the values. This interpolation is cubic if `cubic` is set to `true`, or linear if set to `false`.
    /// 
    /// Cubic interpolation tends to follow the curves better, but linear is faster (and often, precise enough).
    /// 
    public final func sampleBaked (offset: Double = 0.0, cubic: Bool = false)-> Vector2 {
        var _result: Vector2 = Vector2 ()
        #if false
        
        var copy_offset = offset
        var copy_cubic = cubic
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_sample_baked, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_offset, &copy_cubic)
        return _result
        #else
        
        var copy_offset = offset
        var copy_cubic = cubic
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_offset) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_cubic) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Curve2D.method_sample_baked, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_sample_baked_with_rotation: GDExtensionMethodBindPtr = {
        let methodName = StringName ("sample_baked_with_rotation")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3296056341)!
            }
            
        }
        
    }()
    
    /// Similar to ``sampleBaked(offset:cubic:)``, but returns ``Transform2D`` that includes a rotation along the curve, with ``Transform2D/origin`` as the point position, ``Transform2D/x`` as the sideways vector, and ``Transform2D/y`` as the forward vector. Returns an empty transform if the length of the curve is `0`.
    /// 
    public final func sampleBakedWithRotation (offset: Double = 0.0, cubic: Bool = false)-> Transform2D {
        var _result: Transform2D = Transform2D ()
        #if false
        
        var copy_offset = offset
        var copy_cubic = cubic
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_sample_baked_with_rotation, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_offset, &copy_cubic)
        return _result
        #else
        
        var copy_offset = offset
        var copy_cubic = cubic
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_offset) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_cubic) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Curve2D.method_sample_baked_with_rotation, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_baked_points: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_baked_points")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2961356807)!
            }
            
        }
        
    }()
    
    /// Returns the cache of points as a ``PackedVector2Array``.
    public final func getBakedPoints ()-> PackedVector2Array {
        let _result: PackedVector2Array = PackedVector2Array ()
        gi.object_method_bind_ptrcall (Curve2D.method_get_baked_points, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_closest_point: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_closest_point")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2656412154)!
            }
            
        }
        
    }()
    
    /// Returns the closest point on baked segments (in curve's local space) to `toPoint`.
    /// 
    /// `toPoint` must be in this curve's local space.
    /// 
    public final func getClosestPoint (toPoint: Vector2)-> Vector2 {
        var _result: Vector2 = Vector2 ()
        #if false
        
        var copy_to_point = toPoint
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_get_closest_point, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_to_point)
        return _result
        #else
        
        var copy_to_point = toPoint
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_to_point) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve2D.method_get_closest_point, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_closest_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_closest_offset")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2276447920)!
            }
            
        }
        
    }()
    
    /// Returns the closest offset to `toPoint`. This offset is meant to be used in ``sampleBaked(offset:cubic:)``.
    /// 
    /// `toPoint` must be in this curve's local space.
    /// 
    public final func getClosestOffset (toPoint: Vector2)-> Double {
        var _result: Double = 0.0
        #if false
        
        var copy_to_point = toPoint
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_get_closest_offset, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_to_point)
        return _result
        #else
        
        var copy_to_point = toPoint
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_to_point) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve2D.method_get_closest_offset, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_tessellate: GDExtensionMethodBindPtr = {
        let methodName = StringName ("tessellate")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 958145977)!
            }
            
        }
        
    }()
    
    /// Returns a list of points along the curve, with a curvature controlled point density. That is, the curvier parts will have more points than the straighter parts.
    /// 
    /// This approximation makes straight segments between each point, then subdivides those segments until the resulting shape is similar enough.
    /// 
    /// `maxStages` controls how many subdivisions a curve segment may face before it is considered approximate enough. Each subdivision splits the segment in half, so the default 5 stages may mean up to 32 subdivisions per curve segment. Increase with care!
    /// 
    /// `toleranceDegrees` controls how many degrees the midpoint of a segment may deviate from the real curve, before the segment has to be subdivided.
    /// 
    public final func tessellate (maxStages: Int32 = 5, toleranceDegrees: Double = 4)-> PackedVector2Array {
        let _result: PackedVector2Array = PackedVector2Array ()
        #if false
        
        var copy_max_stages: Int = Int (maxStages)
        var copy_tolerance_degrees = toleranceDegrees
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_tessellate, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_max_stages, &copy_tolerance_degrees)
        return _result
        #else
        
        var copy_max_stages: Int = Int (maxStages)
        var copy_tolerance_degrees = toleranceDegrees
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_max_stages) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_tolerance_degrees) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Curve2D.method_tessellate, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_tessellate_even_length: GDExtensionMethodBindPtr = {
        let methodName = StringName ("tessellate_even_length")
        return withUnsafePointer (to: &Curve2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2319761637)!
            }
            
        }
        
    }()
    
    /// Returns a list of points along the curve, with almost uniform density. `maxStages` controls how many subdivisions a curve segment may face before it is considered approximate enough. Each subdivision splits the segment in half, so the default 5 stages may mean up to 32 subdivisions per curve segment. Increase with care!
    /// 
    /// `toleranceLength` controls the maximal distance between two neighboring points, before the segment has to be subdivided.
    /// 
    public final func tessellateEvenLength (maxStages: Int32 = 5, toleranceLength: Double = 20.0)-> PackedVector2Array {
        let _result: PackedVector2Array = PackedVector2Array ()
        #if false
        
        var copy_max_stages: Int = Int (maxStages)
        var copy_tolerance_length = toleranceLength
        
        gi.object_method_bind_ptrcall_v (Curve2D.method_tessellate_even_length, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_max_stages, &copy_tolerance_length)
        return _result
        #else
        
        var copy_max_stages: Int = Int (maxStages)
        var copy_tolerance_length = toleranceLength
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_max_stages) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_tolerance_length) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Curve2D.method_tessellate_even_length, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
}

