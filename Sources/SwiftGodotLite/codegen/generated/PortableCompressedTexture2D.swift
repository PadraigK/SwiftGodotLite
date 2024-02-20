// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Provides a compressed texture for disk and/or VRAM in a way that is portable.
/// 
/// This class allows storing compressed textures as self contained (not imported) resources.
/// 
/// For 2D usage (compressed on disk, uncompressed on VRAM), the lossy and lossless modes are recommended. For 3D usage (compressed on VRAM) it depends on the target platform.
/// 
/// If you intend to only use desktop, S3TC or BPTC are recommended. For only mobile, ETC2 is recommended.
/// 
/// For portable, self contained 3D textures that work on both desktop and mobile, Basis Universal is recommended (although it has a small quality cost and longer compression time as a tradeoff).
/// 
/// This resource is intended to be created from code.
/// 
open class PortableCompressedTexture2D: Texture2D {
    override open class var godotClassName: StringName { "PortableCompressedTexture2D" }
    public enum CompressionMode: Int64 {
        /// 
        case lossless = 0 // COMPRESSION_MODE_LOSSLESS
        /// 
        case lossy = 1 // COMPRESSION_MODE_LOSSY
        /// 
        case basisUniversal = 2 // COMPRESSION_MODE_BASIS_UNIVERSAL
        /// 
        case s3tc = 3 // COMPRESSION_MODE_S3TC
        /// 
        case etc2 = 4 // COMPRESSION_MODE_ETC2
        /// 
        case bptc = 5 // COMPRESSION_MODE_BPTC
    }
    
    
    /* Properties */
    
    /// Allow overriding the texture size (for 2D only).
    final public var sizeOverride: Vector2 {
        get {
            return get_size_override ()
        }
        
        set {
            set_size_override (newValue)
        }
        
    }
    
    /// When running on the editor, this class will keep the source compressed data in memory. Otherwise, the source compressed data is lost after loading and the resource can't be re saved.
    /// 
    /// This flag allows to keep the compressed data in memory if you intend it to persist after loading.
    /// 
    final public var keepCompressedBuffer: Bool {
        get {
            return is_keeping_compressed_buffer ()
        }
        
        set {
            set_keep_compressed_buffer (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_create_from_image: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_from_image")
        return withUnsafePointer (to: &PortableCompressedTexture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3679243433)!
            }
            
        }
        
    }()
    
    /// Initializes the compressed texture from a base image. The compression mode must be provided.
    /// 
    /// `normalMap` is recommended to ensure optimum quality if this image will be used as a normal map.
    /// 
    /// If lossy compression is requested, the quality setting can optionally be provided. This maps to Lossy WebP compression quality.
    /// 
    public final func createFromImage (_ image: Image?, compressionMode: PortableCompressedTexture2D.CompressionMode, normalMap: Bool = false, lossyQuality: Double = 0.8) {
        #if false
        
        var copy_compression_mode = Int64 (compressionMode.rawValue)
        var copy_normal_map = normalMap
        var copy_lossy_quality = lossyQuality
        var copy_image_handle = image?.handle
        
        gi.object_method_bind_ptrcall_v (PortableCompressedTexture2D.method_create_from_image, UnsafeMutableRawPointer (mutating: handle), nil, &copy_image_handle, &copy_compression_mode, &copy_normal_map, &copy_lossy_quality)
        
        #else
        
        var copy_compression_mode = Int64 (compressionMode.rawValue)
        var copy_normal_map = normalMap
        var copy_lossy_quality = lossyQuality
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: image?.handle) { p0 in
        _args.append (image == nil ? nil : p0)
            withUnsafePointer (to: &copy_compression_mode) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_normal_map) { p2 in
                    _args.append (p2)
                    withUnsafePointer (to: &copy_lossy_quality) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (PortableCompressedTexture2D.method_create_from_image, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_format: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_format")
        return withUnsafePointer (to: &PortableCompressedTexture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3847873762)!
            }
            
        }
        
    }()
    
    /// Return the image format used (valid after initialized).
    public final func getFormat ()-> Image.Format {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (PortableCompressedTexture2D.method_get_format, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return Image.Format (rawValue: _result)!
    }
    
    fileprivate static var method_get_compression_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_compression_mode")
        return withUnsafePointer (to: &PortableCompressedTexture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3265612739)!
            }
            
        }
        
    }()
    
    /// Return the compression mode used (valid after initialized).
    public final func getCompressionMode ()-> PortableCompressedTexture2D.CompressionMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (PortableCompressedTexture2D.method_get_compression_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return PortableCompressedTexture2D.CompressionMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_size_override: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_size_override")
        return withUnsafePointer (to: &PortableCompressedTexture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_size_override (_ size: Vector2) {
        #if false
        
        var copy_size = size
        
        gi.object_method_bind_ptrcall_v (PortableCompressedTexture2D.method_set_size_override, UnsafeMutableRawPointer (mutating: handle), nil, &copy_size)
        
        #else
        
        var copy_size = size
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PortableCompressedTexture2D.method_set_size_override, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_size_override: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_size_override")
        return withUnsafePointer (to: &PortableCompressedTexture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_size_override ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (PortableCompressedTexture2D.method_get_size_override, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_keep_compressed_buffer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_keep_compressed_buffer")
        return withUnsafePointer (to: &PortableCompressedTexture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_keep_compressed_buffer (_ keep: Bool) {
        #if false
        
        var copy_keep = keep
        
        gi.object_method_bind_ptrcall_v (PortableCompressedTexture2D.method_set_keep_compressed_buffer, UnsafeMutableRawPointer (mutating: handle), nil, &copy_keep)
        
        #else
        
        var copy_keep = keep
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_keep) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PortableCompressedTexture2D.method_set_keep_compressed_buffer, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_keeping_compressed_buffer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_keeping_compressed_buffer")
        return withUnsafePointer (to: &PortableCompressedTexture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_keeping_compressed_buffer ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (PortableCompressedTexture2D.method_is_keeping_compressed_buffer, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_keep_all_compressed_buffers: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_keep_all_compressed_buffers")
        return withUnsafePointer (to: &PortableCompressedTexture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Overrides the flag globally for all textures of this type. This is used primarily by the editor.
    public static func setKeepAllCompressedBuffers (keep: Bool) {
        #if false
        
        var copy_keep = keep
        
        gi.object_method_bind_ptrcall_v (PortableCompressedTexture2D.method_set_keep_all_compressed_buffers, nil, nil, &copy_keep)
        
        #else
        
        var copy_keep = keep
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_keep) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PortableCompressedTexture2D.method_set_keep_all_compressed_buffers, nil, &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_keeping_all_compressed_buffers: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_keeping_all_compressed_buffers")
        return withUnsafePointer (to: &PortableCompressedTexture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Return whether the flag is overridden for all textures of this type.
    public static func isKeepingAllCompressedBuffers ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (PortableCompressedTexture2D.method_is_keeping_all_compressed_buffers, nil, nil, &_result)
        return _result
    }
    
}

