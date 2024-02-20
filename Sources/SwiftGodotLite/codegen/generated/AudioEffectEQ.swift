// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Base class for audio equalizers. Gives you control over frequencies.
/// 
/// Use it to create a custom equalizer if ``AudioEffectEQ6``, ``AudioEffectEQ10`` or ``AudioEffectEQ21`` don't fit your needs.
/// 
/// 
/// AudioEffectEQ gives you control over frequencies. Use it to compensate for existing deficiencies in audio. AudioEffectEQs are useful on the Master bus to completely master a mix and give it more character. They are also useful when a game is run on a mobile device, to adjust the mix to that kind of speakers (it can be added but disabled when headphones are plugged).
open class AudioEffectEQ: AudioEffect {
    override open class var godotClassName: StringName { "AudioEffectEQ" }
    /* Methods */
    fileprivate static var method_set_band_gain_db: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_band_gain_db")
        return withUnsafePointer (to: &AudioEffectEQ.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets band's gain at the specified index, in dB.
    public final func setBandGainDb (bandIdx: Int32, volumeDb: Double) {
        #if true
        
        var copy_band_idx: Int = Int (bandIdx)
        var copy_volume_db = volumeDb
        
        gi.object_method_bind_ptrcall_v (AudioEffectEQ.method_set_band_gain_db, UnsafeMutableRawPointer (mutating: handle), nil, &copy_band_idx, &copy_volume_db)
        
        #else
        
        var copy_band_idx: Int = Int (bandIdx)
        var copy_volume_db = volumeDb
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_band_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_volume_db) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (AudioEffectEQ.method_set_band_gain_db, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_band_gain_db: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_band_gain_db")
        return withUnsafePointer (to: &AudioEffectEQ.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the band's gain at the specified index, in dB.
    public final func getBandGainDb (bandIdx: Int32)-> Double {
        var _result: Double = 0.0
        #if true
        
        var copy_band_idx: Int = Int (bandIdx)
        
        gi.object_method_bind_ptrcall_v (AudioEffectEQ.method_get_band_gain_db, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_band_idx)
        return _result
        #else
        
        var copy_band_idx: Int = Int (bandIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_band_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioEffectEQ.method_get_band_gain_db, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_band_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_band_count")
        return withUnsafePointer (to: &AudioEffectEQ.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of bands of the equalizer.
    public final func getBandCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (AudioEffectEQ.method_get_band_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

