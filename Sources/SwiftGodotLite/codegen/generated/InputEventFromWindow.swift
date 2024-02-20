// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Abstract base class for ``Viewport``-based input events.
/// 
/// InputEventFromWindow represents events specifically received by windows. This includes mouse events, keyboard events in focused windows or touch screen actions.
open class InputEventFromWindow: InputEvent {
    override open class var godotClassName: StringName { "InputEventFromWindow" }
    
    /* Properties */
    
    /// The ID of a ``Window`` that received this event.
    final public var windowId: Int {
        get {
            return get_window_id ()
        }
        
        set {
            set_window_id (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_window_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_window_id")
        return withUnsafePointer (to: &InputEventFromWindow.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_window_id (_ id: Int) {
        #if false
        
        var copy_id = id
        
        gi.object_method_bind_ptrcall_v (InputEventFromWindow.method_set_window_id, UnsafeMutableRawPointer (mutating: handle), nil, &copy_id)
        
        #else
        
        var copy_id = id
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventFromWindow.method_set_window_id, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_window_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_window_id")
        return withUnsafePointer (to: &InputEventFromWindow.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_window_id ()-> Int {
        var _result: Int = 0
        gi.object_method_bind_ptrcall (InputEventFromWindow.method_get_window_id, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

