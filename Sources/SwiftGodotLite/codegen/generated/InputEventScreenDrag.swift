// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Represents a screen drag event.
/// 
/// Stores information about screen drag events. See ``Node/_input(event:)``.
open class InputEventScreenDrag: InputEventFromWindow {
    override open class var godotClassName: StringName { "InputEventScreenDrag" }
    
    /* Properties */
    
    /// The drag event index in the case of a multi-drag event.
    final public var index: Int32 {
        get {
            return get_index ()
        }
        
        set {
            set_index (newValue)
        }
        
    }
    
    /// Represents the angles of tilt of the pen. Positive X-coordinate value indicates a tilt to the right. Positive Y-coordinate value indicates a tilt toward the user. Ranges from `-1.0` to `1.0` for both axes.
    final public var tilt: Vector2 {
        get {
            return get_tilt ()
        }
        
        set {
            set_tilt (newValue)
        }
        
    }
    
    /// Represents the pressure the user puts on the pen. Ranges from `0.0` to `1.0`.
    final public var pressure: Double {
        get {
            return get_pressure ()
        }
        
        set {
            set_pressure (newValue)
        }
        
    }
    
    /// Returns `true` when using the eraser end of a stylus pen.
    final public var penInverted: Bool {
        get {
            return get_pen_inverted ()
        }
        
        set {
            set_pen_inverted (newValue)
        }
        
    }
    
    /// The drag position.
    final public var position: Vector2 {
        get {
            return get_position ()
        }
        
        set {
            set_position (newValue)
        }
        
    }
    
    /// The drag position relative to the previous position (position at the last frame).
    final public var relative: Vector2 {
        get {
            return get_relative ()
        }
        
        set {
            set_relative (newValue)
        }
        
    }
    
    /// The drag velocity.
    final public var velocity: Vector2 {
        get {
            return get_velocity ()
        }
        
        set {
            set_velocity (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_index: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_index")
        return withUnsafePointer (to: &InputEventScreenDrag.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_index (_ index: Int32) {
        #if false
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (InputEventScreenDrag.method_set_index, UnsafeMutableRawPointer (mutating: handle), nil, &copy_index)
        
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventScreenDrag.method_set_index, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_index: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_index")
        return withUnsafePointer (to: &InputEventScreenDrag.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_index ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (InputEventScreenDrag.method_get_index, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_tilt: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_tilt")
        return withUnsafePointer (to: &InputEventScreenDrag.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tilt (_ tilt: Vector2) {
        #if false
        
        var copy_tilt = tilt
        
        gi.object_method_bind_ptrcall_v (InputEventScreenDrag.method_set_tilt, UnsafeMutableRawPointer (mutating: handle), nil, &copy_tilt)
        
        #else
        
        var copy_tilt = tilt
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_tilt) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventScreenDrag.method_set_tilt, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_tilt: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_tilt")
        return withUnsafePointer (to: &InputEventScreenDrag.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tilt ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (InputEventScreenDrag.method_get_tilt, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_pressure: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_pressure")
        return withUnsafePointer (to: &InputEventScreenDrag.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pressure (_ pressure: Double) {
        #if false
        
        var copy_pressure = pressure
        
        gi.object_method_bind_ptrcall_v (InputEventScreenDrag.method_set_pressure, UnsafeMutableRawPointer (mutating: handle), nil, &copy_pressure)
        
        #else
        
        var copy_pressure = pressure
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_pressure) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventScreenDrag.method_set_pressure, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_pressure: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_pressure")
        return withUnsafePointer (to: &InputEventScreenDrag.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pressure ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (InputEventScreenDrag.method_get_pressure, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_pen_inverted: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_pen_inverted")
        return withUnsafePointer (to: &InputEventScreenDrag.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pen_inverted (_ penInverted: Bool) {
        #if false
        
        var copy_pen_inverted = penInverted
        
        gi.object_method_bind_ptrcall_v (InputEventScreenDrag.method_set_pen_inverted, UnsafeMutableRawPointer (mutating: handle), nil, &copy_pen_inverted)
        
        #else
        
        var copy_pen_inverted = penInverted
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_pen_inverted) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventScreenDrag.method_set_pen_inverted, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_pen_inverted: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_pen_inverted")
        return withUnsafePointer (to: &InputEventScreenDrag.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pen_inverted ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (InputEventScreenDrag.method_get_pen_inverted, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_position")
        return withUnsafePointer (to: &InputEventScreenDrag.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_position (_ position: Vector2) {
        #if false
        
        var copy_position = position
        
        gi.object_method_bind_ptrcall_v (InputEventScreenDrag.method_set_position, UnsafeMutableRawPointer (mutating: handle), nil, &copy_position)
        
        #else
        
        var copy_position = position
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_position) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventScreenDrag.method_set_position, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_position")
        return withUnsafePointer (to: &InputEventScreenDrag.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_position ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (InputEventScreenDrag.method_get_position, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_relative: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_relative")
        return withUnsafePointer (to: &InputEventScreenDrag.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_relative (_ relative: Vector2) {
        #if false
        
        var copy_relative = relative
        
        gi.object_method_bind_ptrcall_v (InputEventScreenDrag.method_set_relative, UnsafeMutableRawPointer (mutating: handle), nil, &copy_relative)
        
        #else
        
        var copy_relative = relative
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_relative) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventScreenDrag.method_set_relative, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_relative: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_relative")
        return withUnsafePointer (to: &InputEventScreenDrag.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_relative ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (InputEventScreenDrag.method_get_relative, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_velocity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_velocity")
        return withUnsafePointer (to: &InputEventScreenDrag.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_velocity (_ velocity: Vector2) {
        #if false
        
        var copy_velocity = velocity
        
        gi.object_method_bind_ptrcall_v (InputEventScreenDrag.method_set_velocity, UnsafeMutableRawPointer (mutating: handle), nil, &copy_velocity)
        
        #else
        
        var copy_velocity = velocity
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_velocity) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventScreenDrag.method_set_velocity, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_velocity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_velocity")
        return withUnsafePointer (to: &InputEventScreenDrag.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_velocity ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (InputEventScreenDrag.method_get_velocity, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

