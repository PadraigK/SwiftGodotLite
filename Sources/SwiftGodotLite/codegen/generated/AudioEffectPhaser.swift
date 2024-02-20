// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Adds a phaser audio effect to an audio bus.
/// 
/// Combines the original signal with a copy that is slightly out of phase with the original.
/// 
/// 
/// Combines phase-shifted signals with the original signal. The movement of the phase-shifted signals is controlled using a low-frequency oscillator.
open class AudioEffectPhaser: AudioEffect {
    override open class var godotClassName: StringName { "AudioEffectPhaser" }
    
    /* Properties */
    
    /// Determines the minimum frequency affected by the LFO modulations, in Hz. Value can range from 10 to 10000.
    final public var rangeMinHz: Double {
        get {
            return get_range_min_hz ()
        }
        
        set {
            set_range_min_hz (newValue)
        }
        
    }
    
    /// Determines the maximum frequency affected by the LFO modulations, in Hz. Value can range from 10 to 10000.
    final public var rangeMaxHz: Double {
        get {
            return get_range_max_hz ()
        }
        
        set {
            set_range_max_hz (newValue)
        }
        
    }
    
    /// Adjusts the rate in Hz at which the effect sweeps up and down across the frequency range.
    final public var rateHz: Double {
        get {
            return get_rate_hz ()
        }
        
        set {
            set_rate_hz (newValue)
        }
        
    }
    
    /// Output percent of modified sound. Value can range from 0.1 to 0.9.
    final public var feedback: Double {
        get {
            return get_feedback ()
        }
        
        set {
            set_feedback (newValue)
        }
        
    }
    
    /// Governs how high the filter frequencies sweep. Low value will primarily affect bass frequencies. High value can sweep high into the treble. Value can range from 0.1 to 4.
    final public var depth: Double {
        get {
            return get_depth ()
        }
        
        set {
            set_depth (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_range_min_hz: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_range_min_hz")
        return withUnsafePointer (to: &AudioEffectPhaser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_range_min_hz (_ hz: Double) {
        #if true
        
        var copy_hz = hz
        
        gi.object_method_bind_ptrcall_v (AudioEffectPhaser.method_set_range_min_hz, UnsafeMutableRawPointer (mutating: handle), nil, &copy_hz)
        
        #else
        
        var copy_hz = hz
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_hz) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioEffectPhaser.method_set_range_min_hz, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_range_min_hz: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_range_min_hz")
        return withUnsafePointer (to: &AudioEffectPhaser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_range_min_hz ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioEffectPhaser.method_get_range_min_hz, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_range_max_hz: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_range_max_hz")
        return withUnsafePointer (to: &AudioEffectPhaser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_range_max_hz (_ hz: Double) {
        #if true
        
        var copy_hz = hz
        
        gi.object_method_bind_ptrcall_v (AudioEffectPhaser.method_set_range_max_hz, UnsafeMutableRawPointer (mutating: handle), nil, &copy_hz)
        
        #else
        
        var copy_hz = hz
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_hz) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioEffectPhaser.method_set_range_max_hz, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_range_max_hz: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_range_max_hz")
        return withUnsafePointer (to: &AudioEffectPhaser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_range_max_hz ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioEffectPhaser.method_get_range_max_hz, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_rate_hz: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_rate_hz")
        return withUnsafePointer (to: &AudioEffectPhaser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rate_hz (_ hz: Double) {
        #if true
        
        var copy_hz = hz
        
        gi.object_method_bind_ptrcall_v (AudioEffectPhaser.method_set_rate_hz, UnsafeMutableRawPointer (mutating: handle), nil, &copy_hz)
        
        #else
        
        var copy_hz = hz
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_hz) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioEffectPhaser.method_set_rate_hz, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_rate_hz: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_rate_hz")
        return withUnsafePointer (to: &AudioEffectPhaser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_rate_hz ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioEffectPhaser.method_get_rate_hz, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_feedback: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_feedback")
        return withUnsafePointer (to: &AudioEffectPhaser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_feedback (_ fbk: Double) {
        #if true
        
        var copy_fbk = fbk
        
        gi.object_method_bind_ptrcall_v (AudioEffectPhaser.method_set_feedback, UnsafeMutableRawPointer (mutating: handle), nil, &copy_fbk)
        
        #else
        
        var copy_fbk = fbk
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_fbk) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioEffectPhaser.method_set_feedback, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_feedback: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_feedback")
        return withUnsafePointer (to: &AudioEffectPhaser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_feedback ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioEffectPhaser.method_get_feedback, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_depth: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_depth")
        return withUnsafePointer (to: &AudioEffectPhaser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth (_ depth: Double) {
        #if true
        
        var copy_depth = depth
        
        gi.object_method_bind_ptrcall_v (AudioEffectPhaser.method_set_depth, UnsafeMutableRawPointer (mutating: handle), nil, &copy_depth)
        
        #else
        
        var copy_depth = depth
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_depth) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioEffectPhaser.method_set_depth, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_depth: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_depth")
        return withUnsafePointer (to: &AudioEffectPhaser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioEffectPhaser.method_get_depth, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

