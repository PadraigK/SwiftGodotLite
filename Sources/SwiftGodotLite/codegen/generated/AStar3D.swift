// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// An implementation of A* for finding the shortest path between two vertices on a connected graph in 3D space.
/// 
/// A* (A star) is a computer algorithm used in pathfinding and graph traversal, the process of plotting short paths among vertices (points), passing through a given set of edges (segments). It enjoys widespread use due to its performance and accuracy. Godot's A* implementation uses points in 3D space and Euclidean distances by default.
/// 
/// You must add points manually with ``addPoint(id:position:weightScale:)`` and create segments manually with ``connectPoints(id:toId:bidirectional:)``. Once done, you can test if there is a path between two points with the ``arePointsConnected(id:toId:bidirectional:)`` function, get a path containing indices by ``getIdPath(fromId:toId:)``, or one containing actual coordinates with ``getPointPath(fromId:toId:)``.
/// 
/// It is also possible to use non-Euclidean distances. To do so, create a class that extends ``AStar3D`` and override methods ``_computeCost(fromId:toId:)`` and ``_estimateCost(fromId:toId:)``. Both take two indices and return a length, as is shown in the following example.
/// 
/// ``_estimateCost(fromId:toId:)`` should return a lower bound of the distance, i.e. `_estimate_cost(u, v) <= _compute_cost(u, v)`. This serves as a hint to the algorithm because the custom ``_computeCost(fromId:toId:)`` might be computation-heavy. If this is not the case, make ``_estimateCost(fromId:toId:)`` return the same value as ``_computeCost(fromId:toId:)`` to provide the algorithm with the most accurate information.
/// 
/// If the default ``_estimateCost(fromId:toId:)`` and ``_computeCost(fromId:toId:)`` methods are used, or if the supplied ``_estimateCost(fromId:toId:)`` method returns a lower bound of the cost, then the paths returned by A* will be the lowest-cost paths. Here, the cost of a path equals the sum of the ``_computeCost(fromId:toId:)`` results of all segments in the path multiplied by the `weight_scale`s of the endpoints of the respective segments. If the default methods are used and the `weight_scale`s of all points are set to `1.0`, then this equals the sum of Euclidean distances of all segments in the path.
/// 
open class AStar3D: RefCounted {
    override open class var godotClassName: StringName { "AStar3D" }
    /* Methods */
    /// Called when estimating the cost between a point and the path's ending point.
    /// 
    /// Note that this function is hidden in the default ``AStar3D`` class.
    /// 
    @_documentation(visibility: public)
    open func _estimateCost (fromId: Int, toId: Int)-> Double {
        return 0.0
    }
    
    /// Called when computing the cost between two connected points.
    /// 
    /// Note that this function is hidden in the default ``AStar3D`` class.
    /// 
    @_documentation(visibility: public)
    open func _computeCost (fromId: Int, toId: Int)-> Double {
        return 0.0
    }
    
    fileprivate static var method_get_available_point_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_available_point_id")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the next available point ID with no point associated to it.
    public final func getAvailablePointId ()-> Int {
        var _result: Int = 0
        gi.object_method_bind_ptrcall (AStar3D.method_get_available_point_id, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_add_point: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_point")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1038703438)!
            }
            
        }
        
    }()
    
    /// Adds a new point at the given position with the given identifier. The `id` must be 0 or larger, and the `weightScale` must be 0.0 or greater.
    /// 
    /// The `weightScale` is multiplied by the result of ``_computeCost(fromId:toId:)`` when determining the overall cost of traveling across a segment from a neighboring point to this point. Thus, all else being equal, the algorithm prefers points with lower `weightScale`s to form a path.
    /// 
    /// If there already exists a point for the given `id`, its position and weight scale are updated to the given values.
    /// 
    public final func addPoint (id: Int, position: Vector3, weightScale: Double = 1.0) {
        #if false
        
        var copy_id = id
        var copy_position = position
        var copy_weight_scale = weightScale
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_add_point, UnsafeMutableRawPointer (mutating: handle), nil, &copy_id, &copy_position, &copy_weight_scale)
        
        #else
        
        var copy_id = id
        var copy_position = position
        var copy_weight_scale = weightScale
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_position) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_weight_scale) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (AStar3D.method_add_point, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_point_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_position")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// Returns the position of the point associated with the given `id`.
    public final func getPointPosition (id: Int)-> Vector3 {
        var _result: Vector3 = Vector3 ()
        #if false
        
        var copy_id = id
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_get_point_position, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_id)
        return _result
        #else
        
        var copy_id = id
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AStar3D.method_get_point_position, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_point_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_point_position")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1530502735)!
            }
            
        }
        
    }()
    
    /// Sets the `position` for the point with the given `id`.
    public final func setPointPosition (id: Int, position: Vector3) {
        #if false
        
        var copy_id = id
        var copy_position = position
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_set_point_position, UnsafeMutableRawPointer (mutating: handle), nil, &copy_id, &copy_position)
        
        #else
        
        var copy_id = id
        var copy_position = position
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_position) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (AStar3D.method_set_point_position, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_point_weight_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_weight_scale")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the weight scale of the point associated with the given `id`.
    public final func getPointWeightScale (id: Int)-> Double {
        var _result: Double = 0.0
        #if false
        
        var copy_id = id
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_get_point_weight_scale, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_id)
        return _result
        #else
        
        var copy_id = id
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AStar3D.method_get_point_weight_scale, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_point_weight_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_point_weight_scale")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets the `weightScale` for the point with the given `id`. The `weightScale` is multiplied by the result of ``_computeCost(fromId:toId:)`` when determining the overall cost of traveling across a segment from a neighboring point to this point.
    public final func setPointWeightScale (id: Int, weightScale: Double) {
        #if false
        
        var copy_id = id
        var copy_weight_scale = weightScale
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_set_point_weight_scale, UnsafeMutableRawPointer (mutating: handle), nil, &copy_id, &copy_weight_scale)
        
        #else
        
        var copy_id = id
        var copy_weight_scale = weightScale
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_weight_scale) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (AStar3D.method_set_point_weight_scale, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_remove_point: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_point")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the point associated with the given `id` from the points pool.
    public final func removePoint (id: Int) {
        #if false
        
        var copy_id = id
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_remove_point, UnsafeMutableRawPointer (mutating: handle), nil, &copy_id)
        
        #else
        
        var copy_id = id
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AStar3D.method_remove_point, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_has_point: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_point")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether a point associated with the given `id` exists.
    public final func hasPoint (id: Int)-> Bool {
        var _result: Bool = false
        #if false
        
        var copy_id = id
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_has_point, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_id)
        return _result
        #else
        
        var copy_id = id
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AStar3D.method_has_point, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_point_connections: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_connections")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2865087369)!
            }
            
        }
        
    }()
    
    /// Returns an array with the IDs of the points that form the connection with the given point.
    /// 
    public final func getPointConnections (id: Int)-> PackedInt64Array {
        let _result: PackedInt64Array = PackedInt64Array ()
        #if false
        
        var copy_id = id
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_get_point_connections, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_id)
        return _result
        #else
        
        var copy_id = id
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AStar3D.method_get_point_connections, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_point_ids: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_ids")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3851388692)!
            }
            
        }
        
    }()
    
    /// Returns an array of all point IDs.
    public final func getPointIds ()-> PackedInt64Array {
        let _result: PackedInt64Array = PackedInt64Array ()
        gi.object_method_bind_ptrcall (AStar3D.method_get_point_ids, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_point_disabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_point_disabled")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 972357352)!
            }
            
        }
        
    }()
    
    /// Disables or enables the specified point for pathfinding. Useful for making a temporary obstacle.
    public final func setPointDisabled (id: Int, disabled: Bool = true) {
        #if false
        
        var copy_id = id
        var copy_disabled = disabled
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_set_point_disabled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_id, &copy_disabled)
        
        #else
        
        var copy_id = id
        var copy_disabled = disabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_disabled) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (AStar3D.method_set_point_disabled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_is_point_disabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_point_disabled")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether a point is disabled or not for pathfinding. By default, all points are enabled.
    public final func isPointDisabled (id: Int)-> Bool {
        var _result: Bool = false
        #if false
        
        var copy_id = id
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_is_point_disabled, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_id)
        return _result
        #else
        
        var copy_id = id
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AStar3D.method_is_point_disabled, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_connect_points: GDExtensionMethodBindPtr = {
        let methodName = StringName ("connect_points")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3710494224)!
            }
            
        }
        
    }()
    
    /// Creates a segment between the given points. If `bidirectional` is `false`, only movement from `id` to `toId` is allowed, not the reverse direction.
    /// 
    public final func connectPoints (id: Int, toId: Int, bidirectional: Bool = true) {
        #if false
        
        var copy_id = id
        var copy_to_id = toId
        var copy_bidirectional = bidirectional
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_connect_points, UnsafeMutableRawPointer (mutating: handle), nil, &copy_id, &copy_to_id, &copy_bidirectional)
        
        #else
        
        var copy_id = id
        var copy_to_id = toId
        var copy_bidirectional = bidirectional
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_to_id) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_bidirectional) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (AStar3D.method_connect_points, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_disconnect_points: GDExtensionMethodBindPtr = {
        let methodName = StringName ("disconnect_points")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3710494224)!
            }
            
        }
        
    }()
    
    /// Deletes the segment between the given points. If `bidirectional` is `false`, only movement from `id` to `toId` is prevented, and a unidirectional segment possibly remains.
    public final func disconnectPoints (id: Int, toId: Int, bidirectional: Bool = true) {
        #if false
        
        var copy_id = id
        var copy_to_id = toId
        var copy_bidirectional = bidirectional
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_disconnect_points, UnsafeMutableRawPointer (mutating: handle), nil, &copy_id, &copy_to_id, &copy_bidirectional)
        
        #else
        
        var copy_id = id
        var copy_to_id = toId
        var copy_bidirectional = bidirectional
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_to_id) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_bidirectional) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (AStar3D.method_disconnect_points, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_are_points_connected: GDExtensionMethodBindPtr = {
        let methodName = StringName ("are_points_connected")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2288175859)!
            }
            
        }
        
    }()
    
    /// Returns whether the two given points are directly connected by a segment. If `bidirectional` is `false`, returns whether movement from `id` to `toId` is possible through this segment.
    public final func arePointsConnected (id: Int, toId: Int, bidirectional: Bool = true)-> Bool {
        var _result: Bool = false
        #if false
        
        var copy_id = id
        var copy_to_id = toId
        var copy_bidirectional = bidirectional
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_are_points_connected, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_id, &copy_to_id, &copy_bidirectional)
        return _result
        #else
        
        var copy_id = id
        var copy_to_id = toId
        var copy_bidirectional = bidirectional
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_to_id) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_bidirectional) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (AStar3D.method_are_points_connected, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                    return _result
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_point_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_count")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of points currently in the points pool.
    public final func getPointCount ()-> Int {
        var _result: Int = 0
        gi.object_method_bind_ptrcall (AStar3D.method_get_point_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_point_capacity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_capacity")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the capacity of the structure backing the points, useful in conjunction with ``reserveSpace(numNodes:)``.
    public final func getPointCapacity ()-> Int {
        var _result: Int = 0
        gi.object_method_bind_ptrcall (AStar3D.method_get_point_capacity, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_reserve_space: GDExtensionMethodBindPtr = {
        let methodName = StringName ("reserve_space")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Reserves space internally for `numNodes` points. Useful if you're adding a known large number of points at once, such as points on a grid. New capacity must be greater or equals to old capacity.
    public final func reserveSpace (numNodes: Int) {
        #if false
        
        var copy_num_nodes = numNodes
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_reserve_space, UnsafeMutableRawPointer (mutating: handle), nil, &copy_num_nodes)
        
        #else
        
        var copy_num_nodes = numNodes
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_num_nodes) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AStar3D.method_reserve_space, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_clear: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears all the points and segments.
    public final func clear () {
        gi.object_method_bind_ptrcall (AStar3D.method_clear, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_get_closest_point: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_closest_point")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3241074317)!
            }
            
        }
        
    }()
    
    /// Returns the ID of the closest point to `toPosition`, optionally taking disabled points into account. Returns `-1` if there are no points in the points pool.
    /// 
    /// > Note: If several points are the closest to `toPosition`, the one with the smallest ID will be returned, ensuring a deterministic result.
    /// 
    public final func getClosestPoint (toPosition: Vector3, includeDisabled: Bool = false)-> Int {
        var _result: Int = 0
        #if false
        
        var copy_to_position = toPosition
        var copy_include_disabled = includeDisabled
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_get_closest_point, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_to_position, &copy_include_disabled)
        return _result
        #else
        
        var copy_to_position = toPosition
        var copy_include_disabled = includeDisabled
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_to_position) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_include_disabled) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (AStar3D.method_get_closest_point, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_closest_position_in_segment: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_closest_position_in_segment")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 192990374)!
            }
            
        }
        
    }()
    
    /// Returns the closest position to `toPosition` that resides inside a segment between two connected points.
    /// 
    /// The result is in the segment that goes from `y = 0` to `y = 5`. It's the closest position in the segment to the given point.
    /// 
    public final func getClosestPositionInSegment (toPosition: Vector3)-> Vector3 {
        var _result: Vector3 = Vector3 ()
        #if false
        
        var copy_to_position = toPosition
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_get_closest_position_in_segment, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_to_position)
        return _result
        #else
        
        var copy_to_position = toPosition
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_to_position) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AStar3D.method_get_closest_position_in_segment, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_point_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_path")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 880819742)!
            }
            
        }
        
    }()
    
    /// Returns an array with the points that are in the path found by AStar3D between the given points. The array is ordered from the starting point to the ending point of the path.
    /// 
    /// > Note: This method is not thread-safe. If called from a ``Thread``, it will return an empty ``PackedVector3Array`` and will print an error message.
    /// 
    public final func getPointPath (fromId: Int, toId: Int)-> PackedVector3Array {
        let _result: PackedVector3Array = PackedVector3Array ()
        #if false
        
        var copy_from_id = fromId
        var copy_to_id = toId
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_get_point_path, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_from_id, &copy_to_id)
        return _result
        #else
        
        var copy_from_id = fromId
        var copy_to_id = toId
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_from_id) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_to_id) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (AStar3D.method_get_point_path, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_id_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_id_path")
        return withUnsafePointer (to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3404614526)!
            }
            
        }
        
    }()
    
    /// Returns an array with the IDs of the points that form the path found by AStar3D between the given points. The array is ordered from the starting point to the ending point of the path.
    /// 
    /// If you change the 2nd point's weight to 3, then the result will be `[1, 4, 3]` instead, because now even though the distance is longer, it's "easier" to get through point 4 than through point 2.
    /// 
    public final func getIdPath (fromId: Int, toId: Int)-> PackedInt64Array {
        let _result: PackedInt64Array = PackedInt64Array ()
        #if false
        
        var copy_from_id = fromId
        var copy_to_id = toId
        
        gi.object_method_bind_ptrcall_v (AStar3D.method_get_id_path, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_from_id, &copy_to_id)
        return _result
        #else
        
        var copy_from_id = fromId
        var copy_to_id = toId
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_from_id) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_to_id) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (AStar3D.method_get_id_path, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_compute_cost":
                return _AStar3D_proxy_compute_cost
            case "_estimate_cost":
                return _AStar3D_proxy_estimate_cost
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _AStar3D_proxy_compute_cost (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<AStar3D>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._computeCost (fromId: args [0]!.assumingMemoryBound (to: Int.self).pointee, toId: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _AStar3D_proxy_estimate_cost (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<AStar3D>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._estimateCost (fromId: args [0]!.assumingMemoryBound (to: Int.self).pointee, toId: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

