// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Multiplies a ``Transform3D`` and a ``Vector3`` within the visual shader graph.
/// 
/// A multiplication operation on a transform (4x4 matrix) and a vector, with support for different multiplication operators.
open class VisualShaderNodeTransformVecMult: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeTransformVecMult" }
    public enum Operator: Int64 {
        /// Multiplies transform `a` by the vector `b`.
        case axb = 0 // OP_AxB
        /// Multiplies vector `b` by the transform `a`.
        case bxa = 1 // OP_BxA
        /// Multiplies transform `a` by the vector `b`, skipping the last row and column of the transform.
        case op3x3AxB = 2 // OP_3x3_AxB
        /// Multiplies vector `b` by the transform `a`, skipping the last row and column of the transform.
        case op3x3BxA = 3 // OP_3x3_BxA
        /// Represents the size of the ``VisualShaderNodeTransformVecMult/Operator`` enum.
        case max = 4 // OP_MAX
    }
    
    
    /* Properties */
    
    /// The multiplication type to be performed. See ``VisualShaderNodeTransformVecMult/Operator`` for options.
    final public var `operator`: VisualShaderNodeTransformVecMult.Operator {
        get {
            return get_operator ()
        }
        
        set {
            set_operator (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_operator: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_operator")
        return withUnsafePointer (to: &VisualShaderNodeTransformVecMult.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1785665912)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_operator (_ op: VisualShaderNodeTransformVecMult.Operator) {
        #if true
        
        var copy_op = Int64 (op.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeTransformVecMult.method_set_operator, UnsafeMutableRawPointer (mutating: handle), nil, &copy_op)
        
        #else
        
        var copy_op = Int64 (op.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_op) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeTransformVecMult.method_set_operator, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_operator: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_operator")
        return withUnsafePointer (to: &VisualShaderNodeTransformVecMult.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1622088722)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_operator ()-> VisualShaderNodeTransformVecMult.Operator {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeTransformVecMult.method_get_operator, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeTransformVecMult.Operator (rawValue: _result)!
    }
    
}

