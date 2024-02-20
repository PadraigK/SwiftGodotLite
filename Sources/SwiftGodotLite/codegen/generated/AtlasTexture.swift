// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A texture that crops out part of another Texture2D.
/// 
/// ``Texture2D`` resource that draws only part of its ``atlas`` texture, as defined by the ``region``. An additional ``margin`` can also be set, which is useful for small adjustments.
/// 
/// Multiple ``AtlasTexture`` resources can be cropped from the same ``atlas``. Packing many smaller textures into a singular large texture helps to optimize video memory costs and render calls.
/// 
/// > Note: ``AtlasTexture`` cannot be used in an ``AnimatedTexture``, and may not tile properly in nodes such as ``TextureRect``, when inside other ``AtlasTexture`` resources.
/// 
open class AtlasTexture: Texture2D {
    override open class var godotClassName: StringName { "AtlasTexture" }
    
    /* Properties */
    
    /// The texture that contains the atlas. Can be any type inheriting from ``Texture2D``, including another ``AtlasTexture``.
    final public var atlas: Texture2D? {
        get {
            return get_atlas ()
        }
        
        set {
            set_atlas (newValue)
        }
        
    }
    
    /// The region used to draw the ``atlas``.
    final public var region: Rect2 {
        get {
            return get_region ()
        }
        
        set {
            set_region (newValue)
        }
        
    }
    
    /// The margin around the ``region``. Useful for small adjustments. If the ``Rect2/size`` of this property ("w" and "h" in the editor) is set, the drawn texture is resized to fit within the margin.
    final public var margin: Rect2 {
        get {
            return get_margin ()
        }
        
        set {
            set_margin (newValue)
        }
        
    }
    
    /// If `true`, the area outside of the ``region`` is clipped to avoid bleeding of the surrounding texture pixels.
    final public var filterClip: Bool {
        get {
            return has_filter_clip ()
        }
        
        set {
            set_filter_clip (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_atlas: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_atlas")
        return withUnsafePointer (to: &AtlasTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_atlas (_ atlas: Texture2D?) {
        #if true
        
        var copy_atlas_handle = atlas?.handle
        
        gi.object_method_bind_ptrcall_v (AtlasTexture.method_set_atlas, UnsafeMutableRawPointer (mutating: handle), nil, &copy_atlas_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: atlas?.handle) { p0 in
        _args.append (atlas == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (AtlasTexture.method_set_atlas, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_atlas: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_atlas")
        return withUnsafePointer (to: &AtlasTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_atlas ()-> Texture2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (AtlasTexture.method_get_atlas, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_region: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_region")
        return withUnsafePointer (to: &AtlasTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2046264180)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_region (_ region: Rect2) {
        #if true
        
        var copy_region = region
        
        gi.object_method_bind_ptrcall_v (AtlasTexture.method_set_region, UnsafeMutableRawPointer (mutating: handle), nil, &copy_region)
        
        #else
        
        var copy_region = region
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_region) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AtlasTexture.method_set_region, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_region: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_region")
        return withUnsafePointer (to: &AtlasTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1639390495)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_region ()-> Rect2 {
        var _result: Rect2 = Rect2 ()
        gi.object_method_bind_ptrcall (AtlasTexture.method_get_region, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_margin")
        return withUnsafePointer (to: &AtlasTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2046264180)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_margin (_ margin: Rect2) {
        #if true
        
        var copy_margin = margin
        
        gi.object_method_bind_ptrcall_v (AtlasTexture.method_set_margin, UnsafeMutableRawPointer (mutating: handle), nil, &copy_margin)
        
        #else
        
        var copy_margin = margin
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_margin) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AtlasTexture.method_set_margin, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_margin")
        return withUnsafePointer (to: &AtlasTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1639390495)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_margin ()-> Rect2 {
        var _result: Rect2 = Rect2 ()
        gi.object_method_bind_ptrcall (AtlasTexture.method_get_margin, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_filter_clip: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_filter_clip")
        return withUnsafePointer (to: &AtlasTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_filter_clip (_ enable: Bool) {
        #if true
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (AtlasTexture.method_set_filter_clip, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AtlasTexture.method_set_filter_clip, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_has_filter_clip: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_filter_clip")
        return withUnsafePointer (to: &AtlasTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func has_filter_clip ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (AtlasTexture.method_has_filter_clip, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

