// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Plugin for adding custom property editors on the inspector.
/// 
/// ``EditorInspectorPlugin`` allows adding custom property editors to ``EditorInspector``.
/// 
/// When an object is edited, the ``_canHandle(object:)`` function is called and must return `true` if the object type is supported.
/// 
/// If supported, the function ``_parseBegin(object:)`` will be called, allowing to place custom controls at the beginning of the class.
/// 
/// Subsequently, the ``_parseCategory(object:category:)`` and ``_parseProperty(object:type:name:hintType:hintString:usageFlags:wide:)`` are called for every category and property. They offer the ability to add custom controls to the inspector too.
/// 
/// Finally, ``_parseEnd(object:)`` will be called.
/// 
/// On each of these calls, the "add" functions can be called.
/// 
/// To use ``EditorInspectorPlugin``, register it using the ``EditorPlugin/addInspectorPlugin(_:)`` method first.
/// 
open class EditorInspectorPlugin: RefCounted {
    override open class var godotClassName: StringName { "EditorInspectorPlugin" }
    /* Methods */
    /// Returns `true` if this object can be handled by this plugin.
    @_documentation(visibility: public)
    open func _canHandle (object: Object?)-> Bool {
        return false
    }
    
    /// Called to allow adding controls at the beginning of the property list for `object`.
    @_documentation(visibility: public)
    open func _parseBegin (object: Object?) {
    }
    
    /// Called to allow adding controls at the beginning of a category in the property list for `object`.
    @_documentation(visibility: public)
    open func _parseCategory (object: Object?, category: String) {
    }
    
    /// Called to allow adding controls at the beginning of a group or a sub-group in the property list for `object`.
    @_documentation(visibility: public)
    open func _parseGroup (object: Object?, group: String) {
    }
    
    /// Called to allow adding property-specific editors to the property list for `object`. The added editor control must extend ``EditorProperty``. Returning `true` removes the built-in editor for this property, otherwise allows to insert a custom editor before the built-in one.
    @_documentation(visibility: public)
    open func _parseProperty (object: Object?, type: Variant.GType, name: String, hintType: PropertyHint, hintString: String, usageFlags: PropertyUsageFlags, wide: Bool)-> Bool {
        return false
    }
    
    /// Called to allow adding controls at the end of the property list for `object`.
    @_documentation(visibility: public)
    open func _parseEnd (object: Object?) {
    }
    
    fileprivate static var method_add_custom_control: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_custom_control")
        return withUnsafePointer (to: &EditorInspectorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1496901182)!
            }
            
        }
        
    }()
    
    /// Adds a custom control, which is not necessarily a property editor.
    public final func addCustomControl (_ control: Control?) {
        #if false
        
        var copy_control_handle = control?.handle
        
        gi.object_method_bind_ptrcall_v (EditorInspectorPlugin.method_add_custom_control, UnsafeMutableRawPointer (mutating: handle), nil, &copy_control_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: control?.handle) { p0 in
        _args.append (control == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (EditorInspectorPlugin.method_add_custom_control, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_add_property_editor: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_property_editor")
        return withUnsafePointer (to: &EditorInspectorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3406284123)!
            }
            
        }
        
    }()
    
    /// Adds a property editor for an individual property. The `editor` control must extend ``EditorProperty``.
    public final func addPropertyEditor (property: String, editor: Control?, addToEnd: Bool = false) {
        #if false
        
        let gstr_property = GString (property)
        var copy_add_to_end = addToEnd
        var copy_editor_handle = editor?.handle
        
        gi.object_method_bind_ptrcall_v (EditorInspectorPlugin.method_add_property_editor, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_property.content, &copy_editor_handle, &copy_add_to_end)
        
        #else
        
        let gstr_property = GString (property)
        var copy_add_to_end = addToEnd
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_property.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: editor?.handle) { p1 in
            _args.append (editor == nil ? nil : p1)
                withUnsafePointer (to: &copy_add_to_end) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (EditorInspectorPlugin.method_add_property_editor, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_add_property_editor_for_multiple_properties: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_property_editor_for_multiple_properties")
        return withUnsafePointer (to: &EditorInspectorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 788598683)!
            }
            
        }
        
    }()
    
    /// Adds an editor that allows modifying multiple properties. The `editor` control must extend ``EditorProperty``.
    public final func addPropertyEditorForMultipleProperties (label: String, properties: PackedStringArray, editor: Control?) {
        #if false
        
        let gstr_label = GString (label)
        var copy_editor_handle = editor?.handle
        
        gi.object_method_bind_ptrcall_v (EditorInspectorPlugin.method_add_property_editor_for_multiple_properties, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_label.content, &properties.content, &copy_editor_handle)
        
        #else
        
        let gstr_label = GString (label)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_label.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &properties.content) { p1 in
                _args.append (p1)
                withUnsafePointer (to: editor?.handle) { p2 in
                _args.append (editor == nil ? nil : p2)
        
                    gi.object_method_bind_ptrcall (EditorInspectorPlugin.method_add_property_editor_for_multiple_properties, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_can_handle":
                return _EditorInspectorPlugin_proxy_can_handle
            case "_parse_begin":
                return _EditorInspectorPlugin_proxy_parse_begin
            case "_parse_category":
                return _EditorInspectorPlugin_proxy_parse_category
            case "_parse_end":
                return _EditorInspectorPlugin_proxy_parse_end
            case "_parse_group":
                return _EditorInspectorPlugin_proxy_parse_group
            case "_parse_property":
                return _EditorInspectorPlugin_proxy_parse_property
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorInspectorPlugin_proxy_can_handle (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorInspectorPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    let ret = swiftObject._canHandle (object: lookupLiveObject (handleAddress: resolved_0) as? Object ?? Object (nativeHandle: resolved_0))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorInspectorPlugin_proxy_parse_begin (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorInspectorPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    swiftObject._parseBegin (object: lookupLiveObject (handleAddress: resolved_0) as? Object ?? Object (nativeHandle: resolved_0))
}

func _EditorInspectorPlugin_proxy_parse_category (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorInspectorPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    swiftObject._parseCategory (object: lookupLiveObject (handleAddress: resolved_0) as? Object ?? Object (nativeHandle: resolved_0), category: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
}

func _EditorInspectorPlugin_proxy_parse_end (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorInspectorPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    swiftObject._parseEnd (object: lookupLiveObject (handleAddress: resolved_0) as? Object ?? Object (nativeHandle: resolved_0))
}

func _EditorInspectorPlugin_proxy_parse_group (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorInspectorPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    swiftObject._parseGroup (object: lookupLiveObject (handleAddress: resolved_0) as? Object ?? Object (nativeHandle: resolved_0), group: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
}

func _EditorInspectorPlugin_proxy_parse_property (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorInspectorPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    let ret = swiftObject._parseProperty (object: lookupLiveObject (handleAddress: resolved_0) as? Object ?? Object (nativeHandle: resolved_0), type: args [1]!.assumingMemoryBound (to: Variant.GType.self).pointee, name: GString.stringFromGStringPtr (ptr: args [2]!) ?? "", hintType: args [3]!.assumingMemoryBound (to: PropertyHint.self).pointee, hintString: GString.stringFromGStringPtr (ptr: args [4]!) ?? "", usageFlags: args [5]!.assumingMemoryBound (to: PropertyUsageFlags.self).pointee, wide: args [6]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

