// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Texture for 2D and 3D.
/// 
/// A texture works by registering an image in the video hardware, which then can be used in 3D models or 2D ``Sprite2D`` or GUI ``Control``.
/// 
/// Textures are often created by loading them from a file. See ``@GDScript.load``.
/// 
/// ``Texture2D`` is a base for other resources. It cannot be used directly.
/// 
/// > Note: The maximum texture size is 16384×16384 pixels due to graphics hardware limitations. Larger textures may fail to import.
/// 
open class Texture2D: Texture {
    override open class var godotClassName: StringName { "Texture2D" }
    /* Methods */
    /// Called when the ``Texture2D``'s width is queried.
    @_documentation(visibility: public)
    open func _getWidth ()-> Int32 {
        return 0
    }
    
    /// Called when the ``Texture2D``'s height is queried.
    @_documentation(visibility: public)
    open func _getHeight ()-> Int32 {
        return 0
    }
    
    /// Called when a pixel's opaque state in the ``Texture2D`` is queried at the specified `(x, y)` position.
    @_documentation(visibility: public)
    open func _isPixelOpaque (x: Int32, y: Int32)-> Bool {
        return false
    }
    
    /// Called when the presence of an alpha channel in the ``Texture2D`` is queried.
    @_documentation(visibility: public)
    open func _hasAlpha ()-> Bool {
        return false
    }
    
    /// Called when the entire ``Texture2D`` is requested to be drawn over a ``CanvasItem``, with the top-left offset specified in `pos`. `modulate` specifies a multiplier for the colors being drawn, while `transpose` specifies whether drawing should be performed in column-major order instead of row-major order (resulting in 90-degree clockwise rotation).
    /// 
    /// > Note: This is only used in 2D rendering, not 3D.
    /// 
    @_documentation(visibility: public)
    open func _draw (toCanvasItem: RID, pos: Vector2, modulate: Color, transpose: Bool) {
    }
    
    /// Called when the ``Texture2D`` is requested to be drawn onto ``CanvasItem``'s specified `rect`. `modulate` specifies a multiplier for the colors being drawn, while `transpose` specifies whether drawing should be performed in column-major order instead of row-major order (resulting in 90-degree clockwise rotation).
    /// 
    /// > Note: This is only used in 2D rendering, not 3D.
    /// 
    @_documentation(visibility: public)
    open func _drawRect (toCanvasItem: RID, rect: Rect2, tile: Bool, modulate: Color, transpose: Bool) {
    }
    
    /// Called when a part of the ``Texture2D`` specified by `srcRect`'s coordinates is requested to be drawn onto ``CanvasItem``'s specified `rect`. `modulate` specifies a multiplier for the colors being drawn, while `transpose` specifies whether drawing should be performed in column-major order instead of row-major order (resulting in 90-degree clockwise rotation).
    /// 
    /// > Note: This is only used in 2D rendering, not 3D.
    /// 
    @_documentation(visibility: public)
    open func _drawRectRegion (toCanvasItem: RID, rect: Rect2, srcRect: Rect2, modulate: Color, transpose: Bool, clipUv: Bool) {
    }
    
    fileprivate static var method_get_width: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_width")
        return withUnsafePointer (to: &Texture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the texture width in pixels.
    public final func getWidth ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (Texture2D.method_get_width, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_height: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_height")
        return withUnsafePointer (to: &Texture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the texture height in pixels.
    public final func getHeight ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (Texture2D.method_get_height, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_size")
        return withUnsafePointer (to: &Texture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the texture size in pixels.
    public final func getSize ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (Texture2D.method_get_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_has_alpha: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_alpha")
        return withUnsafePointer (to: &Texture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this ``Texture2D`` has an alpha channel.
    public final func hasAlpha ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (Texture2D.method_has_alpha, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_draw: GDExtensionMethodBindPtr = {
        let methodName = StringName ("draw")
        return withUnsafePointer (to: &Texture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2729649137)!
            }
            
        }
        
    }()
    
    /// Draws the texture using a ``CanvasItem`` with the ``RenderingServer`` API at the specified `position`.
    public final func draw (canvasItem: RID, position: Vector2, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1), transpose: Bool = false) {
        #if false
        
        var copy_position = position
        var copy_modulate = modulate
        var copy_transpose = transpose
        
        gi.object_method_bind_ptrcall_v (Texture2D.method_draw, UnsafeMutableRawPointer (mutating: handle), nil, &canvasItem.content, &copy_position, &copy_modulate, &copy_transpose)
        
        #else
        
        var copy_position = position
        var copy_modulate = modulate
        var copy_transpose = transpose
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &canvasItem.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_position) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_modulate) { p2 in
                    _args.append (p2)
                    withUnsafePointer (to: &copy_transpose) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (Texture2D.method_draw, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_draw_rect: GDExtensionMethodBindPtr = {
        let methodName = StringName ("draw_rect")
        return withUnsafePointer (to: &Texture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3499451691)!
            }
            
        }
        
    }()
    
    /// Draws the texture using a ``CanvasItem`` with the ``RenderingServer`` API.
    public final func drawRect (canvasItem: RID, rect: Rect2, tile: Bool, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1), transpose: Bool = false) {
        #if false
        
        var copy_rect = rect
        var copy_tile = tile
        var copy_modulate = modulate
        var copy_transpose = transpose
        
        gi.object_method_bind_ptrcall_v (Texture2D.method_draw_rect, UnsafeMutableRawPointer (mutating: handle), nil, &canvasItem.content, &copy_rect, &copy_tile, &copy_modulate, &copy_transpose)
        
        #else
        
        var copy_rect = rect
        var copy_tile = tile
        var copy_modulate = modulate
        var copy_transpose = transpose
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &canvasItem.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_rect) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_tile) { p2 in
                    _args.append (p2)
                    withUnsafePointer (to: &copy_modulate) { p3 in
                        _args.append (p3)
                        withUnsafePointer (to: &copy_transpose) { p4 in
                            _args.append (p4)
        
                            gi.object_method_bind_ptrcall (Texture2D.method_draw_rect, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                        }
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_draw_rect_region: GDExtensionMethodBindPtr = {
        let methodName = StringName ("draw_rect_region")
        return withUnsafePointer (to: &Texture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2963678660)!
            }
            
        }
        
    }()
    
    /// Draws a part of the texture using a ``CanvasItem`` with the ``RenderingServer`` API.
    public final func drawRectRegion (canvasItem: RID, rect: Rect2, srcRect: Rect2, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1), transpose: Bool = false, clipUv: Bool = true) {
        #if false
        
        var copy_rect = rect
        var copy_src_rect = srcRect
        var copy_modulate = modulate
        var copy_transpose = transpose
        var copy_clip_uv = clipUv
        
        gi.object_method_bind_ptrcall_v (Texture2D.method_draw_rect_region, UnsafeMutableRawPointer (mutating: handle), nil, &canvasItem.content, &copy_rect, &copy_src_rect, &copy_modulate, &copy_transpose, &copy_clip_uv)
        
        #else
        
        var copy_rect = rect
        var copy_src_rect = srcRect
        var copy_modulate = modulate
        var copy_transpose = transpose
        var copy_clip_uv = clipUv
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &canvasItem.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_rect) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_src_rect) { p2 in
                    _args.append (p2)
                    withUnsafePointer (to: &copy_modulate) { p3 in
                        _args.append (p3)
                        withUnsafePointer (to: &copy_transpose) { p4 in
                            _args.append (p4)
                            withUnsafePointer (to: &copy_clip_uv) { p5 in
                                _args.append (p5)
        
                                gi.object_method_bind_ptrcall (Texture2D.method_draw_rect_region, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                            }
                        }
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_image: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_image")
        return withUnsafePointer (to: &Texture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4190603485)!
            }
            
        }
        
    }()
    
    /// Returns an ``Image`` that is a copy of data from this ``Texture2D`` (a new ``Image`` is created each time). ``Image``s can be accessed and manipulated directly.
    /// 
    /// > Note: This will fetch the texture data from the GPU, which might cause performance problems when overused.
    /// 
    public final func getImage ()-> Image? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (Texture2D.method_get_image, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_create_placeholder: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_placeholder")
        return withUnsafePointer (to: &Texture2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 121922552)!
            }
            
        }
        
    }()
    
    /// Creates a placeholder version of this resource (``PlaceholderTexture2D``).
    public final func createPlaceholder ()-> Resource? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (Texture2D.method_create_placeholder, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_draw":
                return _Texture2D_proxy_draw
            case "_draw_rect":
                return _Texture2D_proxy_draw_rect
            case "_draw_rect_region":
                return _Texture2D_proxy_draw_rect_region
            case "_get_height":
                return _Texture2D_proxy_get_height
            case "_get_width":
                return _Texture2D_proxy_get_width
            case "_has_alpha":
                return _Texture2D_proxy_has_alpha
            case "_is_pixel_opaque":
                return _Texture2D_proxy_is_pixel_opaque
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _Texture2D_proxy_draw (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<Texture2D>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._draw (toCanvasItem: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), pos: args [1]!.assumingMemoryBound (to: Vector2.self).pointee, modulate: args [2]!.assumingMemoryBound (to: Color.self).pointee, transpose: args [3]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _Texture2D_proxy_draw_rect (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<Texture2D>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._drawRect (toCanvasItem: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), rect: args [1]!.assumingMemoryBound (to: Rect2.self).pointee, tile: args [2]!.assumingMemoryBound (to: Bool.self).pointee, modulate: args [3]!.assumingMemoryBound (to: Color.self).pointee, transpose: args [4]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _Texture2D_proxy_draw_rect_region (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<Texture2D>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._drawRectRegion (toCanvasItem: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), rect: args [1]!.assumingMemoryBound (to: Rect2.self).pointee, srcRect: args [2]!.assumingMemoryBound (to: Rect2.self).pointee, modulate: args [3]!.assumingMemoryBound (to: Color.self).pointee, transpose: args [4]!.assumingMemoryBound (to: Bool.self).pointee, clipUv: args [5]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _Texture2D_proxy_get_height (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<Texture2D>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getHeight ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _Texture2D_proxy_get_width (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<Texture2D>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getWidth ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _Texture2D_proxy_has_alpha (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<Texture2D>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._hasAlpha ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _Texture2D_proxy_is_pixel_opaque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<Texture2D>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._isPixelOpaque (x: args [0]!.assumingMemoryBound (to: Int32.self).pointee, y: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

