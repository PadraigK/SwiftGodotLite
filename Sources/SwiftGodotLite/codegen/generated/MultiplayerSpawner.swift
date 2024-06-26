// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Automatically replicates spawnable nodes from the authority to other multiplayer peers.
/// 
/// Spawnable scenes can be configured in the editor or through code (see ``addSpawnableScene(path:)``).
/// 
/// Also supports custom node spawns through ``spawn(data:)``, calling ``spawnFunction`` on all peers.
/// 
/// Internally, ``MultiplayerSpawner`` uses ``MultiplayerAPI/objectConfigurationAdd(object:configuration:)`` to notify spawns passing the spawned node as the `object` and itself as the `configuration`, and ``MultiplayerAPI/objectConfigurationRemove(object:configuration:)`` to notify despawns in a similar way.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``despawned``
/// - ``spawned``
open class MultiplayerSpawner: Node {
    override open class var godotClassName: StringName { "MultiplayerSpawner" }
    
    /* Properties */
    
    /// Path to the spawn root. Spawnable scenes that are added as direct children are replicated to other peers.
    final public var spawnPath: NodePath {
        get {
            return get_spawn_path ()
        }
        
        set {
            set_spawn_path (newValue)
        }
        
    }
    
    /// Maximum nodes that is allowed to be spawned by this spawner. Includes both spawnable scenes and custom spawns.
    /// 
    /// When set to `0` (the default), there is no limit.
    /// 
    final public var spawnLimit: UInt32 {
        get {
            return get_spawn_limit ()
        }
        
        set {
            set_spawn_limit (newValue)
        }
        
    }
    
    /// Method called on all peers when for every custom ``spawn(data:)`` requested by the authority. Will receive the `data` parameter, and should return a ``Node`` that is not in the scene tree.
    /// 
    /// > Note: The returned node should **not** be added to the scene with ``Node/addChild(node:forceReadableName:`internal`:)``. This is done automatically.
    /// 
    final public var spawnFunction: Callable {
        get {
            return get_spawn_function ()
        }
        
        set {
            set_spawn_function (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_add_spawnable_scene: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_spawnable_scene")
        return withUnsafePointer (to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Adds a scene path to spawnable scenes, making it automatically replicated from the multiplayer authority to other peers when added as children of the node pointed by ``spawnPath``.
    public final func addSpawnableScene (path: String) {
        #if false
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (MultiplayerSpawner.method_add_spawnable_scene, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_path.content)
        
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiplayerSpawner.method_add_spawnable_scene, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_spawnable_scene_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_spawnable_scene_count")
        return withUnsafePointer (to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the count of spawnable scene paths.
    public final func getSpawnableSceneCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (MultiplayerSpawner.method_get_spawnable_scene_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_spawnable_scene: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_spawnable_scene")
        return withUnsafePointer (to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the spawnable scene path by index.
    public final func getSpawnableScene (index: Int32)-> String {
        let _result = GString ()
        #if false
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (MultiplayerSpawner.method_get_spawnable_scene, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_index)
        return _result.description
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiplayerSpawner.method_get_spawnable_scene, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_clear_spawnable_scenes: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear_spawnable_scenes")
        return withUnsafePointer (to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears all spawnable scenes. Does not despawn existing instances on remote peers.
    public final func clearSpawnableScenes () {
        gi.object_method_bind_ptrcall (MultiplayerSpawner.method_clear_spawnable_scenes, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_spawn: GDExtensionMethodBindPtr = {
        let methodName = StringName ("spawn")
        return withUnsafePointer (to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1991184589)!
            }
            
        }
        
    }()
    
    /// Requests a custom spawn, with `data` passed to ``spawnFunction`` on all peers. Returns the locally spawned node instance already inside the scene tree, and added as a child of the node pointed by ``spawnPath``.
    /// 
    /// > Note: Spawnable scenes are spawned automatically. ``spawn(data:)`` is only needed for custom spawns.
    /// 
    public final func spawn (data: Variant)-> Node? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if false
        
        
        gi.object_method_bind_ptrcall_v (MultiplayerSpawner.method_spawn, UnsafeMutableRawPointer (mutating: handle), &_result, &data.content)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &data.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiplayerSpawner.method_spawn, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_get_spawn_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_spawn_path")
        return withUnsafePointer (to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_spawn_path ()-> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall (MultiplayerSpawner.method_get_spawn_path, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_spawn_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_spawn_path")
        return withUnsafePointer (to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_spawn_path (_ path: NodePath) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (MultiplayerSpawner.method_set_spawn_path, UnsafeMutableRawPointer (mutating: handle), nil, &path.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiplayerSpawner.method_set_spawn_path, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_spawn_limit: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_spawn_limit")
        return withUnsafePointer (to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_spawn_limit ()-> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall (MultiplayerSpawner.method_get_spawn_limit, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_spawn_limit: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_spawn_limit")
        return withUnsafePointer (to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_spawn_limit (_ limit: UInt32) {
        #if false
        
        var copy_limit: Int = Int (limit)
        
        gi.object_method_bind_ptrcall_v (MultiplayerSpawner.method_set_spawn_limit, UnsafeMutableRawPointer (mutating: handle), nil, &copy_limit)
        
        #else
        
        var copy_limit: Int = Int (limit)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_limit) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiplayerSpawner.method_set_spawn_limit, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_spawn_function: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_spawn_function")
        return withUnsafePointer (to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1307783378)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_spawn_function ()-> Callable {
        let _result: Callable = Callable ()
        gi.object_method_bind_ptrcall (MultiplayerSpawner.method_get_spawn_function, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_spawn_function: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_spawn_function")
        return withUnsafePointer (to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1611583062)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_spawn_function (_ spawnFunction: Callable) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (MultiplayerSpawner.method_set_spawn_function, UnsafeMutableRawPointer (mutating: handle), nil, &spawnFunction.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &spawnFunction.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiplayerSpawner.method_set_spawn_function, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
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
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ node: Node) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                var ptr_0: UnsafeMutableRawPointer?
                args [0].toType (Variant.GType.object, dest: &ptr_0)
                let arg_0 = lookupLiveObject (handleAddress: ptr_0!) as? Node ?? Node (nativeHandle: ptr_0!)
                
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
    
    /// Emitted when a spawnable scene or custom spawn was despawned by the multiplayer authority. Only called on puppets.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.despawned.connect { node in
    ///    print ("caught signal")
    /// }
    /// ```
    public var despawned: Signal1 { Signal1 (target: self, signalName: "despawned") }
    
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
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ node: Node) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                var ptr_0: UnsafeMutableRawPointer?
                args [0].toType (Variant.GType.object, dest: &ptr_0)
                let arg_0 = lookupLiveObject (handleAddress: ptr_0!) as? Node ?? Node (nativeHandle: ptr_0!)
                
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
    
    /// Emitted when a spawnable scene or custom spawn was spawned by the multiplayer authority. Only called on puppets.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.spawned.connect { node in
    ///    print ("caught signal")
    /// }
    /// ```
    public var spawned: Signal2 { Signal2 (target: self, signalName: "spawned") }
    
}

