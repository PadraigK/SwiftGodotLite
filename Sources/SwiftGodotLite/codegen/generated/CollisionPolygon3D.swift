// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A node that provides a thickened polygon shape (a prism) to a ``CollisionObject3D`` parent.
/// 
/// A node that provides a thickened polygon shape (a prism) to a ``CollisionObject3D`` parent and allows to edit it. The polygon can be concave or convex. This can give a detection shape to an ``Area3D`` or turn ``PhysicsBody3D`` into a solid object.
/// 
/// > Warning: A non-uniformly scaled ``CollisionShape3D`` will likely not behave as expected. Make sure to keep its scale the same on all axes and adjust its shape resource instead.
/// 
open class CollisionPolygon3D: Node3D {
    override open class var godotClassName: StringName { "CollisionPolygon3D" }
    
    /* Properties */
    
    /// Length that the resulting collision extends in either direction perpendicular to its 2D polygon.
    final public var depth: Double {
        get {
            return get_depth ()
        }
        
        set {
            set_depth (newValue)
        }
        
    }
    
    /// If `true`, no collision will be produced.
    final public var disabled: Bool {
        get {
            return is_disabled ()
        }
        
        set {
            set_disabled (newValue)
        }
        
    }
    
    /// Array of vertices which define the 2D polygon in the local XY plane.
    /// 
    /// > Note: The returned value is a copy of the original. Methods which mutate the size or properties of the return value will not impact the original polygon. To change properties of the polygon, assign it to a temporary variable and make changes before reassigning the class property.
    /// 
    final public var polygon: PackedVector2Array {
        get {
            return get_polygon ()
        }
        
        set {
            set_polygon (newValue)
        }
        
    }
    
    /// The collision margin for the generated ``Shape3D``. See ``Shape3D/margin`` for more details.
    final public var margin: Double {
        get {
            return get_margin ()
        }
        
        set {
            set_margin (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_depth: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_depth")
        return withUnsafePointer (to: &CollisionPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth (_ depth: Double) {
        #if true
        
        var copy_depth = depth
        
        gi.object_method_bind_ptrcall_v (CollisionPolygon3D.method_set_depth, UnsafeMutableRawPointer (mutating: handle), nil, &copy_depth)
        
        #else
        
        var copy_depth = depth
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_depth) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CollisionPolygon3D.method_set_depth, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_depth: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_depth")
        return withUnsafePointer (to: &CollisionPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (CollisionPolygon3D.method_get_depth, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_polygon: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_polygon")
        return withUnsafePointer (to: &CollisionPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_polygon (_ polygon: PackedVector2Array) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (CollisionPolygon3D.method_set_polygon, UnsafeMutableRawPointer (mutating: handle), nil, &polygon.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &polygon.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CollisionPolygon3D.method_set_polygon, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_polygon: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_polygon")
        return withUnsafePointer (to: &CollisionPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2961356807)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_polygon ()-> PackedVector2Array {
        let _result: PackedVector2Array = PackedVector2Array ()
        gi.object_method_bind_ptrcall (CollisionPolygon3D.method_get_polygon, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_disabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_disabled")
        return withUnsafePointer (to: &CollisionPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_disabled (_ disabled: Bool) {
        #if true
        
        var copy_disabled = disabled
        
        gi.object_method_bind_ptrcall_v (CollisionPolygon3D.method_set_disabled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_disabled)
        
        #else
        
        var copy_disabled = disabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_disabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CollisionPolygon3D.method_set_disabled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_disabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_disabled")
        return withUnsafePointer (to: &CollisionPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_disabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (CollisionPolygon3D.method_is_disabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_margin")
        return withUnsafePointer (to: &CollisionPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_margin (_ margin: Double) {
        #if true
        
        var copy_margin = margin
        
        gi.object_method_bind_ptrcall_v (CollisionPolygon3D.method_set_margin, UnsafeMutableRawPointer (mutating: handle), nil, &copy_margin)
        
        #else
        
        var copy_margin = margin
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_margin) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CollisionPolygon3D.method_set_margin, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_margin")
        return withUnsafePointer (to: &CollisionPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_margin ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (CollisionPolygon3D.method_get_margin, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

