// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A singleton that manages the unique identifiers of all resources within a project.
/// 
/// Resource UIDs (Unique IDentifiers) allow the engine to keep references between resources intact, even if files can renamed or moved. They can be accessed with `uid://`.
/// 
/// ``ResourceUID`` keeps track of all registered resource UIDs in a project, generates new UIDs, and converts between their string and integer representations.
/// 
open class ResourceUID: Object {
    /// The shared instance of this class
    public static var shared: ResourceUID = {
        return withUnsafePointer (to: &ResourceUID.godotClassName.content) { ptr in
            ResourceUID (nativeHandle: gi.global_get_singleton (ptr)!)
        }
        
    }()
    
    override open class var godotClassName: StringName { "ResourceUID" }
    /* Constants */
    /// The value to use for an invalid UID, for example if the resource could not be loaded.
    /// 
    /// Its text representation is `uid://<invalid>`.
    /// 
    public static let invalidId = -1
    /* Methods */
    fileprivate static var method_id_to_text: GDExtensionMethodBindPtr = {
        let methodName = StringName ("id_to_text")
        return withUnsafePointer (to: &ResourceUID.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Converts the given UID to a `uid://` string value.
    public static func idToText (id: Int)-> String {
        let _result = GString ()
        #if true
        
        var copy_id = id
        
        gi.object_method_bind_ptrcall_v (ResourceUID.method_id_to_text, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &copy_id)
        return _result.description
        #else
        
        var copy_id = id
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ResourceUID.method_id_to_text, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_text_to_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("text_to_id")
        return withUnsafePointer (to: &ResourceUID.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1321353865)!
            }
            
        }
        
    }()
    
    /// Extracts the UID value from the given `uid://` string.
    public static func textToId (textId: String)-> Int {
        var _result: Int = 0
        #if true
        
        let gstr_text_id = GString (textId)
        
        gi.object_method_bind_ptrcall_v (ResourceUID.method_text_to_id, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &gstr_text_id.content)
        return _result
        #else
        
        let gstr_text_id = GString (textId)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_text_id.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ResourceUID.method_text_to_id, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_create_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_id")
        return withUnsafePointer (to: &ResourceUID.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Generates a random resource UID which is guaranteed to be unique within the list of currently loaded UIDs.
    /// 
    /// In order for this UID to be registered, you must call ``addId(_:path:)`` or ``setId(_:path:)``.
    /// 
    public static func createId ()-> Int {
        var _result: Int = 0
        gi.object_method_bind_ptrcall (ResourceUID.method_create_id, UnsafeMutableRawPointer (mutating: shared.handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_has_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_id")
        return withUnsafePointer (to: &ResourceUID.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether the given UID value is known to the cache.
    public static func hasId (_ id: Int)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_id = id
        
        gi.object_method_bind_ptrcall_v (ResourceUID.method_has_id, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &copy_id)
        return _result
        #else
        
        var copy_id = id
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ResourceUID.method_has_id, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_add_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_id")
        return withUnsafePointer (to: &ResourceUID.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Adds a new UID value which is mapped to the given resource path.
    /// 
    /// Fails with an error if the UID already exists, so be sure to check ``hasId(_:)`` beforehand, or use ``setId(_:path:)`` instead.
    /// 
    public static func addId (_ id: Int, path: String) {
        #if true
        
        var copy_id = id
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (ResourceUID.method_add_id, UnsafeMutableRawPointer (mutating: shared.handle), nil, &copy_id, &gstr_path.content)
        
        #else
        
        var copy_id = id
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &gstr_path.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (ResourceUID.method_add_id, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_id")
        return withUnsafePointer (to: &ResourceUID.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Updates the resource path of an existing UID.
    /// 
    /// Fails with an error if the UID does not exist, so be sure to check ``hasId(_:)`` beforehand, or use ``addId(_:path:)`` instead.
    /// 
    public static func setId (_ id: Int, path: String) {
        #if true
        
        var copy_id = id
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (ResourceUID.method_set_id, UnsafeMutableRawPointer (mutating: shared.handle), nil, &copy_id, &gstr_path.content)
        
        #else
        
        var copy_id = id
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &gstr_path.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (ResourceUID.method_set_id, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_id_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_id_path")
        return withUnsafePointer (to: &ResourceUID.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the path that the given UID value refers to.
    /// 
    /// Fails with an error if the UID does not exist, so be sure to check ``hasId(_:)`` beforehand.
    /// 
    public static func getIdPath (id: Int)-> String {
        let _result = GString ()
        #if true
        
        var copy_id = id
        
        gi.object_method_bind_ptrcall_v (ResourceUID.method_get_id_path, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &copy_id)
        return _result.description
        #else
        
        var copy_id = id
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ResourceUID.method_get_id_path, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_remove_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_id")
        return withUnsafePointer (to: &ResourceUID.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes a loaded UID value from the cache.
    /// 
    /// Fails with an error if the UID does not exist, so be sure to check ``hasId(_:)`` beforehand.
    /// 
    public static func removeId (_ id: Int) {
        #if true
        
        var copy_id = id
        
        gi.object_method_bind_ptrcall_v (ResourceUID.method_remove_id, UnsafeMutableRawPointer (mutating: shared.handle), nil, &copy_id)
        
        #else
        
        var copy_id = id
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ResourceUID.method_remove_id, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
        }
        
        #endif
    }
    
}

