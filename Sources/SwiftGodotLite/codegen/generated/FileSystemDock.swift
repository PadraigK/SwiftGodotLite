// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Godot editor's dock for managing files in the project.
/// 
/// This class is available only in ``EditorPlugin``s and can't be instantiated. You can access it using ``EditorInterface/getFileSystemDock()``.
/// 
/// While ``FileSystemDock`` doesn't expose any methods for file manipulation, it can listen for various file-related signals.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``inherit``
/// - ``instantiate``
/// - ``resourceRemoved``
/// - ``fileRemoved``
/// - ``folderRemoved``
/// - ``filesMoved``
/// - ``folderMoved``
/// - ``displayModeChanged``
open class FileSystemDock: VBoxContainer {
    override open class var godotClassName: StringName { "FileSystemDock" }
    /* Methods */
    fileprivate static var method_navigate_to_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("navigate_to_path")
        return withUnsafePointer (to: &FileSystemDock.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Sets the given `path` as currently selected, ensuring that the selected file/directory is visible.
    public final func navigateToPath (_ path: String) {
        #if false
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (FileSystemDock.method_navigate_to_path, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_path.content)
        
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (FileSystemDock.method_navigate_to_path, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_add_resource_tooltip_plugin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_resource_tooltip_plugin")
        return withUnsafePointer (to: &FileSystemDock.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2258356838)!
            }
            
        }
        
    }()
    
    /// Registers a new ``EditorResourceTooltipPlugin``.
    public final func addResourceTooltipPlugin (_ plugin: EditorResourceTooltipPlugin?) {
        #if false
        
        var copy_plugin_handle = plugin?.handle
        
        gi.object_method_bind_ptrcall_v (FileSystemDock.method_add_resource_tooltip_plugin, UnsafeMutableRawPointer (mutating: handle), nil, &copy_plugin_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: plugin?.handle) { p0 in
        _args.append (plugin == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (FileSystemDock.method_add_resource_tooltip_plugin, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_remove_resource_tooltip_plugin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_resource_tooltip_plugin")
        return withUnsafePointer (to: &FileSystemDock.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2258356838)!
            }
            
        }
        
    }()
    
    /// Removes an ``EditorResourceTooltipPlugin``. Fails if the plugin wasn't previously added.
    public final func removeResourceTooltipPlugin (_ plugin: EditorResourceTooltipPlugin?) {
        #if false
        
        var copy_plugin_handle = plugin?.handle
        
        gi.object_method_bind_ptrcall_v (FileSystemDock.method_remove_resource_tooltip_plugin, UnsafeMutableRawPointer (mutating: handle), nil, &copy_plugin_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: plugin?.handle) { p0 in
        _args.append (plugin == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (FileSystemDock.method_remove_resource_tooltip_plugin, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
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
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ file: String) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = GString (args [0])!.description
                
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
    
    /// Emitted when a new scene is created that inherits the scene at `file` path.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.inherit.connect { file in
    ///    print ("caught signal")
    /// }
    /// ```
    public var inherit: Signal1 { Signal1 (target: self, signalName: "inherit") }
    
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
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ files: PackedStringArray) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = PackedStringArray (args [0])!
                
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
    
    /// Emitted when the given scenes are being instantiated in the editor.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.instantiate.connect { files in
    ///    print ("caught signal")
    /// }
    /// ```
    public var instantiate: Signal2 { Signal2 (target: self, signalName: "instantiate") }
    
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal3/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal3/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal3/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal3 {
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
        @discardableResult /* Signal3 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ resource: Resource) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                var ptr_0: UnsafeMutableRawPointer?
                args [0].toType (Variant.GType.object, dest: &ptr_0)
                let arg_0 = lookupLiveObject (handleAddress: ptr_0!) as? Resource ?? Resource (nativeHandle: ptr_0!)
                
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
    
    /// Emitted when an external `resource` had its file removed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.resourceRemoved.connect { resource in
    ///    print ("caught signal")
    /// }
    /// ```
    public var resourceRemoved: Signal3 { Signal3 (target: self, signalName: "resource_removed") }
    
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal4/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal4/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal4/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal4 {
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
        @discardableResult /* Signal4 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ file: String) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = GString (args [0])!.description
                
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
    
    /// Emitted when the given `file` was removed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.fileRemoved.connect { file in
    ///    print ("caught signal")
    /// }
    /// ```
    public var fileRemoved: Signal4 { Signal4 (target: self, signalName: "file_removed") }
    
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal5/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal5/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal5/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal5 {
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
        @discardableResult /* Signal5 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ folder: String) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = GString (args [0])!.description
                
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
    
    /// Emitted when the given `folder` was removed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.folderRemoved.connect { folder in
    ///    print ("caught signal")
    /// }
    /// ```
    public var folderRemoved: Signal5 { Signal5 (target: self, signalName: "folder_removed") }
    
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal6/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal6/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal6/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal6 {
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
        @discardableResult /* Signal6 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ oldFile: String, _ newFile: String) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = GString (args [0])!.description
                let arg_1 = GString (args [1])!.description
                
                callback (arg_0, arg_1)
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
                    connect (flags: .oneShot) { _, _ in c.resume () }
                }
                
            }
            
        }
        
    }
    
    /// Emitted when a file is moved from `oldFile` path to `newFile` path.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.filesMoved.connect { oldFile, newFile in
    ///    print ("caught signal")
    /// }
    /// ```
    public var filesMoved: Signal6 { Signal6 (target: self, signalName: "files_moved") }
    
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal7/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal7/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal7/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal7 {
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
        @discardableResult /* Signal7 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ oldFolder: String, _ newFolder: String) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = GString (args [0])!.description
                let arg_1 = GString (args [1])!.description
                
                callback (arg_0, arg_1)
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
                    connect (flags: .oneShot) { _, _ in c.resume () }
                }
                
            }
            
        }
        
    }
    
    /// Emitted when a folder is moved from `oldFolder` path to `newFolder` path.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.folderMoved.connect { oldFolder, newFolder in
    ///    print ("caught signal")
    /// }
    /// ```
    public var folderMoved: Signal7 { Signal7 (target: self, signalName: "folder_moved") }
    
    /// Emitted when the user switches file display mode or split mode.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.displayModeChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var displayModeChanged: SimpleSignal { SimpleSignal (target: self, signalName: "display_mode_changed") }
    
}

