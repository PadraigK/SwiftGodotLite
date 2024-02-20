// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A scalar integer function to be used within the visual shader graph.
/// 
/// Accept an integer scalar (`x`) to the input port and transform it according to ``function``.
open class VisualShaderNodeIntFunc: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeIntFunc" }
    public enum Function: Int64 {
        /// Returns the absolute value of the parameter. Translates to `abs(x)` in the Godot Shader Language.
        case abs = 0 // FUNC_ABS
        /// Negates the `x` using `-(x)`.
        case negate = 1 // FUNC_NEGATE
        /// Extracts the sign of the parameter. Translates to `sign(x)` in the Godot Shader Language.
        case sign = 2 // FUNC_SIGN
        /// Returns the result of bitwise `NOT` operation on the integer. Translates to `~a` in the Godot Shader Language.
        case bitwiseNot = 3 // FUNC_BITWISE_NOT
        /// Represents the size of the ``VisualShaderNodeIntFunc/Function`` enum.
        case max = 4 // FUNC_MAX
    }
    
    
    /* Properties */
    
    /// A function to be applied to the scalar. See ``VisualShaderNodeIntFunc/Function`` for options.
    final public var function: VisualShaderNodeIntFunc.Function {
        get {
            return get_function ()
        }
        
        set {
            set_function (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_function: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_function")
        return withUnsafePointer (to: &VisualShaderNodeIntFunc.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 424195284)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_function (_ `func`: VisualShaderNodeIntFunc.Function) {
        #if false
        
        var copy_func = Int64 (`func`.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeIntFunc.method_set_function, UnsafeMutableRawPointer (mutating: handle), nil, &copy_func)
        
        #else
        
        var copy_func = Int64 (`func`.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_func) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeIntFunc.method_set_function, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_function: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_function")
        return withUnsafePointer (to: &VisualShaderNodeIntFunc.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2753496911)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_function ()-> VisualShaderNodeIntFunc.Function {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeIntFunc.method_get_function, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeIntFunc.Function (rawValue: _result)!
    }
    
}

