// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Represents a mouse button being pressed or released.
/// 
/// Stores information about mouse click events. See ``Node/_input(event:)``.
open class InputEventMouseButton: InputEventMouse {
    override open class var godotClassName: StringName { "InputEventMouseButton" }
    
    /* Properties */
    
    /// The amount (or delta) of the event. When used for high-precision scroll events, this indicates the scroll amount (vertical or horizontal). This is only supported on some platforms; the reported sensitivity varies depending on the platform. May be `0` if not supported.
    final public var factor: Double {
        get {
            return get_factor ()
        }
        
        set {
            set_factor (newValue)
        }
        
    }
    
    /// The mouse button identifier, one of the ``MouseButton`` button or button wheel constants.
    final public var buttonIndex: MouseButton {
        get {
            return get_button_index ()
        }
        
        set {
            set_button_index (newValue)
        }
        
    }
    
    /// If `true`, the mouse button event has been canceled.
    final public var canceled: Bool {
        get {
            return isCanceled ()
        }
        
        set {
            set_canceled (newValue)
        }
        
    }
    
    /// If `true`, the mouse button's state is pressed. If `false`, the mouse button's state is released.
    final public var pressed: Bool {
        get {
            return isPressed ()
        }
        
        set {
            set_pressed (newValue)
        }
        
    }
    
    /// If `true`, the mouse button's state is a double-click.
    final public var doubleClick: Bool {
        get {
            return is_double_click ()
        }
        
        set {
            set_double_click (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_factor: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_factor")
        return withUnsafePointer (to: &InputEventMouseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_factor (_ factor: Double) {
        #if false
        
        var copy_factor = factor
        
        gi.object_method_bind_ptrcall_v (InputEventMouseButton.method_set_factor, UnsafeMutableRawPointer (mutating: handle), nil, &copy_factor)
        
        #else
        
        var copy_factor = factor
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_factor) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventMouseButton.method_set_factor, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_factor: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_factor")
        return withUnsafePointer (to: &InputEventMouseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_factor ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (InputEventMouseButton.method_get_factor, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_button_index: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_button_index")
        return withUnsafePointer (to: &InputEventMouseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3624991109)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_button_index (_ buttonIndex: MouseButton) {
        #if false
        
        var copy_button_index = Int64 (buttonIndex.rawValue)
        
        gi.object_method_bind_ptrcall_v (InputEventMouseButton.method_set_button_index, UnsafeMutableRawPointer (mutating: handle), nil, &copy_button_index)
        
        #else
        
        var copy_button_index = Int64 (buttonIndex.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_button_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventMouseButton.method_set_button_index, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_button_index: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_button_index")
        return withUnsafePointer (to: &InputEventMouseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1132662608)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_button_index ()-> MouseButton {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (InputEventMouseButton.method_get_button_index, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return MouseButton (rawValue: _result)!
    }
    
    fileprivate static var method_set_pressed: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_pressed")
        return withUnsafePointer (to: &InputEventMouseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pressed (_ pressed: Bool) {
        #if false
        
        var copy_pressed = pressed
        
        gi.object_method_bind_ptrcall_v (InputEventMouseButton.method_set_pressed, UnsafeMutableRawPointer (mutating: handle), nil, &copy_pressed)
        
        #else
        
        var copy_pressed = pressed
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_pressed) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventMouseButton.method_set_pressed, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_canceled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_canceled")
        return withUnsafePointer (to: &InputEventMouseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_canceled (_ canceled: Bool) {
        #if false
        
        var copy_canceled = canceled
        
        gi.object_method_bind_ptrcall_v (InputEventMouseButton.method_set_canceled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_canceled)
        
        #else
        
        var copy_canceled = canceled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_canceled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventMouseButton.method_set_canceled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_double_click: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_double_click")
        return withUnsafePointer (to: &InputEventMouseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_double_click (_ doubleClick: Bool) {
        #if false
        
        var copy_double_click = doubleClick
        
        gi.object_method_bind_ptrcall_v (InputEventMouseButton.method_set_double_click, UnsafeMutableRawPointer (mutating: handle), nil, &copy_double_click)
        
        #else
        
        var copy_double_click = doubleClick
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_double_click) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventMouseButton.method_set_double_click, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_double_click: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_double_click")
        return withUnsafePointer (to: &InputEventMouseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_double_click ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (InputEventMouseButton.method_is_double_click, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

