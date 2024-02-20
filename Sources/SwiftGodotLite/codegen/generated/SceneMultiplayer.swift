// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// High-level multiplayer API implementation.
/// 
/// This class is the default implementation of ``MultiplayerAPI``, used to provide multiplayer functionalities in Godot Engine.
/// 
/// This implementation supports RPCs via ``Node/rpc(method:)`` and ``Node/rpcId(peerId:method:)`` and requires ``MultiplayerAPI/rpc(peer:object:method:arguments:)`` to be passed a ``Node`` (it will fail for other object types).
/// 
/// This implementation additionally provide ``SceneTree`` replication via the ``MultiplayerSpawner`` and ``MultiplayerSynchronizer`` nodes, and the ``SceneReplicationConfig`` resource.
/// 
/// > Note: The high-level multiplayer API protocol is an implementation detail and isn't meant to be used by non-Godot servers. It may change without notice.
/// 
/// > Note: When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``peerAuthenticating``
/// - ``peerAuthenticationFailed``
/// - ``peerPacket``
open class SceneMultiplayer: MultiplayerAPI {
    override open class var godotClassName: StringName { "SceneMultiplayer" }
    
    /* Properties */
    
    /// The root path to use for RPCs and replication. Instead of an absolute path, a relative path will be used to find the node upon which the RPC should be executed.
    /// 
    /// This effectively allows to have different branches of the scene tree to be managed by different MultiplayerAPI, allowing for example to run both client and server in the same scene.
    /// 
    final public var rootPath: NodePath {
        get {
            return get_root_path ()
        }
        
        set {
            set_root_path (newValue)
        }
        
    }
    
    /// The callback to execute when when receiving authentication data sent via ``sendAuth(id:data:)``. If the ``Callable`` is empty (default), peers will be automatically accepted as soon as they connect.
    final public var authCallback: Callable {
        get {
            return get_auth_callback ()
        }
        
        set {
            set_auth_callback (newValue)
        }
        
    }
    
    /// If set to a value greater than `0.0`, the maximum amount of time peers can stay in the authenticating state, after which the authentication will automatically fail. See the [signal peer_authenticating] and [signal peer_authentication_failed] signals.
    final public var authTimeout: Double {
        get {
            return get_auth_timeout ()
        }
        
        set {
            set_auth_timeout (newValue)
        }
        
    }
    
    /// If `true`, the MultiplayerAPI will allow encoding and decoding of object during RPCs.
    /// 
    /// > Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threat such as remote code execution.
    /// 
    final public var allowObjectDecoding: Bool {
        get {
            return is_object_decoding_allowed ()
        }
        
        set {
            set_allow_object_decoding (newValue)
        }
        
    }
    
    /// If `true`, the MultiplayerAPI's ``MultiplayerAPI/multiplayerPeer`` refuses new incoming connections.
    final public var refuseNewConnections: Bool {
        get {
            return is_refusing_new_connections ()
        }
        
        set {
            set_refuse_new_connections (newValue)
        }
        
    }
    
    /// Enable or disable the server feature that notifies clients of other peers' connection/disconnection, and relays messages between them. When this option is `false`, clients won't be automatically notified of other peers and won't be able to send them packets through the server.
    /// 
    /// > Note: Changing this option while other peers are connected may lead to unexpected behaviors.
    /// 
    /// > Note: Support for this feature may depend on the current ``MultiplayerPeer`` configuration. See ``MultiplayerPeer/isServerRelaySupported()``.
    /// 
    final public var serverRelay: Bool {
        get {
            return is_server_relay_enabled ()
        }
        
        set {
            set_server_relay_enabled (newValue)
        }
        
    }
    
    /// Maximum size of each synchronization packet. Higher values increase the chance of receiving full updates in a single frame, but also the chance of packet loss. See ``MultiplayerSynchronizer``.
    final public var maxSyncPacketSize: Int32 {
        get {
            return get_max_sync_packet_size ()
        }
        
        set {
            set_max_sync_packet_size (newValue)
        }
        
    }
    
    /// Maximum size of each delta packet. Higher values increase the chance of receiving full updates in a single frame, but also the chance of causing networking congestion (higher latency, disconnections). See ``MultiplayerSynchronizer``.
    final public var maxDeltaPacketSize: Int32 {
        get {
            return get_max_delta_packet_size ()
        }
        
        set {
            set_max_delta_packet_size (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_root_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_root_path")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_root_path (_ path: NodePath) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (SceneMultiplayer.method_set_root_path, UnsafeMutableRawPointer (mutating: handle), nil, &path.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneMultiplayer.method_set_root_path, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_root_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_root_path")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_root_path ()-> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall (SceneMultiplayer.method_get_root_path, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_clear: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the current SceneMultiplayer network state (you shouldn't call this unless you know what you are doing).
    public final func clear () {
        gi.object_method_bind_ptrcall (SceneMultiplayer.method_clear, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_disconnect_peer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("disconnect_peer")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Disconnects the peer identified by `id`, removing it from the list of connected peers, and closing the underlying connection with it.
    public final func disconnectPeer (id: Int32) {
        #if true
        
        var copy_id: Int = Int (id)
        
        gi.object_method_bind_ptrcall_v (SceneMultiplayer.method_disconnect_peer, UnsafeMutableRawPointer (mutating: handle), nil, &copy_id)
        
        #else
        
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneMultiplayer.method_disconnect_peer, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_authenticating_peers: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_authenticating_peers")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 969006518)!
            }
            
        }
        
    }()
    
    /// Returns the IDs of the peers currently trying to authenticate with this ``MultiplayerAPI``.
    public final func getAuthenticatingPeers ()-> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall (SceneMultiplayer.method_get_authenticating_peers, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_send_auth: GDExtensionMethodBindPtr = {
        let methodName = StringName ("send_auth")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 506032537)!
            }
            
        }
        
    }()
    
    /// Sends the specified `data` to the remote peer identified by `id` as part of an authentication message. This can be used to authenticate peers, and control when [signal MultiplayerAPI.peer_connected] is emitted (and the remote peer accepted as one of the connected peers).
    public final func sendAuth (id: Int32, data: PackedByteArray)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        var copy_id: Int = Int (id)
        
        gi.object_method_bind_ptrcall_v (SceneMultiplayer.method_send_auth, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_id, &data.content)
        return GodotError (rawValue: _result)!
        #else
        
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &data.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (SceneMultiplayer.method_send_auth, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return GodotError (rawValue: _result)!
            }
        }
        
        #endif
    }
    
    fileprivate static var method_complete_auth: GDExtensionMethodBindPtr = {
        let methodName = StringName ("complete_auth")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 844576869)!
            }
            
        }
        
    }()
    
    /// Mark the authentication step as completed for the remote peer identified by `id`. The [signal MultiplayerAPI.peer_connected] signal will be emitted for this peer once the remote side also completes the authentication. No further authentication messages are expected to be received from this peer.
    /// 
    /// If a peer disconnects before completing authentication, either due to a network issue, the ``authTimeout`` expiring, or manually calling ``disconnectPeer(id:)``, the [signal peer_authentication_failed] signal will be emitted instead of [signal MultiplayerAPI.peer_disconnected].
    /// 
    public final func completeAuth (id: Int32)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        var copy_id: Int = Int (id)
        
        gi.object_method_bind_ptrcall_v (SceneMultiplayer.method_complete_auth, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_id)
        return GodotError (rawValue: _result)!
        #else
        
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneMultiplayer.method_complete_auth, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_set_auth_callback: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_auth_callback")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1611583062)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_auth_callback (_ callback: Callable) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (SceneMultiplayer.method_set_auth_callback, UnsafeMutableRawPointer (mutating: handle), nil, &callback.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &callback.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneMultiplayer.method_set_auth_callback, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_auth_callback: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_auth_callback")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1307783378)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_auth_callback ()-> Callable {
        let _result: Callable = Callable ()
        gi.object_method_bind_ptrcall (SceneMultiplayer.method_get_auth_callback, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_auth_timeout: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_auth_timeout")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_auth_timeout (_ timeout: Double) {
        #if true
        
        var copy_timeout = timeout
        
        gi.object_method_bind_ptrcall_v (SceneMultiplayer.method_set_auth_timeout, UnsafeMutableRawPointer (mutating: handle), nil, &copy_timeout)
        
        #else
        
        var copy_timeout = timeout
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_timeout) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneMultiplayer.method_set_auth_timeout, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_auth_timeout: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_auth_timeout")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_auth_timeout ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (SceneMultiplayer.method_get_auth_timeout, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_refuse_new_connections: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_refuse_new_connections")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_refuse_new_connections (_ refuse: Bool) {
        #if true
        
        var copy_refuse = refuse
        
        gi.object_method_bind_ptrcall_v (SceneMultiplayer.method_set_refuse_new_connections, UnsafeMutableRawPointer (mutating: handle), nil, &copy_refuse)
        
        #else
        
        var copy_refuse = refuse
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_refuse) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneMultiplayer.method_set_refuse_new_connections, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_refusing_new_connections: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_refusing_new_connections")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_refusing_new_connections ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (SceneMultiplayer.method_is_refusing_new_connections, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_allow_object_decoding: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_allow_object_decoding")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_allow_object_decoding (_ enable: Bool) {
        #if true
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (SceneMultiplayer.method_set_allow_object_decoding, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneMultiplayer.method_set_allow_object_decoding, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_object_decoding_allowed: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_object_decoding_allowed")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_object_decoding_allowed ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (SceneMultiplayer.method_is_object_decoding_allowed, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_server_relay_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_server_relay_enabled")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_server_relay_enabled (_ enabled: Bool) {
        #if true
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (SceneMultiplayer.method_set_server_relay_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneMultiplayer.method_set_server_relay_enabled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_server_relay_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_server_relay_enabled")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_server_relay_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (SceneMultiplayer.method_is_server_relay_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_send_bytes: GDExtensionMethodBindPtr = {
        let methodName = StringName ("send_bytes")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1307428718)!
            }
            
        }
        
    }()
    
    /// Sends the given raw `bytes` to a specific peer identified by `id` (see ``MultiplayerPeer/setTargetPeer(id:)``). Default ID is `0`, i.e. broadcast to all peers.
    public final func sendBytes (_ bytes: PackedByteArray, id: Int32 = 0, mode: MultiplayerPeer.TransferMode = .reliable, channel: Int32 = 0)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        var copy_id: Int = Int (id)
        var copy_mode = Int64 (mode.rawValue)
        var copy_channel: Int = Int (channel)
        
        gi.object_method_bind_ptrcall_v (SceneMultiplayer.method_send_bytes, UnsafeMutableRawPointer (mutating: handle), &_result, &bytes.content, &copy_id, &copy_mode, &copy_channel)
        return GodotError (rawValue: _result)!
        #else
        
        var copy_id: Int = Int (id)
        var copy_mode = Int64 (mode.rawValue)
        var copy_channel: Int = Int (channel)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &bytes.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_id) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_mode) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &copy_channel) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (SceneMultiplayer.method_send_bytes, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                        return GodotError (rawValue: _result)!
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_max_sync_packet_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_max_sync_packet_size")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_sync_packet_size ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (SceneMultiplayer.method_get_max_sync_packet_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_max_sync_packet_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_max_sync_packet_size")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_sync_packet_size (_ size: Int32) {
        #if true
        
        var copy_size: Int = Int (size)
        
        gi.object_method_bind_ptrcall_v (SceneMultiplayer.method_set_max_sync_packet_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_size)
        
        #else
        
        var copy_size: Int = Int (size)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneMultiplayer.method_set_max_sync_packet_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_max_delta_packet_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_max_delta_packet_size")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_delta_packet_size ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (SceneMultiplayer.method_get_max_delta_packet_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_max_delta_packet_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_max_delta_packet_size")
        return withUnsafePointer (to: &SceneMultiplayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_delta_packet_size (_ size: Int32) {
        #if true
        
        var copy_size: Int = Int (size)
        
        gi.object_method_bind_ptrcall_v (SceneMultiplayer.method_set_max_delta_packet_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_size)
        
        #else
        
        var copy_size: Int = Int (size)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneMultiplayer.method_set_max_delta_packet_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
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
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ id: Int64) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = Int64 (args [0])!
                
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
    
    /// Emitted when this MultiplayerAPI's ``MultiplayerAPI/multiplayerPeer`` connects to a new peer and a valid ``authCallback`` is set. In this case, the [signal MultiplayerAPI.peer_connected] will not be emitted until ``completeAuth(id:)`` is called with given peer `id`. While in this state, the peer will not be included in the list returned by ``MultiplayerAPI/getPeers()`` (but in the one returned by ``getAuthenticatingPeers()``), and only authentication data will be sent or received. See ``sendAuth(id:data:)`` for sending authentication data.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.peerAuthenticating.connect { id in
    ///    print ("caught signal")
    /// }
    /// ```
    public var peerAuthenticating: Signal1 { Signal1 (target: self, signalName: "peer_authenticating") }
    
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
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ id: Int64) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = Int64 (args [0])!
                
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
    
    /// Emitted when this MultiplayerAPI's ``MultiplayerAPI/multiplayerPeer`` disconnects from a peer for which authentication had not yet completed. See [signal peer_authenticating].
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.peerAuthenticationFailed.connect { id in
    ///    print ("caught signal")
    /// }
    /// ```
    public var peerAuthenticationFailed: Signal2 { Signal2 (target: self, signalName: "peer_authentication_failed") }
    
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
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ id: Int64, _ packet: PackedByteArray) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = Int64 (args [0])!
                let arg_1 = PackedByteArray (args [1])!
                
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
    
    /// Emitted when this MultiplayerAPI's ``MultiplayerAPI/multiplayerPeer`` receives a `packet` with custom data (see ``sendBytes(_:id:mode:channel:)``). ID is the peer ID of the peer that sent the packet.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.peerPacket.connect { id, packet in
    ///    print ("caught signal")
    /// }
    /// ```
    public var peerPacket: Signal3 { Signal3 (target: self, signalName: "peer_packet") }
    
}
