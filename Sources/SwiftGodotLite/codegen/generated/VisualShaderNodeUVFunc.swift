// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Contains functions to modify texture coordinates (`uv`) to be used within the visual shader graph.
/// 
/// UV functions are similar to ``Vector2`` functions, but the input port of this node uses the shader's UV value by default.
open class VisualShaderNodeUVFunc: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeUVFunc" }
    public enum Function: Int64 {
        /// Translates `uv` by using `scale` and `offset` values using the following formula: `uv = uv + offset * scale`. `uv` port is connected to `UV` built-in by default.
        case panning = 0 // FUNC_PANNING
        /// Scales `uv` by using `scale` and `pivot` values using the following formula: `uv = (uv - pivot) * scale + pivot`. `uv` port is connected to `UV` built-in by default.
        case scaling = 1 // FUNC_SCALING
        /// Represents the size of the ``VisualShaderNodeUVFunc/Function`` enum.
        case max = 2 // FUNC_MAX
    }
    
    
    /* Properties */
    
    /// A function to be applied to the texture coordinates. See ``VisualShaderNodeUVFunc/Function`` for options.
    final public var function: VisualShaderNodeUVFunc.Function {
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
        return withUnsafePointer (to: &VisualShaderNodeUVFunc.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 765791915)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_function (_ `func`: VisualShaderNodeUVFunc.Function) {
        #if true
        
        var copy_func = Int64 (`func`.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeUVFunc.method_set_function, UnsafeMutableRawPointer (mutating: handle), nil, &copy_func)
        
        #else
        
        var copy_func = Int64 (`func`.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_func) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeUVFunc.method_set_function, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_function: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_function")
        return withUnsafePointer (to: &VisualShaderNodeUVFunc.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3772902164)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_function ()-> VisualShaderNodeUVFunc.Function {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeUVFunc.method_get_function, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeUVFunc.Function (rawValue: _result)!
    }
    
}

