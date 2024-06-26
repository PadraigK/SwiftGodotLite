// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// AudioStream that lets the user play custom streams at any time from code, simultaneously using a single player.
/// 
/// AudioStream that lets the user play custom streams at any time from code, simultaneously using a single player.
/// 
/// Playback control is done via the ``AudioStreamPlaybackPolyphonic`` instance set inside the player, which can be obtained via ``AudioStreamPlayer/getStreamPlayback()``, ``AudioStreamPlayer2D/getStreamPlayback()`` or ``AudioStreamPlayer3D/getStreamPlayback()`` methods. Obtaining the playback instance is only valid after the `stream` property is set as an ``AudioStreamPolyphonic`` in those players.
/// 
open class AudioStreamPolyphonic: AudioStream {
    override open class var godotClassName: StringName { "AudioStreamPolyphonic" }
    
    /* Properties */
    
    /// Maximum amount of simultaneous streams that can be played.
    final public var polyphony: Int32 {
        get {
            return get_polyphony ()
        }
        
        set {
            set_polyphony (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_polyphony: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_polyphony")
        return withUnsafePointer (to: &AudioStreamPolyphonic.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_polyphony (_ voices: Int32) {
        #if false
        
        var copy_voices: Int = Int (voices)
        
        gi.object_method_bind_ptrcall_v (AudioStreamPolyphonic.method_set_polyphony, UnsafeMutableRawPointer (mutating: handle), nil, &copy_voices)
        
        #else
        
        var copy_voices: Int = Int (voices)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_voices) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPolyphonic.method_set_polyphony, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_polyphony: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_polyphony")
        return withUnsafePointer (to: &AudioStreamPolyphonic.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_polyphony ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (AudioStreamPolyphonic.method_get_polyphony, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

