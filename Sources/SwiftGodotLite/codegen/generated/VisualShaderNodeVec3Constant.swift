// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A ``Vector3`` constant to be used within the visual shader graph.
/// 
/// A constant ``Vector3``, which can be used as an input node.
open class VisualShaderNodeVec3Constant: VisualShaderNodeConstant {
    override open class var godotClassName: StringName { "VisualShaderNodeVec3Constant" }
    
    /* Properties */
    
    /// A ``Vector3`` constant which represents the state of this node.
    final public var constant: Vector3 {
        get {
            return get_constant ()
        }
        
        set {
            set_constant (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_constant: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_constant")
        return withUnsafePointer (to: &VisualShaderNodeVec3Constant.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_constant (_ constant: Vector3) {
        #if false
        
        var copy_constant = constant
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeVec3Constant.method_set_constant, UnsafeMutableRawPointer (mutating: handle), nil, &copy_constant)
        
        #else
        
        var copy_constant = constant
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_constant) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeVec3Constant.method_set_constant, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_constant: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_constant")
        return withUnsafePointer (to: &VisualShaderNodeVec3Constant.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_constant ()-> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall (VisualShaderNodeVec3Constant.method_get_constant, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

