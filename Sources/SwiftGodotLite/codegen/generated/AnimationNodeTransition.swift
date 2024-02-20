// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A transition within an ``AnimationTree`` connecting two ``AnimationNode``s.
/// 
/// Simple state machine for cases which don't require a more advanced ``AnimationNodeStateMachine``. Animations can be connected to the inputs and transition times can be specified.
/// 
/// After setting the request and changing the animation playback, the transition node automatically clears the request on the next process frame by setting its `transition_request` value to empty.
/// 
/// > Note: When using a cross-fade, `current_state` and `current_index` change to the next state immediately after the cross-fade begins.
/// 
open class AnimationNodeTransition: AnimationNodeSync {
    override open class var godotClassName: StringName { "AnimationNodeTransition" }
    
    /* Properties */
    
    /// Cross-fading time (in seconds) between each animation connected to the inputs.
    final public var xfadeTime: Double {
        get {
            return get_xfade_time ()
        }
        
        set {
            set_xfade_time (newValue)
        }
        
    }
    
    /// Determines how cross-fading between animations is eased. If empty, the transition will be linear.
    final public var xfadeCurve: Curve? {
        get {
            return get_xfade_curve ()
        }
        
        set {
            set_xfade_curve (newValue)
        }
        
    }
    
    /// If `true`, allows transition to the self state. When the reset option is enabled in input, the animation is restarted. If `false`, nothing happens on the transition to the self state.
    final public var allowTransitionToSelf: Bool {
        get {
            return is_allow_transition_to_self ()
        }
        
        set {
            set_allow_transition_to_self (newValue)
        }
        
    }
    
    /// The number of enabled input ports for this animation node.
    final public var inputCount: Int32 {
        get {
            return getInputCount ()
        }
        
        set {
            set_input_count (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_input_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_input_count")
        return withUnsafePointer (to: &AnimationNodeTransition.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_input_count (_ inputCount: Int32) {
        #if false
        
        var copy_input_count: Int = Int (inputCount)
        
        gi.object_method_bind_ptrcall_v (AnimationNodeTransition.method_set_input_count, UnsafeMutableRawPointer (mutating: handle), nil, &copy_input_count)
        
        #else
        
        var copy_input_count: Int = Int (inputCount)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_input_count) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AnimationNodeTransition.method_set_input_count, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_input_as_auto_advance: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_input_as_auto_advance")
        return withUnsafePointer (to: &AnimationNodeTransition.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Enables or disables auto-advance for the given `input` index. If enabled, state changes to the next input after playing the animation once. If enabled for the last input state, it loops to the first.
    public final func setInputAsAutoAdvance (input: Int32, enable: Bool) {
        #if false
        
        var copy_input: Int = Int (input)
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (AnimationNodeTransition.method_set_input_as_auto_advance, UnsafeMutableRawPointer (mutating: handle), nil, &copy_input, &copy_enable)
        
        #else
        
        var copy_input: Int = Int (input)
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_input) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_enable) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (AnimationNodeTransition.method_set_input_as_auto_advance, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_is_input_set_as_auto_advance: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_input_set_as_auto_advance")
        return withUnsafePointer (to: &AnimationNodeTransition.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if auto-advance is enabled for the given `input` index.
    public final func isInputSetAsAutoAdvance (input: Int32)-> Bool {
        var _result: Bool = false
        #if false
        
        var copy_input: Int = Int (input)
        
        gi.object_method_bind_ptrcall_v (AnimationNodeTransition.method_is_input_set_as_auto_advance, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_input)
        return _result
        #else
        
        var copy_input: Int = Int (input)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_input) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AnimationNodeTransition.method_is_input_set_as_auto_advance, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_input_reset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_input_reset")
        return withUnsafePointer (to: &AnimationNodeTransition.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `true`, the destination animation is restarted when the animation transitions.
    public final func setInputReset (input: Int32, enable: Bool) {
        #if false
        
        var copy_input: Int = Int (input)
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (AnimationNodeTransition.method_set_input_reset, UnsafeMutableRawPointer (mutating: handle), nil, &copy_input, &copy_enable)
        
        #else
        
        var copy_input: Int = Int (input)
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_input) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_enable) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (AnimationNodeTransition.method_set_input_reset, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_is_input_reset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_input_reset")
        return withUnsafePointer (to: &AnimationNodeTransition.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether the animation restarts when the animation transitions from the other animation.
    public final func isInputReset (input: Int32)-> Bool {
        var _result: Bool = false
        #if false
        
        var copy_input: Int = Int (input)
        
        gi.object_method_bind_ptrcall_v (AnimationNodeTransition.method_is_input_reset, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_input)
        return _result
        #else
        
        var copy_input: Int = Int (input)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_input) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AnimationNodeTransition.method_is_input_reset, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_xfade_time: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_xfade_time")
        return withUnsafePointer (to: &AnimationNodeTransition.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_xfade_time (_ time: Double) {
        #if false
        
        var copy_time = time
        
        gi.object_method_bind_ptrcall_v (AnimationNodeTransition.method_set_xfade_time, UnsafeMutableRawPointer (mutating: handle), nil, &copy_time)
        
        #else
        
        var copy_time = time
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_time) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AnimationNodeTransition.method_set_xfade_time, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_xfade_time: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_xfade_time")
        return withUnsafePointer (to: &AnimationNodeTransition.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_xfade_time ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AnimationNodeTransition.method_get_xfade_time, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_xfade_curve: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_xfade_curve")
        return withUnsafePointer (to: &AnimationNodeTransition.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 270443179)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_xfade_curve (_ curve: Curve?) {
        #if false
        
        var copy_curve_handle = curve?.handle
        
        gi.object_method_bind_ptrcall_v (AnimationNodeTransition.method_set_xfade_curve, UnsafeMutableRawPointer (mutating: handle), nil, &copy_curve_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: curve?.handle) { p0 in
        _args.append (curve == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (AnimationNodeTransition.method_set_xfade_curve, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_xfade_curve: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_xfade_curve")
        return withUnsafePointer (to: &AnimationNodeTransition.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2460114913)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_xfade_curve ()-> Curve? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (AnimationNodeTransition.method_get_xfade_curve, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_allow_transition_to_self: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_allow_transition_to_self")
        return withUnsafePointer (to: &AnimationNodeTransition.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_allow_transition_to_self (_ enable: Bool) {
        #if false
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (AnimationNodeTransition.method_set_allow_transition_to_self, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AnimationNodeTransition.method_set_allow_transition_to_self, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_allow_transition_to_self: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_allow_transition_to_self")
        return withUnsafePointer (to: &AnimationNodeTransition.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_allow_transition_to_self ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (AnimationNodeTransition.method_is_allow_transition_to_self, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

