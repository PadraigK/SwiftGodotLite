// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Abstract base class for all 3D physics joints.
/// 
/// Abstract base class for all joints in 3D physics. 3D joints bind together two physics bodies and apply a constraint.
open class Joint3D: Node3D {
    override open class var godotClassName: StringName { "Joint3D" }
    
    /* Properties */
    
    /// The node attached to the first side (A) of the joint.
    final public var nodeA: NodePath {
        get {
            return get_node_a ()
        }
        
        set {
            set_node_a (newValue)
        }
        
    }
    
    /// The node attached to the second side (B) of the joint.
    final public var nodeB: NodePath {
        get {
            return get_node_b ()
        }
        
        set {
            set_node_b (newValue)
        }
        
    }
    
    /// The priority used to define which solver is executed first for multiple joints. The lower the value, the higher the priority.
    final public var solverPriority: Int32 {
        get {
            return get_solver_priority ()
        }
        
        set {
            set_solver_priority (newValue)
        }
        
    }
    
    /// If `true`, the two bodies of the nodes are not able to collide with each other.
    final public var excludeNodesFromCollision: Bool {
        get {
            return get_exclude_nodes_from_collision ()
        }
        
        set {
            set_exclude_nodes_from_collision (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_node_a: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_node_a")
        return withUnsafePointer (to: &Joint3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_node_a (_ node: NodePath) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (Joint3D.method_set_node_a, UnsafeMutableRawPointer (mutating: handle), nil, &node.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &node.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Joint3D.method_set_node_a, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_node_a: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_a")
        return withUnsafePointer (to: &Joint3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_node_a ()-> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall (Joint3D.method_get_node_a, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_node_b: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_node_b")
        return withUnsafePointer (to: &Joint3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_node_b (_ node: NodePath) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (Joint3D.method_set_node_b, UnsafeMutableRawPointer (mutating: handle), nil, &node.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &node.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Joint3D.method_set_node_b, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_node_b: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_b")
        return withUnsafePointer (to: &Joint3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_node_b ()-> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall (Joint3D.method_get_node_b, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_solver_priority: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_solver_priority")
        return withUnsafePointer (to: &Joint3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_solver_priority (_ priority: Int32) {
        #if false
        
        var copy_priority: Int = Int (priority)
        
        gi.object_method_bind_ptrcall_v (Joint3D.method_set_solver_priority, UnsafeMutableRawPointer (mutating: handle), nil, &copy_priority)
        
        #else
        
        var copy_priority: Int = Int (priority)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_priority) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Joint3D.method_set_solver_priority, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_solver_priority: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_solver_priority")
        return withUnsafePointer (to: &Joint3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_solver_priority ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (Joint3D.method_get_solver_priority, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_exclude_nodes_from_collision: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_exclude_nodes_from_collision")
        return withUnsafePointer (to: &Joint3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_exclude_nodes_from_collision (_ enable: Bool) {
        #if false
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (Joint3D.method_set_exclude_nodes_from_collision, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Joint3D.method_set_exclude_nodes_from_collision, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_exclude_nodes_from_collision: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_exclude_nodes_from_collision")
        return withUnsafePointer (to: &Joint3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_exclude_nodes_from_collision ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (Joint3D.method_get_exclude_nodes_from_collision, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_rid: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_rid")
        return withUnsafePointer (to: &Joint3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the joint's ``RID``.
    public final func getRid ()-> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall (Joint3D.method_get_rid, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
}

