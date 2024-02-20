// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Stores audio data loaded from WAV files.
/// 
/// AudioStreamWAV stores sound samples loaded from WAV files. To play the stored sound, use an ``AudioStreamPlayer`` (for non-positional audio) or ``AudioStreamPlayer2D``/``AudioStreamPlayer3D`` (for positional audio). The sound can be looped.
/// 
/// This class can also be used to store dynamically-generated PCM audio data. See also ``AudioStreamGenerator`` for procedural audio generation.
/// 
open class AudioStreamWAV: AudioStream {
    override open class var godotClassName: StringName { "AudioStreamWAV" }
    public enum Format: Int64 {
        /// 8-bit audio codec.
        case format8Bits = 0 // FORMAT_8_BITS
        /// 16-bit audio codec.
        case format16Bits = 1 // FORMAT_16_BITS
        /// Audio is compressed using IMA ADPCM.
        case imaAdpcm = 2 // FORMAT_IMA_ADPCM
    }
    
    public enum LoopMode: Int64 {
        /// Audio does not loop.
        case disabled = 0 // LOOP_DISABLED
        /// Audio loops the data between ``loopBegin`` and ``loopEnd``, playing forward only.
        case forward = 1 // LOOP_FORWARD
        /// Audio loops the data between ``loopBegin`` and ``loopEnd``, playing back and forth.
        case pingpong = 2 // LOOP_PINGPONG
        /// Audio loops the data between ``loopBegin`` and ``loopEnd``, playing backward only.
        case backward = 3 // LOOP_BACKWARD
    }
    
    
    /* Properties */
    
    /// Contains the audio data in bytes.
    /// 
    /// > Note: This property expects signed PCM8 data. To convert unsigned PCM8 to signed PCM8, subtract 128 from each byte.
    /// 
    final public var data: PackedByteArray {
        get {
            return get_data ()
        }
        
        set {
            set_data (newValue)
        }
        
    }
    
    /// Audio format. See ``AudioStreamWAV/Format`` constants for values.
    final public var format: AudioStreamWAV.Format {
        get {
            return get_format ()
        }
        
        set {
            set_format (newValue)
        }
        
    }
    
    /// The loop mode. This information will be imported automatically from the WAV file if present. See ``AudioStreamWAV/LoopMode`` constants for values.
    final public var loopMode: AudioStreamWAV.LoopMode {
        get {
            return get_loop_mode ()
        }
        
        set {
            set_loop_mode (newValue)
        }
        
    }
    
    /// The loop start point (in number of samples, relative to the beginning of the sample). This information will be imported automatically from the WAV file if present.
    final public var loopBegin: Int32 {
        get {
            return get_loop_begin ()
        }
        
        set {
            set_loop_begin (newValue)
        }
        
    }
    
    /// The loop end point (in number of samples, relative to the beginning of the sample). This information will be imported automatically from the WAV file if present.
    final public var loopEnd: Int32 {
        get {
            return get_loop_end ()
        }
        
        set {
            set_loop_end (newValue)
        }
        
    }
    
    /// The sample rate for mixing this audio. Higher values require more storage space, but result in better quality.
    /// 
    /// In games, common sample rates in use are `11025`, `16000`, `22050`, `32000`, `44100`, and `48000`.
    /// 
    /// According to the [url=https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem]Nyquist-Shannon sampling theorem[/url], there is no quality difference to human hearing when going past 40,000 Hz (since most humans can only hear up to ~20,000 Hz, often less). If you are using lower-pitched sounds such as voices, lower sample rates such as `32000` or `22050` may be usable with no loss in quality.
    /// 
    final public var mixRate: Int32 {
        get {
            return get_mix_rate ()
        }
        
        set {
            set_mix_rate (newValue)
        }
        
    }
    
    /// If `true`, audio is stereo.
    final public var stereo: Bool {
        get {
            return is_stereo ()
        }
        
        set {
            set_stereo (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_data")
        return withUnsafePointer (to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2971499966)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_data (_ data: PackedByteArray) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (AudioStreamWAV.method_set_data, UnsafeMutableRawPointer (mutating: handle), nil, &data.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &data.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamWAV.method_set_data, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_data")
        return withUnsafePointer (to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2362200018)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_data ()-> PackedByteArray {
        let _result: PackedByteArray = PackedByteArray ()
        gi.object_method_bind_ptrcall (AudioStreamWAV.method_get_data, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_format: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_format")
        return withUnsafePointer (to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 60648488)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_format (_ format: AudioStreamWAV.Format) {
        #if true
        
        var copy_format = Int64 (format.rawValue)
        
        gi.object_method_bind_ptrcall_v (AudioStreamWAV.method_set_format, UnsafeMutableRawPointer (mutating: handle), nil, &copy_format)
        
        #else
        
        var copy_format = Int64 (format.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_format) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamWAV.method_set_format, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_format: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_format")
        return withUnsafePointer (to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3151724922)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_format ()-> AudioStreamWAV.Format {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (AudioStreamWAV.method_get_format, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return AudioStreamWAV.Format (rawValue: _result)!
    }
    
    fileprivate static var method_set_loop_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_loop_mode")
        return withUnsafePointer (to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2444882972)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop_mode (_ loopMode: AudioStreamWAV.LoopMode) {
        #if true
        
        var copy_loop_mode = Int64 (loopMode.rawValue)
        
        gi.object_method_bind_ptrcall_v (AudioStreamWAV.method_set_loop_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_loop_mode)
        
        #else
        
        var copy_loop_mode = Int64 (loopMode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_loop_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamWAV.method_set_loop_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_loop_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_loop_mode")
        return withUnsafePointer (to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 393560655)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_loop_mode ()-> AudioStreamWAV.LoopMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (AudioStreamWAV.method_get_loop_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return AudioStreamWAV.LoopMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_loop_begin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_loop_begin")
        return withUnsafePointer (to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop_begin (_ loopBegin: Int32) {
        #if true
        
        var copy_loop_begin: Int = Int (loopBegin)
        
        gi.object_method_bind_ptrcall_v (AudioStreamWAV.method_set_loop_begin, UnsafeMutableRawPointer (mutating: handle), nil, &copy_loop_begin)
        
        #else
        
        var copy_loop_begin: Int = Int (loopBegin)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_loop_begin) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamWAV.method_set_loop_begin, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_loop_begin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_loop_begin")
        return withUnsafePointer (to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_loop_begin ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (AudioStreamWAV.method_get_loop_begin, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_loop_end: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_loop_end")
        return withUnsafePointer (to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop_end (_ loopEnd: Int32) {
        #if true
        
        var copy_loop_end: Int = Int (loopEnd)
        
        gi.object_method_bind_ptrcall_v (AudioStreamWAV.method_set_loop_end, UnsafeMutableRawPointer (mutating: handle), nil, &copy_loop_end)
        
        #else
        
        var copy_loop_end: Int = Int (loopEnd)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_loop_end) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamWAV.method_set_loop_end, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_loop_end: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_loop_end")
        return withUnsafePointer (to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_loop_end ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (AudioStreamWAV.method_get_loop_end, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_mix_rate: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_mix_rate")
        return withUnsafePointer (to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mix_rate (_ mixRate: Int32) {
        #if true
        
        var copy_mix_rate: Int = Int (mixRate)
        
        gi.object_method_bind_ptrcall_v (AudioStreamWAV.method_set_mix_rate, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mix_rate)
        
        #else
        
        var copy_mix_rate: Int = Int (mixRate)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mix_rate) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamWAV.method_set_mix_rate, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_mix_rate: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_mix_rate")
        return withUnsafePointer (to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mix_rate ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (AudioStreamWAV.method_get_mix_rate, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_stereo: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_stereo")
        return withUnsafePointer (to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stereo (_ stereo: Bool) {
        #if true
        
        var copy_stereo = stereo
        
        gi.object_method_bind_ptrcall_v (AudioStreamWAV.method_set_stereo, UnsafeMutableRawPointer (mutating: handle), nil, &copy_stereo)
        
        #else
        
        var copy_stereo = stereo
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_stereo) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamWAV.method_set_stereo, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_stereo: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_stereo")
        return withUnsafePointer (to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_stereo ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (AudioStreamWAV.method_is_stereo, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_save_to_wav: GDExtensionMethodBindPtr = {
        let methodName = StringName ("save_to_wav")
        return withUnsafePointer (to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Saves the AudioStreamWAV as a WAV file to `path`. Samples with IMA ADPCM format can't be saved.
    /// 
    /// > Note: A `.wav` extension is automatically appended to `path` if it is missing.
    /// 
    public final func saveToWav (path: String)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (AudioStreamWAV.method_save_to_wav, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_path.content)
        return GodotError (rawValue: _result)!
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamWAV.method_save_to_wav, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
}

