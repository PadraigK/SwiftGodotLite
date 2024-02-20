// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A container used to provide scrollbars to a child control when needed.
/// 
/// A container used to provide a child control with scrollbars when needed. Scrollbars will automatically be drawn at the right (for vertical) or bottom (for horizontal) and will enable dragging to move the viewable Control (and its children) within the ScrollContainer. Scrollbars will also automatically resize the grabber based on the ``Control/customMinimumSize`` of the Control relative to the ScrollContainer.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``scrollStarted``
/// - ``scrollEnded``
open class ScrollContainer: Container {
    override open class var godotClassName: StringName { "ScrollContainer" }
    public enum ScrollMode: Int64 {
        /// Scrolling disabled, scrollbar will be invisible.
        case disabled = 0 // SCROLL_MODE_DISABLED
        /// Scrolling enabled, scrollbar will be visible only if necessary, i.e. container's content is bigger than the container.
        case auto = 1 // SCROLL_MODE_AUTO
        /// Scrolling enabled, scrollbar will be always visible.
        case showAlways = 2 // SCROLL_MODE_SHOW_ALWAYS
        /// Scrolling enabled, scrollbar will be hidden.
        case showNever = 3 // SCROLL_MODE_SHOW_NEVER
    }
    
    
    /* Properties */
    
    /// If `true`, the ScrollContainer will automatically scroll to focused children (including indirect children) to make sure they are fully visible.
    final public var followFocus: Bool {
        get {
            return is_following_focus ()
        }
        
        set {
            set_follow_focus (newValue)
        }
        
    }
    
    /// The current horizontal scroll value.
    /// 
    /// > Note: If you are setting this value in the ``Node/_ready()`` function or earlier, it needs to be wrapped with ``Object/setDeferred(property:value:)``, since scroll bar's ``Range/maxValue`` is not initialized yet.
    /// 
    final public var scrollHorizontal: Int32 {
        get {
            return get_h_scroll ()
        }
        
        set {
            set_h_scroll (newValue)
        }
        
    }
    
    /// The current vertical scroll value.
    /// 
    /// > Note: Setting it early needs to be deferred, just like in ``scrollHorizontal``.
    /// 
    final public var scrollVertical: Int32 {
        get {
            return get_v_scroll ()
        }
        
        set {
            set_v_scroll (newValue)
        }
        
    }
    
    /// Overrides the ``ScrollBar/customStep`` used when clicking the internal scroll bar's horizontal increment and decrement buttons or when using arrow keys when the ``ScrollBar`` is focused.
    final public var scrollHorizontalCustomStep: Double {
        get {
            return get_horizontal_custom_step ()
        }
        
        set {
            set_horizontal_custom_step (newValue)
        }
        
    }
    
    /// Overrides the ``ScrollBar/customStep`` used when clicking the internal scroll bar's vertical increment and decrement buttons or when using arrow keys when the ``ScrollBar`` is focused.
    final public var scrollVerticalCustomStep: Double {
        get {
            return get_vertical_custom_step ()
        }
        
        set {
            set_vertical_custom_step (newValue)
        }
        
    }
    
    /// Controls whether horizontal scrollbar can be used and when it should be visible. See ``ScrollContainer/ScrollMode`` for options.
    final public var horizontalScrollMode: ScrollContainer.ScrollMode {
        get {
            return get_horizontal_scroll_mode ()
        }
        
        set {
            set_horizontal_scroll_mode (newValue)
        }
        
    }
    
    /// Controls whether vertical scrollbar can be used and when it should be visible. See ``ScrollContainer/ScrollMode`` for options.
    final public var verticalScrollMode: ScrollContainer.ScrollMode {
        get {
            return get_vertical_scroll_mode ()
        }
        
        set {
            set_vertical_scroll_mode (newValue)
        }
        
    }
    
    /// Deadzone for touch scrolling. Lower deadzone makes the scrolling more sensitive.
    final public var scrollDeadzone: Int32 {
        get {
            return get_deadzone ()
        }
        
        set {
            set_deadzone (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_h_scroll: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_h_scroll")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_h_scroll (_ value: Int32) {
        #if false
        
        var copy_value: Int = Int (value)
        
        gi.object_method_bind_ptrcall_v (ScrollContainer.method_set_h_scroll, UnsafeMutableRawPointer (mutating: handle), nil, &copy_value)
        
        #else
        
        var copy_value: Int = Int (value)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_value) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ScrollContainer.method_set_h_scroll, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_h_scroll: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_h_scroll")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_h_scroll ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (ScrollContainer.method_get_h_scroll, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_v_scroll: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_v_scroll")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_v_scroll (_ value: Int32) {
        #if false
        
        var copy_value: Int = Int (value)
        
        gi.object_method_bind_ptrcall_v (ScrollContainer.method_set_v_scroll, UnsafeMutableRawPointer (mutating: handle), nil, &copy_value)
        
        #else
        
        var copy_value: Int = Int (value)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_value) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ScrollContainer.method_set_v_scroll, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_v_scroll: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_v_scroll")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_v_scroll ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (ScrollContainer.method_get_v_scroll, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_horizontal_custom_step: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_horizontal_custom_step")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_horizontal_custom_step (_ value: Double) {
        #if false
        
        var copy_value = value
        
        gi.object_method_bind_ptrcall_v (ScrollContainer.method_set_horizontal_custom_step, UnsafeMutableRawPointer (mutating: handle), nil, &copy_value)
        
        #else
        
        var copy_value = value
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_value) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ScrollContainer.method_set_horizontal_custom_step, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_horizontal_custom_step: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_horizontal_custom_step")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_horizontal_custom_step ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (ScrollContainer.method_get_horizontal_custom_step, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_vertical_custom_step: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_vertical_custom_step")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_vertical_custom_step (_ value: Double) {
        #if false
        
        var copy_value = value
        
        gi.object_method_bind_ptrcall_v (ScrollContainer.method_set_vertical_custom_step, UnsafeMutableRawPointer (mutating: handle), nil, &copy_value)
        
        #else
        
        var copy_value = value
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_value) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ScrollContainer.method_set_vertical_custom_step, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_vertical_custom_step: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_vertical_custom_step")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_vertical_custom_step ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (ScrollContainer.method_get_vertical_custom_step, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_horizontal_scroll_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_horizontal_scroll_mode")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2750506364)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_horizontal_scroll_mode (_ enable: ScrollContainer.ScrollMode) {
        #if false
        
        var copy_enable = Int64 (enable.rawValue)
        
        gi.object_method_bind_ptrcall_v (ScrollContainer.method_set_horizontal_scroll_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = Int64 (enable.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ScrollContainer.method_set_horizontal_scroll_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_horizontal_scroll_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_horizontal_scroll_mode")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3987985145)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_horizontal_scroll_mode ()-> ScrollContainer.ScrollMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (ScrollContainer.method_get_horizontal_scroll_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return ScrollContainer.ScrollMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_vertical_scroll_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_vertical_scroll_mode")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2750506364)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_vertical_scroll_mode (_ enable: ScrollContainer.ScrollMode) {
        #if false
        
        var copy_enable = Int64 (enable.rawValue)
        
        gi.object_method_bind_ptrcall_v (ScrollContainer.method_set_vertical_scroll_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = Int64 (enable.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ScrollContainer.method_set_vertical_scroll_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_vertical_scroll_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_vertical_scroll_mode")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3987985145)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_vertical_scroll_mode ()-> ScrollContainer.ScrollMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (ScrollContainer.method_get_vertical_scroll_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return ScrollContainer.ScrollMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_deadzone: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_deadzone")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_deadzone (_ deadzone: Int32) {
        #if false
        
        var copy_deadzone: Int = Int (deadzone)
        
        gi.object_method_bind_ptrcall_v (ScrollContainer.method_set_deadzone, UnsafeMutableRawPointer (mutating: handle), nil, &copy_deadzone)
        
        #else
        
        var copy_deadzone: Int = Int (deadzone)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_deadzone) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ScrollContainer.method_set_deadzone, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_deadzone: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_deadzone")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_deadzone ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (ScrollContainer.method_get_deadzone, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_follow_focus: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_follow_focus")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_follow_focus (_ enabled: Bool) {
        #if false
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (ScrollContainer.method_set_follow_focus, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ScrollContainer.method_set_follow_focus, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_following_focus: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_following_focus")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_following_focus ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (ScrollContainer.method_is_following_focus, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_h_scroll_bar: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_h_scroll_bar")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4004517983)!
            }
            
        }
        
    }()
    
    /// Returns the horizontal scrollbar ``HScrollBar`` of this ``ScrollContainer``.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to disable or hide a scrollbar, you can use ``horizontalScrollMode``.
    /// 
    public final func getHScrollBar ()-> HScrollBar? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (ScrollContainer.method_get_h_scroll_bar, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_v_scroll_bar: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_v_scroll_bar")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2630340773)!
            }
            
        }
        
    }()
    
    /// Returns the vertical scrollbar ``VScrollBar`` of this ``ScrollContainer``.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to disable or hide a scrollbar, you can use ``verticalScrollMode``.
    /// 
    public final func getVScrollBar ()-> VScrollBar? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (ScrollContainer.method_get_v_scroll_bar, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_ensure_control_visible: GDExtensionMethodBindPtr = {
        let methodName = StringName ("ensure_control_visible")
        return withUnsafePointer (to: &ScrollContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1496901182)!
            }
            
        }
        
    }()
    
    /// Ensures the given `control` is visible (must be a direct or indirect child of the ScrollContainer). Used by ``followFocus``.
    /// 
    /// > Note: This will not work on a node that was just added during the same frame. If you want to scroll to a newly added child, you must wait until the next frame using [signal SceneTree.process_frame]:
    /// 
    public final func ensureControlVisible (control: Control?) {
        #if false
        
        var copy_control_handle = control?.handle
        
        gi.object_method_bind_ptrcall_v (ScrollContainer.method_ensure_control_visible, UnsafeMutableRawPointer (mutating: handle), nil, &copy_control_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: control?.handle) { p0 in
        _args.append (control == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (ScrollContainer.method_ensure_control_visible, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    // Signals 
    /// Emitted when scrolling starts when dragging the scrollable area w_ith a touch event_. This signal is _not_ emitted when scrolling by dragging the scrollbar, scrolling with the mouse wheel or scrolling with keyboard/gamepad events.
    /// 
    /// > Note: This signal is only emitted on Android or iOS, or on desktop/web platforms when ``ProjectSettings/inputDevices/pointing/emulateTouchFromMouse`` is enabled.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.scrollStarted.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var scrollStarted: SimpleSignal { SimpleSignal (target: self, signalName: "scroll_started") }
    
    /// Emitted when scrolling stops when dragging the scrollable area _with a touch event_. This signal is _not_ emitted when scrolling by dragging the scrollbar, scrolling with the mouse wheel or scrolling with keyboard/gamepad events.
    /// 
    /// > Note: This signal is only emitted on Android or iOS, or on desktop/web platforms when ``ProjectSettings/inputDevices/pointing/emulateTouchFromMouse`` is enabled.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.scrollEnded.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var scrollEnded: SimpleSignal { SimpleSignal (target: self, signalName: "scroll_ended") }
    
}

