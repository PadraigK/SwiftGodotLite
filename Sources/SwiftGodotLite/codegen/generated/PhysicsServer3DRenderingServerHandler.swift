// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A class used to provide ``PhysicsServer3DExtension/_softBodyUpdateRenderingServer(body:renderingServerHandler:)`` with a rendering handler for soft bodies.
open class PhysicsServer3DRenderingServerHandler: Object {
    override open class var godotClassName: StringName { "PhysicsServer3DRenderingServerHandler" }
    /* Methods */
    /// Called by the ``PhysicsServer3D`` to set the position for the ``SoftBody3D`` vertex at the index specified by `vertexId`.
    /// 
    /// > Note: The `vertex` parameter used to be of type `const void*` prior to Godot 4.2.
    /// 
    @_documentation(visibility: public)
    open func _setVertex (vertexId: Int32, vertex: Vector3) {
    }
    
    /// Called by the ``PhysicsServer3D`` to set the normal for the ``SoftBody3D`` vertex at the index specified by `vertexId`.
    /// 
    /// > Note: The `normal` parameter used to be of type `const void*` prior to Godot 4.2.
    /// 
    @_documentation(visibility: public)
    open func _setNormal (vertexId: Int32, normal: Vector3) {
    }
    
    /// Called by the ``PhysicsServer3D`` to set the bounding box for the ``SoftBody3D``.
    @_documentation(visibility: public)
    open func _setAabb (_ aabb: AABB) {
    }
    
    fileprivate static var method_set_vertex: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_vertex")
        return withUnsafePointer (to: &PhysicsServer3DRenderingServerHandler.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1530502735)!
            }
            
        }
        
    }()
    
    /// Sets the position for the ``SoftBody3D`` vertex at the index specified by `vertexId`.
    public final func setVertex (vertexId: Int32, vertex: Vector3) {
        #if false
        
        var copy_vertex_id: Int = Int (vertexId)
        var copy_vertex = vertex
        
        gi.object_method_bind_ptrcall_v (PhysicsServer3DRenderingServerHandler.method_set_vertex, UnsafeMutableRawPointer (mutating: handle), nil, &copy_vertex_id, &copy_vertex)
        
        #else
        
        var copy_vertex_id: Int = Int (vertexId)
        var copy_vertex = vertex
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_vertex_id) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_vertex) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (PhysicsServer3DRenderingServerHandler.method_set_vertex, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_normal: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_normal")
        return withUnsafePointer (to: &PhysicsServer3DRenderingServerHandler.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1530502735)!
            }
            
        }
        
    }()
    
    /// Sets the normal for the ``SoftBody3D`` vertex at the index specified by `vertexId`.
    public final func setNormal (vertexId: Int32, normal: Vector3) {
        #if false
        
        var copy_vertex_id: Int = Int (vertexId)
        var copy_normal = normal
        
        gi.object_method_bind_ptrcall_v (PhysicsServer3DRenderingServerHandler.method_set_normal, UnsafeMutableRawPointer (mutating: handle), nil, &copy_vertex_id, &copy_normal)
        
        #else
        
        var copy_vertex_id: Int = Int (vertexId)
        var copy_normal = normal
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_vertex_id) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_normal) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (PhysicsServer3DRenderingServerHandler.method_set_normal, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_aabb: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_aabb")
        return withUnsafePointer (to: &PhysicsServer3DRenderingServerHandler.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 259215842)!
            }
            
        }
        
    }()
    
    /// Sets the bounding box for the ``SoftBody3D``.
    public final func setAabb (_ aabb: AABB) {
        #if false
        
        var copy_aabb = aabb
        
        gi.object_method_bind_ptrcall_v (PhysicsServer3DRenderingServerHandler.method_set_aabb, UnsafeMutableRawPointer (mutating: handle), nil, &copy_aabb)
        
        #else
        
        var copy_aabb = aabb
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_aabb) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicsServer3DRenderingServerHandler.method_set_aabb, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_set_aabb":
                return _PhysicsServer3DRenderingServerHandler_proxy_set_aabb
            case "_set_normal":
                return _PhysicsServer3DRenderingServerHandler_proxy_set_normal
            case "_set_vertex":
                return _PhysicsServer3DRenderingServerHandler_proxy_set_vertex
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _PhysicsServer3DRenderingServerHandler_proxy_set_aabb (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsServer3DRenderingServerHandler>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._setAabb (args [0]!.assumingMemoryBound (to: AABB.self).pointee)
}

func _PhysicsServer3DRenderingServerHandler_proxy_set_normal (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsServer3DRenderingServerHandler>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._setNormal (vertexId: args [0]!.assumingMemoryBound (to: Int32.self).pointee, normal: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DRenderingServerHandler_proxy_set_vertex (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsServer3DRenderingServerHandler>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._setVertex (vertexId: args [0]!.assumingMemoryBound (to: Int32.self).pointee, vertex: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

