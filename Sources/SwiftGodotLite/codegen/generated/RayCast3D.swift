// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A ray in 3D space, used to find the first ``CollisionObject3D`` it intersects.
/// 
/// A raycast represents a ray from its origin to its ``targetPosition`` that finds the closest ``CollisionObject3D`` along its path, if it intersects any. This is useful for a lot of things, such as
/// 
/// ``RayCast3D`` can ignore some objects by adding them to an exception list, by making its detection reporting ignore ``Area3D``s (``collideWithAreas``) or ``PhysicsBody3D``s (``collideWithBodies``), or by configuring physics layers.
/// 
/// ``RayCast3D`` calculates intersection every physics frame, and it holds the result until the next physics frame. For an immediate raycast, or if you want to configure a ``RayCast3D`` multiple times within the same physics frame, use ``forceRaycastUpdate()``.
/// 
/// To sweep over a region of 3D space, you can approximate the region with multiple ``RayCast3D``s or use ``ShapeCast3D``.
/// 
open class RayCast3D: Node3D {
    override open class var godotClassName: StringName { "RayCast3D" }
    
    /* Properties */
    
    /// If `true`, collisions will be reported.
    final public var enabled: Bool {
        get {
            return is_enabled ()
        }
        
        set {
            set_enabled (newValue)
        }
        
    }
    
    /// If `true`, collisions will be ignored for this RayCast3D's immediate parent.
    final public var excludeParent: Bool {
        get {
            return get_exclude_parent_body ()
        }
        
        set {
            set_exclude_parent_body (newValue)
        }
        
    }
    
    /// The ray's destination point, relative to the RayCast's `position`.
    final public var targetPosition: Vector3 {
        get {
            return get_target_position ()
        }
        
        set {
            set_target_position (newValue)
        }
        
    }
    
    /// The ray's collision mask. Only objects in at least one collision layer enabled in the mask will be detected. See [url=$DOCS_URL/tutorials/physics/physics_introduction.html#collision-layers-and-masks]Collision layers and masks[/url] in the documentation for more information.
    final public var collisionMask: UInt32 {
        get {
            return get_collision_mask ()
        }
        
        set {
            set_collision_mask (newValue)
        }
        
    }
    
    /// If `true`, the ray will detect a hit when starting inside shapes. In this case the collision normal will be `Vector3(0, 0, 0)`. Does not affect shapes with no volume like concave polygon or heightmap.
    final public var hitFromInside: Bool {
        get {
            return is_hit_from_inside_enabled ()
        }
        
        set {
            set_hit_from_inside (newValue)
        }
        
    }
    
    /// If `true`, the ray will hit back faces with concave polygon shapes with back face enabled or heightmap shapes.
    final public var hitBackFaces: Bool {
        get {
            return is_hit_back_faces_enabled ()
        }
        
        set {
            set_hit_back_faces (newValue)
        }
        
    }
    
    /// If `true`, collisions with ``Area3D``s will be reported.
    final public var collideWithAreas: Bool {
        get {
            return is_collide_with_areas_enabled ()
        }
        
        set {
            set_collide_with_areas (newValue)
        }
        
    }
    
    /// If `true`, collisions with ``PhysicsBody3D``s will be reported.
    final public var collideWithBodies: Bool {
        get {
            return is_collide_with_bodies_enabled ()
        }
        
        set {
            set_collide_with_bodies (newValue)
        }
        
    }
    
    /// The custom color to use to draw the shape in the editor and at run-time if **Visible Collision Shapes** is enabled in the **Debug** menu. This color will be highlighted at run-time if the ``RayCast3D`` is colliding with something.
    /// 
    /// If set to `Color(0.0, 0.0, 0.0)` (by default), the color set in ``ProjectSettings/debug/shapes/collision/shapeColor`` is used.
    /// 
    final public var debugShapeCustomColor: Color {
        get {
            return get_debug_shape_custom_color ()
        }
        
        set {
            set_debug_shape_custom_color (newValue)
        }
        
    }
    
    /// If set to `1`, a line is used as the debug shape. Otherwise, a truncated pyramid is drawn to represent the ``RayCast3D``. Requires **Visible Collision Shapes** to be enabled in the **Debug** menu for the debug shape to be visible at run-time.
    final public var debugShapeThickness: Int32 {
        get {
            return get_debug_shape_thickness ()
        }
        
        set {
            set_debug_shape_thickness (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_enabled")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enabled (_ enabled: Bool) {
        #if false
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (RayCast3D.method_set_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RayCast3D.method_set_enabled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_enabled")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (RayCast3D.method_is_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_target_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_target_position")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_target_position (_ localPoint: Vector3) {
        #if false
        
        var copy_local_point = localPoint
        
        gi.object_method_bind_ptrcall_v (RayCast3D.method_set_target_position, UnsafeMutableRawPointer (mutating: handle), nil, &copy_local_point)
        
        #else
        
        var copy_local_point = localPoint
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_local_point) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RayCast3D.method_set_target_position, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_target_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_target_position")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_target_position ()-> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall (RayCast3D.method_get_target_position, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_colliding: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_colliding")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether any object is intersecting with the ray's vector (considering the vector length).
    public final func isColliding ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (RayCast3D.method_is_colliding, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_force_raycast_update: GDExtensionMethodBindPtr = {
        let methodName = StringName ("force_raycast_update")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Updates the collision information for the ray immediately, without waiting for the next `_physics_process` call. Use this method, for example, when the ray or its parent has changed state.
    /// 
    /// > Note: ``enabled`` does not need to be `true` for this to work.
    /// 
    public final func forceRaycastUpdate () {
        gi.object_method_bind_ptrcall (RayCast3D.method_force_raycast_update, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_get_collider: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_collider")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1981248198)!
            }
            
        }
        
    }()
    
    /// Returns the first object that the ray intersects, or `null` if no object is intersecting the ray (i.e. ``isColliding()`` returns `false`).
    public final func getCollider ()-> Object? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (RayCast3D.method_get_collider, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_collider_rid: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_collider_rid")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the ``RID`` of the first object that the ray intersects, or an empty ``RID`` if no object is intersecting the ray (i.e. ``isColliding()`` returns `false`).
    public final func getColliderRid ()-> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall (RayCast3D.method_get_collider_rid, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_collider_shape: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_collider_shape")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the shape ID of the first object that the ray intersects, or `0` if no object is intersecting the ray (i.e. ``isColliding()`` returns `false`).
    public final func getColliderShape ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (RayCast3D.method_get_collider_shape, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_collision_point: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_collision_point")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// Returns the collision point at which the ray intersects the closest object.
    /// 
    /// > Note: This point is in the **global** coordinate system.
    /// 
    public final func getCollisionPoint ()-> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall (RayCast3D.method_get_collision_point, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_collision_normal: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_collision_normal")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// Returns the normal of the intersecting object's shape at the collision point, or `Vector3(0, 0, 0)` if the ray starts inside the shape and ``hitFromInside`` is `true`.
    public final func getCollisionNormal ()-> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall (RayCast3D.method_get_collision_normal, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_collision_face_index: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_collision_face_index")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the collision object's face index at the collision point, or `-1` if the shape intersecting the ray is not a ``ConcavePolygonShape3D``.
    public final func getCollisionFaceIndex ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (RayCast3D.method_get_collision_face_index, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_add_exception_rid: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_exception_rid")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Adds a collision exception so the ray does not report collisions with the specified ``RID``.
    public final func addExceptionRid (_ rid: RID) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (RayCast3D.method_add_exception_rid, UnsafeMutableRawPointer (mutating: handle), nil, &rid.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &rid.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RayCast3D.method_add_exception_rid, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_add_exception: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_exception")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1976431078)!
            }
            
        }
        
    }()
    
    /// Adds a collision exception so the ray does not report collisions with the specified ``CollisionObject3D`` node.
    public final func addException (node: CollisionObject3D?) {
        #if false
        
        var copy_node_handle = node?.handle
        
        gi.object_method_bind_ptrcall_v (RayCast3D.method_add_exception, UnsafeMutableRawPointer (mutating: handle), nil, &copy_node_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: node?.handle) { p0 in
        _args.append (node == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (RayCast3D.method_add_exception, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_remove_exception_rid: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_exception_rid")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Removes a collision exception so the ray does report collisions with the specified ``RID``.
    public final func removeExceptionRid (_ rid: RID) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (RayCast3D.method_remove_exception_rid, UnsafeMutableRawPointer (mutating: handle), nil, &rid.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &rid.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RayCast3D.method_remove_exception_rid, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_remove_exception: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_exception")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1976431078)!
            }
            
        }
        
    }()
    
    /// Removes a collision exception so the ray does report collisions with the specified ``CollisionObject3D`` node.
    public final func removeException (node: CollisionObject3D?) {
        #if false
        
        var copy_node_handle = node?.handle
        
        gi.object_method_bind_ptrcall_v (RayCast3D.method_remove_exception, UnsafeMutableRawPointer (mutating: handle), nil, &copy_node_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: node?.handle) { p0 in
        _args.append (node == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (RayCast3D.method_remove_exception, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_clear_exceptions: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear_exceptions")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all collision exceptions for this ray.
    public final func clearExceptions () {
        gi.object_method_bind_ptrcall (RayCast3D.method_clear_exceptions, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_set_collision_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_collision_mask")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collision_mask (_ mask: UInt32) {
        #if false
        
        var copy_mask: Int = Int (mask)
        
        gi.object_method_bind_ptrcall_v (RayCast3D.method_set_collision_mask, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mask)
        
        #else
        
        var copy_mask: Int = Int (mask)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mask) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RayCast3D.method_set_collision_mask, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_collision_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_collision_mask")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_collision_mask ()-> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall (RayCast3D.method_get_collision_mask, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_collision_mask_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_collision_mask_value")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Based on `value`, enables or disables the specified layer in the ``collisionMask``, given a `layerNumber` between 1 and 32.
    public final func setCollisionMaskValue (layerNumber: Int32, value: Bool) {
        #if false
        
        var copy_layer_number: Int = Int (layerNumber)
        var copy_value = value
        
        gi.object_method_bind_ptrcall_v (RayCast3D.method_set_collision_mask_value, UnsafeMutableRawPointer (mutating: handle), nil, &copy_layer_number, &copy_value)
        
        #else
        
        var copy_layer_number: Int = Int (layerNumber)
        var copy_value = value
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_layer_number) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_value) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (RayCast3D.method_set_collision_mask_value, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_collision_mask_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_collision_mask_value")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether or not the specified layer of the ``collisionMask`` is enabled, given a `layerNumber` between 1 and 32.
    public final func getCollisionMaskValue (layerNumber: Int32)-> Bool {
        var _result: Bool = false
        #if false
        
        var copy_layer_number: Int = Int (layerNumber)
        
        gi.object_method_bind_ptrcall_v (RayCast3D.method_get_collision_mask_value, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_layer_number)
        return _result
        #else
        
        var copy_layer_number: Int = Int (layerNumber)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_layer_number) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RayCast3D.method_get_collision_mask_value, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_exclude_parent_body: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_exclude_parent_body")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_exclude_parent_body (_ mask: Bool) {
        #if false
        
        var copy_mask = mask
        
        gi.object_method_bind_ptrcall_v (RayCast3D.method_set_exclude_parent_body, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mask)
        
        #else
        
        var copy_mask = mask
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mask) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RayCast3D.method_set_exclude_parent_body, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_exclude_parent_body: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_exclude_parent_body")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_exclude_parent_body ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (RayCast3D.method_get_exclude_parent_body, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_collide_with_areas: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_collide_with_areas")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collide_with_areas (_ enable: Bool) {
        #if false
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (RayCast3D.method_set_collide_with_areas, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RayCast3D.method_set_collide_with_areas, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_collide_with_areas_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_collide_with_areas_enabled")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collide_with_areas_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (RayCast3D.method_is_collide_with_areas_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_collide_with_bodies: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_collide_with_bodies")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collide_with_bodies (_ enable: Bool) {
        #if false
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (RayCast3D.method_set_collide_with_bodies, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RayCast3D.method_set_collide_with_bodies, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_collide_with_bodies_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_collide_with_bodies_enabled")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collide_with_bodies_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (RayCast3D.method_is_collide_with_bodies_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_hit_from_inside: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_hit_from_inside")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_hit_from_inside (_ enable: Bool) {
        #if false
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (RayCast3D.method_set_hit_from_inside, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RayCast3D.method_set_hit_from_inside, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_hit_from_inside_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_hit_from_inside_enabled")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_hit_from_inside_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (RayCast3D.method_is_hit_from_inside_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_hit_back_faces: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_hit_back_faces")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_hit_back_faces (_ enable: Bool) {
        #if false
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (RayCast3D.method_set_hit_back_faces, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RayCast3D.method_set_hit_back_faces, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_hit_back_faces_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_hit_back_faces_enabled")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_hit_back_faces_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (RayCast3D.method_is_hit_back_faces_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_debug_shape_custom_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_debug_shape_custom_color")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_debug_shape_custom_color (_ debugShapeCustomColor: Color) {
        #if false
        
        var copy_debug_shape_custom_color = debugShapeCustomColor
        
        gi.object_method_bind_ptrcall_v (RayCast3D.method_set_debug_shape_custom_color, UnsafeMutableRawPointer (mutating: handle), nil, &copy_debug_shape_custom_color)
        
        #else
        
        var copy_debug_shape_custom_color = debugShapeCustomColor
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_debug_shape_custom_color) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RayCast3D.method_set_debug_shape_custom_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_debug_shape_custom_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_debug_shape_custom_color")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_debug_shape_custom_color ()-> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall (RayCast3D.method_get_debug_shape_custom_color, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_debug_shape_thickness: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_debug_shape_thickness")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_debug_shape_thickness (_ debugShapeThickness: Int32) {
        #if false
        
        var copy_debug_shape_thickness: Int = Int (debugShapeThickness)
        
        gi.object_method_bind_ptrcall_v (RayCast3D.method_set_debug_shape_thickness, UnsafeMutableRawPointer (mutating: handle), nil, &copy_debug_shape_thickness)
        
        #else
        
        var copy_debug_shape_thickness: Int = Int (debugShapeThickness)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_debug_shape_thickness) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RayCast3D.method_set_debug_shape_thickness, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_debug_shape_thickness: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_debug_shape_thickness")
        return withUnsafePointer (to: &RayCast3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_debug_shape_thickness ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (RayCast3D.method_get_debug_shape_thickness, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

