// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Performs a uniform texture lookup within the visual shader graph.
/// 
/// Performs a lookup operation on the texture provided as a uniform for the shader.
open class VisualShaderNodeTextureParameter: VisualShaderNodeParameter {
    override open class var godotClassName: StringName { "VisualShaderNodeTextureParameter" }
    public enum TextureType: Int64 {
        /// No hints are added to the uniform declaration.
        case data = 0 // TYPE_DATA
        /// Adds `source_color` as hint to the uniform declaration for proper sRGB to linear conversion.
        case color = 1 // TYPE_COLOR
        /// Adds `hint_normal` as hint to the uniform declaration, which internally converts the texture for proper usage as normal map.
        case normalMap = 2 // TYPE_NORMAL_MAP
        /// Adds `hint_anisotropy` as hint to the uniform declaration to use for a flowmap.
        case anisotropy = 3 // TYPE_ANISOTROPY
        /// Represents the size of the ``VisualShaderNodeTextureParameter/TextureType`` enum.
        case max = 4 // TYPE_MAX
    }
    
    public enum ColorDefault: Int64 {
        /// Defaults to fully opaque white color.
        case white = 0 // COLOR_DEFAULT_WHITE
        /// Defaults to fully opaque black color.
        case black = 1 // COLOR_DEFAULT_BLACK
        /// Defaults to fully transparent black color.
        case transparent = 2 // COLOR_DEFAULT_TRANSPARENT
        /// Represents the size of the ``VisualShaderNodeTextureParameter/ColorDefault`` enum.
        case max = 3 // COLOR_DEFAULT_MAX
    }
    
    public enum TextureFilter: Int64 {
        /// Sample the texture using the filter determined by the node this shader is attached to.
        case `default` = 0 // FILTER_DEFAULT
        /// The texture filter reads from the nearest pixel only. The simplest and fastest method of filtering, but the texture will look pixelized.
        case nearest = 1 // FILTER_NEAREST
        /// The texture filter blends between the nearest four pixels. Use this for most cases where you want to avoid a pixelated style.
        case linear = 2 // FILTER_LINEAR
        /// The texture filter reads from the nearest pixel in the nearest mipmap. This is the fastest way to read from textures with mipmaps.
        case nearestMipmap = 3 // FILTER_NEAREST_MIPMAP
        /// The texture filter blends between the nearest 4 pixels and between the nearest 2 mipmaps. Use this for non-pixel art textures that may be viewed at a low scale (e.g. due to ``Camera2D`` zoom), as mipmaps are important to smooth out pixels that are smaller than on-screen pixels.
        case linearMipmap = 4 // FILTER_LINEAR_MIPMAP
        /// The texture filter reads from the nearest pixel, but selects a mipmap based on the angle between the surface and the camera view. This reduces artifacts on surfaces that are almost in line with the camera. The anisotropic filtering level can be changed by adjusting ``ProjectSettings/rendering/textures/defaultFilters/anisotropicFilteringLevel``.
        /// 
        /// > Note: This texture filter is rarely useful in 2D projects. .filterLinearMipmap is usually more appropriate.
        /// 
        case nearestMipmapAnisotropic = 5 // FILTER_NEAREST_MIPMAP_ANISOTROPIC
        /// The texture filter blends between the nearest 4 pixels and selects a mipmap based on the angle between the surface and the camera view. This reduces artifacts on surfaces that are almost in line with the camera. This is the slowest of the filtering options, but results in the highest quality texturing. The anisotropic filtering level can be changed by adjusting ``ProjectSettings/rendering/textures/defaultFilters/anisotropicFilteringLevel``.
        /// 
        /// > Note: This texture filter is rarely useful in 2D projects. .filterLinearMipmap is usually more appropriate.
        /// 
        case linearMipmapAnisotropic = 6 // FILTER_LINEAR_MIPMAP_ANISOTROPIC
        /// Represents the size of the ``VisualShaderNodeTextureParameter/TextureFilter`` enum.
        case max = 7 // FILTER_MAX
    }
    
    public enum TextureRepeat: Int64 {
        /// Sample the texture using the repeat mode determined by the node this shader is attached to.
        case `default` = 0 // REPEAT_DEFAULT
        /// Texture will repeat normally.
        case enabled = 1 // REPEAT_ENABLED
        /// Texture will not repeat.
        case disabled = 2 // REPEAT_DISABLED
        /// Represents the size of the ``VisualShaderNodeTextureParameter/TextureRepeat`` enum.
        case max = 3 // REPEAT_MAX
    }
    
    public enum TextureSource: Int64 {
        /// The texture source is not specified in the shader.
        case none = 0 // SOURCE_NONE
        /// The texture source is the screen texture which captures all opaque objects drawn this frame.
        case screen = 1 // SOURCE_SCREEN
        /// The texture source is the depth texture from the depth prepass.
        case depth = 2 // SOURCE_DEPTH
        /// The texture source is the normal-roughness buffer from the depth prepass.
        case normalRoughness = 3 // SOURCE_NORMAL_ROUGHNESS
        /// Represents the size of the ``VisualShaderNodeTextureParameter/TextureSource`` enum.
        case max = 4 // SOURCE_MAX
    }
    
    
    /* Properties */
    
    /// Defines the type of data provided by the source texture. See ``VisualShaderNodeTextureParameter/TextureType`` for options.
    final public var textureType: VisualShaderNodeTextureParameter.TextureType {
        get {
            return get_texture_type ()
        }
        
        set {
            set_texture_type (newValue)
        }
        
    }
    
    /// Sets the default color if no texture is assigned to the uniform.
    final public var colorDefault: VisualShaderNodeTextureParameter.ColorDefault {
        get {
            return get_color_default ()
        }
        
        set {
            set_color_default (newValue)
        }
        
    }
    
    /// Sets the texture filtering mode. See ``VisualShaderNodeTextureParameter/TextureFilter`` for options.
    final public var textureFilter: VisualShaderNodeTextureParameter.TextureFilter {
        get {
            return get_texture_filter ()
        }
        
        set {
            set_texture_filter (newValue)
        }
        
    }
    
    /// Sets the texture repeating mode. See ``VisualShaderNodeTextureParameter/TextureRepeat`` for options.
    final public var textureRepeat: VisualShaderNodeTextureParameter.TextureRepeat {
        get {
            return get_texture_repeat ()
        }
        
        set {
            set_texture_repeat (newValue)
        }
        
    }
    
    /// Sets the texture source mode. Used for reading from the screen, depth, or normal_roughness texture. See ``VisualShaderNodeTextureParameter/TextureSource`` for options.
    final public var textureSource: VisualShaderNodeTextureParameter.TextureSource {
        get {
            return get_texture_source ()
        }
        
        set {
            set_texture_source (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_texture_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_texture_type")
        return withUnsafePointer (to: &VisualShaderNodeTextureParameter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2227296876)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_type (_ type: VisualShaderNodeTextureParameter.TextureType) {
        #if true
        
        var copy_type = Int64 (type.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeTextureParameter.method_set_texture_type, UnsafeMutableRawPointer (mutating: handle), nil, &copy_type)
        
        #else
        
        var copy_type = Int64 (type.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeTextureParameter.method_set_texture_type, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_texture_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_texture_type")
        return withUnsafePointer (to: &VisualShaderNodeTextureParameter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 367922070)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_type ()-> VisualShaderNodeTextureParameter.TextureType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeTextureParameter.method_get_texture_type, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeTextureParameter.TextureType (rawValue: _result)!
    }
    
    fileprivate static var method_set_color_default: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_color_default")
        return withUnsafePointer (to: &VisualShaderNodeTextureParameter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4217624432)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_color_default (_ color: VisualShaderNodeTextureParameter.ColorDefault) {
        #if true
        
        var copy_color = Int64 (color.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeTextureParameter.method_set_color_default, UnsafeMutableRawPointer (mutating: handle), nil, &copy_color)
        
        #else
        
        var copy_color = Int64 (color.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_color) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeTextureParameter.method_set_color_default, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_color_default: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_color_default")
        return withUnsafePointer (to: &VisualShaderNodeTextureParameter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3837060134)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_color_default ()-> VisualShaderNodeTextureParameter.ColorDefault {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeTextureParameter.method_get_color_default, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeTextureParameter.ColorDefault (rawValue: _result)!
    }
    
    fileprivate static var method_set_texture_filter: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_texture_filter")
        return withUnsafePointer (to: &VisualShaderNodeTextureParameter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2147684752)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_filter (_ filter: VisualShaderNodeTextureParameter.TextureFilter) {
        #if true
        
        var copy_filter = Int64 (filter.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeTextureParameter.method_set_texture_filter, UnsafeMutableRawPointer (mutating: handle), nil, &copy_filter)
        
        #else
        
        var copy_filter = Int64 (filter.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_filter) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeTextureParameter.method_set_texture_filter, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_texture_filter: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_texture_filter")
        return withUnsafePointer (to: &VisualShaderNodeTextureParameter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4184490817)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_filter ()-> VisualShaderNodeTextureParameter.TextureFilter {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeTextureParameter.method_get_texture_filter, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeTextureParameter.TextureFilter (rawValue: _result)!
    }
    
    fileprivate static var method_set_texture_repeat: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_texture_repeat")
        return withUnsafePointer (to: &VisualShaderNodeTextureParameter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2036143070)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_repeat (_ `repeat`: VisualShaderNodeTextureParameter.TextureRepeat) {
        #if true
        
        var copy_repeat = Int64 (`repeat`.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeTextureParameter.method_set_texture_repeat, UnsafeMutableRawPointer (mutating: handle), nil, &copy_repeat)
        
        #else
        
        var copy_repeat = Int64 (`repeat`.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_repeat) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeTextureParameter.method_set_texture_repeat, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_texture_repeat: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_texture_repeat")
        return withUnsafePointer (to: &VisualShaderNodeTextureParameter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1690132794)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_repeat ()-> VisualShaderNodeTextureParameter.TextureRepeat {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeTextureParameter.method_get_texture_repeat, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeTextureParameter.TextureRepeat (rawValue: _result)!
    }
    
    fileprivate static var method_set_texture_source: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_texture_source")
        return withUnsafePointer (to: &VisualShaderNodeTextureParameter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1212687372)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_source (_ source: VisualShaderNodeTextureParameter.TextureSource) {
        #if true
        
        var copy_source = Int64 (source.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeTextureParameter.method_set_texture_source, UnsafeMutableRawPointer (mutating: handle), nil, &copy_source)
        
        #else
        
        var copy_source = Int64 (source.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_source) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeTextureParameter.method_set_texture_source, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_texture_source: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_texture_source")
        return withUnsafePointer (to: &VisualShaderNodeTextureParameter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2039092262)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_source ()-> VisualShaderNodeTextureParameter.TextureSource {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeTextureParameter.method_get_texture_source, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeTextureParameter.TextureSource (rawValue: _result)!
    }
    
}

