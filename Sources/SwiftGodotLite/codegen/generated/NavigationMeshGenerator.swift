// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Helper class for creating and clearing navigation meshes.
/// 
/// This class is responsible for creating and clearing 3D navigation meshes used as ``NavigationMesh`` resources inside ``NavigationRegion3D``. The ``NavigationMeshGenerator`` has very limited to no use for 2D as the navigation mesh baking process expects 3D node types and 3D source geometry to parse.
/// 
/// The entire navigation mesh baking is best done in a separate thread as the voxelization, collision tests and mesh optimization steps involved are very performance and time hungry operations.
/// 
/// Navigation mesh baking happens in multiple steps and the result depends on 3D source geometry and properties of the ``NavigationMesh`` resource. In the first step, starting from a root node and depending on ``NavigationMesh`` properties all valid 3D source geometry nodes are collected from the ``SceneTree``. Second, all collected nodes are parsed for their relevant 3D geometry data and a combined 3D mesh is build. Due to the many different types of parsable objects, from normal ``MeshInstance3D``s to ``CSGShape3D``s or various ``CollisionObject3D``s, some operations to collect geometry data can trigger ``RenderingServer`` and ``PhysicsServer3D`` synchronizations. Server synchronization can have a negative effect on baking time or framerate as it often involves ``Mutex`` locking for thread security. Many parsable objects and the continuous synchronization with other threaded Servers can increase the baking time significantly. On the other hand only a few but very large and complex objects will take some time to prepare for the Servers which can noticeably stall the next frame render. As a general rule the total number of parsable objects and their individual size and complexity should be balanced to avoid framerate issues or very long baking times. The combined mesh is then passed to the Recast Navigation Object to test the source geometry for walkable terrain suitable to ``NavigationMesh`` agent properties by creating a voxel world around the meshes bounding area.
/// 
/// The finalized navigation mesh is then returned and stored inside the ``NavigationMesh`` for use as a resource inside ``NavigationRegion3D`` nodes.
/// 
/// > Note: Using meshes to not only define walkable surfaces but also obstruct navigation baking does not always work. The navigation baking has no concept of what is a geometry "inside" when dealing with mesh source geometry and this is intentional. Depending on current baking parameters, as soon as the obstructing mesh is large enough to fit a navigation mesh area inside, the baking will generate navigation mesh areas that are inside the obstructing source geometry mesh.
/// 
open class NavigationMeshGenerator: Object {
    /// The shared instance of this class
    public static var shared: NavigationMeshGenerator = {
        return withUnsafePointer (to: &NavigationMeshGenerator.godotClassName.content) { ptr in
            NavigationMeshGenerator (nativeHandle: gi.global_get_singleton (ptr)!)
        }
        
    }()
    
    override open class var godotClassName: StringName { "NavigationMeshGenerator" }
    /* Methods */
    fileprivate static var method_bake: GDExtensionMethodBindPtr = {
        let methodName = StringName ("bake")
        return withUnsafePointer (to: &NavigationMeshGenerator.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1401173477)!
            }
            
        }
        
    }()
    
    /// The bake function is deprecated due to core threading changes. To upgrade existing code, first create a ``NavigationMeshSourceGeometryData3D`` resource. Use this resource with ``parseSourceGeometryData(navigationMesh:sourceGeometryData:rootNode:callback:)`` to parse the SceneTree for nodes that should contribute to the navigation mesh baking. The SceneTree parsing needs to happen on the main thread. After the parsing is finished use the resource with ``bakeFromSourceGeometryData(navigationMesh:sourceGeometryData:callback:)`` to bake a navigation mesh.
    public static func bake (navigationMesh: NavigationMesh?, rootNode: Node?) {
        #if false
        
        var copy_navigation_mesh_handle = navigationMesh?.handle
        var copy_root_node_handle = rootNode?.handle
        
        gi.object_method_bind_ptrcall_v (NavigationMeshGenerator.method_bake, UnsafeMutableRawPointer (mutating: shared.handle), nil, &copy_navigation_mesh_handle, &copy_root_node_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: navigationMesh?.handle) { p0 in
        _args.append (navigationMesh == nil ? nil : p0)
            withUnsafePointer (to: rootNode?.handle) { p1 in
            _args.append (rootNode == nil ? nil : p1)
        
                gi.object_method_bind_ptrcall (NavigationMeshGenerator.method_bake, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_clear: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear")
        return withUnsafePointer (to: &NavigationMeshGenerator.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2923361153)!
            }
            
        }
        
    }()
    
    /// Removes all polygons and vertices from the provided `navigationMesh` resource.
    public static func clear (navigationMesh: NavigationMesh?) {
        #if false
        
        var copy_navigation_mesh_handle = navigationMesh?.handle
        
        gi.object_method_bind_ptrcall_v (NavigationMeshGenerator.method_clear, UnsafeMutableRawPointer (mutating: shared.handle), nil, &copy_navigation_mesh_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: navigationMesh?.handle) { p0 in
        _args.append (navigationMesh == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (NavigationMeshGenerator.method_clear, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_parse_source_geometry_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("parse_source_geometry_data")
        return withUnsafePointer (to: &NavigationMeshGenerator.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 685862123)!
            }
            
        }
        
    }()
    
    /// Parses the ``SceneTree`` for source geometry according to the properties of `navigationMesh`. Updates the provided `sourceGeometryData` resource with the resulting data. The resource can then be used to bake a navigation mesh with ``bakeFromSourceGeometryData(navigationMesh:sourceGeometryData:callback:)``. After the process is finished the optional `callback` will be called.
    /// 
    /// > Note: This function needs to run on the main thread or with a deferred call as the SceneTree is not thread-safe.
    /// 
    /// **Performance:** While convenient, reading data arrays from ``Mesh`` resources can affect the frame rate negatively. The data needs to be received from the GPU, stalling the ``RenderingServer`` in the process. For performance prefer the use of e.g. collision shapes or creating the data arrays entirely in code.
    /// 
    public static func parseSourceGeometryData (navigationMesh: NavigationMesh?, sourceGeometryData: NavigationMeshSourceGeometryData3D?, rootNode: Node?, callback: Callable = Callable()) {
        #if false
        
        var copy_navigation_mesh_handle = navigationMesh?.handle
        var copy_source_geometry_data_handle = sourceGeometryData?.handle
        var copy_root_node_handle = rootNode?.handle
        
        gi.object_method_bind_ptrcall_v (NavigationMeshGenerator.method_parse_source_geometry_data, UnsafeMutableRawPointer (mutating: shared.handle), nil, &copy_navigation_mesh_handle, &copy_source_geometry_data_handle, &copy_root_node_handle, &callback.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: navigationMesh?.handle) { p0 in
        _args.append (navigationMesh == nil ? nil : p0)
            withUnsafePointer (to: sourceGeometryData?.handle) { p1 in
            _args.append (sourceGeometryData == nil ? nil : p1)
                withUnsafePointer (to: rootNode?.handle) { p2 in
                _args.append (rootNode == nil ? nil : p2)
                    withUnsafePointer (to: &callback.content) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (NavigationMeshGenerator.method_parse_source_geometry_data, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_bake_from_source_geometry_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("bake_from_source_geometry_data")
        return withUnsafePointer (to: &NavigationMeshGenerator.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2469318639)!
            }
            
        }
        
    }()
    
    /// Bakes the provided `navigationMesh` with the data from the provided `sourceGeometryData`. After the process is finished the optional `callback` will be called.
    public static func bakeFromSourceGeometryData (navigationMesh: NavigationMesh?, sourceGeometryData: NavigationMeshSourceGeometryData3D?, callback: Callable = Callable()) {
        #if false
        
        var copy_navigation_mesh_handle = navigationMesh?.handle
        var copy_source_geometry_data_handle = sourceGeometryData?.handle
        
        gi.object_method_bind_ptrcall_v (NavigationMeshGenerator.method_bake_from_source_geometry_data, UnsafeMutableRawPointer (mutating: shared.handle), nil, &copy_navigation_mesh_handle, &copy_source_geometry_data_handle, &callback.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: navigationMesh?.handle) { p0 in
        _args.append (navigationMesh == nil ? nil : p0)
            withUnsafePointer (to: sourceGeometryData?.handle) { p1 in
            _args.append (sourceGeometryData == nil ? nil : p1)
                withUnsafePointer (to: &callback.content) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (NavigationMeshGenerator.method_bake_from_source_geometry_data, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
}

