// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// An input event type for actions.
/// 
/// Contains a generic action which can be targeted from several types of inputs. Actions and their events can be set in the **Input Map** tab in **Project > Project Settings**, or with the ``InputMap`` class.
/// 
/// > Note: Unlike the other ``InputEvent`` subclasses which map to unique physical events, this virtual one is not emitted by the engine. This class is useful to emit actions manually with ``Input/parseInputEvent(_:)``, which are then received in ``Node/_input(event:)``. To check if a physical event matches an action from the Input Map, use ``InputEvent/isAction(_:exactMatch:)`` and ``InputEvent/isActionPressed(action:allowEcho:exactMatch:)``.
/// 
open class InputEventAction: InputEvent {
    override open class var godotClassName: StringName { "InputEventAction" }
    
    /* Properties */
    
    /// The action's name. Actions are accessed via this ``String``.
    final public var action: StringName {
        get {
            return get_action ()
        }
        
        set {
            set_action (newValue)
        }
        
    }
    
    /// If `true`, the action's state is pressed. If `false`, the action's state is released.
    final public var pressed: Bool {
        get {
            return isPressed ()
        }
        
        set {
            set_pressed (newValue)
        }
        
    }
    
    /// The action's strength between 0 and 1. This value is considered as equal to 0 if pressed is `false`. The event strength allows faking analog joypad motion events, by specifying how strongly the joypad axis is bent or pressed.
    final public var strength: Double {
        get {
            return get_strength ()
        }
        
        set {
            set_strength (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_action: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_action")
        return withUnsafePointer (to: &InputEventAction.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_action (_ action: StringName) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (InputEventAction.method_set_action, UnsafeMutableRawPointer (mutating: handle), nil, &action.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &action.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventAction.method_set_action, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_action: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_action")
        return withUnsafePointer (to: &InputEventAction.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_action ()-> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall (InputEventAction.method_get_action, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_pressed: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_pressed")
        return withUnsafePointer (to: &InputEventAction.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pressed (_ pressed: Bool) {
        #if false
        
        var copy_pressed = pressed
        
        gi.object_method_bind_ptrcall_v (InputEventAction.method_set_pressed, UnsafeMutableRawPointer (mutating: handle), nil, &copy_pressed)
        
        #else
        
        var copy_pressed = pressed
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_pressed) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventAction.method_set_pressed, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_strength: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_strength")
        return withUnsafePointer (to: &InputEventAction.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_strength (_ strength: Double) {
        #if false
        
        var copy_strength = strength
        
        gi.object_method_bind_ptrcall_v (InputEventAction.method_set_strength, UnsafeMutableRawPointer (mutating: handle), nil, &copy_strength)
        
        #else
        
        var copy_strength = strength
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_strength) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventAction.method_set_strength, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_strength: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_strength")
        return withUnsafePointer (to: &InputEventAction.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_strength ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (InputEventAction.method_get_strength, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

