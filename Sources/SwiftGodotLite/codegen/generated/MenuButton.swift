// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A button that brings up a ``PopupMenu`` when clicked.
/// 
/// A button that brings up a ``PopupMenu`` when clicked. To create new items inside this ``PopupMenu``, use `get_popup().add_item("My Item Name")`. You can also create them directly from Godot editor's inspector.
/// 
/// See also ``BaseButton`` which contains common properties and methods associated with this node.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``aboutToPopup``
open class MenuButton: Button {
    override open class var godotClassName: StringName { "MenuButton" }
    
    /* Properties */
    
    /// If `true`, when the cursor hovers above another ``MenuButton`` within the same parent which also has ``switchOnHover`` enabled, it will close the current ``MenuButton`` and open the other one.
    final public var switchOnHover: Bool {
        get {
            return is_switch_on_hover ()
        }
        
        set {
            set_switch_on_hover (newValue)
        }
        
    }
    
    /// The number of items currently in the list.
    final public var itemCount: Int32 {
        get {
            return get_item_count ()
        }
        
        set {
            set_item_count (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_popup: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_popup")
        return withUnsafePointer (to: &MenuButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 229722558)!
            }
            
        }
        
    }()
    
    /// Returns the ``PopupMenu`` contained in this button.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``Window/visible`` property.
    /// 
    public final func getPopup ()-> PopupMenu? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (MenuButton.method_get_popup, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_show_popup: GDExtensionMethodBindPtr = {
        let methodName = StringName ("show_popup")
        return withUnsafePointer (to: &MenuButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Adjusts popup position and sizing for the ``MenuButton``, then shows the ``PopupMenu``. Prefer this over using `get_popup().popup()`.
    public final func showPopup () {
        gi.object_method_bind_ptrcall (MenuButton.method_show_popup, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_set_switch_on_hover: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_switch_on_hover")
        return withUnsafePointer (to: &MenuButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_switch_on_hover (_ enable: Bool) {
        #if false
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (MenuButton.method_set_switch_on_hover, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MenuButton.method_set_switch_on_hover, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_switch_on_hover: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_switch_on_hover")
        return withUnsafePointer (to: &MenuButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_switch_on_hover ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (MenuButton.method_is_switch_on_hover, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_disable_shortcuts: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_disable_shortcuts")
        return withUnsafePointer (to: &MenuButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If `true`, shortcuts are disabled and cannot be used to trigger the button.
    public final func setDisableShortcuts (disabled: Bool) {
        #if false
        
        var copy_disabled = disabled
        
        gi.object_method_bind_ptrcall_v (MenuButton.method_set_disable_shortcuts, UnsafeMutableRawPointer (mutating: handle), nil, &copy_disabled)
        
        #else
        
        var copy_disabled = disabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_disabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MenuButton.method_set_disable_shortcuts, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_item_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_item_count")
        return withUnsafePointer (to: &MenuButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_item_count (_ count: Int32) {
        #if false
        
        var copy_count: Int = Int (count)
        
        gi.object_method_bind_ptrcall_v (MenuButton.method_set_item_count, UnsafeMutableRawPointer (mutating: handle), nil, &copy_count)
        
        #else
        
        var copy_count: Int = Int (count)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_count) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MenuButton.method_set_item_count, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_item_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_item_count")
        return withUnsafePointer (to: &MenuButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_item_count ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (MenuButton.method_get_item_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when the ``PopupMenu`` of this MenuButton is about to show.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.aboutToPopup.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var aboutToPopup: SimpleSignal { SimpleSignal (target: self, signalName: "about_to_popup") }
    
}

