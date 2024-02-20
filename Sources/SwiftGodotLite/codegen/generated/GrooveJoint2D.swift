// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A physics joint that restricts the movement of two 2D physics bodies to a fixed axis.
/// 
/// A physics joint that restricts the movement of two 2D physics bodies to a fixed axis. For example, a ``StaticBody2D`` representing a piston base can be attached to a ``RigidBody2D`` representing the piston head, moving up and down.
open class GrooveJoint2D: Joint2D {
    override open class var godotClassName: StringName { "GrooveJoint2D" }
    
    /* Properties */
    
    /// The groove's length. The groove is from the joint's origin towards ``length`` along the joint's local Y axis.
    final public var length: Double {
        get {
            return get_length ()
        }
        
        set {
            set_length (newValue)
        }
        
    }
    
    /// The body B's initial anchor position defined by the joint's origin and a local offset ``initialOffset`` along the joint's Y axis (along the groove).
    final public var initialOffset: Double {
        get {
            return get_initial_offset ()
        }
        
        set {
            set_initial_offset (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_length: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_length")
        return withUnsafePointer (to: &GrooveJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_length (_ length: Double) {
        #if true
        
        var copy_length = length
        
        gi.object_method_bind_ptrcall_v (GrooveJoint2D.method_set_length, UnsafeMutableRawPointer (mutating: handle), nil, &copy_length)
        
        #else
        
        var copy_length = length
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_length) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GrooveJoint2D.method_set_length, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_length: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_length")
        return withUnsafePointer (to: &GrooveJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_length ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (GrooveJoint2D.method_get_length, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_initial_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_initial_offset")
        return withUnsafePointer (to: &GrooveJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_initial_offset (_ offset: Double) {
        #if true
        
        var copy_offset = offset
        
        gi.object_method_bind_ptrcall_v (GrooveJoint2D.method_set_initial_offset, UnsafeMutableRawPointer (mutating: handle), nil, &copy_offset)
        
        #else
        
        var copy_offset = offset
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GrooveJoint2D.method_set_initial_offset, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_initial_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_initial_offset")
        return withUnsafePointer (to: &GrooveJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_initial_offset ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (GrooveJoint2D.method_get_initial_offset, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

