// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A mathematical curve.
/// 
/// This resource describes a mathematical curve by defining a set of points and tangents at each point. By default, it ranges between `0` and `1` on the Y axis and positions points relative to the `0.5` Y position.
/// 
/// See also ``Gradient`` which is designed for color interpolation. See also ``Curve2D`` and ``Curve3D``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``rangeChanged``
open class Curve: Resource {
    override open class var godotClassName: StringName { "Curve" }
    public enum TangentMode: Int64 {
        /// The tangent on this side of the point is user-defined.
        case free = 0 // TANGENT_FREE
        /// The curve calculates the tangent on this side of the point as the slope halfway towards the adjacent point.
        case linear = 1 // TANGENT_LINEAR
        /// The total number of available tangent modes.
        case modeCount = 2 // TANGENT_MODE_COUNT
    }
    
    
    /* Properties */
    
    /// The minimum value the curve can reach.
    final public var minValue: Double {
        get {
            return get_min_value ()
        }
        
        set {
            set_min_value (newValue)
        }
        
    }
    
    /// The maximum value the curve can reach.
    final public var maxValue: Double {
        get {
            return get_max_value ()
        }
        
        set {
            set_max_value (newValue)
        }
        
    }
    
    /// The number of points to include in the baked (i.e. cached) curve data.
    final public var bakeResolution: Int32 {
        get {
            return get_bake_resolution ()
        }
        
        set {
            set_bake_resolution (newValue)
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
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_point_count ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (Curve.method_get_point_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_point_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_point_count")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_point_count (_ count: Int32) {
        #if true
        
        var copy_count: Int = Int (count)
        
        gi.object_method_bind_ptrcall_v (Curve.method_set_point_count, UnsafeMutableRawPointer (mutating: handle), nil, &copy_count)
        
        #else
        
        var copy_count: Int = Int (count)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_count) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve.method_set_point_count, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_add_point: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_point")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 434072736)!
            }
            
        }
        
    }()
    
    /// Adds a point to the curve. For each side, if the `*_mode` is .tangentLinear, the `*_tangent` angle (in degrees) uses the slope of the curve halfway to the adjacent point. Allows custom assignments to the `*_tangent` angle if `*_mode` is set to .tangentFree.
    public final func addPoint (position: Vector2, leftTangent: Double = 0, rightTangent: Double = 0, leftMode: Curve.TangentMode = .free, rightMode: Curve.TangentMode = .free)-> Int32 {
        var _result: Int32 = 0
        #if true
        
        var copy_position = position
        var copy_left_tangent = leftTangent
        var copy_right_tangent = rightTangent
        var copy_left_mode = Int64 (leftMode.rawValue)
        var copy_right_mode = Int64 (rightMode.rawValue)
        
        gi.object_method_bind_ptrcall_v (Curve.method_add_point, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_position, &copy_left_tangent, &copy_right_tangent, &copy_left_mode, &copy_right_mode)
        return _result
        #else
        
        var copy_position = position
        var copy_left_tangent = leftTangent
        var copy_right_tangent = rightTangent
        var copy_left_mode = Int64 (leftMode.rawValue)
        var copy_right_mode = Int64 (rightMode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_position) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_left_tangent) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_right_tangent) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &copy_left_mode) { p3 in
                        _args.append (p3)
                        return withUnsafePointer (to: &copy_right_mode) { p4 in
                            _args.append (p4)
        
                            gi.object_method_bind_ptrcall (Curve.method_add_point, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                            return _result
                        }
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_remove_point: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_point")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the point at `index` from the curve.
    public final func removePoint (index: Int32) {
        #if true
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (Curve.method_remove_point, UnsafeMutableRawPointer (mutating: handle), nil, &copy_index)
        
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve.method_remove_point, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_clear_points: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear_points")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all points from the curve.
    public final func clearPoints () {
        gi.object_method_bind_ptrcall (Curve.method_clear_points, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_get_point_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_position")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2299179447)!
            }
            
        }
        
    }()
    
    /// Returns the curve coordinates for the point at `index`.
    public final func getPointPosition (index: Int32)-> Vector2 {
        var _result: Vector2 = Vector2 ()
        #if true
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (Curve.method_get_point_position, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_index)
        return _result
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve.method_get_point_position, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_point_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_point_value")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Assigns the vertical position `y` to the point at `index`.
    public final func setPointValue (index: Int32, y: Double) {
        #if true
        
        var copy_index: Int = Int (index)
        var copy_y = y
        
        gi.object_method_bind_ptrcall_v (Curve.method_set_point_value, UnsafeMutableRawPointer (mutating: handle), nil, &copy_index, &copy_y)
        
        #else
        
        var copy_index: Int = Int (index)
        var copy_y = y
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_y) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Curve.method_set_point_value, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_point_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_point_offset")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3780573764)!
            }
            
        }
        
    }()
    
    /// Sets the offset from `0.5`.
    public final func setPointOffset (index: Int32, offset: Double)-> Int32 {
        var _result: Int32 = 0
        #if true
        
        var copy_index: Int = Int (index)
        var copy_offset = offset
        
        gi.object_method_bind_ptrcall_v (Curve.method_set_point_offset, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_index, &copy_offset)
        return _result
        #else
        
        var copy_index: Int = Int (index)
        var copy_offset = offset
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_offset) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Curve.method_set_point_offset, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_sample: GDExtensionMethodBindPtr = {
        let methodName = StringName ("sample")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3919130443)!
            }
            
        }
        
    }()
    
    /// Returns the Y value for the point that would exist at the X position `offset` along the curve.
    public final func sample (offset: Double)-> Double {
        var _result: Double = 0.0
        #if true
        
        var copy_offset = offset
        
        gi.object_method_bind_ptrcall_v (Curve.method_sample, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_offset)
        return _result
        #else
        
        var copy_offset = offset
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve.method_sample, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_sample_baked: GDExtensionMethodBindPtr = {
        let methodName = StringName ("sample_baked")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3919130443)!
            }
            
        }
        
    }()
    
    /// Returns the Y value for the point that would exist at the X position `offset` along the curve using the baked cache. Bakes the curve's points if not already baked.
    public final func sampleBaked (offset: Double)-> Double {
        var _result: Double = 0.0
        #if true
        
        var copy_offset = offset
        
        gi.object_method_bind_ptrcall_v (Curve.method_sample_baked, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_offset)
        return _result
        #else
        
        var copy_offset = offset
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve.method_sample_baked, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_point_left_tangent: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_left_tangent")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the left tangent angle (in degrees) for the point at `index`.
    public final func getPointLeftTangent (index: Int32)-> Double {
        var _result: Double = 0.0
        #if true
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (Curve.method_get_point_left_tangent, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_index)
        return _result
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve.method_get_point_left_tangent, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_point_right_tangent: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_right_tangent")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the right tangent angle (in degrees) for the point at `index`.
    public final func getPointRightTangent (index: Int32)-> Double {
        var _result: Double = 0.0
        #if true
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (Curve.method_get_point_right_tangent, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_index)
        return _result
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve.method_get_point_right_tangent, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_point_left_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_left_mode")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 426950354)!
            }
            
        }
        
    }()
    
    /// Returns the left ``Curve/TangentMode`` for the point at `index`.
    public final func getPointLeftMode (index: Int32)-> Curve.TangentMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (Curve.method_get_point_left_mode, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_index)
        return Curve.TangentMode (rawValue: _result)!
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve.method_get_point_left_mode, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return Curve.TangentMode (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_get_point_right_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_right_mode")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 426950354)!
            }
            
        }
        
    }()
    
    /// Returns the right ``Curve/TangentMode`` for the point at `index`.
    public final func getPointRightMode (index: Int32)-> Curve.TangentMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (Curve.method_get_point_right_mode, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_index)
        return Curve.TangentMode (rawValue: _result)!
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve.method_get_point_right_mode, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return Curve.TangentMode (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_set_point_left_tangent: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_point_left_tangent")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets the left tangent angle for the point at `index` to `tangent`.
    public final func setPointLeftTangent (index: Int32, tangent: Double) {
        #if true
        
        var copy_index: Int = Int (index)
        var copy_tangent = tangent
        
        gi.object_method_bind_ptrcall_v (Curve.method_set_point_left_tangent, UnsafeMutableRawPointer (mutating: handle), nil, &copy_index, &copy_tangent)
        
        #else
        
        var copy_index: Int = Int (index)
        var copy_tangent = tangent
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_tangent) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Curve.method_set_point_left_tangent, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_point_right_tangent: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_point_right_tangent")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets the right tangent angle for the point at `index` to `tangent`.
    public final func setPointRightTangent (index: Int32, tangent: Double) {
        #if true
        
        var copy_index: Int = Int (index)
        var copy_tangent = tangent
        
        gi.object_method_bind_ptrcall_v (Curve.method_set_point_right_tangent, UnsafeMutableRawPointer (mutating: handle), nil, &copy_index, &copy_tangent)
        
        #else
        
        var copy_index: Int = Int (index)
        var copy_tangent = tangent
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_tangent) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Curve.method_set_point_right_tangent, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_point_left_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_point_left_mode")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1217242874)!
            }
            
        }
        
    }()
    
    /// Sets the left ``Curve/TangentMode`` for the point at `index` to `mode`.
    public final func setPointLeftMode (index: Int32, mode: Curve.TangentMode) {
        #if true
        
        var copy_index: Int = Int (index)
        var copy_mode = Int64 (mode.rawValue)
        
        gi.object_method_bind_ptrcall_v (Curve.method_set_point_left_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_index, &copy_mode)
        
        #else
        
        var copy_index: Int = Int (index)
        var copy_mode = Int64 (mode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_mode) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Curve.method_set_point_left_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_point_right_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_point_right_mode")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1217242874)!
            }
            
        }
        
    }()
    
    /// Sets the right ``Curve/TangentMode`` for the point at `index` to `mode`.
    public final func setPointRightMode (index: Int32, mode: Curve.TangentMode) {
        #if true
        
        var copy_index: Int = Int (index)
        var copy_mode = Int64 (mode.rawValue)
        
        gi.object_method_bind_ptrcall_v (Curve.method_set_point_right_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_index, &copy_mode)
        
        #else
        
        var copy_index: Int = Int (index)
        var copy_mode = Int64 (mode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_mode) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Curve.method_set_point_right_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_min_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_min_value")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_min_value ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (Curve.method_get_min_value, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_min_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_min_value")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_min_value (_ min: Double) {
        #if true
        
        var copy_min = min
        
        gi.object_method_bind_ptrcall_v (Curve.method_set_min_value, UnsafeMutableRawPointer (mutating: handle), nil, &copy_min)
        
        #else
        
        var copy_min = min
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_min) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve.method_set_min_value, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_max_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_max_value")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_value ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (Curve.method_get_max_value, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_max_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_max_value")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_value (_ max: Double) {
        #if true
        
        var copy_max = max
        
        gi.object_method_bind_ptrcall_v (Curve.method_set_max_value, UnsafeMutableRawPointer (mutating: handle), nil, &copy_max)
        
        #else
        
        var copy_max = max
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_max) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve.method_set_max_value, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_clean_dupes: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clean_dupes")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes duplicate points, i.e. points that are less than 0.00001 units (engine epsilon value) away from their neighbor on the curve.
    public final func cleanDupes () {
        gi.object_method_bind_ptrcall (Curve.method_clean_dupes, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_bake: GDExtensionMethodBindPtr = {
        let methodName = StringName ("bake")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Recomputes the baked cache of points for the curve.
    public final func bake () {
        gi.object_method_bind_ptrcall (Curve.method_bake, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_get_bake_resolution: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bake_resolution")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bake_resolution ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (Curve.method_get_bake_resolution, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_bake_resolution: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_bake_resolution")
        return withUnsafePointer (to: &Curve.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bake_resolution (_ resolution: Int32) {
        #if true
        
        var copy_resolution: Int = Int (resolution)
        
        gi.object_method_bind_ptrcall_v (Curve.method_set_bake_resolution, UnsafeMutableRawPointer (mutating: handle), nil, &copy_resolution)
        
        #else
        
        var copy_resolution: Int = Int (resolution)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_resolution) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Curve.method_set_bake_resolution, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    // Signals 
    /// Emitted when ``maxValue`` or ``minValue`` is changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.rangeChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var rangeChanged: SimpleSignal { SimpleSignal (target: self, signalName: "range_changed") }
    
}
