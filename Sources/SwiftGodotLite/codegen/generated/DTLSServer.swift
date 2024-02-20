// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Helper class to implement a DTLS server.
/// 
/// This class is used to store the state of a DTLS server. Upon ``setup(serverOptions:)`` it converts connected ``PacketPeerUDP`` to ``PacketPeerDTLS`` accepting them via ``takeConnection(udpPeer:)`` as DTLS clients. Under the hood, this class is used to store the DTLS state and cookies of the server. The reason of why the state and cookies are needed is outside of the scope of this documentation.
/// 
/// Below a small example of how to use it:
/// 
open class DTLSServer: RefCounted {
    override open class var godotClassName: StringName { "DTLSServer" }
    /* Methods */
    fileprivate static var method_setup: GDExtensionMethodBindPtr = {
        let methodName = StringName ("setup")
        return withUnsafePointer (to: &DTLSServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1262296096)!
            }
            
        }
        
    }()
    
    /// Setup the DTLS server to use the given `serverOptions`. See ``TLSOptions/server(key:certificate:)``.
    public final func setup (serverOptions: TLSOptions?)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        var copy_server_options_handle = serverOptions?.handle
        
        gi.object_method_bind_ptrcall_v (DTLSServer.method_setup, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_server_options_handle)
        return GodotError (rawValue: _result)!
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: serverOptions?.handle) { p0 in
        _args.append (serverOptions == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (DTLSServer.method_setup, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_take_connection: GDExtensionMethodBindPtr = {
        let methodName = StringName ("take_connection")
        return withUnsafePointer (to: &DTLSServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3946580474)!
            }
            
        }
        
    }()
    
    /// Try to initiate the DTLS handshake with the given `udpPeer` which must be already connected (see ``PacketPeerUDP/connectToHost(_:port:)``).
    /// 
    /// > Note: You must check that the state of the return PacketPeerUDP is ``PacketPeerDTLS/Status/handshaking``, as it is normal that 50% of the new connections will be invalid due to cookie exchange.
    /// 
    public final func takeConnection (udpPeer: PacketPeerUDP?)-> PacketPeerDTLS? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        var copy_udp_peer_handle = udpPeer?.handle
        
        gi.object_method_bind_ptrcall_v (DTLSServer.method_take_connection, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_udp_peer_handle)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: udpPeer?.handle) { p0 in
        _args.append (udpPeer == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (DTLSServer.method_take_connection, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
}

