// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A 3D convex polyhedron shape used for physics collision.
/// 
/// A 3D convex polyhedron shape, intended for use in physics. Usually used to provide a shape for a ``CollisionShape3D``.
/// 
/// ``ConvexPolygonShape3D`` is _solid_, which means it detects collisions from objects that are fully inside it, unlike ``ConcavePolygonShape3D`` which is hollow. This makes it more suitable for both detection and physics.
/// 
/// **Convex decomposition:** A concave polyhedron can be split up into several convex polyhedra. This allows dynamic physics bodies to have complex concave collisions (at a performance cost) and can be achieved by using several ``ConvexPolygonShape3D`` nodes. To generate a convex decomposition from a mesh, select the ``MeshInstance3D`` node, go to the **Mesh** menu that appears above the viewport, and choose **Create Multiple Convex Collision Siblings**. Alternatively, ``MeshInstance3D/createMultipleConvexCollisions(settings:)`` can be called in a script to perform this decomposition at run-time.
/// 
/// **Performance:** ``ConvexPolygonShape3D`` is faster to check collisions against compared to ``ConcavePolygonShape3D``, but it is slower than primitive collision shapes such as ``SphereShape3D`` and ``BoxShape3D``. Its use should generally be limited to medium-sized objects that cannot have their collision accurately represented by primitive shapes.
/// 
open class ConvexPolygonShape3D: Shape3D {
    override open class var godotClassName: StringName { "ConvexPolygonShape3D" }
    
    /* Properties */
    
    /// The list of 3D points forming the convex polygon shape.
    final public var points: PackedVector3Array {
        get {
            return get_points ()
        }
        
        set {
            set_points (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_points: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_points")
        return withUnsafePointer (to: &ConvexPolygonShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 334873810)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_points (_ points: PackedVector3Array) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (ConvexPolygonShape3D.method_set_points, UnsafeMutableRawPointer (mutating: handle), nil, &points.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &points.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ConvexPolygonShape3D.method_set_points, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_points: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_points")
        return withUnsafePointer (to: &ConvexPolygonShape3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 497664490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_points ()-> PackedVector3Array {
        let _result: PackedVector3Array = PackedVector3Array ()
        gi.object_method_bind_ptrcall (ConvexPolygonShape3D.method_get_points, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
}

