// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Base class for serializable objects.
/// 
/// Resource is the base class for all Godot-specific resource types, serving primarily as data containers. Since they inherit from ``RefCounted``, resources are reference-counted and freed when no longer in use. They can also be nested within other resources, and saved on disk. Once loaded from disk, further attempts to load a resource by ``resourcePath`` returns the same reference. ``PackedScene``, one of the most common ``Object``s in a Godot project, is also a resource, uniquely capable of storing and instantiating the ``Node``s it contains as many times as desired.
/// 
/// In GDScript, resources can loaded from disk by their ``resourcePath`` using ``@GDScript.load`` or ``@GDScript.preload``.
/// 
/// > Note: In C#, resources will not be freed instantly after they are no longer in use. Instead, garbage collection will run periodically and will free resources that are no longer in use. This means that unused resources will linger on for a while before being removed.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``changed``
/// - ``setupLocalToSceneRequested``
open class Resource: RefCounted {
    override open class var godotClassName: StringName { "Resource" }
    
    /* Properties */
    
    /// If `true`, the resource is duplicated for each instance of all scenes using it. At run-time, the resource can be modified in one scene without affecting other instances (see ``PackedScene/instantiate(editState:)``).
    /// 
    /// > Note: Changing this property at run-time has no effect on already created duplicate resources.
    /// 
    final public var resourceLocalToScene: Bool {
        get {
            return is_local_to_scene ()
        }
        
        set {
            set_local_to_scene (newValue)
        }
        
    }
    
    /// The unique path to this resource. If it has been saved to disk, the value will be its filepath. If the resource is exclusively contained within a scene, the value will be the ``PackedScene``'s filepath, followed by a unique identifier.
    /// 
    /// > Note: Setting this property manually may fail if a resource with the same path has already been previously loaded. If necessary, use ``takeOverPath(_:)``.
    /// 
    final public var resourcePath: String {
        get {
            return get_path ()
        }
        
        set {
            set_path (newValue)
        }
        
    }
    
    /// An optional name for this resource. When defined, its value is displayed to represent the resource in the Inspector dock. For built-in scripts, the name is displayed as part of the tab name in the script editor.
    /// 
    /// > Note: Some resource formats do not support resource names. You can still set the name in the editor or via code, but it will be lost when the resource is reloaded. For example, only built-in scripts can have a resource name, while scripts stored in separate files cannot.
    /// 
    final public var resourceName: String {
        get {
            return get_name ()
        }
        
        set {
            set_name (newValue)
        }
        
    }
    
    /* Methods */
    /// Override this method to customize the newly duplicated resource created from ``PackedScene/instantiate(editState:)``, if the original's ``resourceLocalToScene`` is set to `true`.
    /// 
    /// **Example:** Set a random `damage` value to every local resource from an instantiated scene.
    /// 
    @_documentation(visibility: public)
    open func _setupLocalToScene () {
    }
    
    fileprivate static var method_set_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_path")
        return withUnsafePointer (to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path (_ path: String) {
        #if false
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (Resource.method_set_path, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_path.content)
        
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Resource.method_set_path, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_take_over_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("take_over_path")
        return withUnsafePointer (to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Sets the ``resourcePath`` to `path`, potentially overriding an existing cache entry for this path. Further attempts to load an overridden resource by path will instead return this resource.
    public final func takeOverPath (_ path: String) {
        #if false
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (Resource.method_take_over_path, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_path.content)
        
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Resource.method_take_over_path, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_path")
        return withUnsafePointer (to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (Resource.method_get_path, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_name")
        return withUnsafePointer (to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_name (_ name: String) {
        #if false
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (Resource.method_set_name, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_name.content)
        
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Resource.method_set_name, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_name")
        return withUnsafePointer (to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_name ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (Resource.method_get_name, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_rid: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_rid")
        return withUnsafePointer (to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the ``RID`` of this resource (or an empty RID). Many resources (such as ``Texture2D``, ``Mesh``, and so on) are high-level abstractions of resources stored in a specialized server (``DisplayServer``, ``RenderingServer``, etc.), so this function will return the original ``RID``.
    public final func getRid ()-> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall (Resource.method_get_rid, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_local_to_scene: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_local_to_scene")
        return withUnsafePointer (to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_local_to_scene (_ enable: Bool) {
        #if false
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (Resource.method_set_local_to_scene, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Resource.method_set_local_to_scene, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_local_to_scene: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_local_to_scene")
        return withUnsafePointer (to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_local_to_scene ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (Resource.method_is_local_to_scene, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_local_scene: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_local_scene")
        return withUnsafePointer (to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3160264692)!
            }
            
        }
        
    }()
    
    /// If ``resourceLocalToScene`` is set to `true` and the resource has been loaded from a ``PackedScene`` instantiation, returns the root ``Node`` of the scene where this resource is used. Otherwise, returns `null`.
    public final func getLocalScene ()-> Node? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (Resource.method_get_local_scene, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_setup_local_to_scene: GDExtensionMethodBindPtr = {
        let methodName = StringName ("setup_local_to_scene")
        return withUnsafePointer (to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Calls ``_setupLocalToScene()``. If ``resourceLocalToScene`` is set to `true`, this method is automatically called from ``PackedScene/instantiate(editState:)`` by the newly duplicated resource within the scene instance.
    /// 
    /// _Deprecated._ This method should only be called internally. Override ``_setupLocalToScene()`` instead.
    /// 
    public final func setupLocalToScene () {
        gi.object_method_bind_ptrcall (Resource.method_setup_local_to_scene, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_emit_changed: GDExtensionMethodBindPtr = {
        let methodName = StringName ("emit_changed")
        return withUnsafePointer (to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Emits the [signal changed] signal. This method is called automatically for some built-in resources.
    /// 
    /// > Note: For custom resources, it's recommended to call this method whenever a meaningful change occurs, such as a modified property. This ensures that custom ``Object``s depending on the resource are properly updated.
    /// 
    public final func emitChanged () {
        gi.object_method_bind_ptrcall (Resource.method_emit_changed, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_duplicate: GDExtensionMethodBindPtr = {
        let methodName = StringName ("duplicate")
        return withUnsafePointer (to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 482882304)!
            }
            
        }
        
    }()
    
    /// Duplicates this resource, returning a new resource with its `export`ed or ``PropertyUsageFlags/propertyUsageStorage`` properties copied from the original.
    /// 
    /// If `subresources` is `false`, a shallow copy is returned; nested resources within subresources are not duplicated and are shared from the original resource. If `subresources` is `true`, a deep copy is returned; nested subresources will be duplicated and are not shared.
    /// 
    /// Subresource properties with the ``PropertyUsageFlags/propertyUsageAlwaysDuplicate`` flag are always duplicated even with `subresources` set to `false`, and properties with the ``PropertyUsageFlags/propertyUsageNeverDuplicate`` flag are never duplicated even with `subresources` set to `true`.
    /// 
    /// > Note: For custom resources, this method will fail if ``Object/_init()`` has been defined with required parameters.
    /// 
    public final func duplicate (subresources: Bool = false)-> Resource? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if false
        
        var copy_subresources = subresources
        
        gi.object_method_bind_ptrcall_v (Resource.method_duplicate, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_subresources)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_subresources = subresources
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_subresources) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Resource.method_duplicate, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_setup_local_to_scene":
                return _Resource_proxy_setup_local_to_scene
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted when the resource changes, usually when one of its properties is modified. See also ``emitChanged()``.
    /// 
    /// > Note: This signal is not emitted automatically for properties of custom resources. If necessary, a setter needs to be created to emit the signal.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.changed.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var changed: SimpleSignal { SimpleSignal (target: self, signalName: "changed") }
    
    /// Emitted by a newly duplicated resource with ``resourceLocalToScene`` set to `true`. 
    /// 
    /// _Deprecated._ This signal is only emitted when the resource is created. Override ``_setupLocalToScene()`` instead.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.setupLocalToSceneRequested.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var setupLocalToSceneRequested: SimpleSignal { SimpleSignal (target: self, signalName: "setup_local_to_scene_requested") }
    
}

// Support methods for proxies
func _Resource_proxy_setup_local_to_scene (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<Resource>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._setupLocalToScene ()
}

