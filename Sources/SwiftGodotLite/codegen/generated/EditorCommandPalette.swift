// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Godot editor's command palette.
/// 
/// Object that holds all the available Commands and their shortcuts text. These Commands can be accessed through **Editor > Command Palette** menu.
/// 
/// Command key names use slash delimiters to distinguish sections, for example: `"example/command1"` then `example` will be the section name.
/// 
/// > Note: This class shouldn't be instantiated directly. Instead, access the singleton using ``EditorInterface/getCommandPalette()``.
/// 
open class EditorCommandPalette: ConfirmationDialog {
    override open class var godotClassName: StringName { "EditorCommandPalette" }
    /* Methods */
    fileprivate static var method_add_command: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_command")
        return withUnsafePointer (to: &EditorCommandPalette.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 864043298)!
            }
            
        }
        
    }()
    
    /// Adds a custom command to EditorCommandPalette.
    /// 
    /// - `commandName`: ``String`` (Name of the **Command**. This is displayed to the user.)
    /// 
    /// - `keyName`: ``String`` (Name of the key for a particular **Command**. This is used to uniquely identify the **Command**.)
    /// 
    /// - `bindedCallable`: ``Callable`` (Callable of the **Command**. This will be executed when the **Command** is selected.)
    /// 
    /// - `shortcutText`: ``String`` (Shortcut text of the **Command** if available.)
    /// 
    public final func addCommand (commandName: String, keyName: String, bindedCallable: Callable, shortcutText: String = "None") {
        #if false
        
        let gstr_command_name = GString (commandName)
        let gstr_key_name = GString (keyName)
        let gstr_shortcut_text = GString (shortcutText)
        
        gi.object_method_bind_ptrcall_v (EditorCommandPalette.method_add_command, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_command_name.content, &gstr_key_name.content, &bindedCallable.content, &gstr_shortcut_text.content)
        
        #else
        
        let gstr_command_name = GString (commandName)
        let gstr_key_name = GString (keyName)
        let gstr_shortcut_text = GString (shortcutText)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_command_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &gstr_key_name.content) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &bindedCallable.content) { p2 in
                    _args.append (p2)
                    withUnsafePointer (to: &gstr_shortcut_text.content) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (EditorCommandPalette.method_add_command, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_remove_command: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_command")
        return withUnsafePointer (to: &EditorCommandPalette.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Removes the custom command from EditorCommandPalette.
    /// 
    /// - `keyName`: ``String`` (Name of the key for a particular **Command**.)
    /// 
    public final func removeCommand (keyName: String) {
        #if false
        
        let gstr_key_name = GString (keyName)
        
        gi.object_method_bind_ptrcall_v (EditorCommandPalette.method_remove_command, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_key_name.content)
        
        #else
        
        let gstr_key_name = GString (keyName)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_key_name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (EditorCommandPalette.method_remove_command, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
}

