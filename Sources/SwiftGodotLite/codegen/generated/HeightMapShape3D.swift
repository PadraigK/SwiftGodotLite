// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A 3D height map shape used for physics collision.
/// 
/// A 3D heightmap shape, intended for use in physics. Usually used to provide a shape for a ``CollisionShape3D``. This is useful for terrain, but it is limited as overhangs (such as caves) cannot be stored. Holes in a ``HeightMapShape3D`` are created by assigning very low values to points in the desired area.
/// 
/// **Performance:** ``HeightMapShape3D`` is faster to check collisions against than ``ConcavePolygonShape3D``, but it is significantly slower than primitive shapes like ``BoxShape3D``.
/// 
open class HeightMapShape3D: Shape3D {
    override open class var godotClassName: StringName { "HeightMapShape3D" }
    
    /* Properties */
    
    /// Number of vertices in the width of the height map. Changing this will resize the ``mapData``.
    final public var mapWidth: Int32 {
        get {
            return get_map_width ()
        }
        
        set {
            set_map_width (newValue)
        }
        
    }
    
    /// Number of vertices in the depth of the height map. Changing this will resize the ``mapData``.
    final public var mapDepth: Int32 {
        get {
            return get_map_depth ()
        }
        
        set {
            set_map_depth (newValue)
        }
        
    }
    
    /// Height map data, pool array must be of ``mapWidth`` * ``mapDepth`` size.
    final public var mapData: PackedFloat32Array {
        get {
            return get_map_data ()
        }
        
        set {
            set_map_data (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_map_width: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_map_width")
        return withUnsafePointer (to: &HeightMapShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_map_width (_ width: Int32) {
        #if false
        
        var copy_width: Int = Int (width)
        
        gi.object_method_bind_ptrcall_v (HeightMapShape3D.method_set_map_width, UnsafeMutableRawPointer (mutating: handle), nil, &copy_width)
        
        #else
        
        var copy_width: Int = Int (width)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_width) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (HeightMapShape3D.method_set_map_width, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_map_width: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_map_width")
        return withUnsafePointer (to: &HeightMapShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_map_width ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (HeightMapShape3D.method_get_map_width, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_map_depth: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_map_depth")
        return withUnsafePointer (to: &HeightMapShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_map_depth (_ height: Int32) {
        #if false
        
        var copy_height: Int = Int (height)
        
        gi.object_method_bind_ptrcall_v (HeightMapShape3D.method_set_map_depth, UnsafeMutableRawPointer (mutating: handle), nil, &copy_height)
        
        #else
        
        var copy_height: Int = Int (height)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_height) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (HeightMapShape3D.method_set_map_depth, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_map_depth: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_map_depth")
        return withUnsafePointer (to: &HeightMapShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_map_depth ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (HeightMapShape3D.method_get_map_depth, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_map_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_map_data")
        return withUnsafePointer (to: &HeightMapShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2899603908)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_map_data (_ data: PackedFloat32Array) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (HeightMapShape3D.method_set_map_data, UnsafeMutableRawPointer (mutating: handle), nil, &data.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &data.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (HeightMapShape3D.method_set_map_data, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_map_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_map_data")
        return withUnsafePointer (to: &HeightMapShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 675695659)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_map_data ()-> PackedFloat32Array {
        let _result: PackedFloat32Array = PackedFloat32Array ()
        gi.object_method_bind_ptrcall (HeightMapShape3D.method_get_map_data, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
}

