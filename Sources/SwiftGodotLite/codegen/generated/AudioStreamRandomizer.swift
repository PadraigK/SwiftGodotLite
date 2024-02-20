// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Wraps a pool of audio streams with pitch and volume shifting.
/// 
/// Picks a random AudioStream from the pool, depending on the playback mode, and applies random pitch shifting and volume shifting during playback.
open class AudioStreamRandomizer: AudioStream {
    override open class var godotClassName: StringName { "AudioStreamRandomizer" }
    public enum PlaybackMode: Int64 {
        /// Pick a stream at random according to the probability weights chosen for each stream, but avoid playing the same stream twice in a row whenever possible. If only 1 sound is present in the pool, the same sound will always play, effectively allowing repeats to occur.
        case randomNoRepeats = 0 // PLAYBACK_RANDOM_NO_REPEATS
        /// Pick a stream at random according to the probability weights chosen for each stream. If only 1 sound is present in the pool, the same sound will always play.
        case random = 1 // PLAYBACK_RANDOM
        /// Play streams in the order they appear in the stream pool. If only 1 sound is present in the pool, the same sound will always play.
        case sequential = 2 // PLAYBACK_SEQUENTIAL
    }
    
    
    /* Properties */
    
    /// Controls how this AudioStreamRandomizer picks which AudioStream to play next.
    final public var playbackMode: AudioStreamRandomizer.PlaybackMode {
        get {
            return get_playback_mode ()
        }
        
        set {
            set_playback_mode (newValue)
        }
        
    }
    
    /// The intensity of random pitch variation. A value of 1 means no variation.
    final public var randomPitch: Double {
        get {
            return get_random_pitch ()
        }
        
        set {
            set_random_pitch (newValue)
        }
        
    }
    
    /// The intensity of random volume variation. A value of 0 means no variation.
    final public var randomVolumeOffsetDb: Double {
        get {
            return get_random_volume_offset_db ()
        }
        
        set {
            set_random_volume_offset_db (newValue)
        }
        
    }
    
    /// The number of streams in the stream pool.
    final public var streamsCount: Int32 {
        get {
            return get_streams_count ()
        }
        
        set {
            set_streams_count (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_add_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_stream")
        return withUnsafePointer (to: &AudioStreamRandomizer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1892018854)!
            }
            
        }
        
    }()
    
    /// Insert a stream at the specified index. If the index is less than zero, the insertion occurs at the end of the underlying pool.
    public final func addStream (index: Int32, stream: AudioStream?, weight: Double = 1.0) {
        #if false
        
        var copy_index: Int = Int (index)
        var copy_weight = weight
        var copy_stream_handle = stream?.handle
        
        gi.object_method_bind_ptrcall_v (AudioStreamRandomizer.method_add_stream, UnsafeMutableRawPointer (mutating: handle), nil, &copy_index, &copy_stream_handle, &copy_weight)
        
        #else
        
        var copy_index: Int = Int (index)
        var copy_weight = weight
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
            withUnsafePointer (to: stream?.handle) { p1 in
            _args.append (stream == nil ? nil : p1)
                withUnsafePointer (to: &copy_weight) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (AudioStreamRandomizer.method_add_stream, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_move_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName ("move_stream")
        return withUnsafePointer (to: &AudioStreamRandomizer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Move a stream from one index to another.
    public final func moveStream (indexFrom: Int32, indexTo: Int32) {
        #if false
        
        var copy_index_from: Int = Int (indexFrom)
        var copy_index_to: Int = Int (indexTo)
        
        gi.object_method_bind_ptrcall_v (AudioStreamRandomizer.method_move_stream, UnsafeMutableRawPointer (mutating: handle), nil, &copy_index_from, &copy_index_to)
        
        #else
        
        var copy_index_from: Int = Int (indexFrom)
        var copy_index_to: Int = Int (indexTo)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index_from) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_index_to) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (AudioStreamRandomizer.method_move_stream, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_remove_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_stream")
        return withUnsafePointer (to: &AudioStreamRandomizer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Remove the stream at the specified index.
    public final func removeStream (index: Int32) {
        #if false
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (AudioStreamRandomizer.method_remove_stream, UnsafeMutableRawPointer (mutating: handle), nil, &copy_index)
        
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamRandomizer.method_remove_stream, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_stream")
        return withUnsafePointer (to: &AudioStreamRandomizer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 111075094)!
            }
            
        }
        
    }()
    
    /// Set the AudioStream at the specified index.
    public final func setStream (index: Int32, stream: AudioStream?) {
        #if false
        
        var copy_index: Int = Int (index)
        var copy_stream_handle = stream?.handle
        
        gi.object_method_bind_ptrcall_v (AudioStreamRandomizer.method_set_stream, UnsafeMutableRawPointer (mutating: handle), nil, &copy_index, &copy_stream_handle)
        
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
            withUnsafePointer (to: stream?.handle) { p1 in
            _args.append (stream == nil ? nil : p1)
        
                gi.object_method_bind_ptrcall (AudioStreamRandomizer.method_set_stream, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_stream")
        return withUnsafePointer (to: &AudioStreamRandomizer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2739380747)!
            }
            
        }
        
    }()
    
    /// Returns the stream at the specified index.
    public final func getStream (index: Int32)-> AudioStream? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if false
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (AudioStreamRandomizer.method_get_stream, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_index)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamRandomizer.method_get_stream, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_set_stream_probability_weight: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_stream_probability_weight")
        return withUnsafePointer (to: &AudioStreamRandomizer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Set the probability weight of the stream at the specified index. The higher this value, the more likely that the randomizer will choose this stream during random playback modes.
    public final func setStreamProbabilityWeight (index: Int32, weight: Double) {
        #if false
        
        var copy_index: Int = Int (index)
        var copy_weight = weight
        
        gi.object_method_bind_ptrcall_v (AudioStreamRandomizer.method_set_stream_probability_weight, UnsafeMutableRawPointer (mutating: handle), nil, &copy_index, &copy_weight)
        
        #else
        
        var copy_index: Int = Int (index)
        var copy_weight = weight
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_weight) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (AudioStreamRandomizer.method_set_stream_probability_weight, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_stream_probability_weight: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_stream_probability_weight")
        return withUnsafePointer (to: &AudioStreamRandomizer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the probability weight associated with the stream at the given index.
    public final func getStreamProbabilityWeight (index: Int32)-> Double {
        var _result: Double = 0.0
        #if false
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (AudioStreamRandomizer.method_get_stream_probability_weight, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_index)
        return _result
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamRandomizer.method_get_stream_probability_weight, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_streams_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_streams_count")
        return withUnsafePointer (to: &AudioStreamRandomizer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_streams_count (_ count: Int32) {
        #if false
        
        var copy_count: Int = Int (count)
        
        gi.object_method_bind_ptrcall_v (AudioStreamRandomizer.method_set_streams_count, UnsafeMutableRawPointer (mutating: handle), nil, &copy_count)
        
        #else
        
        var copy_count: Int = Int (count)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_count) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamRandomizer.method_set_streams_count, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_streams_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_streams_count")
        return withUnsafePointer (to: &AudioStreamRandomizer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_streams_count ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (AudioStreamRandomizer.method_get_streams_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_random_pitch: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_random_pitch")
        return withUnsafePointer (to: &AudioStreamRandomizer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_random_pitch (_ scale: Double) {
        #if false
        
        var copy_scale = scale
        
        gi.object_method_bind_ptrcall_v (AudioStreamRandomizer.method_set_random_pitch, UnsafeMutableRawPointer (mutating: handle), nil, &copy_scale)
        
        #else
        
        var copy_scale = scale
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_scale) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamRandomizer.method_set_random_pitch, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_random_pitch: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_random_pitch")
        return withUnsafePointer (to: &AudioStreamRandomizer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_random_pitch ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioStreamRandomizer.method_get_random_pitch, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_random_volume_offset_db: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_random_volume_offset_db")
        return withUnsafePointer (to: &AudioStreamRandomizer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_random_volume_offset_db (_ dbOffset: Double) {
        #if false
        
        var copy_db_offset = dbOffset
        
        gi.object_method_bind_ptrcall_v (AudioStreamRandomizer.method_set_random_volume_offset_db, UnsafeMutableRawPointer (mutating: handle), nil, &copy_db_offset)
        
        #else
        
        var copy_db_offset = dbOffset
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_db_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamRandomizer.method_set_random_volume_offset_db, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_random_volume_offset_db: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_random_volume_offset_db")
        return withUnsafePointer (to: &AudioStreamRandomizer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_random_volume_offset_db ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioStreamRandomizer.method_get_random_volume_offset_db, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_playback_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_playback_mode")
        return withUnsafePointer (to: &AudioStreamRandomizer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3950967023)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_playback_mode (_ mode: AudioStreamRandomizer.PlaybackMode) {
        #if false
        
        var copy_mode = Int64 (mode.rawValue)
        
        gi.object_method_bind_ptrcall_v (AudioStreamRandomizer.method_set_playback_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mode)
        
        #else
        
        var copy_mode = Int64 (mode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamRandomizer.method_set_playback_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_playback_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_playback_mode")
        return withUnsafePointer (to: &AudioStreamRandomizer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3943055077)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_playback_mode ()-> AudioStreamRandomizer.PlaybackMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (AudioStreamRandomizer.method_get_playback_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return AudioStreamRandomizer.PlaybackMode (rawValue: _result)!
    }
    
}

