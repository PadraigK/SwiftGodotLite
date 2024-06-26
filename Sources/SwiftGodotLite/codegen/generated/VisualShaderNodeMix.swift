// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Linearly interpolates between two values within the visual shader graph.
/// 
/// Translates to `mix(a, b, weight)` in the shader language.
open class VisualShaderNodeMix: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeMix" }
    public enum OpType: Int64 {
        /// A floating-point scalar.
        case scalar = 0 // OP_TYPE_SCALAR
        /// A 2D vector type.
        case vector2d = 1 // OP_TYPE_VECTOR_2D
        /// The `a` and `b` ports use a 2D vector type. The `weight` port uses a scalar type.
        case vector2dScalar = 2 // OP_TYPE_VECTOR_2D_SCALAR
        /// A 3D vector type.
        case vector3d = 3 // OP_TYPE_VECTOR_3D
        /// The `a` and `b` ports use a 3D vector type. The `weight` port uses a scalar type.
        case vector3dScalar = 4 // OP_TYPE_VECTOR_3D_SCALAR
        /// A 4D vector type.
        case vector4d = 5 // OP_TYPE_VECTOR_4D
        /// The `a` and `b` ports use a 4D vector type. The `weight` port uses a scalar type.
        case vector4dScalar = 6 // OP_TYPE_VECTOR_4D_SCALAR
        /// Represents the size of the ``VisualShaderNodeMix/OpType`` enum.
        case max = 7 // OP_TYPE_MAX
    }
    
    
    /* Properties */
    
    /// A type of operands and returned value.
    final public var opType: VisualShaderNodeMix.OpType {
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
        return withUnsafePointer (to: &VisualShaderNodeMix.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3397501671)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_op_type (_ opType: VisualShaderNodeMix.OpType) {
        #if false
        
        var copy_op_type = Int64 (opType.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeMix.method_set_op_type, UnsafeMutableRawPointer (mutating: handle), nil, &copy_op_type)
        
        #else
        
        var copy_op_type = Int64 (opType.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_op_type) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeMix.method_set_op_type, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_op_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_op_type")
        return withUnsafePointer (to: &VisualShaderNodeMix.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4013957297)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_op_type ()-> VisualShaderNodeMix.OpType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeMix.method_get_op_type, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeMix.OpType (rawValue: _result)!
    }
    
}

