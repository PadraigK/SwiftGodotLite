// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Calculates a Step function within the visual shader graph.
/// 
/// Translates to `step(edge, x)` in the shader language.
/// 
/// Returns `0.0` if `x` is smaller than `edge` and `1.0` otherwise.
/// 
open class VisualShaderNodeStep: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeStep" }
    public enum OpType: Int64 {
        /// A floating-point scalar type.
        case scalar = 0 // OP_TYPE_SCALAR
        /// A 2D vector type.
        case vector2d = 1 // OP_TYPE_VECTOR_2D
        /// The `x` port uses a 2D vector type, while the `edge` port uses a floating-point scalar type.
        case vector2dScalar = 2 // OP_TYPE_VECTOR_2D_SCALAR
        /// A 3D vector type.
        case vector3d = 3 // OP_TYPE_VECTOR_3D
        /// The `x` port uses a 3D vector type, while the `edge` port uses a floating-point scalar type.
        case vector3dScalar = 4 // OP_TYPE_VECTOR_3D_SCALAR
        /// A 4D vector type.
        case vector4d = 5 // OP_TYPE_VECTOR_4D
        /// The `a` and `b` ports use a 4D vector type. The `weight` port uses a scalar type.
        case vector4dScalar = 6 // OP_TYPE_VECTOR_4D_SCALAR
        /// Represents the size of the ``VisualShaderNodeStep/OpType`` enum.
        case max = 7 // OP_TYPE_MAX
    }
    
    
    /* Properties */
    
    /// A type of operands and returned value.
    final public var opType: VisualShaderNodeStep.OpType {
        get {
            return get_op_type ()
        }
        
        set {
            set_op_type (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_op_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_op_type")
        return withUnsafePointer (to: &VisualShaderNodeStep.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 715172489)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_op_type (_ opType: VisualShaderNodeStep.OpType) {
        #if false
        
        var copy_op_type = Int64 (opType.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeStep.method_set_op_type, UnsafeMutableRawPointer (mutating: handle), nil, &copy_op_type)
        
        #else
        
        var copy_op_type = Int64 (opType.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_op_type) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeStep.method_set_op_type, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_op_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_op_type")
        return withUnsafePointer (to: &VisualShaderNodeStep.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3274022781)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_op_type ()-> VisualShaderNodeStep.OpType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeStep.method_get_op_type, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeStep.OpType (rawValue: _result)!
    }
    
}

