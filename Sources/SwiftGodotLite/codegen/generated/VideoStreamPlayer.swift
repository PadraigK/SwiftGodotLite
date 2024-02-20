// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A control used for video playback.
/// 
/// A control used for playback of ``VideoStream`` resources.
/// 
/// Supported video formats are [url=https://www.theora.org/]Ogg Theora[/url] (`.ogv`, ``VideoStreamTheora``) and any format exposed via a GDExtension plugin.
/// 
/// > Note: Due to a bug, VideoStreamPlayer does not support localization remapping yet.
/// 
/// > Warning: On Web, video playback _will_ perform poorly due to missing architecture-specific assembly optimizations.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``finished``
open class VideoStreamPlayer: Control {
    override open class var godotClassName: StringName { "VideoStreamPlayer" }
    
    /* Properties */
    
    /// The embedded audio track to play.
    final public var audioTrack: Int32 {
        get {
            return get_audio_track ()
        }
        
        set {
            set_audio_track (newValue)
        }
        
    }
    
    /// The assigned video stream. See description for supported formats.
    final public var stream: VideoStream? {
        get {
            return get_stream ()
        }
        
        set {
            set_stream (newValue)
        }
        
    }
    
    /// Audio volume in dB.
    final public var volumeDb: Double {
        get {
            return get_volume_db ()
        }
        
        set {
            set_volume_db (newValue)
        }
        
    }
    
    /// Audio volume as a linear value.
    final public var volume: Double {
        get {
            return get_volume ()
        }
        
        set {
            set_volume (newValue)
        }
        
    }
    
    /// If `true`, playback starts when the scene loads.
    final public var autoplay: Bool {
        get {
            return has_autoplay ()
        }
        
        set {
            set_autoplay (newValue)
        }
        
    }
    
    /// If `true`, the video is paused.
    final public var paused: Bool {
        get {
            return is_paused ()
        }
        
        set {
            set_paused (newValue)
        }
        
    }
    
    /// If `true`, the video scales to the control size. Otherwise, the control minimum size will be automatically adjusted to match the video stream's dimensions.
    final public var expand: Bool {
        get {
            return has_expand ()
        }
        
        set {
            set_expand (newValue)
        }
        
    }
    
    /// If `true`, the video restarts when it reaches its end.
    final public var loop: Bool {
        get {
            return has_loop ()
        }
        
        set {
            set_loop (newValue)
        }
        
    }
    
    /// Amount of time in milliseconds to store in buffer while playing.
    final public var bufferingMsec: Int32 {
        get {
            return get_buffering_msec ()
        }
        
        set {
            set_buffering_msec (newValue)
        }
        
    }
    
    /// The current position of the stream, in seconds.
    /// 
    /// > Note: Changing this value won't have any effect as seeking is not implemented yet, except in video formats implemented by a GDExtension add-on.
    /// 
    final public var streamPosition: Double {
        get {
            return get_stream_position ()
        }
        
        set {
            set_stream_position (newValue)
        }
        
    }
    
    /// Audio bus to use for sound playback.
    final public var bus: StringName {
        get {
            return get_bus ()
        }
        
        set {
            set_bus (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_stream")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2317102564)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stream (_ stream: VideoStream?) {
        #if true
        
        var copy_stream_handle = stream?.handle
        
        gi.object_method_bind_ptrcall_v (VideoStreamPlayer.method_set_stream, UnsafeMutableRawPointer (mutating: handle), nil, &copy_stream_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: stream?.handle) { p0 in
        _args.append (stream == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (VideoStreamPlayer.method_set_stream, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_stream")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 438621487)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stream ()-> VideoStream? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_get_stream, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_play: GDExtensionMethodBindPtr = {
        let methodName = StringName ("play")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Starts the video playback from the beginning. If the video is paused, this will not unpause the video.
    public final func play () {
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_play, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_stop: GDExtensionMethodBindPtr = {
        let methodName = StringName ("stop")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops the video playback and sets the stream position to 0.
    /// 
    /// > Note: Although the stream position will be set to 0, the first frame of the video stream won't become the current frame.
    /// 
    public final func stop () {
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_stop, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_is_playing: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_playing")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the video is playing.
    /// 
    /// > Note: The video is still considered playing if paused during playback.
    /// 
    public final func isPlaying ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_is_playing, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_paused: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_paused")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_paused (_ paused: Bool) {
        #if true
        
        var copy_paused = paused
        
        gi.object_method_bind_ptrcall_v (VideoStreamPlayer.method_set_paused, UnsafeMutableRawPointer (mutating: handle), nil, &copy_paused)
        
        #else
        
        var copy_paused = paused
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_paused) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VideoStreamPlayer.method_set_paused, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_paused: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_paused")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_paused ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_is_paused, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_loop: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_loop")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop (_ loop: Bool) {
        #if true
        
        var copy_loop = loop
        
        gi.object_method_bind_ptrcall_v (VideoStreamPlayer.method_set_loop, UnsafeMutableRawPointer (mutating: handle), nil, &copy_loop)
        
        #else
        
        var copy_loop = loop
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_loop) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VideoStreamPlayer.method_set_loop, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_has_loop: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_loop")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func has_loop ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_has_loop, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_volume: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_volume")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_volume (_ volume: Double) {
        #if true
        
        var copy_volume = volume
        
        gi.object_method_bind_ptrcall_v (VideoStreamPlayer.method_set_volume, UnsafeMutableRawPointer (mutating: handle), nil, &copy_volume)
        
        #else
        
        var copy_volume = volume
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_volume) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VideoStreamPlayer.method_set_volume, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_volume: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_volume")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_volume ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_get_volume, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_volume_db: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_volume_db")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_volume_db (_ db: Double) {
        #if true
        
        var copy_db = db
        
        gi.object_method_bind_ptrcall_v (VideoStreamPlayer.method_set_volume_db, UnsafeMutableRawPointer (mutating: handle), nil, &copy_db)
        
        #else
        
        var copy_db = db
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_db) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VideoStreamPlayer.method_set_volume_db, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_volume_db: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_volume_db")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_volume_db ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_get_volume_db, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_audio_track: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_audio_track")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_audio_track (_ track: Int32) {
        #if true
        
        var copy_track: Int = Int (track)
        
        gi.object_method_bind_ptrcall_v (VideoStreamPlayer.method_set_audio_track, UnsafeMutableRawPointer (mutating: handle), nil, &copy_track)
        
        #else
        
        var copy_track: Int = Int (track)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_track) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VideoStreamPlayer.method_set_audio_track, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_audio_track: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_audio_track")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_audio_track ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_get_audio_track, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_stream_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_stream_name")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the video stream's name, or `"<No Stream>"` if no video stream is assigned.
    public final func getStreamName ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_get_stream_name, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_stream_length: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_stream_length")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// The length of the current stream, in seconds.
    /// 
    /// > Note: For ``VideoStreamTheora`` streams (the built-in format supported by Godot), this value will always be zero, as getting the stream length is not implemented yet. The feature may be supported by video formats implemented by a GDExtension add-on.
    /// 
    public final func getStreamLength ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_get_stream_length, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_stream_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_stream_position")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stream_position (_ position: Double) {
        #if true
        
        var copy_position = position
        
        gi.object_method_bind_ptrcall_v (VideoStreamPlayer.method_set_stream_position, UnsafeMutableRawPointer (mutating: handle), nil, &copy_position)
        
        #else
        
        var copy_position = position
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_position) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VideoStreamPlayer.method_set_stream_position, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_stream_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_stream_position")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stream_position ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_get_stream_position, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_autoplay: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_autoplay")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_autoplay (_ enabled: Bool) {
        #if true
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (VideoStreamPlayer.method_set_autoplay, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VideoStreamPlayer.method_set_autoplay, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_has_autoplay: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_autoplay")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func has_autoplay ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_has_autoplay, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_expand: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_expand")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_expand (_ enable: Bool) {
        #if true
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (VideoStreamPlayer.method_set_expand, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VideoStreamPlayer.method_set_expand, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_has_expand: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_expand")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func has_expand ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_has_expand, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_buffering_msec: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_buffering_msec")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_buffering_msec (_ msec: Int32) {
        #if true
        
        var copy_msec: Int = Int (msec)
        
        gi.object_method_bind_ptrcall_v (VideoStreamPlayer.method_set_buffering_msec, UnsafeMutableRawPointer (mutating: handle), nil, &copy_msec)
        
        #else
        
        var copy_msec: Int = Int (msec)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_msec) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VideoStreamPlayer.method_set_buffering_msec, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_buffering_msec: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_buffering_msec")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_buffering_msec ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_get_buffering_msec, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_bus: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_bus")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bus (_ bus: StringName) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (VideoStreamPlayer.method_set_bus, UnsafeMutableRawPointer (mutating: handle), nil, &bus.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &bus.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VideoStreamPlayer.method_set_bus, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_bus: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bus")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bus ()-> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_get_bus, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_video_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_video_texture")
        return withUnsafePointer (to: &VideoStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    /// Returns the current frame as a ``Texture2D``.
    public final func getVideoTexture ()-> Texture2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (VideoStreamPlayer.method_get_video_texture, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    // Signals 
    /// Emitted when playback is finished.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.finished.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var finished: SimpleSignal { SimpleSignal (target: self, signalName: "finished") }
    
}

