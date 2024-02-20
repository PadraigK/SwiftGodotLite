// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A physics joint that attaches two 3D physics bodies at a single point, allowing them to freely rotate.
/// 
/// A physics joint that attaches two 3D physics bodies at a single point, allowing them to freely rotate. For example, a ``RigidBody3D`` can be attached to a ``StaticBody3D`` to create a pendulum or a seesaw.
open class PinJoint3D: Joint3D {
    override open class var godotClassName: StringName { "PinJoint3D" }
    public enum Param: Int64 {
        /// The force with which the pinned objects stay in positional relation to each other. The higher, the stronger.
        case bias = 0 // PARAM_BIAS
        /// The force with which the pinned objects stay in velocity relation to each other. The higher, the stronger.
        case damping = 1 // PARAM_DAMPING
        /// If above 0, this value is the maximum value for an impulse that this Joint3D produces.
        case impulseClamp = 2 // PARAM_IMPULSE_CLAMP
    }
    
    /* Methods */
    fileprivate static var method_set_param: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_param")
        return withUnsafePointer (to: &PinJoint3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2059913726)!
            }
            
        }
        
    }()
    
    /// Sets the value of the specified parameter.
    public final func setParam (_ param: PinJoint3D.Param, value: Double) {
        #if false
        
        var copy_param = Int64 (param.rawValue)
        var copy_value = value
        
        gi.object_method_bind_ptrcall_v (PinJoint3D.method_set_param, UnsafeMutableRawPointer (mutating: handle), nil, &copy_param, &copy_value)
        
        #else
        
        var copy_param = Int64 (param.rawValue)
        var copy_value = value
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_param) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_value) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (PinJoint3D.method_set_param, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_param: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_param")
        return withUnsafePointer (to: &PinJoint3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1758438771)!
            }
            
        }
        
    }()
    
    /// Returns the value of the specified parameter.
    public final func getParam (_ param: PinJoint3D.Param)-> Double {
        var _result: Double = 0.0
        #if false
        
        var copy_param = Int64 (param.rawValue)
        
        gi.object_method_bind_ptrcall_v (PinJoint3D.method_get_param, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_param)
        return _result
        #else
        
        var copy_param = Int64 (param.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_param) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PinJoint3D.method_get_param, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
}

