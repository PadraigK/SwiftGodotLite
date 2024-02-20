// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// An unsigned scalar integer function to be used within the visual shader graph.
/// 
/// Accept an unsigned integer scalar (`x`) to the input port and transform it according to ``function``.
open class VisualShaderNodeUIntFunc: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeUIntFunc" }
    public enum Function: Int64 {
        /// Negates the `x` using `-(x)`.
        case negate = 0 // FUNC_NEGATE
        /// Returns the result of bitwise `NOT` operation on the integer. Translates to `~a` in the Godot Shader Language.
        case bitwiseNot = 1 // FUNC_BITWISE_NOT
        /// Represents the size of the ``VisualShaderNodeUIntFunc/Function`` enum.
        case max = 2 // FUNC_MAX
    }
    
    
    /* Properties */
    
    /// A function to be applied to the scalar. See ``VisualShaderNodeUIntFunc/Function`` for options.
    final public var function: VisualShaderNodeUIntFunc.Function {
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
        return withUnsafePointer (to: &VisualShaderNodeUIntFunc.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2273148961)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_function (_ `func`: VisualShaderNodeUIntFunc.Function) {
        #if true
        
        var copy_func = Int64 (`func`.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeUIntFunc.method_set_function, UnsafeMutableRawPointer (mutating: handle), nil, &copy_func)
        
        #else
        
        var copy_func = Int64 (`func`.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_func) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeUIntFunc.method_set_function, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_function: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_function")
        return withUnsafePointer (to: &VisualShaderNodeUIntFunc.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4187123296)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_function ()-> VisualShaderNodeUIntFunc.Function {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeUIntFunc.method_get_function, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeUIntFunc.Function (rawValue: _result)!
    }
    
}
