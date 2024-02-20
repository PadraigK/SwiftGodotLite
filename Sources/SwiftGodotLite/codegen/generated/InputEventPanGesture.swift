// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Represents a panning touch gesture.
/// 
/// Stores information about pan gestures. A pan gesture is performed when the user swipes the touch screen with two fingers. It's typically used for panning/scrolling.
/// 
/// > Note: On Android, this requires the ``ProjectSettings/inputDevices/pointing/android/enablePanAndScaleGestures`` project setting to be enabled.
/// 
open class InputEventPanGesture: InputEventGesture {
    override open class var godotClassName: StringName { "InputEventPanGesture" }
    
    /* Properties */
    
    /// Panning amount since last pan event.
    final public var delta: Vector2 {
        get {
            return get_delta ()
        }
        
        set {
            set_delta (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_delta: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_delta")
        return withUnsafePointer (to: &InputEventPanGesture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_delta (_ delta: Vector2) {
        #if true
        
        var copy_delta = delta
        
        gi.object_method_bind_ptrcall_v (InputEventPanGesture.method_set_delta, UnsafeMutableRawPointer (mutating: handle), nil, &copy_delta)
        
        #else
        
        var copy_delta = delta
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_delta) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventPanGesture.method_set_delta, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_delta: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_delta")
        return withUnsafePointer (to: &InputEventPanGesture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_delta ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (InputEventPanGesture.method_get_delta, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

