// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Plays positional sound in 2D space.
/// 
/// Plays audio that is attenuated with distance to the listener.
/// 
/// By default, audio is heard from the screen center. This can be changed by adding an ``AudioListener2D`` node to the scene and enabling it by calling ``AudioListener2D/makeCurrent()`` on it.
/// 
/// See also ``AudioStreamPlayer`` to play a sound non-positionally.
/// 
/// > Note: Hiding an ``AudioStreamPlayer2D`` node does not disable its audio output. To temporarily disable an ``AudioStreamPlayer2D``'s audio output, set ``volumeDb`` to a very low value like `-100` (which isn't audible to human hearing).
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``finished``
open class AudioStreamPlayer2D: Node2D {
    override open class var godotClassName: StringName { "AudioStreamPlayer2D" }
    
    /* Properties */
    
    /// The ``AudioStream`` object to be played.
    final public var stream: AudioStream? {
        get {
            return get_stream ()
        }
        
        set {
            set_stream (newValue)
        }
        
    }
    
    /// Base volume before attenuation.
    final public var volumeDb: Double {
        get {
            return get_volume_db ()
        }
        
        set {
            set_volume_db (newValue)
        }
        
    }
    
    /// The pitch and the tempo of the audio, as a multiplier of the audio sample's sample rate.
    final public var pitchScale: Double {
        get {
            return get_pitch_scale ()
        }
        
        set {
            set_pitch_scale (newValue)
        }
        
    }
    
    /// If `true`, audio plays when added to scene tree.
    final public var autoplay: Bool {
        get {
            return is_autoplay_enabled ()
        }
        
        set {
            set_autoplay (newValue)
        }
        
    }
    
    /// If `true`, the playback is paused. You can resume it by setting ``streamPaused`` to `false`.
    final public var streamPaused: Bool {
        get {
            return get_stream_paused ()
        }
        
        set {
            set_stream_paused (newValue)
        }
        
    }
    
    /// Maximum distance from which audio is still hearable.
    final public var maxDistance: Double {
        get {
            return get_max_distance ()
        }
        
        set {
            set_max_distance (newValue)
        }
        
    }
    
    /// The volume is attenuated over distance with this as an exponent.
    final public var attenuation: Double {
        get {
            return get_attenuation ()
        }
        
        set {
            set_attenuation (newValue)
        }
        
    }
    
    /// The maximum number of sounds this node can play at the same time. Playing additional sounds after this value is reached will cut off the oldest sounds.
    final public var maxPolyphony: Int32 {
        get {
            return get_max_polyphony ()
        }
        
        set {
            set_max_polyphony (newValue)
        }
        
    }
    
    /// Scales the panning strength for this node by multiplying the base ``ProjectSettings/audio/general/2dPanningStrength`` with this factor. Higher values will pan audio from left to right more dramatically than lower values.
    final public var panningStrength: Double {
        get {
            return get_panning_strength ()
        }
        
        set {
            set_panning_strength (newValue)
        }
        
    }
    
    /// Bus on which this audio is playing.
    /// 
    /// > Note: When setting this property, keep in mind that no validation is performed to see if the given name matches an existing bus. This is because audio bus layouts might be loaded after this property is set. If this given name can't be resolved at runtime, it will fall back to `"Master"`.
    /// 
    final public var bus: StringName {
        get {
            return get_bus ()
        }
        
        set {
            set_bus (newValue)
        }
        
    }
    
    /// Determines which ``Area2D`` layers affect the sound for reverb and audio bus effects. Areas can be used to redirect ``AudioStream``s so that they play in a certain audio bus. An example of how you might use this is making a "water" area so that sounds played in the water are redirected through an audio bus to make them sound like they are being played underwater.
    final public var areaMask: UInt32 {
        get {
            return get_area_mask ()
        }
        
        set {
            set_area_mask (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_stream")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2210767741)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stream (_ stream: AudioStream?) {
        #if false
        
        var copy_stream_handle = stream?.handle
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer2D.method_set_stream, UnsafeMutableRawPointer (mutating: handle), nil, &copy_stream_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: stream?.handle) { p0 in
        _args.append (stream == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_set_stream, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_stream")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 160907539)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stream ()-> AudioStream? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_get_stream, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_volume_db: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_volume_db")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_volume_db (_ volumeDb: Double) {
        #if false
        
        var copy_volume_db = volumeDb
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer2D.method_set_volume_db, UnsafeMutableRawPointer (mutating: handle), nil, &copy_volume_db)
        
        #else
        
        var copy_volume_db = volumeDb
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_volume_db) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_set_volume_db, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_volume_db: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_volume_db")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_volume_db ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_get_volume_db, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_pitch_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_pitch_scale")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pitch_scale (_ pitchScale: Double) {
        #if false
        
        var copy_pitch_scale = pitchScale
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer2D.method_set_pitch_scale, UnsafeMutableRawPointer (mutating: handle), nil, &copy_pitch_scale)
        
        #else
        
        var copy_pitch_scale = pitchScale
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_pitch_scale) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_set_pitch_scale, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_pitch_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_pitch_scale")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pitch_scale ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_get_pitch_scale, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_play: GDExtensionMethodBindPtr = {
        let methodName = StringName ("play")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1958160172)!
            }
            
        }
        
    }()
    
    /// Queues the audio to play on the next physics frame, from the given position `fromPosition`, in seconds.
    public final func play (fromPosition: Double = 0.0) {
        #if false
        
        var copy_from_position = fromPosition
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer2D.method_play, UnsafeMutableRawPointer (mutating: handle), nil, &copy_from_position)
        
        #else
        
        var copy_from_position = fromPosition
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_from_position) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_play, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_seek: GDExtensionMethodBindPtr = {
        let methodName = StringName ("seek")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Sets the position from which audio will be played, in seconds.
    public final func seek (toPosition: Double) {
        #if false
        
        var copy_to_position = toPosition
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer2D.method_seek, UnsafeMutableRawPointer (mutating: handle), nil, &copy_to_position)
        
        #else
        
        var copy_to_position = toPosition
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_to_position) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_seek, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_stop: GDExtensionMethodBindPtr = {
        let methodName = StringName ("stop")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops the audio.
    public final func stop () {
        gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_stop, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_is_playing: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_playing")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    public final func isPlaying ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_is_playing, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_playback_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_playback_position")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 191475506)!
            }
            
        }
        
    }()
    
    /// Returns the position in the ``AudioStream``.
    public final func getPlaybackPosition ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_get_playback_position, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_bus: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_bus")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bus (_ bus: StringName) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer2D.method_set_bus, UnsafeMutableRawPointer (mutating: handle), nil, &bus.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &bus.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_set_bus, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_bus: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bus")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bus ()-> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_get_bus, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_autoplay: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_autoplay")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_autoplay (_ enable: Bool) {
        #if false
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer2D.method_set_autoplay, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_set_autoplay, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_autoplay_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_autoplay_enabled")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_autoplay_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_is_autoplay_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_max_distance: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_max_distance")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_distance (_ pixels: Double) {
        #if false
        
        var copy_pixels = pixels
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer2D.method_set_max_distance, UnsafeMutableRawPointer (mutating: handle), nil, &copy_pixels)
        
        #else
        
        var copy_pixels = pixels
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_pixels) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_set_max_distance, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_max_distance: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_max_distance")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_distance ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_get_max_distance, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_attenuation: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_attenuation")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_attenuation (_ curve: Double) {
        #if false
        
        var copy_curve = curve
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer2D.method_set_attenuation, UnsafeMutableRawPointer (mutating: handle), nil, &copy_curve)
        
        #else
        
        var copy_curve = curve
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_curve) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_set_attenuation, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_attenuation: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_attenuation")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_attenuation ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_get_attenuation, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_area_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_area_mask")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_area_mask (_ mask: UInt32) {
        #if false
        
        var copy_mask: Int = Int (mask)
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer2D.method_set_area_mask, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mask)
        
        #else
        
        var copy_mask: Int = Int (mask)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mask) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_set_area_mask, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_area_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_area_mask")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_area_mask ()-> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_get_area_mask, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_stream_paused: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_stream_paused")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stream_paused (_ pause: Bool) {
        #if false
        
        var copy_pause = pause
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer2D.method_set_stream_paused, UnsafeMutableRawPointer (mutating: handle), nil, &copy_pause)
        
        #else
        
        var copy_pause = pause
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_pause) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_set_stream_paused, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_stream_paused: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_stream_paused")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stream_paused ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_get_stream_paused, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_max_polyphony: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_max_polyphony")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_polyphony (_ maxPolyphony: Int32) {
        #if false
        
        var copy_max_polyphony: Int = Int (maxPolyphony)
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer2D.method_set_max_polyphony, UnsafeMutableRawPointer (mutating: handle), nil, &copy_max_polyphony)
        
        #else
        
        var copy_max_polyphony: Int = Int (maxPolyphony)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_max_polyphony) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_set_max_polyphony, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_max_polyphony: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_max_polyphony")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_polyphony ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_get_max_polyphony, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_panning_strength: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_panning_strength")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_panning_strength (_ panningStrength: Double) {
        #if false
        
        var copy_panning_strength = panningStrength
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer2D.method_set_panning_strength, UnsafeMutableRawPointer (mutating: handle), nil, &copy_panning_strength)
        
        #else
        
        var copy_panning_strength = panningStrength
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_panning_strength) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_set_panning_strength, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_panning_strength: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_panning_strength")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_panning_strength ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_get_panning_strength, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_has_stream_playback: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_stream_playback")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns whether the ``AudioStreamPlayer`` can return the ``AudioStreamPlayback`` object or not.
    public final func hasStreamPlayback ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_has_stream_playback, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_stream_playback: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_stream_playback")
        return withUnsafePointer (to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 210135309)!
            }
            
        }
        
    }()
    
    /// Returns the ``AudioStreamPlayback`` object associated with this ``AudioStreamPlayer2D``.
    public final func getStreamPlayback ()-> AudioStreamPlayback? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (AudioStreamPlayer2D.method_get_stream_playback, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    // Signals 
    /// Emitted when the audio stops playing.
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

