// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Loads a specific resource type from a file.
/// 
/// Godot loads resources in the editor or in exported games using ResourceFormatLoaders. They are queried automatically via the ``ResourceLoader`` singleton, or when a resource with internal dependencies is loaded. Each file type may load as a different resource type, so multiple ResourceFormatLoaders are registered in the engine.
/// 
/// Extending this class allows you to define your own loader. Be sure to respect the documented return types and values. You should give it a global class name with `class_name` for it to be registered. Like built-in ResourceFormatLoaders, it will be called automatically when loading resources of its handled type(s). You may also implement a ``ResourceFormatSaver``.
/// 
/// > Note: You can also extend ``EditorImportPlugin`` if the resource type you need exists but Godot is unable to load its format. Choosing one way over another depends on if the format is suitable or not for the final exported game. For example, it's better to import `.png` textures as `.ctex` (``CompressedTexture2D``) first, so they can be loaded with better efficiency on the graphics card.
/// 
open class ResourceFormatLoader: RefCounted {
    override open class var godotClassName: StringName { "ResourceFormatLoader" }
    public enum CacheMode: Int64 {
        /// 
        case ignore = 0 // CACHE_MODE_IGNORE
        /// 
        case reuse = 1 // CACHE_MODE_REUSE
        /// 
        case replace = 2 // CACHE_MODE_REPLACE
    }
    
    /* Methods */
    /// Gets the list of extensions for files this loader is able to read.
    @_documentation(visibility: public)
    open func _getRecognizedExtensions ()-> PackedStringArray {
        return PackedStringArray ()
    }
    
    /// Tells whether or not this loader should load a resource from its resource path for a given type.
    /// 
    /// If it is not implemented, the default behavior returns whether the path's extension is within the ones provided by ``_getRecognizedExtensions()``, and if the type is within the ones provided by ``_getResourceType(path:)``.
    /// 
    @_documentation(visibility: public)
    open func _recognizePath (_ path: String, type: StringName)-> Bool {
        return false
    }
    
    /// Tells which resource class this loader can load.
    /// 
    /// > Note: Custom resource types defined by scripts aren't known by the ``ClassDB``, so you might just handle `"Resource"` for them.
    /// 
    @_documentation(visibility: public)
    open func _handlesType (_ type: StringName)-> Bool {
        return false
    }
    
    /// Gets the class name of the resource associated with the given path. If the loader cannot handle it, it should return `""`.
    /// 
    /// > Note: Custom resource types defined by scripts aren't known by the ``ClassDB``, so you might just return `"Resource"` for them.
    /// 
    @_documentation(visibility: public)
    open func _getResourceType (path: String)-> String {
        return String ()
    }
    
    /// Returns the script class name associated with the ``Resource`` under the given `path`. If the resource has no script or the script isn't a named class, it should return `""`.
    @_documentation(visibility: public)
    open func _getResourceScriptClass (path: String)-> String {
        return String ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getResourceUid (path: String)-> Int {
        return 0
    }
    
    /// If implemented, gets the dependencies of a given resource. If `addTypes` is `true`, paths should be appended `::TypeName`, where `TypeName` is the class name of the dependency.
    /// 
    /// > Note: Custom resource types defined by scripts aren't known by the ``ClassDB``, so you might just return `"Resource"` for them.
    /// 
    @_documentation(visibility: public)
    open func _getDependencies (path: String, addTypes: Bool)-> PackedStringArray {
        return PackedStringArray ()
    }
    
    /// If implemented, renames dependencies within the given resource and saves it. `renames` is a dictionary `{ String => String }` mapping old dependency paths to new paths.
    /// 
    /// Returns ``GodotError/ok`` on success, or an ``GodotError`` constant in case of failure.
    /// 
    @_documentation(visibility: public)
    open func _renameDependencies (path: String, renames: GDictionary)-> GodotError {
        return .ok
    }
    
    /// 
    @_documentation(visibility: public)
    open func _exists (path: String)-> Bool {
        return false
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getClassesUsed (path: String)-> PackedStringArray {
        return PackedStringArray ()
    }
    
    /// Loads a resource when the engine finds this loader to be compatible. If the loaded resource is the result of an import, `originalPath` will target the source file. Returns a ``Resource`` object on success, or an ``GodotError`` constant in case of failure.
    /// 
    /// The `cacheMode` property defines whether and how the cache should be used or updated when loading the resource. See ``ResourceFormatLoader/CacheMode`` for details.
    /// 
    @_documentation(visibility: public)
    open func _load (path: String, originalPath: String, useSubThreads: Bool, cacheMode: Int32)-> Variant {
        return Variant ()
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_exists":
                return _ResourceFormatLoader_proxy_exists
            case "_get_classes_used":
                return _ResourceFormatLoader_proxy_get_classes_used
            case "_get_dependencies":
                return _ResourceFormatLoader_proxy_get_dependencies
            case "_get_recognized_extensions":
                return _ResourceFormatLoader_proxy_get_recognized_extensions
            case "_get_resource_script_class":
                return _ResourceFormatLoader_proxy_get_resource_script_class
            case "_get_resource_type":
                return _ResourceFormatLoader_proxy_get_resource_type
            case "_get_resource_uid":
                return _ResourceFormatLoader_proxy_get_resource_uid
            case "_handles_type":
                return _ResourceFormatLoader_proxy_handles_type
            case "_load":
                return _ResourceFormatLoader_proxy_load
            case "_recognize_path":
                return _ResourceFormatLoader_proxy_recognize_path
            case "_rename_dependencies":
                return _ResourceFormatLoader_proxy_rename_dependencies
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _ResourceFormatLoader_proxy_exists (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<ResourceFormatLoader>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._exists (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ResourceFormatLoader_proxy_get_classes_used (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<ResourceFormatLoader>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getClassesUsed (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _ResourceFormatLoader_proxy_get_dependencies (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<ResourceFormatLoader>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getDependencies (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", addTypes: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _ResourceFormatLoader_proxy_get_recognized_extensions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<ResourceFormatLoader>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getRecognizedExtensions ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _ResourceFormatLoader_proxy_get_resource_script_class (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<ResourceFormatLoader>.fromOpaque(instance).takeUnretainedValue()
    let ret = GString (swiftObject._getResourceScriptClass (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? ""))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _ResourceFormatLoader_proxy_get_resource_type (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<ResourceFormatLoader>.fromOpaque(instance).takeUnretainedValue()
    let ret = GString (swiftObject._getResourceType (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? ""))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _ResourceFormatLoader_proxy_get_resource_uid (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<ResourceFormatLoader>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getResourceUid (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _ResourceFormatLoader_proxy_handles_type (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<ResourceFormatLoader>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._handlesType (StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ResourceFormatLoader_proxy_load (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<ResourceFormatLoader>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._load (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", originalPath: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", useSubThreads: args [2]!.assumingMemoryBound (to: Bool.self).pointee, cacheMode: args [3]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Variant
    ret.content = Variant.zero
}

func _ResourceFormatLoader_proxy_recognize_path (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<ResourceFormatLoader>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._recognizePath (GString.stringFromGStringPtr (ptr: args [0]!) ?? "", type: StringName (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ResourceFormatLoader_proxy_rename_dependencies (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<ResourceFormatLoader>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._renameDependencies (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", renames: GDictionary (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

