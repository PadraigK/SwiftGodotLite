// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A class stored as a resource.
/// 
/// A class stored as a resource. A script extends the functionality of all objects that instantiate it.
/// 
/// This is the base class for all scripts and should not be used directly. Trying to create a new script with this class will result in an error.
/// 
/// The `new` method of a script subclass creates a new instance. ``Object/setScript(_:)`` extends an existing object, if that object's class matches one of the script's base classes.
/// 
open class Script: Resource {
    override open class var godotClassName: StringName { "Script" }
    
    /* Properties */
    
    /// The script source code or an empty string if source code is not available. When set, does not reload the class implementation automatically.
    final public var sourceCode: String {
        get {
            return get_source_code ()
        }
        
        set {
            set_source_code (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_can_instantiate: GDExtensionMethodBindPtr = {
        let methodName = StringName ("can_instantiate")
        return withUnsafePointer (to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the script can be instantiated.
    public final func canInstantiate ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (Script.method_can_instantiate, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_instance_has: GDExtensionMethodBindPtr = {
        let methodName = StringName ("instance_has")
        return withUnsafePointer (to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 397768994)!
            }
            
        }
        
    }()
    
    /// Returns `true` if `baseObject` is an instance of this script.
    public final func instanceHas (baseObject: Object?)-> Bool {
        var _result: Bool = false
        #if false
        
        var copy_base_object_handle = baseObject?.handle
        
        gi.object_method_bind_ptrcall_v (Script.method_instance_has, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_base_object_handle)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: baseObject?.handle) { p0 in
        _args.append (baseObject == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (Script.method_instance_has, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_has_source_code: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_source_code")
        return withUnsafePointer (to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the script contains non-empty source code.
    public final func hasSourceCode ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (Script.method_has_source_code, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_source_code: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_source_code")
        return withUnsafePointer (to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_source_code ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (Script.method_get_source_code, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_source_code: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_source_code")
        return withUnsafePointer (to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_source_code (_ source: String) {
        #if false
        
        let gstr_source = GString (source)
        
        gi.object_method_bind_ptrcall_v (Script.method_set_source_code, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_source.content)
        
        #else
        
        let gstr_source = GString (source)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_source.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Script.method_set_source_code, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_reload: GDExtensionMethodBindPtr = {
        let methodName = StringName ("reload")
        return withUnsafePointer (to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1633102583)!
            }
            
        }
        
    }()
    
    /// Reloads the script's class implementation. Returns an error code.
    public final func reload (keepState: Bool = false)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        var copy_keep_state = keepState
        
        gi.object_method_bind_ptrcall_v (Script.method_reload, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_keep_state)
        return GodotError (rawValue: _result)!
        #else
        
        var copy_keep_state = keepState
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_keep_state) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Script.method_reload, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_get_base_script: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_base_script")
        return withUnsafePointer (to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 278624046)!
            }
            
        }
        
    }()
    
    /// Returns the script directly inherited by this script.
    public final func getBaseScript ()-> Script? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (Script.method_get_base_script, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_instance_base_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_instance_base_type")
        return withUnsafePointer (to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    /// Returns the script's base type.
    public final func getInstanceBaseType ()-> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall (Script.method_get_instance_base_type, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_has_script_signal: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_script_signal")
        return withUnsafePointer (to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the script, or a base class, defines a signal with the given name.
    public final func hasScriptSignal (signalName: StringName)-> Bool {
        var _result: Bool = false
        #if false
        
        
        gi.object_method_bind_ptrcall_v (Script.method_has_script_signal, UnsafeMutableRawPointer (mutating: handle), &_result, &signalName.content)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &signalName.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Script.method_has_script_signal, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_script_property_list: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_script_property_list")
        return withUnsafePointer (to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns the list of properties in this ``Script``.
    public final func getScriptPropertyList ()-> VariantCollection<GDictionary> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall (Script.method_get_script_property_list, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VariantCollection<GDictionary>(content: _result)
    }
    
    fileprivate static var method_get_script_method_list: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_script_method_list")
        return withUnsafePointer (to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns the list of methods in this ``Script``.
    public final func getScriptMethodList ()-> VariantCollection<GDictionary> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall (Script.method_get_script_method_list, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VariantCollection<GDictionary>(content: _result)
    }
    
    fileprivate static var method_get_script_signal_list: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_script_signal_list")
        return withUnsafePointer (to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns the list of user signals defined in this ``Script``.
    public final func getScriptSignalList ()-> VariantCollection<GDictionary> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall (Script.method_get_script_signal_list, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VariantCollection<GDictionary>(content: _result)
    }
    
    fileprivate static var method_get_script_constant_map: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_script_constant_map")
        return withUnsafePointer (to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2382534195)!
            }
            
        }
        
    }()
    
    /// Returns a dictionary containing constant names and their values.
    public final func getScriptConstantMap ()-> GDictionary {
        let _result: GDictionary = GDictionary ()
        gi.object_method_bind_ptrcall (Script.method_get_script_constant_map, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_property_default_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_property_default_value")
        return withUnsafePointer (to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2138907829)!
            }
            
        }
        
    }()
    
    /// Returns the default value of the specified property.
    public final func getPropertyDefaultValue (property: StringName)-> Variant {
        let _result: Variant = Variant ()
        #if false
        
        
        gi.object_method_bind_ptrcall_v (Script.method_get_property_default_value, UnsafeMutableRawPointer (mutating: handle), &_result.content, &property.content)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &property.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Script.method_get_property_default_value, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_is_tool: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_tool")
        return withUnsafePointer (to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the script is a tool script. A tool script can run in the editor.
    public final func isTool ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (Script.method_is_tool, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_abstract: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_abstract")
        return withUnsafePointer (to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the script is an abstract script. An abstract script does not have a constructor and cannot be instantiated.
    public final func isAbstract ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (Script.method_is_abstract, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

