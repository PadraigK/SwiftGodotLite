// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Abstract class for specialized ``PacketPeer``s used by the ``MultiplayerAPI``.
/// 
/// Manages the connection with one or more remote peers acting as server or client and assigning unique IDs to each of them. See also ``MultiplayerAPI``.
/// 
/// > Note: The ``MultiplayerAPI`` protocol is an implementation detail and isn't meant to be used by non-Godot servers. It may change without notice.
/// 
/// > Note: When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``peerConnected``
/// - ``peerDisconnected``
open class MultiplayerPeer: PacketPeer {
    override open class var godotClassName: StringName { "MultiplayerPeer" }
    public enum ConnectionStatus: Int64 {
        /// The MultiplayerPeer is disconnected.
        case disconnected = 0 // CONNECTION_DISCONNECTED
        /// The MultiplayerPeer is currently connecting to a server.
        case connecting = 1 // CONNECTION_CONNECTING
        /// This MultiplayerPeer is connected.
        case connected = 2 // CONNECTION_CONNECTED
    }
    
    public enum TransferMode: Int64 {
        /// Packets are not acknowledged, no resend attempts are made for lost packets. Packets may arrive in any order. Potentially faster than .unreliableOrdered. Use for non-critical data, and always consider whether the order matters.
        case unreliable = 0 // TRANSFER_MODE_UNRELIABLE
        /// Packets are not acknowledged, no resend attempts are made for lost packets. Packets are received in the order they were sent in. Potentially faster than .reliable. Use for non-critical data or data that would be outdated if received late due to resend attempt(s) anyway, for example movement and positional data.
        case unreliableOrdered = 1 // TRANSFER_MODE_UNRELIABLE_ORDERED
        /// Packets must be received and resend attempts should be made until the packets are acknowledged. Packets must be received in the order they were sent in. Most reliable transfer mode, but potentially the slowest due to the overhead. Use for critical data that must be transmitted and arrive in order, for example an ability being triggered or a chat message. Consider carefully if the information really is critical, and use sparingly.
        case reliable = 2 // TRANSFER_MODE_RELIABLE
    }
    
    /* Constants */
    /// Packets are sent to all connected peers.
    public static let targetPeerBroadcast = 0
    /// Packets are sent to the remote peer acting as server.
    public static let targetPeerServer = 1
    
    /* Properties */
    
    /// If `true`, this ``MultiplayerPeer`` refuses new connections.
    final public var refuseNewConnections: Bool {
        get {
            return is_refusing_new_connections ()
        }
        
        set {
            set_refuse_new_connections (newValue)
        }
        
    }
    
    /// The manner in which to send packets to the target peer. See ``MultiplayerPeer/TransferMode``, and the ``setTargetPeer(id:)`` method.
    final public var transferMode: MultiplayerPeer.TransferMode {
        get {
            return get_transfer_mode ()
        }
        
        set {
            set_transfer_mode (newValue)
        }
        
    }
    
    /// The channel to use to send packets. Many network APIs such as ENet and WebRTC allow the creation of multiple independent channels which behaves, in a way, like separate connections. This means that reliable data will only block delivery of other packets on that channel, and ordering will only be in respect to the channel the packet is being sent on. Using different channels to send **different and independent** state updates is a common way to optimize network usage and decrease latency in fast-paced games.
    /// 
    /// > Note: The default channel (`0`) actually works as 3 separate channels (one for each ``MultiplayerPeer/TransferMode``) so that .reliable and .unreliableOrdered does not interact with each other by default. Refer to the specific network API documentation (e.g. ENet or WebRTC) to learn how to set up channels correctly.
    /// 
    final public var transferChannel: Int32 {
        get {
            return get_transfer_channel ()
        }
        
        set {
            set_transfer_channel (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_transfer_channel: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_transfer_channel")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_transfer_channel (_ channel: Int32) {
        #if false
        
        var copy_channel: Int = Int (channel)
        
        gi.object_method_bind_ptrcall_v (MultiplayerPeer.method_set_transfer_channel, UnsafeMutableRawPointer (mutating: handle), nil, &copy_channel)
        
        #else
        
        var copy_channel: Int = Int (channel)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_channel) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiplayerPeer.method_set_transfer_channel, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_transfer_channel: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_transfer_channel")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_transfer_channel ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (MultiplayerPeer.method_get_transfer_channel, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_transfer_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_transfer_mode")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 950411049)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_transfer_mode (_ mode: MultiplayerPeer.TransferMode) {
        #if false
        
        var copy_mode = Int64 (mode.rawValue)
        
        gi.object_method_bind_ptrcall_v (MultiplayerPeer.method_set_transfer_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mode)
        
        #else
        
        var copy_mode = Int64 (mode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiplayerPeer.method_set_transfer_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_transfer_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_transfer_mode")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3369852622)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_transfer_mode ()-> MultiplayerPeer.TransferMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (MultiplayerPeer.method_get_transfer_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return MultiplayerPeer.TransferMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_target_peer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_target_peer")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Sets the peer to which packets will be sent.
    /// 
    /// The `id` can be one of: ``targetPeerBroadcast`` to send to all connected peers, ``targetPeerServer`` to send to the peer acting as server, a valid peer ID to send to that specific peer, a negative peer ID to send to all peers except that one. By default, the target peer is ``targetPeerBroadcast``.
    /// 
    public final func setTargetPeer (id: Int32) {
        #if false
        
        var copy_id: Int = Int (id)
        
        gi.object_method_bind_ptrcall_v (MultiplayerPeer.method_set_target_peer, UnsafeMutableRawPointer (mutating: handle), nil, &copy_id)
        
        #else
        
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiplayerPeer.method_set_target_peer, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_packet_peer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_packet_peer")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the ID of the ``MultiplayerPeer`` who sent the next available packet. See ``PacketPeer/getAvailablePacketCount()``.
    public final func getPacketPeer ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (MultiplayerPeer.method_get_packet_peer, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_packet_channel: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_packet_channel")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the channel over which the next available packet was received. See ``PacketPeer/getAvailablePacketCount()``.
    public final func getPacketChannel ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (MultiplayerPeer.method_get_packet_channel, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_packet_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_packet_mode")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3369852622)!
            }
            
        }
        
    }()
    
    /// Returns the ``MultiplayerPeer.TransferMode`` the remote peer used to send the next available packet. See ``PacketPeer/getAvailablePacketCount()``.
    public final func getPacketMode ()-> MultiplayerPeer.TransferMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (MultiplayerPeer.method_get_packet_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return MultiplayerPeer.TransferMode (rawValue: _result)!
    }
    
    fileprivate static var method_poll: GDExtensionMethodBindPtr = {
        let methodName = StringName ("poll")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Waits up to 1 second to receive a new network event.
    public final func poll () {
        gi.object_method_bind_ptrcall (MultiplayerPeer.method_poll, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_close: GDExtensionMethodBindPtr = {
        let methodName = StringName ("close")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Immediately close the multiplayer peer returning to the state .connectionDisconnected. Connected peers will be dropped without emitting [signal peer_disconnected].
    public final func close () {
        gi.object_method_bind_ptrcall (MultiplayerPeer.method_close, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_disconnect_peer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("disconnect_peer")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4023243586)!
            }
            
        }
        
    }()
    
    /// Disconnects the given `peer` from this host. If `force` is `true` the [signal peer_disconnected] signal will not be emitted for this peer.
    public final func disconnectPeer (_ peer: Int32, force: Bool = false) {
        #if false
        
        var copy_peer: Int = Int (peer)
        var copy_force = force
        
        gi.object_method_bind_ptrcall_v (MultiplayerPeer.method_disconnect_peer, UnsafeMutableRawPointer (mutating: handle), nil, &copy_peer, &copy_force)
        
        #else
        
        var copy_peer: Int = Int (peer)
        var copy_force = force
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_peer) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_force) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (MultiplayerPeer.method_disconnect_peer, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_connection_status: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_connection_status")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2147374275)!
            }
            
        }
        
    }()
    
    /// Returns the current state of the connection. See ``MultiplayerPeer/ConnectionStatus``.
    public final func getConnectionStatus ()-> MultiplayerPeer.ConnectionStatus {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (MultiplayerPeer.method_get_connection_status, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return MultiplayerPeer.ConnectionStatus (rawValue: _result)!
    }
    
    fileprivate static var method_get_unique_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_unique_id")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the ID of this ``MultiplayerPeer``.
    public final func getUniqueId ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (MultiplayerPeer.method_get_unique_id, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_generate_unique_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("generate_unique_id")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns a randomly generated integer that can be used as a network unique ID.
    public final func generateUniqueId ()-> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall (MultiplayerPeer.method_generate_unique_id, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_refuse_new_connections: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_refuse_new_connections")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_refuse_new_connections (_ enable: Bool) {
        #if false
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (MultiplayerPeer.method_set_refuse_new_connections, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiplayerPeer.method_set_refuse_new_connections, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_refusing_new_connections: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_refusing_new_connections")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_refusing_new_connections ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (MultiplayerPeer.method_is_refusing_new_connections, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_server_relay_supported: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_server_relay_supported")
        return withUnsafePointer (to: &MultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns true if the server can act as a relay in the current configuration (i.e. if the higher level ``MultiplayerAPI`` should notify connected clients of other peers, and implement a relay protocol to allow communication between them).
    public final func isServerRelaySupported ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (MultiplayerPeer.method_is_server_relay_supported, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
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
    
    /// Emitted when a remote peer connects.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.peerConnected.connect { id in
    ///    print ("caught signal")
    /// }
    /// ```
    public var peerConnected: Signal1 { Signal1 (target: self, signalName: "peer_connected") }
    
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
    
    /// Emitted when a remote peer has disconnected.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.peerDisconnected.connect { id in
    ///    print ("caught signal")
    /// }
    /// ```
    public var peerDisconnected: Signal2 { Signal2 (target: self, signalName: "peer_disconnected") }
    
}

