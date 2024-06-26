// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Base class for WebSocket server and client.
/// 
/// Base class for WebSocket server and client, allowing them to be used as multiplayer peer for the ``MultiplayerAPI``.
/// 
/// > Note: When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
/// 
open class WebSocketMultiplayerPeer: MultiplayerPeer {
    override open class var godotClassName: StringName { "WebSocketMultiplayerPeer" }
    
    /* Properties */
    
    /// The supported WebSocket sub-protocols. See ``WebSocketPeer/supportedProtocols`` for more details.
    final public var supportedProtocols: PackedStringArray {
        get {
            return get_supported_protocols ()
        }
        
        set {
            set_supported_protocols (newValue)
        }
        
    }
    
    /// The extra headers to use during handshake. See ``WebSocketPeer/handshakeHeaders`` for more details.
    final public var handshakeHeaders: PackedStringArray {
        get {
            return get_handshake_headers ()
        }
        
        set {
            set_handshake_headers (newValue)
        }
        
    }
    
    /// The inbound buffer size for connected peers. See ``WebSocketPeer/inboundBufferSize`` for more details.
    final public var inboundBufferSize: Int32 {
        get {
            return get_inbound_buffer_size ()
        }
        
        set {
            set_inbound_buffer_size (newValue)
        }
        
    }
    
    /// The outbound buffer size for connected peers. See ``WebSocketPeer/outboundBufferSize`` for more details.
    final public var outboundBufferSize: Int32 {
        get {
            return get_outbound_buffer_size ()
        }
        
        set {
            set_outbound_buffer_size (newValue)
        }
        
    }
    
    /// The maximum time each peer can stay in a connecting state before being dropped.
    final public var handshakeTimeout: Double {
        get {
            return get_handshake_timeout ()
        }
        
        set {
            set_handshake_timeout (newValue)
        }
        
    }
    
    /// The maximum number of queued packets for connected peers. See ``WebSocketPeer/maxQueuedPackets`` for more details.
    final public var maxQueuedPackets: Int32 {
        get {
            return get_max_queued_packets ()
        }
        
        set {
            set_max_queued_packets (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_create_client: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_client")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1966198364)!
            }
            
        }
        
    }()
    
    /// Starts a new multiplayer client connecting to the given `url`. TLS certificates will be verified against the hostname when connecting using the `wss://` protocol. You can pass the optional `tlsClientOptions` parameter to customize the trusted certification authorities, or disable the common name verification. See ``TLSOptions/client(trustedChain:commonNameOverride:)`` and ``TLSOptions/clientUnsafe(trustedChain:)``.
    /// 
    /// > Note: It is recommended to specify the scheme part of the URL, i.e. the `url` should start with either `ws://` or `wss://`.
    /// 
    public final func createClient (url: String, tlsClientOptions: TLSOptions? = nil)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        let gstr_url = GString (url)
        var copy_tls_client_options_handle = tlsClientOptions?.handle
        
        gi.object_method_bind_ptrcall_v (WebSocketMultiplayerPeer.method_create_client, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_url.content, &copy_tls_client_options_handle)
        return GodotError (rawValue: _result)!
        #else
        
        let gstr_url = GString (url)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_url.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: tlsClientOptions?.handle) { p1 in
            _args.append (tlsClientOptions == nil ? nil : p1)
        
                gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_create_client, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return GodotError (rawValue: _result)!
            }
        }
        
        #endif
    }
    
    fileprivate static var method_create_server: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_server")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2400822951)!
            }
            
        }
        
    }()
    
    /// Starts a new multiplayer server listening on the given `port`. You can optionally specify a `bindAddress`, and provide valid `tlsServerOptions` to use TLS. See ``TLSOptions/server(key:certificate:)``.
    public final func createServer (port: Int32, bindAddress: String = "*", tlsServerOptions: TLSOptions? = nil)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        var copy_port: Int = Int (port)
        let gstr_bind_address = GString (bindAddress)
        var copy_tls_server_options_handle = tlsServerOptions?.handle
        
        gi.object_method_bind_ptrcall_v (WebSocketMultiplayerPeer.method_create_server, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_port, &gstr_bind_address.content, &copy_tls_server_options_handle)
        return GodotError (rawValue: _result)!
        #else
        
        var copy_port: Int = Int (port)
        let gstr_bind_address = GString (bindAddress)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_port) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &gstr_bind_address.content) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: tlsServerOptions?.handle) { p2 in
                _args.append (tlsServerOptions == nil ? nil : p2)
        
                    gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_create_server, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                    return GodotError (rawValue: _result)!
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_peer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_peer")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1381378851)!
            }
            
        }
        
    }()
    
    /// Returns the ``WebSocketPeer`` associated to the given `peerId`.
    public final func getPeer (peerId: Int32)-> WebSocketPeer? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if false
        
        var copy_peer_id: Int = Int (peerId)
        
        gi.object_method_bind_ptrcall_v (WebSocketMultiplayerPeer.method_get_peer, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_peer_id)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_peer_id: Int = Int (peerId)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_peer_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_get_peer, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_get_peer_address: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_peer_address")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the IP address of the given peer.
    public final func getPeerAddress (id: Int32)-> String {
        let _result = GString ()
        #if false
        
        var copy_id: Int = Int (id)
        
        gi.object_method_bind_ptrcall_v (WebSocketMultiplayerPeer.method_get_peer_address, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_id)
        return _result.description
        #else
        
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_get_peer_address, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_get_peer_port: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_peer_port")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the remote port of the given peer.
    public final func getPeerPort (id: Int32)-> Int32 {
        var _result: Int32 = 0
        #if false
        
        var copy_id: Int = Int (id)
        
        gi.object_method_bind_ptrcall_v (WebSocketMultiplayerPeer.method_get_peer_port, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_id)
        return _result
        #else
        
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_get_peer_port, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_supported_protocols: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_supported_protocols")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_supported_protocols ()-> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_get_supported_protocols, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_supported_protocols: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_supported_protocols")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4015028928)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_supported_protocols (_ protocols: PackedStringArray) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (WebSocketMultiplayerPeer.method_set_supported_protocols, UnsafeMutableRawPointer (mutating: handle), nil, &protocols.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &protocols.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_set_supported_protocols, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_handshake_headers: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_handshake_headers")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_handshake_headers ()-> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_get_handshake_headers, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_handshake_headers: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_handshake_headers")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4015028928)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_handshake_headers (_ protocols: PackedStringArray) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (WebSocketMultiplayerPeer.method_set_handshake_headers, UnsafeMutableRawPointer (mutating: handle), nil, &protocols.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &protocols.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_set_handshake_headers, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_inbound_buffer_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_inbound_buffer_size")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_inbound_buffer_size ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_get_inbound_buffer_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_inbound_buffer_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_inbound_buffer_size")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_inbound_buffer_size (_ bufferSize: Int32) {
        #if false
        
        var copy_buffer_size: Int = Int (bufferSize)
        
        gi.object_method_bind_ptrcall_v (WebSocketMultiplayerPeer.method_set_inbound_buffer_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_buffer_size)
        
        #else
        
        var copy_buffer_size: Int = Int (bufferSize)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_buffer_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_set_inbound_buffer_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_outbound_buffer_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_outbound_buffer_size")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_outbound_buffer_size ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_get_outbound_buffer_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_outbound_buffer_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_outbound_buffer_size")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_outbound_buffer_size (_ bufferSize: Int32) {
        #if false
        
        var copy_buffer_size: Int = Int (bufferSize)
        
        gi.object_method_bind_ptrcall_v (WebSocketMultiplayerPeer.method_set_outbound_buffer_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_buffer_size)
        
        #else
        
        var copy_buffer_size: Int = Int (bufferSize)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_buffer_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_set_outbound_buffer_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_handshake_timeout: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_handshake_timeout")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_handshake_timeout ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_get_handshake_timeout, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_handshake_timeout: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_handshake_timeout")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_handshake_timeout (_ timeout: Double) {
        #if false
        
        var copy_timeout = timeout
        
        gi.object_method_bind_ptrcall_v (WebSocketMultiplayerPeer.method_set_handshake_timeout, UnsafeMutableRawPointer (mutating: handle), nil, &copy_timeout)
        
        #else
        
        var copy_timeout = timeout
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_timeout) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_set_handshake_timeout, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_max_queued_packets: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_max_queued_packets")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_queued_packets (_ maxQueuedPackets: Int32) {
        #if false
        
        var copy_max_queued_packets: Int = Int (maxQueuedPackets)
        
        gi.object_method_bind_ptrcall_v (WebSocketMultiplayerPeer.method_set_max_queued_packets, UnsafeMutableRawPointer (mutating: handle), nil, &copy_max_queued_packets)
        
        #else
        
        var copy_max_queued_packets: Int = Int (maxQueuedPackets)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_max_queued_packets) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_set_max_queued_packets, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_max_queued_packets: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_max_queued_packets")
        return withUnsafePointer (to: &WebSocketMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_queued_packets ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (WebSocketMultiplayerPeer.method_get_max_queued_packets, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

