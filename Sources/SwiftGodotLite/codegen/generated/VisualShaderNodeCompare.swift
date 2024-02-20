// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A comparison function for common types within the visual shader graph.
/// 
/// Compares `a` and `b` of ``type`` by ``function``. Returns a boolean scalar. Translates to `if` instruction in shader code.
open class VisualShaderNodeCompare: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeCompare" }
    public enum ComparisonType: Int64 {
        /// A floating-point scalar.
        case scalar = 0 // CTYPE_SCALAR
        /// An integer scalar.
        case scalarInt = 1 // CTYPE_SCALAR_INT
        /// An unsigned integer scalar.
        case scalarUint = 2 // CTYPE_SCALAR_UINT
        /// A 2D vector type.
        case vector2d = 3 // CTYPE_VECTOR_2D
        /// A 3D vector type.
        case vector3d = 4 // CTYPE_VECTOR_3D
        /// A 4D vector type.
        case vector4d = 5 // CTYPE_VECTOR_4D
        /// A boolean type.
        case boolean = 6 // CTYPE_BOOLEAN
        /// A transform (`mat4`) type.
        case transform = 7 // CTYPE_TRANSFORM
        /// Represents the size of the ``VisualShaderNodeCompare/ComparisonType`` enum.
        case max = 8 // CTYPE_MAX
    }
    
    public enum Function: Int64 {
        /// Comparison for equality (`a == b`).
        case equal = 0 // FUNC_EQUAL
        /// Comparison for inequality (`a != b`).
        case notEqual = 1 // FUNC_NOT_EQUAL
        /// Comparison for greater than (`a > b`). Cannot be used if ``type`` set to .ctypeBoolean or .ctypeTransform.
        case greaterThan = 2 // FUNC_GREATER_THAN
        /// Comparison for greater than or equal (`a >= b`). Cannot be used if ``type`` set to .ctypeBoolean or .ctypeTransform.
        case greaterThanEqual = 3 // FUNC_GREATER_THAN_EQUAL
        /// Comparison for less than (`a < b`). Cannot be used if ``type`` set to .ctypeBoolean or .ctypeTransform.
        case lessThan = 4 // FUNC_LESS_THAN
        /// Comparison for less than or equal (`a <= b`). Cannot be used if ``type`` set to .ctypeBoolean or .ctypeTransform.
        case lessThanEqual = 5 // FUNC_LESS_THAN_EQUAL
        /// Represents the size of the ``VisualShaderNodeCompare/Function`` enum.
        case max = 6 // FUNC_MAX
    }
    
    public enum Condition: Int64 {
        /// The result will be true if all of component in vector satisfy the comparison condition.
        case all = 0 // COND_ALL
        /// The result will be true if any of component in vector satisfy the comparison condition.
        case any = 1 // COND_ANY
        /// Represents the size of the ``VisualShaderNodeCompare/Condition`` enum.
        case max = 2 // COND_MAX
    }
    
    
    /* Properties */
    
    /// The type to be used in the comparison. See ``VisualShaderNodeCompare/ComparisonType`` for options.
    final public var type: VisualShaderNodeCompare.ComparisonType {
        get {
            return get_comparison_type ()
        }
        
        set {
            set_comparison_type (newValue)
        }
        
    }
    
    /// A comparison function. See ``VisualShaderNodeCompare/Function`` for options.
    final public var function: VisualShaderNodeCompare.Function {
        get {
            return get_function ()
        }
        
        set {
            set_function (newValue)
        }
        
    }
    
    /// Extra condition which is applied if ``type`` is set to .ctypeVector3d.
    final public var condition: VisualShaderNodeCompare.Condition {
        get {
            return get_condition ()
        }
        
        set {
            set_condition (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_comparison_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_comparison_type")
        return withUnsafePointer (to: &VisualShaderNodeCompare.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 516558320)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_comparison_type (_ type: VisualShaderNodeCompare.ComparisonType) {
        #if false
        
        var copy_type = Int64 (type.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeCompare.method_set_comparison_type, UnsafeMutableRawPointer (mutating: handle), nil, &copy_type)
        
        #else
        
        var copy_type = Int64 (type.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeCompare.method_set_comparison_type, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_comparison_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_comparison_type")
        return withUnsafePointer (to: &VisualShaderNodeCompare.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3495315961)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_comparison_type ()-> VisualShaderNodeCompare.ComparisonType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeCompare.method_get_comparison_type, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeCompare.ComparisonType (rawValue: _result)!
    }
    
    fileprivate static var method_set_function: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_function")
        return withUnsafePointer (to: &VisualShaderNodeCompare.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2370951349)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_function (_ `func`: VisualShaderNodeCompare.Function) {
        #if false
        
        var copy_func = Int64 (`func`.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeCompare.method_set_function, UnsafeMutableRawPointer (mutating: handle), nil, &copy_func)
        
        #else
        
        var copy_func = Int64 (`func`.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_func) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeCompare.method_set_function, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_function: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_function")
        return withUnsafePointer (to: &VisualShaderNodeCompare.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4089164265)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_function ()-> VisualShaderNodeCompare.Function {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeCompare.method_get_function, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeCompare.Function (rawValue: _result)!
    }
    
    fileprivate static var method_set_condition: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_condition")
        return withUnsafePointer (to: &VisualShaderNodeCompare.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 918742392)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_condition (_ condition: VisualShaderNodeCompare.Condition) {
        #if false
        
        var copy_condition = Int64 (condition.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeCompare.method_set_condition, UnsafeMutableRawPointer (mutating: handle), nil, &copy_condition)
        
        #else
        
        var copy_condition = Int64 (condition.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_condition) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeCompare.method_set_condition, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_condition: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_condition")
        return withUnsafePointer (to: &VisualShaderNodeCompare.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3281078941)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_condition ()-> VisualShaderNodeCompare.Condition {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeCompare.method_get_condition, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeCompare.Condition (rawValue: _result)!
    }
    
}

