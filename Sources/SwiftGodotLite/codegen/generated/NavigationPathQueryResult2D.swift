// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Represents the result of a 2D pathfinding query.
/// 
/// This class stores the result of a 2D navigation path query from the ``NavigationServer2D``.
open class NavigationPathQueryResult2D: RefCounted {
    override open class var godotClassName: StringName { "NavigationPathQueryResult2D" }
    public enum PathSegmentType: Int64 {
        /// This segment of the path goes through a region.
        case region = 0 // PATH_SEGMENT_TYPE_REGION
        /// This segment of the path goes through a link.
        case link = 1 // PATH_SEGMENT_TYPE_LINK
    }
    
    
    /* Properties */
    
    /// The resulting path array from the navigation query. All path array positions are in global coordinates. Without customized query parameters this is the same path as returned by ``NavigationServer2D/mapGetPath(map:origin:destination:optimize:navigationLayers:)``.
    final public var path: PackedVector2Array {
        get {
            return get_path ()
        }
        
        set {
            set_path (newValue)
        }
        
    }
    
    /// The type of navigation primitive (region or link) that each point of the path goes through.
    final public var pathTypes: PackedInt32Array {
        get {
            return get_path_types ()
        }
        
        set {
            set_path_types (newValue)
        }
        
    }
    
    /// The ``RID``s of the regions and links that each point of the path goes through.
    final public var pathRids: VariantCollection<RID> {
        get {
            return get_path_rids ()
        }
        
        set {
            set_path_rids (newValue)
        }
        
    }
    
    /// The `ObjectID`s of the ``Object``s which manage the regions and links each point of the path goes through.
    final public var pathOwnerIds: PackedInt64Array {
        get {
            return get_path_owner_ids ()
        }
        
        set {
            set_path_owner_ids (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_path")
        return withUnsafePointer (to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path (_ path: PackedVector2Array) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (NavigationPathQueryResult2D.method_set_path, UnsafeMutableRawPointer (mutating: handle), nil, &path.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPathQueryResult2D.method_set_path, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_path")
        return withUnsafePointer (to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2961356807)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path ()-> PackedVector2Array {
        let _result: PackedVector2Array = PackedVector2Array ()
        gi.object_method_bind_ptrcall (NavigationPathQueryResult2D.method_get_path, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_path_types: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_path_types")
        return withUnsafePointer (to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_types (_ pathTypes: PackedInt32Array) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (NavigationPathQueryResult2D.method_set_path_types, UnsafeMutableRawPointer (mutating: handle), nil, &pathTypes.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &pathTypes.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPathQueryResult2D.method_set_path_types, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_path_types: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_path_types")
        return withUnsafePointer (to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1930428628)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path_types ()-> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall (NavigationPathQueryResult2D.method_get_path_types, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_path_rids: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_path_rids")
        return withUnsafePointer (to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_rids (_ pathRids: VariantCollection<RID>) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (NavigationPathQueryResult2D.method_set_path_rids, UnsafeMutableRawPointer (mutating: handle), nil, &pathRids.array.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &pathRids.array.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPathQueryResult2D.method_set_path_rids, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_path_rids: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_path_rids")
        return withUnsafePointer (to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path_rids ()-> VariantCollection<RID> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall (NavigationPathQueryResult2D.method_get_path_rids, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VariantCollection<RID>(content: _result)
    }
    
    fileprivate static var method_set_path_owner_ids: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_path_owner_ids")
        return withUnsafePointer (to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3709968205)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_owner_ids (_ pathOwnerIds: PackedInt64Array) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (NavigationPathQueryResult2D.method_set_path_owner_ids, UnsafeMutableRawPointer (mutating: handle), nil, &pathOwnerIds.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &pathOwnerIds.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPathQueryResult2D.method_set_path_owner_ids, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_path_owner_ids: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_path_owner_ids")
        return withUnsafePointer (to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 235988956)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path_owner_ids ()-> PackedInt64Array {
        let _result: PackedInt64Array = PackedInt64Array ()
        gi.object_method_bind_ptrcall (NavigationPathQueryResult2D.method_get_path_owner_ids, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_reset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("reset")
        return withUnsafePointer (to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Reset the result object to its initial state. This is useful to reuse the object across multiple queries.
    public final func reset () {
        gi.object_method_bind_ptrcall (NavigationPathQueryResult2D.method_reset, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
}
