// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Calculates a derivative within the visual shader graph.
/// 
/// This node is only available in `Fragment` and `Light` visual shaders.
open class VisualShaderNodeDerivativeFunc: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeDerivativeFunc" }
    public enum OpType: Int64 {
        /// A floating-point scalar.
        case scalar = 0 // OP_TYPE_SCALAR
        /// A 2D vector type.
        case vector2d = 1 // OP_TYPE_VECTOR_2D
        /// A 3D vector type.
        case vector3d = 2 // OP_TYPE_VECTOR_3D
        /// A 4D vector type.
        case vector4d = 3 // OP_TYPE_VECTOR_4D
        /// Represents the size of the ``VisualShaderNodeDerivativeFunc/OpType`` enum.
        case max = 4 // OP_TYPE_MAX
    }
    
    public enum Function: Int64 {
        /// Sum of absolute derivative in `x` and `y`.
        case sum = 0 // FUNC_SUM
        /// Derivative in `x` using local differencing.
        case x = 1 // FUNC_X
        /// Derivative in `y` using local differencing.
        case y = 2 // FUNC_Y
        /// Represents the size of the ``VisualShaderNodeDerivativeFunc/Function`` enum.
        case max = 3 // FUNC_MAX
    }
    
    public enum Precision: Int64 {
        /// No precision is specified, the GPU driver is allowed to use whatever level of precision it chooses. This is the default option and is equivalent to using `dFdx()` or `dFdy()` in text shaders.
        case none = 0 // PRECISION_NONE
        /// The derivative will be calculated using the current fragment's neighbors (which may not include the current fragment). This tends to be faster than using .fine, but may not be suitable when more precision is needed. This is equivalent to using `dFdxCoarse()` or `dFdyCoarse()` in text shaders.
        case coarse = 1 // PRECISION_COARSE
        /// The derivative will be calculated using the current fragment and its immediate neighbors. This tends to be slower than using .coarse, but may be necessary when more precision is needed. This is equivalent to using `dFdxFine()` or `dFdyFine()` in text shaders.
        case fine = 2 // PRECISION_FINE
        /// Represents the size of the ``VisualShaderNodeDerivativeFunc/Precision`` enum.
        case max = 3 // PRECISION_MAX
    }
    
    
    /* Properties */
    
    /// A type of operands and returned value. See ``VisualShaderNodeDerivativeFunc/OpType`` for options.
    final public var opType: VisualShaderNodeDerivativeFunc.OpType {
        get {
            return get_op_type ()
        }
        
        set {
            set_op_type (newValue)
        }
        
    }
    
    /// A derivative function type. See ``VisualShaderNodeDerivativeFunc/Function`` for options.
    final public var function: VisualShaderNodeDerivativeFunc.Function {
        get {
            return get_function ()
        }
        
        set {
            set_function (newValue)
        }
        
    }
    
    /// Sets the level of precision to use for the derivative function. See ``VisualShaderNodeDerivativeFunc/Precision`` for options. When using the GL Compatibility renderer, this setting has no effect.
    final public var precision: VisualShaderNodeDerivativeFunc.Precision {
        get {
            return get_precision ()
        }
        
        set {
            set_precision (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_op_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_op_type")
        return withUnsafePointer (to: &VisualShaderNodeDerivativeFunc.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 377800221)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_op_type (_ type: VisualShaderNodeDerivativeFunc.OpType) {
        #if true
        
        var copy_type = Int64 (type.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeDerivativeFunc.method_set_op_type, UnsafeMutableRawPointer (mutating: handle), nil, &copy_type)
        
        #else
        
        var copy_type = Int64 (type.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeDerivativeFunc.method_set_op_type, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_op_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_op_type")
        return withUnsafePointer (to: &VisualShaderNodeDerivativeFunc.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3997800514)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_op_type ()-> VisualShaderNodeDerivativeFunc.OpType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeDerivativeFunc.method_get_op_type, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeDerivativeFunc.OpType (rawValue: _result)!
    }
    
    fileprivate static var method_set_function: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_function")
        return withUnsafePointer (to: &VisualShaderNodeDerivativeFunc.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1944704156)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_function (_ `func`: VisualShaderNodeDerivativeFunc.Function) {
        #if true
        
        var copy_func = Int64 (`func`.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeDerivativeFunc.method_set_function, UnsafeMutableRawPointer (mutating: handle), nil, &copy_func)
        
        #else
        
        var copy_func = Int64 (`func`.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_func) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeDerivativeFunc.method_set_function, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_function: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_function")
        return withUnsafePointer (to: &VisualShaderNodeDerivativeFunc.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2389093396)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_function ()-> VisualShaderNodeDerivativeFunc.Function {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeDerivativeFunc.method_get_function, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeDerivativeFunc.Function (rawValue: _result)!
    }
    
    fileprivate static var method_set_precision: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_precision")
        return withUnsafePointer (to: &VisualShaderNodeDerivativeFunc.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 797270566)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_precision (_ precision: VisualShaderNodeDerivativeFunc.Precision) {
        #if true
        
        var copy_precision = Int64 (precision.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeDerivativeFunc.method_set_precision, UnsafeMutableRawPointer (mutating: handle), nil, &copy_precision)
        
        #else
        
        var copy_precision = Int64 (precision.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_precision) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeDerivativeFunc.method_set_precision, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_precision: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_precision")
        return withUnsafePointer (to: &VisualShaderNodeDerivativeFunc.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3822547323)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_precision ()-> VisualShaderNodeDerivativeFunc.Precision {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeDerivativeFunc.method_get_precision, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeDerivativeFunc.Precision (rawValue: _result)!
    }
    
}
