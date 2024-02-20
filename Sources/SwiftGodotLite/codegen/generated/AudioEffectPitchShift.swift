// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Adds a pitch-shifting audio effect to an audio bus.
/// 
/// Raises or lowers the pitch of original sound.
/// 
/// 
/// Allows modulation of pitch independently of tempo. All frequencies can be increased/decreased with minimal effect on transients.
open class AudioEffectPitchShift: AudioEffect {
    override open class var godotClassName: StringName { "AudioEffectPitchShift" }
    public enum FFTSize: Int64 {
        /// Use a buffer of 256 samples for the Fast Fourier transform. Lowest latency, but least stable over time.
        case fftSize256 = 0 // FFT_SIZE_256
        /// Use a buffer of 512 samples for the Fast Fourier transform. Low latency, but less stable over time.
        case fftSize512 = 1 // FFT_SIZE_512
        /// Use a buffer of 1024 samples for the Fast Fourier transform. This is a compromise between latency and stability over time.
        case fftSize1024 = 2 // FFT_SIZE_1024
        /// Use a buffer of 2048 samples for the Fast Fourier transform. High latency, but stable over time.
        case fftSize2048 = 3 // FFT_SIZE_2048
        /// Use a buffer of 4096 samples for the Fast Fourier transform. Highest latency, but most stable over time.
        case fftSize4096 = 4 // FFT_SIZE_4096
        /// Represents the size of the ``AudioEffectPitchShift/FFTSize`` enum.
        case max = 5 // FFT_SIZE_MAX
    }
    
    
    /* Properties */
    
    /// The pitch scale to use. `1.0` is the default pitch and plays sounds unaltered. ``pitchScale`` can range from `0.0` (infinitely low pitch, inaudible) to `16` (16 times higher than the initial pitch).
    final public var pitchScale: Double {
        get {
            return get_pitch_scale ()
        }
        
        set {
            set_pitch_scale (newValue)
        }
        
    }
    
    /// The oversampling factor to use. Higher values result in better quality, but are more demanding on the CPU and may cause audio cracking if the CPU can't keep up.
    final public var oversampling: Int32 {
        get {
            return get_oversampling ()
        }
        
        set {
            set_oversampling (newValue)
        }
        
    }
    
    /// The size of the [url=https://en.wikipedia.org/wiki/Fast_Fourier_transform]Fast Fourier transform[/url] buffer. Higher values smooth out the effect over time, but have greater latency. The effects of this higher latency are especially noticeable on sounds that have sudden amplitude changes.
    final public var fftSize: AudioEffectPitchShift.FFTSize {
        get {
            return get_fft_size ()
        }
        
        set {
            set_fft_size (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_pitch_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_pitch_scale")
        return withUnsafePointer (to: &AudioEffectPitchShift.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pitch_scale (_ rate: Double) {
        #if false
        
        var copy_rate = rate
        
        gi.object_method_bind_ptrcall_v (AudioEffectPitchShift.method_set_pitch_scale, UnsafeMutableRawPointer (mutating: handle), nil, &copy_rate)
        
        #else
        
        var copy_rate = rate
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_rate) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioEffectPitchShift.method_set_pitch_scale, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_pitch_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_pitch_scale")
        return withUnsafePointer (to: &AudioEffectPitchShift.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pitch_scale ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioEffectPitchShift.method_get_pitch_scale, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_oversampling: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_oversampling")
        return withUnsafePointer (to: &AudioEffectPitchShift.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_oversampling (_ amount: Int32) {
        #if false
        
        var copy_amount: Int = Int (amount)
        
        gi.object_method_bind_ptrcall_v (AudioEffectPitchShift.method_set_oversampling, UnsafeMutableRawPointer (mutating: handle), nil, &copy_amount)
        
        #else
        
        var copy_amount: Int = Int (amount)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_amount) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioEffectPitchShift.method_set_oversampling, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_oversampling: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_oversampling")
        return withUnsafePointer (to: &AudioEffectPitchShift.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_oversampling ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (AudioEffectPitchShift.method_get_oversampling, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_fft_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_fft_size")
        return withUnsafePointer (to: &AudioEffectPitchShift.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2323518741)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fft_size (_ size: AudioEffectPitchShift.FFTSize) {
        #if false
        
        var copy_size = Int64 (size.rawValue)
        
        gi.object_method_bind_ptrcall_v (AudioEffectPitchShift.method_set_fft_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_size)
        
        #else
        
        var copy_size = Int64 (size.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioEffectPitchShift.method_set_fft_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_fft_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_fft_size")
        return withUnsafePointer (to: &AudioEffectPitchShift.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2361246789)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fft_size ()-> AudioEffectPitchShift.FFTSize {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (AudioEffectPitchShift.method_get_fft_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return AudioEffectPitchShift.FFTSize (rawValue: _result)!
    }
    
}

