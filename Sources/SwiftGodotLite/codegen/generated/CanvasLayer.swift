// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A node used for independent rendering of objects within a 2D scene.
/// 
/// ``CanvasItem``-derived nodes that are direct or indirect children of a ``CanvasLayer`` will be drawn in that layer. The layer is a numeric index that defines the draw order. The default 2D scene renders with index `0`, so a ``CanvasLayer`` with index `-1` will be drawn below, and a ``CanvasLayer`` with index `1` will be drawn above. This order will hold regardless of the ``CanvasItem/zIndex`` of the nodes within each layer.
/// 
/// ``CanvasLayer``s can be hidden and they can also optionally follow the viewport. This makes them useful for HUDs like health bar overlays (on layers `1` and higher) or backgrounds (on layers `-1` and lower).
/// 
/// > Note: Embedded ``Window``s are placed on layer `1024`. ``CanvasItem``s on layers `1025` and higher appear in front of embedded windows.
/// 
/// > Note: Each ``CanvasLayer`` is drawn on one specific ``Viewport`` and cannot be shared between multiple ``Viewport``s, see ``customViewport``. When using multiple ``Viewport``s, for example in a split-screen game, you need create an individual ``CanvasLayer`` for each ``Viewport`` you want it to be drawn on.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``visibilityChanged``
open class CanvasLayer: Node {
    override open class var godotClassName: StringName { "CanvasLayer" }
    
    /* Properties */
    
    /// Layer index for draw order. Lower values are drawn behind higher values.
    /// 
    /// > Note: If multiple CanvasLayers have the same layer index, ``CanvasItem`` children of one CanvasLayer are drawn behind the ``CanvasItem`` children of the other CanvasLayer. Which CanvasLayer is drawn in front is non-deterministic.
    /// 
    final public var layer: Int32 {
        get {
            return get_layer ()
        }
        
        set {
            set_layer (newValue)
        }
        
    }
    
    /// If `false`, any ``CanvasItem`` under this ``CanvasLayer`` will be hidden.
    /// 
    /// Unlike ``CanvasItem/visible``, visibility of a ``CanvasLayer`` isn't propagated to underlying layers.
    /// 
    final public var visible: Bool {
        get {
            return is_visible ()
        }
        
        set {
            set_visible (newValue)
        }
        
    }
    
    /// The layer's base offset.
    final public var offset: Vector2 {
        get {
            return get_offset ()
        }
        
        set {
            set_offset (newValue)
        }
        
    }
    
    /// The layer's rotation in radians.
    final public var rotation: Double {
        get {
            return get_rotation ()
        }
        
        set {
            set_rotation (newValue)
        }
        
    }
    
    /// The layer's scale.
    final public var scale: Vector2 {
        get {
            return get_scale ()
        }
        
        set {
            set_scale (newValue)
        }
        
    }
    
    /// The layer's transform.
    final public var transform: Transform2D {
        get {
            return get_transform ()
        }
        
        set {
            set_transform (newValue)
        }
        
    }
    
    /// The custom ``Viewport`` node assigned to the ``CanvasLayer``. If `null`, uses the default viewport instead.
    final public var customViewport: Node? {
        get {
            return get_custom_viewport ()
        }
        
        set {
            set_custom_viewport (newValue)
        }
        
    }
    
    /// If enabled, the ``CanvasLayer`` will use the viewport's transform, so it will move when camera moves instead of being anchored in a fixed position on the screen.
    /// 
    /// Together with ``followViewportScale`` it can be used for a pseudo 3D effect.
    /// 
    final public var followViewportEnabled: Bool {
        get {
            return is_following_viewport ()
        }
        
        set {
            set_follow_viewport (newValue)
        }
        
    }
    
    /// Scales the layer when using ``followViewportEnabled``. Layers moving into the foreground should have increasing scales, while layers moving into the background should have decreasing scales.
    final public var followViewportScale: Double {
        get {
            return get_follow_viewport_scale ()
        }
        
        set {
            set_follow_viewport_scale (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_layer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_layer")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_layer (_ layer: Int32) {
        #if true
        
        var copy_layer: Int = Int (layer)
        
        gi.object_method_bind_ptrcall_v (CanvasLayer.method_set_layer, UnsafeMutableRawPointer (mutating: handle), nil, &copy_layer)
        
        #else
        
        var copy_layer: Int = Int (layer)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_layer) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CanvasLayer.method_set_layer, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_layer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_layer")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_layer ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (CanvasLayer.method_get_layer, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_visible: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_visible")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visible (_ visible: Bool) {
        #if true
        
        var copy_visible = visible
        
        gi.object_method_bind_ptrcall_v (CanvasLayer.method_set_visible, UnsafeMutableRawPointer (mutating: handle), nil, &copy_visible)
        
        #else
        
        var copy_visible = visible
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_visible) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CanvasLayer.method_set_visible, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_visible: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_visible")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_visible ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (CanvasLayer.method_is_visible, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_show: GDExtensionMethodBindPtr = {
        let methodName = StringName ("show")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Shows any ``CanvasItem`` under this ``CanvasLayer``. This is equivalent to setting ``visible`` to `true`.
    public final func show () {
        gi.object_method_bind_ptrcall (CanvasLayer.method_show, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_hide: GDExtensionMethodBindPtr = {
        let methodName = StringName ("hide")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Hides any ``CanvasItem`` under this ``CanvasLayer``. This is equivalent to setting ``visible`` to `false`.
    public final func hide () {
        gi.object_method_bind_ptrcall (CanvasLayer.method_hide, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_set_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_transform")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2761652528)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_transform (_ transform: Transform2D) {
        #if true
        
        var copy_transform = transform
        
        gi.object_method_bind_ptrcall_v (CanvasLayer.method_set_transform, UnsafeMutableRawPointer (mutating: handle), nil, &copy_transform)
        
        #else
        
        var copy_transform = transform
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_transform) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CanvasLayer.method_set_transform, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_transform")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3814499831)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_transform ()-> Transform2D {
        var _result: Transform2D = Transform2D ()
        gi.object_method_bind_ptrcall (CanvasLayer.method_get_transform, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_final_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_final_transform")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3814499831)!
            }
            
        }
        
    }()
    
    /// Returns the transform from the ``CanvasLayer``s coordinate system to the ``Viewport``s coordinate system.
    public final func getFinalTransform ()-> Transform2D {
        var _result: Transform2D = Transform2D ()
        gi.object_method_bind_ptrcall (CanvasLayer.method_get_final_transform, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_offset")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_offset (_ offset: Vector2) {
        #if true
        
        var copy_offset = offset
        
        gi.object_method_bind_ptrcall_v (CanvasLayer.method_set_offset, UnsafeMutableRawPointer (mutating: handle), nil, &copy_offset)
        
        #else
        
        var copy_offset = offset
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CanvasLayer.method_set_offset, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_offset")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_offset ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (CanvasLayer.method_get_offset, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_rotation: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_rotation")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rotation (_ radians: Double) {
        #if true
        
        var copy_radians = radians
        
        gi.object_method_bind_ptrcall_v (CanvasLayer.method_set_rotation, UnsafeMutableRawPointer (mutating: handle), nil, &copy_radians)
        
        #else
        
        var copy_radians = radians
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_radians) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CanvasLayer.method_set_rotation, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_rotation: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_rotation")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_rotation ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (CanvasLayer.method_get_rotation, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_scale")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scale (_ scale: Vector2) {
        #if true
        
        var copy_scale = scale
        
        gi.object_method_bind_ptrcall_v (CanvasLayer.method_set_scale, UnsafeMutableRawPointer (mutating: handle), nil, &copy_scale)
        
        #else
        
        var copy_scale = scale
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_scale) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CanvasLayer.method_set_scale, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_scale")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scale ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (CanvasLayer.method_get_scale, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_follow_viewport: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_follow_viewport")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_follow_viewport (_ enable: Bool) {
        #if true
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (CanvasLayer.method_set_follow_viewport, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CanvasLayer.method_set_follow_viewport, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_following_viewport: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_following_viewport")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_following_viewport ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (CanvasLayer.method_is_following_viewport, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_follow_viewport_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_follow_viewport_scale")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_follow_viewport_scale (_ scale: Double) {
        #if true
        
        var copy_scale = scale
        
        gi.object_method_bind_ptrcall_v (CanvasLayer.method_set_follow_viewport_scale, UnsafeMutableRawPointer (mutating: handle), nil, &copy_scale)
        
        #else
        
        var copy_scale = scale
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_scale) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CanvasLayer.method_set_follow_viewport_scale, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_follow_viewport_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_follow_viewport_scale")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_follow_viewport_scale ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (CanvasLayer.method_get_follow_viewport_scale, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_custom_viewport: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_custom_viewport")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_custom_viewport (_ viewport: Node?) {
        #if true
        
        var copy_viewport_handle = viewport?.handle
        
        gi.object_method_bind_ptrcall_v (CanvasLayer.method_set_custom_viewport, UnsafeMutableRawPointer (mutating: handle), nil, &copy_viewport_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: viewport?.handle) { p0 in
        _args.append (viewport == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (CanvasLayer.method_set_custom_viewport, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_custom_viewport: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_custom_viewport")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3160264692)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_custom_viewport ()-> Node? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (CanvasLayer.method_get_custom_viewport, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_canvas: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_canvas")
        return withUnsafePointer (to: &CanvasLayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the RID of the canvas used by this layer.
    public final func getCanvas ()-> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall (CanvasLayer.method_get_canvas, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    // Signals 
    /// Emitted when visibility of the layer is changed. See ``visible``.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.visibilityChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var visibilityChanged: SimpleSignal { SimpleSignal (target: self, signalName: "visibility_changed") }
    
}

