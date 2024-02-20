// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A dialog used for confirmation of actions.
/// 
/// A dialog used for confirmation of actions. This window is similar to ``AcceptDialog``, but pressing its Cancel button can have a different outcome from pressing the OK button. The order of the two buttons varies depending on the host OS.
/// 
/// To get cancel action, you can use:
/// 
open class ConfirmationDialog: AcceptDialog {
    override open class var godotClassName: StringName { "ConfirmationDialog" }
    
    /* Properties */
    
    /// The text displayed by the cancel button (see ``getCancelButton()``).
    final public var cancelButtonText: String {
        get {
            return get_cancel_button_text ()
        }
        
        set {
            set_cancel_button_text (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_cancel_button: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_cancel_button")
        return withUnsafePointer (to: &ConfirmationDialog.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1856205918)!
            }
            
        }
        
    }()
    
    /// Returns the cancel button.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``CanvasItem/visible`` property.
    /// 
    public final func getCancelButton ()-> Button? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (ConfirmationDialog.method_get_cancel_button, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_cancel_button_text: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_cancel_button_text")
        return withUnsafePointer (to: &ConfirmationDialog.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cancel_button_text (_ text: String) {
        #if true
        
        let gstr_text = GString (text)
        
        gi.object_method_bind_ptrcall_v (ConfirmationDialog.method_set_cancel_button_text, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_text.content)
        
        #else
        
        let gstr_text = GString (text)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_text.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ConfirmationDialog.method_set_cancel_button_text, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_cancel_button_text: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_cancel_button_text")
        return withUnsafePointer (to: &ConfirmationDialog.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cancel_button_text ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (ConfirmationDialog.method_get_cancel_button_text, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
}

