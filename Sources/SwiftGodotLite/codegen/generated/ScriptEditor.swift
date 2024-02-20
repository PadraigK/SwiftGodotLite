// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Godot editor's script editor.
/// 
/// Godot editor's script editor.
/// 
/// > Note: This class shouldn't be instantiated directly. Instead, access the singleton using ``EditorInterface/getScriptEditor()``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``editorScriptChanged``
/// - ``scriptClose``
open class ScriptEditor: PanelContainer {
    override open class var godotClassName: StringName { "ScriptEditor" }
    /* Methods */
    fileprivate static var method_get_current_editor: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_current_editor")
        return withUnsafePointer (to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1906266726)!
            }
            
        }
        
    }()
    
    /// Returns the ``ScriptEditorBase`` object that the user is currently editing.
    public final func getCurrentEditor ()-> ScriptEditorBase? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (ScriptEditor.method_get_current_editor, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_open_script_editors: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_open_script_editors")
        return withUnsafePointer (to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns an array with all ``ScriptEditorBase`` objects which are currently open in editor.
    public final func getOpenScriptEditors ()-> ObjectCollection<ScriptEditorBase> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall (ScriptEditor.method_get_open_script_editors, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return ObjectCollection<ScriptEditorBase>(content: _result)
    }
    
    fileprivate static var method_register_syntax_highlighter: GDExtensionMethodBindPtr = {
        let methodName = StringName ("register_syntax_highlighter")
        return withUnsafePointer (to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1092774468)!
            }
            
        }
        
    }()
    
    /// Registers the ``EditorSyntaxHighlighter`` to the editor, the ``EditorSyntaxHighlighter`` will be available on all open scripts.
    /// 
    /// > Note: Does not apply to scripts that are already opened.
    /// 
    public final func registerSyntaxHighlighter (_ syntaxHighlighter: EditorSyntaxHighlighter?) {
        #if true
        
        var copy_syntax_highlighter_handle = syntaxHighlighter?.handle
        
        gi.object_method_bind_ptrcall_v (ScriptEditor.method_register_syntax_highlighter, UnsafeMutableRawPointer (mutating: handle), nil, &copy_syntax_highlighter_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: syntaxHighlighter?.handle) { p0 in
        _args.append (syntaxHighlighter == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (ScriptEditor.method_register_syntax_highlighter, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_unregister_syntax_highlighter: GDExtensionMethodBindPtr = {
        let methodName = StringName ("unregister_syntax_highlighter")
        return withUnsafePointer (to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1092774468)!
            }
            
        }
        
    }()
    
    /// Unregisters the ``EditorSyntaxHighlighter`` from the editor.
    /// 
    /// > Note: The ``EditorSyntaxHighlighter`` will still be applied to scripts that are already opened.
    /// 
    public final func unregisterSyntaxHighlighter (_ syntaxHighlighter: EditorSyntaxHighlighter?) {
        #if true
        
        var copy_syntax_highlighter_handle = syntaxHighlighter?.handle
        
        gi.object_method_bind_ptrcall_v (ScriptEditor.method_unregister_syntax_highlighter, UnsafeMutableRawPointer (mutating: handle), nil, &copy_syntax_highlighter_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: syntaxHighlighter?.handle) { p0 in
        _args.append (syntaxHighlighter == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (ScriptEditor.method_unregister_syntax_highlighter, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_goto_line: GDExtensionMethodBindPtr = {
        let methodName = StringName ("goto_line")
        return withUnsafePointer (to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Goes to the specified line in the current script.
    public final func gotoLine (lineNumber: Int32) {
        #if true
        
        var copy_line_number: Int = Int (lineNumber)
        
        gi.object_method_bind_ptrcall_v (ScriptEditor.method_goto_line, UnsafeMutableRawPointer (mutating: handle), nil, &copy_line_number)
        
        #else
        
        var copy_line_number: Int = Int (lineNumber)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_line_number) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ScriptEditor.method_goto_line, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_current_script: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_current_script")
        return withUnsafePointer (to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2146468882)!
            }
            
        }
        
    }()
    
    /// Returns a ``Script`` that is currently active in editor.
    public final func getCurrentScript ()-> Script? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (ScriptEditor.method_get_current_script, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_open_scripts: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_open_scripts")
        return withUnsafePointer (to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns an array with all ``Script`` objects which are currently open in editor.
    public final func getOpenScripts ()-> ObjectCollection<Script> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall (ScriptEditor.method_get_open_scripts, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return ObjectCollection<Script>(content: _result)
    }
    
    fileprivate static var method_open_script_create_dialog: GDExtensionMethodBindPtr = {
        let methodName = StringName ("open_script_create_dialog")
        return withUnsafePointer (to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3186203200)!
            }
            
        }
        
    }()
    
    /// Opens the script create dialog. The script will extend `baseName`. The file extension can be omitted from `basePath`. It will be added based on the selected scripting language.
    public final func openScriptCreateDialog (baseName: String, basePath: String) {
        #if true
        
        let gstr_base_name = GString (baseName)
        let gstr_base_path = GString (basePath)
        
        gi.object_method_bind_ptrcall_v (ScriptEditor.method_open_script_create_dialog, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_base_name.content, &gstr_base_path.content)
        
        #else
        
        let gstr_base_name = GString (baseName)
        let gstr_base_path = GString (basePath)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_base_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &gstr_base_path.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (ScriptEditor.method_open_script_create_dialog, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    // Signals 
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal1/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal1/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal1/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal1 {
        var target: Object
        var signalName: StringName
        init (target: Object, signalName: StringName) {
            self.target = target
            self.signalName = signalName
        }
        
        /// Connects the signal to the specified callback
        /// 
        /// 
        /// 
        /// To disconnect, call the disconnect method, with the returned token on success
        /// 
        /// - Parameters:
        /// 
        /// - callback: the method to invoke when this signal is raised
        /// 
        /// - flags: Optional, can be also added to configure the connection's behavior (see ``Object/ConnectFlags`` constants).
        /// 
        /// - Returns: an object token that can be used to disconnect the object from the target on success, or the error produced by Godot.
        /// 
        @discardableResult /* Signal1 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ script: Script) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                var ptr_0: UnsafeMutableRawPointer?
                args [0].toType (Variant.GType.object, dest: &ptr_0)
                let arg_0 = lookupLiveObject (handleAddress: ptr_0!) as? Script ?? Script (nativeHandle: ptr_0!)
                
                callback (arg_0)
            }
            
            let callable = Callable(object: signalProxy, method: SignalProxy.proxyName)
            let r = target.connect(signal: signalName, callable: callable, flags: UInt32 (flags.rawValue))
            if r != .ok { print ("Warning, error connecting to signal, code: \(r)") }
            return signalProxy
        }
        
        /// Disconnects a signal that was previously connected, the return value from calling ``connect(flags:_:)``
        public func disconnect (_ token: Object) {
            target.disconnect(signal: signalName, callable: Callable (object: token, method: SignalProxy.proxyName))
        }
        
        /// You can await this property to wait for the signal to be emitted once
        public var emitted: Void  {
            get async {
                await withCheckedContinuation {
                    c in
                    connect (flags: .oneShot) { _ in c.resume () }
                }
                
            }
            
        }
        
    }
    
    /// Emitted when user changed active script. Argument is a freshly activated ``Script``.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.editorScriptChanged.connect { script in
    ///    print ("caught signal")
    /// }
    /// ```
    public var editorScriptChanged: Signal1 { Signal1 (target: self, signalName: "editor_script_changed") }
    
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal2/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal2/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal2/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal2 {
        var target: Object
        var signalName: StringName
        init (target: Object, signalName: StringName) {
            self.target = target
            self.signalName = signalName
        }
        
        /// Connects the signal to the specified callback
        /// 
        /// 
        /// 
        /// To disconnect, call the disconnect method, with the returned token on success
        /// 
        /// - Parameters:
        /// 
        /// - callback: the method to invoke when this signal is raised
        /// 
        /// - flags: Optional, can be also added to configure the connection's behavior (see ``Object/ConnectFlags`` constants).
        /// 
        /// - Returns: an object token that can be used to disconnect the object from the target on success, or the error produced by Godot.
        /// 
        @discardableResult /* Signal2 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ script: Script) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                var ptr_0: UnsafeMutableRawPointer?
                args [0].toType (Variant.GType.object, dest: &ptr_0)
                let arg_0 = lookupLiveObject (handleAddress: ptr_0!) as? Script ?? Script (nativeHandle: ptr_0!)
                
                callback (arg_0)
            }
            
            let callable = Callable(object: signalProxy, method: SignalProxy.proxyName)
            let r = target.connect(signal: signalName, callable: callable, flags: UInt32 (flags.rawValue))
            if r != .ok { print ("Warning, error connecting to signal, code: \(r)") }
            return signalProxy
        }
        
        /// Disconnects a signal that was previously connected, the return value from calling ``connect(flags:_:)``
        public func disconnect (_ token: Object) {
            target.disconnect(signal: signalName, callable: Callable (object: token, method: SignalProxy.proxyName))
        }
        
        /// You can await this property to wait for the signal to be emitted once
        public var emitted: Void  {
            get async {
                await withCheckedContinuation {
                    c in
                    connect (flags: .oneShot) { _ in c.resume () }
                }
                
            }
            
        }
        
    }
    
    /// Emitted when editor is about to close the active script. Argument is a ``Script`` that is going to be closed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.scriptClose.connect { script in
    ///    print ("caught signal")
    /// }
    /// ```
    public var scriptClose: Signal2 { Signal2 (target: self, signalName: "script_close") }
    
}

