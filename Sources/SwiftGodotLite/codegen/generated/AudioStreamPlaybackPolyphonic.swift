// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Playback instance for ``AudioStreamPolyphonic``.
/// 
/// Playback instance for ``AudioStreamPolyphonic``. After setting the `stream` property of ``AudioStreamPlayer``, ``AudioStreamPlayer2D``, or ``AudioStreamPlayer3D``, the playback instance can be obtained by calling ``AudioStreamPlayer/getStreamPlayback()``, ``AudioStreamPlayer2D/getStreamPlayback()`` or ``AudioStreamPlayer3D/getStreamPlayback()`` methods.
open class AudioStreamPlaybackPolyphonic: AudioStreamPlayback {
    override open class var godotClassName: StringName { "AudioStreamPlaybackPolyphonic" }
    /* Constants */
    /// Returned by ``playStream(_:fromOffset:volumeDb:pitchScale:)`` in case it could not allocate a stream for playback.
    public static let invalidId = -1
    /* Methods */
    fileprivate static var method_play_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName ("play_stream")
        return withUnsafePointer (to: &AudioStreamPlaybackPolyphonic.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 604492179)!
            }
            
        }
        
    }()
    
    /// Play an ``AudioStream`` at a given offset, volume and pitch scale. Playback starts immediately.
    /// 
    /// The return value is a unique integer ID that is associated to this playback stream and which can be used to control it.
    /// 
    /// This ID becomes invalid when the stream ends (if it does not loop), when the ``AudioStreamPlaybackPolyphonic`` is stopped, or when ``stopStream(_:)`` is called.
    /// 
    /// This function returns ``invalidId`` if the amount of streams currently playing equals ``AudioStreamPolyphonic/polyphony``. If you need a higher amount of maximum polyphony, raise this value.
    /// 
    public final func playStream (_ stream: AudioStream?, fromOffset: Double = 0, volumeDb: Double = 0, pitchScale: Double = 1.0)-> Int {
        var _result: Int = 0
        #if true
        
        var copy_from_offset = fromOffset
        var copy_volume_db = volumeDb
        var copy_pitch_scale = pitchScale
        var copy_stream_handle = stream?.handle
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlaybackPolyphonic.method_play_stream, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_stream_handle, &copy_from_offset, &copy_volume_db, &copy_pitch_scale)
        return _result
        #else
        
        var copy_from_offset = fromOffset
        var copy_volume_db = volumeDb
        var copy_pitch_scale = pitchScale
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: stream?.handle) { p0 in
        _args.append (stream == nil ? nil : p0)
            return withUnsafePointer (to: &copy_from_offset) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_volume_db) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &copy_pitch_scale) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (AudioStreamPlaybackPolyphonic.method_play_stream, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                        return _result
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_stream_volume: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_stream_volume")
        return withUnsafePointer (to: &AudioStreamPlaybackPolyphonic.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Change the stream volume (in db). The `stream` argument is an integer ID returned by ``playStream(_:fromOffset:volumeDb:pitchScale:)``.
    public final func setStreamVolume (stream: Int, volumeDb: Double) {
        #if true
        
        var copy_stream = stream
        var copy_volume_db = volumeDb
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlaybackPolyphonic.method_set_stream_volume, UnsafeMutableRawPointer (mutating: handle), nil, &copy_stream, &copy_volume_db)
        
        #else
        
        var copy_stream = stream
        var copy_volume_db = volumeDb
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_stream) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_volume_db) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (AudioStreamPlaybackPolyphonic.method_set_stream_volume, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_stream_pitch_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_stream_pitch_scale")
        return withUnsafePointer (to: &AudioStreamPlaybackPolyphonic.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Change the stream pitch scale. The `stream` argument is an integer ID returned by ``playStream(_:fromOffset:volumeDb:pitchScale:)``.
    public final func setStreamPitchScale (stream: Int, pitchScale: Double) {
        #if true
        
        var copy_stream = stream
        var copy_pitch_scale = pitchScale
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlaybackPolyphonic.method_set_stream_pitch_scale, UnsafeMutableRawPointer (mutating: handle), nil, &copy_stream, &copy_pitch_scale)
        
        #else
        
        var copy_stream = stream
        var copy_pitch_scale = pitchScale
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_stream) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_pitch_scale) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (AudioStreamPlaybackPolyphonic.method_set_stream_pitch_scale, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_is_stream_playing: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_stream_playing")
        return withUnsafePointer (to: &AudioStreamPlaybackPolyphonic.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Return true whether the stream associated with an integer ID is still playing. Check ``playStream(_:fromOffset:volumeDb:pitchScale:)`` for information on when this ID becomes invalid.
    public final func isStreamPlaying (stream: Int)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_stream = stream
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlaybackPolyphonic.method_is_stream_playing, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_stream)
        return _result
        #else
        
        var copy_stream = stream
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_stream) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlaybackPolyphonic.method_is_stream_playing, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_stop_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName ("stop_stream")
        return withUnsafePointer (to: &AudioStreamPlaybackPolyphonic.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Stop a stream. The `stream` argument is an integer ID returned by ``playStream(_:fromOffset:volumeDb:pitchScale:)``, which becomes invalid after calling this function.
    public final func stopStream (_ stream: Int) {
        #if true
        
        var copy_stream = stream
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlaybackPolyphonic.method_stop_stream, UnsafeMutableRawPointer (mutating: handle), nil, &copy_stream)
        
        #else
        
        var copy_stream = stream
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_stream) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlaybackPolyphonic.method_stop_stream, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
}
