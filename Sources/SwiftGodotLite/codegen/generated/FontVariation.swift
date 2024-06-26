// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A variation of a font with additional settings.
/// 
/// Provides OpenType variations, simulated bold / slant, and additional font settings like OpenType features and extra spacing.
/// 
/// To use simulated bold font variant:
/// 
/// To set the coordinate of multiple variation axes:
/// 
open class FontVariation: Font {
    override open class var godotClassName: StringName { "FontVariation" }
    
    /* Properties */
    
    /// Base font used to create a variation. If not set, default ``Theme`` font is used.
    final public var baseFont: Font? {
        get {
            return get_base_font ()
        }
        
        set {
            set_base_font (newValue)
        }
        
    }
    
    /// Font OpenType variation coordinates. More info: [url=https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxisreg]OpenType variation tags[/url].
    /// 
    /// > Note: This ``GDictionary`` uses OpenType tags as keys. Variation axes can be identified both by tags (integer, e.g. `0x77678674`) and names (``String``, e.g. `wght`). Some axes might be accessible by multiple names. For example, `wght` refers to the same axis as `weight`. Tags on the other hand are unique. To convert between names and tags, use ``TextServer/nameToTag(name:)`` and ``TextServer/tagToName(tag:)``.
    /// 
    /// > Note: To get available variation axes of a font, use ``Font/getSupportedVariationList()``.
    /// 
    final public var variationOpentype: GDictionary {
        get {
            return get_variation_opentype ()
        }
        
        set {
            set_variation_opentype (newValue)
        }
        
    }
    
    /// Active face index in the TrueType / OpenType collection file.
    final public var variationFaceIndex: Int32 {
        get {
            return get_variation_face_index ()
        }
        
        set {
            set_variation_face_index (newValue)
        }
        
    }
    
    /// If is not equal to zero, emboldens the font outlines. Negative values reduce the outline thickness.
    /// 
    /// > Note: Emboldened fonts might have self-intersecting outlines, which will prevent MSDF fonts and ``TextMesh`` from working correctly.
    /// 
    final public var variationEmbolden: Double {
        get {
            return get_variation_embolden ()
        }
        
        set {
            set_variation_embolden (newValue)
        }
        
    }
    
    /// 2D transform, applied to the font outlines, can be used for slanting, flipping and rotating glyphs.
    /// 
    /// For example, to simulate italic typeface by slanting, apply the following transform `Transform2D(1.0, slant, 0.0, 1.0, 0.0, 0.0)`.
    /// 
    final public var variationTransform: Transform2D {
        get {
            return get_variation_transform ()
        }
        
        set {
            set_variation_transform (newValue)
        }
        
    }
    
    /// A set of OpenType feature tags. More info: [url=https://docs.microsoft.com/en-us/typography/opentype/spec/featuretags]OpenType feature tags[/url].
    final public var opentypeFeatures: GDictionary {
        get {
            return getOpentypeFeatures ()
        }
        
        set {
            set_opentype_features (newValue)
        }
        
    }
    
    /// Extra spacing between graphical glyphs.
    final public var spacingGlyph: Int32 {
        get {
            return getSpacing (TextServer.SpacingType (rawValue: 0)!)
        }
        
        set {
            set_spacing (TextServer.SpacingType (rawValue: 0)!, newValue)
        }
        
    }
    
    /// Extra width of the space glyphs.
    final public var spacingSpace: Int32 {
        get {
            return getSpacing (TextServer.SpacingType (rawValue: 1)!)
        }
        
        set {
            set_spacing (TextServer.SpacingType (rawValue: 1)!, newValue)
        }
        
    }
    
    /// Extra spacing at the top of the line in pixels.
    final public var spacingTop: Int32 {
        get {
            return getSpacing (TextServer.SpacingType (rawValue: 2)!)
        }
        
        set {
            set_spacing (TextServer.SpacingType (rawValue: 2)!, newValue)
        }
        
    }
    
    /// Extra spacing at the bottom of the line in pixels.
    final public var spacingBottom: Int32 {
        get {
            return getSpacing (TextServer.SpacingType (rawValue: 3)!)
        }
        
        set {
            set_spacing (TextServer.SpacingType (rawValue: 3)!, newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_base_font: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_base_font")
        return withUnsafePointer (to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1262170328)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_base_font (_ font: Font?) {
        #if false
        
        var copy_font_handle = font?.handle
        
        gi.object_method_bind_ptrcall_v (FontVariation.method_set_base_font, UnsafeMutableRawPointer (mutating: handle), nil, &copy_font_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: font?.handle) { p0 in
        _args.append (font == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (FontVariation.method_set_base_font, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_base_font: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_base_font")
        return withUnsafePointer (to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3229501585)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_base_font ()-> Font? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (FontVariation.method_get_base_font, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_variation_opentype: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_variation_opentype")
        return withUnsafePointer (to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_variation_opentype (_ coords: GDictionary) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (FontVariation.method_set_variation_opentype, UnsafeMutableRawPointer (mutating: handle), nil, &coords.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &coords.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (FontVariation.method_set_variation_opentype, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_variation_opentype: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_variation_opentype")
        return withUnsafePointer (to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_variation_opentype ()-> GDictionary {
        let _result: GDictionary = GDictionary ()
        gi.object_method_bind_ptrcall (FontVariation.method_get_variation_opentype, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_variation_embolden: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_variation_embolden")
        return withUnsafePointer (to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_variation_embolden (_ strength: Double) {
        #if false
        
        var copy_strength = strength
        
        gi.object_method_bind_ptrcall_v (FontVariation.method_set_variation_embolden, UnsafeMutableRawPointer (mutating: handle), nil, &copy_strength)
        
        #else
        
        var copy_strength = strength
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_strength) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (FontVariation.method_set_variation_embolden, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_variation_embolden: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_variation_embolden")
        return withUnsafePointer (to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_variation_embolden ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (FontVariation.method_get_variation_embolden, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_variation_face_index: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_variation_face_index")
        return withUnsafePointer (to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_variation_face_index (_ faceIndex: Int32) {
        #if false
        
        var copy_face_index: Int = Int (faceIndex)
        
        gi.object_method_bind_ptrcall_v (FontVariation.method_set_variation_face_index, UnsafeMutableRawPointer (mutating: handle), nil, &copy_face_index)
        
        #else
        
        var copy_face_index: Int = Int (faceIndex)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_face_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (FontVariation.method_set_variation_face_index, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_variation_face_index: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_variation_face_index")
        return withUnsafePointer (to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_variation_face_index ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (FontVariation.method_get_variation_face_index, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_variation_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_variation_transform")
        return withUnsafePointer (to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2761652528)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_variation_transform (_ transform: Transform2D) {
        #if false
        
        var copy_transform = transform
        
        gi.object_method_bind_ptrcall_v (FontVariation.method_set_variation_transform, UnsafeMutableRawPointer (mutating: handle), nil, &copy_transform)
        
        #else
        
        var copy_transform = transform
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_transform) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (FontVariation.method_set_variation_transform, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_variation_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_variation_transform")
        return withUnsafePointer (to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3814499831)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_variation_transform ()-> Transform2D {
        var _result: Transform2D = Transform2D ()
        gi.object_method_bind_ptrcall (FontVariation.method_get_variation_transform, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_opentype_features: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_opentype_features")
        return withUnsafePointer (to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_opentype_features (_ features: GDictionary) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (FontVariation.method_set_opentype_features, UnsafeMutableRawPointer (mutating: handle), nil, &features.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &features.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (FontVariation.method_set_opentype_features, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_spacing: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_spacing")
        return withUnsafePointer (to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3122339690)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the spacing for `spacing` (see ``TextServer.SpacingType``) to `value` in pixels (not relative to the font size).
    fileprivate final func set_spacing (_ spacing: TextServer.SpacingType, _ value: Int32) {
        #if false
        
        var copy_spacing = Int64 (spacing.rawValue)
        var copy_value: Int = Int (value)
        
        gi.object_method_bind_ptrcall_v (FontVariation.method_set_spacing, UnsafeMutableRawPointer (mutating: handle), nil, &copy_spacing, &copy_value)
        
        #else
        
        var copy_spacing = Int64 (spacing.rawValue)
        var copy_value: Int = Int (value)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_spacing) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_value) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (FontVariation.method_set_spacing, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
}

