// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A boolean parameter to be used within the visual shader graph.
/// 
/// Translated to `uniform bool` in the shader language.
open class VisualShaderNodeBooleanParameter: VisualShaderNodeParameter {
    override open class var godotClassName: StringName { "VisualShaderNodeBooleanParameter" }
    
    /* Properties */
    
    /// Enables usage of the ``defaultValue``.
    final public var defaultValueEnabled: Bool {
        get {
            return is_default_value_enabled ()
        }
        
        set {
            set_default_value_enabled (newValue)
        }
        
    }
    
    /// A default value to be assigned within the shader.
    final public var defaultValue: Bool {
        get {
            return get_default_value ()
        }
        
        set {
            set_default_value (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_default_value_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_default_value_enabled")
        return withUnsafePointer (to: &VisualShaderNodeBooleanParameter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_default_value_enabled (_ enabled: Bool) {
        #if false
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeBooleanParameter.method_set_default_value_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeBooleanParameter.method_set_default_value_enabled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_default_value_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_default_value_enabled")
        return withUnsafePointer (to: &VisualShaderNodeBooleanParameter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_default_value_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (VisualShaderNodeBooleanParameter.method_is_default_value_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_default_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_default_value")
        return withUnsafePointer (to: &VisualShaderNodeBooleanParameter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_default_value (_ value: Bool) {
        #if false
        
        var copy_value = value
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeBooleanParameter.method_set_default_value, UnsafeMutableRawPointer (mutating: handle), nil, &copy_value)
        
        #else
        
        var copy_value = value
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_value) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeBooleanParameter.method_set_default_value, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_default_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_default_value")
        return withUnsafePointer (to: &VisualShaderNodeBooleanParameter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_default_value ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (VisualShaderNodeBooleanParameter.method_get_default_value, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

