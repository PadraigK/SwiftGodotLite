// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A simple interface to create a peer-to-peer mesh network composed of ``WebRTCPeerConnection`` that is compatible with the ``MultiplayerAPI``.
/// 
/// This class constructs a full mesh of ``WebRTCPeerConnection`` (one connection for each peer) that can be used as a ``MultiplayerAPI/multiplayerPeer``.
/// 
/// You can add each ``WebRTCPeerConnection`` via ``addPeer(_:peerId:unreliableLifetime:)`` or remove them via ``removePeer(peerId:)``. Peers must be added in ``WebRTCPeerConnection/ConnectionState/stateNew`` state to allow it to create the appropriate channels. This class will not create offers nor set descriptions, it will only poll them, and notify connections and disconnections.
/// 
/// When creating the peer via ``createClient(peerId:channelsConfig:)`` or ``createServer(channelsConfig:)`` the ``MultiplayerPeer/isServerRelaySupported()`` method will return `true` enabling peer exchange and packet relaying when supported by the ``MultiplayerAPI`` implementation.
/// 
/// > Note: When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
/// 
open class WebRTCMultiplayerPeer: MultiplayerPeer {
    override open class var godotClassName: StringName { "WebRTCMultiplayerPeer" }
    /* Methods */
    fileprivate static var method_create_server: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_server")
        return withUnsafePointer (to: &WebRTCMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2865356025)!
            }
            
        }
        
    }()
    
    /// Initialize the multiplayer peer as a server (with unique ID of `1`). This mode enables ``MultiplayerPeer/isServerRelaySupported()``, allowing the upper ``MultiplayerAPI`` layer to perform peer exchange and packet relaying.
    /// 
    /// You can optionally specify a `channelsConfig` array of ``MultiplayerPeer.TransferMode`` which will be used to create extra channels (WebRTC only supports one transfer mode per channel).
    /// 
    public final func createServer (channelsConfig: GArray = GArray ())-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        
        gi.object_method_bind_ptrcall_v (WebRTCMultiplayerPeer.method_create_server, UnsafeMutableRawPointer (mutating: handle), &_result, &channelsConfig.content)
        return GodotError (rawValue: _result)!
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &channelsConfig.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebRTCMultiplayerPeer.method_create_server, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_create_client: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_client")
        return withUnsafePointer (to: &WebRTCMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2641732907)!
            }
            
        }
        
    }()
    
    /// Initialize the multiplayer peer as a client with the given `peerId` (must be between 2 and 2147483647). In this mode, you should only call ``addPeer(_:peerId:unreliableLifetime:)`` once and with `peerId` of `1`. This mode enables ``MultiplayerPeer/isServerRelaySupported()``, allowing the upper ``MultiplayerAPI`` layer to perform peer exchange and packet relaying.
    /// 
    /// You can optionally specify a `channelsConfig` array of ``MultiplayerPeer.TransferMode`` which will be used to create extra channels (WebRTC only supports one transfer mode per channel).
    /// 
    public final func createClient (peerId: Int32, channelsConfig: GArray = GArray ())-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        var copy_peer_id: Int = Int (peerId)
        
        gi.object_method_bind_ptrcall_v (WebRTCMultiplayerPeer.method_create_client, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_peer_id, &channelsConfig.content)
        return GodotError (rawValue: _result)!
        #else
        
        var copy_peer_id: Int = Int (peerId)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_peer_id) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &channelsConfig.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (WebRTCMultiplayerPeer.method_create_client, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return GodotError (rawValue: _result)!
            }
        }
        
        #endif
    }
    
    fileprivate static var method_create_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_mesh")
        return withUnsafePointer (to: &WebRTCMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2641732907)!
            }
            
        }
        
    }()
    
    /// Initialize the multiplayer peer as a mesh (i.e. all peers connect to each other) with the given `peerId` (must be between 1 and 2147483647).
    public final func createMesh (peerId: Int32, channelsConfig: GArray = GArray ())-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        var copy_peer_id: Int = Int (peerId)
        
        gi.object_method_bind_ptrcall_v (WebRTCMultiplayerPeer.method_create_mesh, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_peer_id, &channelsConfig.content)
        return GodotError (rawValue: _result)!
        #else
        
        var copy_peer_id: Int = Int (peerId)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_peer_id) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &channelsConfig.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (WebRTCMultiplayerPeer.method_create_mesh, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return GodotError (rawValue: _result)!
            }
        }
        
        #endif
    }
    
    fileprivate static var method_add_peer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_peer")
        return withUnsafePointer (to: &WebRTCMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4078953270)!
            }
            
        }
        
    }()
    
    /// Add a new peer to the mesh with the given `peerId`. The ``WebRTCPeerConnection`` must be in state ``WebRTCPeerConnection/ConnectionState/stateNew``.
    /// 
    /// Three channels will be created for reliable, unreliable, and ordered transport. The value of `unreliableLifetime` will be passed to the `"maxPacketLifetime"` option when creating unreliable and ordered channels (see ``WebRTCPeerConnection/createDataChannel(label:options:)``).
    /// 
    public final func addPeer (_ peer: WebRTCPeerConnection?, peerId: Int32, unreliableLifetime: Int32 = 1)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        var copy_peer_id: Int = Int (peerId)
        var copy_unreliable_lifetime: Int = Int (unreliableLifetime)
        var copy_peer_handle = peer?.handle
        
        gi.object_method_bind_ptrcall_v (WebRTCMultiplayerPeer.method_add_peer, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_peer_handle, &copy_peer_id, &copy_unreliable_lifetime)
        return GodotError (rawValue: _result)!
        #else
        
        var copy_peer_id: Int = Int (peerId)
        var copy_unreliable_lifetime: Int = Int (unreliableLifetime)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: peer?.handle) { p0 in
        _args.append (peer == nil ? nil : p0)
            return withUnsafePointer (to: &copy_peer_id) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_unreliable_lifetime) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (WebRTCMultiplayerPeer.method_add_peer, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                    return GodotError (rawValue: _result)!
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_remove_peer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_peer")
        return withUnsafePointer (to: &WebRTCMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Remove the peer with given `peerId` from the mesh. If the peer was connected, and [signal MultiplayerPeer.peer_connected] was emitted for it, then [signal MultiplayerPeer.peer_disconnected] will be emitted.
    public final func removePeer (peerId: Int32) {
        #if false
        
        var copy_peer_id: Int = Int (peerId)
        
        gi.object_method_bind_ptrcall_v (WebRTCMultiplayerPeer.method_remove_peer, UnsafeMutableRawPointer (mutating: handle), nil, &copy_peer_id)
        
        #else
        
        var copy_peer_id: Int = Int (peerId)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_peer_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebRTCMultiplayerPeer.method_remove_peer, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_has_peer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_peer")
        return withUnsafePointer (to: &WebRTCMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3067735520)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given `peerId` is in the peers map (it might not be connected though).
    public final func hasPeer (peerId: Int32)-> Bool {
        var _result: Bool = false
        #if false
        
        var copy_peer_id: Int = Int (peerId)
        
        gi.object_method_bind_ptrcall_v (WebRTCMultiplayerPeer.method_has_peer, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_peer_id)
        return _result
        #else
        
        var copy_peer_id: Int = Int (peerId)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_peer_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebRTCMultiplayerPeer.method_has_peer, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_peer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_peer")
        return withUnsafePointer (to: &WebRTCMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3554694381)!
            }
            
        }
        
    }()
    
    /// Returns a dictionary representation of the peer with given `peerId` with three keys. `"connection"` containing the ``WebRTCPeerConnection`` to this peer, `"channels"` an array of three ``WebRTCDataChannel``, and `"connected"` a boolean representing if the peer connection is currently connected (all three channels are open).
    public final func getPeer (peerId: Int32)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if false
        
        var copy_peer_id: Int = Int (peerId)
        
        gi.object_method_bind_ptrcall_v (WebRTCMultiplayerPeer.method_get_peer, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_peer_id)
        return _result
        #else
        
        var copy_peer_id: Int = Int (peerId)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_peer_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebRTCMultiplayerPeer.method_get_peer, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_peers: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_peers")
        return withUnsafePointer (to: &WebRTCMultiplayerPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2382534195)!
            }
            
        }
        
    }()
    
    /// Returns a dictionary which keys are the peer ids and values the peer representation as in ``getPeer(peerId:)``.
    public final func getPeers ()-> GDictionary {
        let _result: GDictionary = GDictionary ()
        gi.object_method_bind_ptrcall (WebRTCMultiplayerPeer.method_get_peers, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
}

