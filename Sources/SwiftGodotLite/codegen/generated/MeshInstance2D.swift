// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Node used for displaying a ``Mesh`` in 2D.
/// 
/// Node used for displaying a ``Mesh`` in 2D. A ``MeshInstance2D`` can be automatically created from an existing ``Sprite2D`` via a tool in the editor toolbar. Select the ``Sprite2D`` node, then choose **Sprite2D > Convert to MeshInstance2D** at the top of the 2D editor viewport.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``textureChanged``
open class MeshInstance2D: Node2D {
    override open class var godotClassName: StringName { "MeshInstance2D" }
    
    /* Properties */
    
    /// The ``Mesh`` that will be drawn by the ``MeshInstance2D``.
    final public var mesh: Mesh? {
        get {
            return get_mesh ()
        }
        
        set {
            set_mesh (newValue)
        }
        
    }
    
    /// The ``Texture2D`` that will be used if using the default ``CanvasItemMaterial``. Can be accessed as `TEXTURE` in CanvasItem shader.
    final public var texture: Texture2D? {
        get {
            return get_texture ()
        }
        
        set {
            set_texture (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_mesh")
        return withUnsafePointer (to: &MeshInstance2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 194775623)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mesh (_ mesh: Mesh?) {
        #if false
        
        var copy_mesh_handle = mesh?.handle
        
        gi.object_method_bind_ptrcall_v (MeshInstance2D.method_set_mesh, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mesh_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: mesh?.handle) { p0 in
        _args.append (mesh == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (MeshInstance2D.method_set_mesh, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_mesh")
        return withUnsafePointer (to: &MeshInstance2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1808005922)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mesh ()-> Mesh? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (MeshInstance2D.method_get_mesh, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_texture")
        return withUnsafePointer (to: &MeshInstance2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture (_ texture: Texture2D?) {
        #if false
        
        var copy_texture_handle = texture?.handle
        
        gi.object_method_bind_ptrcall_v (MeshInstance2D.method_set_texture, UnsafeMutableRawPointer (mutating: handle), nil, &copy_texture_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: texture?.handle) { p0 in
        _args.append (texture == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (MeshInstance2D.method_set_texture, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_texture")
        return withUnsafePointer (to: &MeshInstance2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture ()-> Texture2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (MeshInstance2D.method_get_texture, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    // Signals 
    /// Emitted when the ``texture`` is changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.textureChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var textureChanged: SimpleSignal { SimpleSignal (target: self, signalName: "texture_changed") }
    
}

