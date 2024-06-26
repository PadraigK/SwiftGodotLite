// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Imports an Ogg Vorbis audio file for playback.
/// 
/// Ogg Vorbis is a lossy audio format, with better audio quality compared to ``ResourceImporterMP3`` at a given bitrate.
/// 
/// In most cases, it's recommended to use Ogg Vorbis over MP3. However, if you're using a MP3 sound source with no higher quality source available, then it's recommended to use the MP3 file directly to avoid double lossy compression.
/// 
/// Ogg Vorbis requires more CPU to decode than ``ResourceImporterWAV``. If you need to play a lot of simultaneous sounds, it's recommended to use WAV for those sounds instead, especially if targeting low-end devices.
/// 
open class ResourceImporterOggVorbis: ResourceImporter {
    override open class var godotClassName: StringName { "ResourceImporterOggVorbis" }
    /* Methods */
    fileprivate static var method_load_from_buffer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("load_from_buffer")
        return withUnsafePointer (to: &ResourceImporterOggVorbis.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 354904730)!
            }
            
        }
        
    }()
    
    /// This method loads audio data from a PackedByteArray buffer into an AudioStreamOggVorbis object.
    public static func loadFromBuffer (_ buffer: PackedByteArray)-> AudioStreamOggVorbis? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if false
        
        
        gi.object_method_bind_ptrcall_v (ResourceImporterOggVorbis.method_load_from_buffer, nil, &_result, &buffer.content)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &buffer.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ResourceImporterOggVorbis.method_load_from_buffer, nil, &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_load_from_file: GDExtensionMethodBindPtr = {
        let methodName = StringName ("load_from_file")
        return withUnsafePointer (to: &ResourceImporterOggVorbis.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 797568536)!
            }
            
        }
        
    }()
    
    /// This method loads audio data from a file into an AudioStreamOggVorbis object. The file path is provided as a string.
    public static func loadFromFile (path: String)-> AudioStreamOggVorbis? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if false
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (ResourceImporterOggVorbis.method_load_from_file, nil, &_result, &gstr_path.content)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ResourceImporterOggVorbis.method_load_from_file, nil, &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
}

