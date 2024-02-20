// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Resource filesystem, as the editor sees it.
/// 
/// This object holds information of all resources in the filesystem, their types, etc.
/// 
/// > Note: This class shouldn't be instantiated directly. Instead, access the singleton using ``EditorInterface/getResourceFilesystem()``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``filesystemChanged``
/// - ``scriptClassesUpdated``
/// - ``sourcesChanged``
/// - ``resourcesReimported``
/// - ``resourcesReload``
open class EditorFileSystem: Node {
    override open class var godotClassName: StringName { "EditorFileSystem" }
    /* Methods */
    fileprivate static var method_get_filesystem: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_filesystem")
        return withUnsafePointer (to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 842323275)!
            }
            
        }
        
    }()
    
    /// Gets the root directory object.
    public final func getFilesystem ()-> EditorFileSystemDirectory? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (EditorFileSystem.method_get_filesystem, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_is_scanning: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_scanning")
        return withUnsafePointer (to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the filesystem is being scanned.
    public final func isScanning ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (EditorFileSystem.method_is_scanning, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_scanning_progress: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_scanning_progress")
        return withUnsafePointer (to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the scan progress for 0 to 1 if the FS is being scanned.
    public final func getScanningProgress ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (EditorFileSystem.method_get_scanning_progress, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_scan: GDExtensionMethodBindPtr = {
        let methodName = StringName ("scan")
        return withUnsafePointer (to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Scan the filesystem for changes.
    public final func scan () {
        gi.object_method_bind_ptrcall (EditorFileSystem.method_scan, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_scan_sources: GDExtensionMethodBindPtr = {
        let methodName = StringName ("scan_sources")
        return withUnsafePointer (to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Check if the source of any imported resource changed.
    public final func scanSources () {
        gi.object_method_bind_ptrcall (EditorFileSystem.method_scan_sources, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_update_file: GDExtensionMethodBindPtr = {
        let methodName = StringName ("update_file")
        return withUnsafePointer (to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Add a file in an existing directory, or schedule file information to be updated on editor restart. Can be used to update text files saved by an external program.
    /// 
    /// This will not import the file. To reimport, call ``reimportFiles(_:)`` or ``scan()`` methods.
    /// 
    public final func updateFile (path: String) {
        #if false
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (EditorFileSystem.method_update_file, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_path.content)
        
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (EditorFileSystem.method_update_file, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_filesystem_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_filesystem_path")
        return withUnsafePointer (to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3188521125)!
            }
            
        }
        
    }()
    
    /// Returns a view into the filesystem at `path`.
    public final func getFilesystemPath (_ path: String)-> EditorFileSystemDirectory? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if false
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (EditorFileSystem.method_get_filesystem_path, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_path.content)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (EditorFileSystem.method_get_filesystem_path, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_get_file_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_file_type")
        return withUnsafePointer (to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns the resource type of the file, given the full path. This returns a string such as `"Resource"` or `"GDScript"`, _not_ a file extension such as `".gd"`.
    public final func getFileType (path: String)-> String {
        let _result = GString ()
        #if false
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (EditorFileSystem.method_get_file_type, UnsafeMutableRawPointer (mutating: handle), &_result.content, &gstr_path.content)
        return _result.description
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (EditorFileSystem.method_get_file_type, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_reimport_files: GDExtensionMethodBindPtr = {
        let methodName = StringName ("reimport_files")
        return withUnsafePointer (to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4015028928)!
            }
            
        }
        
    }()
    
    /// Reimports a set of files. Call this if these files or their `.import` files were directly edited by script or an external program.
    /// 
    /// If the file type changed or the file was newly created, use ``updateFile(path:)`` or ``scan()``.
    /// 
    /// > Note: This function blocks until the import is finished. However, the main loop iteration, including timers and ``Node/_process(delta:)``, will occur during the import process due to progress bar updates. Avoid calls to ``reimportFiles(_:)`` or ``scan()`` while an import is in progress.
    /// 
    public final func reimportFiles (_ files: PackedStringArray) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (EditorFileSystem.method_reimport_files, UnsafeMutableRawPointer (mutating: handle), nil, &files.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &files.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (EditorFileSystem.method_reimport_files, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    // Signals 
    /// Emitted if the filesystem changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.filesystemChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var filesystemChanged: SimpleSignal { SimpleSignal (target: self, signalName: "filesystem_changed") }
    
    /// Emitted when the list of global script classes gets updated.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.scriptClassesUpdated.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var scriptClassesUpdated: SimpleSignal { SimpleSignal (target: self, signalName: "script_classes_updated") }
    
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
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ exist: Bool) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = Bool (args [0])!
                
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
    
    /// Emitted if the source of any imported file changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.sourcesChanged.connect { exist in
    ///    print ("caught signal")
    /// }
    /// ```
    public var sourcesChanged: Signal1 { Signal1 (target: self, signalName: "sources_changed") }
    
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
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ resources: PackedStringArray) -> ()) -> Object {
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
    
    /// Emitted if a resource is reimported.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.resourcesReimported.connect { resources in
    ///    print ("caught signal")
    /// }
    /// ```
    public var resourcesReimported: Signal2 { Signal2 (target: self, signalName: "resources_reimported") }
    
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
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ resources: PackedStringArray) -> ()) -> Object {
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
    
    /// Emitted if at least one resource is reloaded when the filesystem is scanned.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.resourcesReload.connect { resources in
    ///    print ("caught signal")
    /// }
    /// ```
    public var resourcesReload: Signal3 { Signal3 (target: self, signalName: "resources_reload") }
    
}

