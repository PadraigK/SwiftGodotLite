// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Adds an amplifying audio effect to an audio bus.
/// 
/// Increases or decreases the volume being routed through the audio bus.
open class AudioEffectAmplify: AudioEffect {
    override open class var godotClassName: StringName { "AudioEffectAmplify" }
    
    /* Properties */
    
    /// Amount of amplification in decibels. Positive values make the sound louder, negative values make it quieter. Value can range from -80 to 24.
    final public var volumeDb: Double {
        get {
            return get_volume_db ()
        }
        
        set {
            set_volume_db (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_volume_db: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_volume_db")
        return withUnsafePointer (to: &AudioEffectAmplify.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_volume_db (_ volume: Double) {
        #if false
        
        var copy_volume = volume
        
        gi.object_method_bind_ptrcall_v (AudioEffectAmplify.method_set_volume_db, UnsafeMutableRawPointer (mutating: handle), nil, &copy_volume)
        
        #else
        
        var copy_volume = volume
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_volume) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioEffectAmplify.method_set_volume_db, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_volume_db: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_volume_db")
        return withUnsafePointer (to: &AudioEffectAmplify.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_volume_db ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioEffectAmplify.method_get_volume_db, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

