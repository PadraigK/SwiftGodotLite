// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A wrapper class for an [url=http://enet.bespin.org/group__peer.html]ENetPeer[/url].
/// 
/// A PacketPeer implementation representing a peer of an ``ENetConnection``.
/// 
/// This class cannot be instantiated directly but can be retrieved during ``ENetConnection/service(timeout:)`` or via ``ENetConnection/getPeers()``.
/// 
/// > Note: When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
/// 
open class ENetPacketPeer: PacketPeer {
    override open class var godotClassName: StringName { "ENetPacketPeer" }
    public enum PeerState: Int64 {
        /// The peer is disconnected.
        case disconnected = 0 // STATE_DISCONNECTED
        /// The peer is currently attempting to connect.
        case connecting = 1 // STATE_CONNECTING
        /// The peer has acknowledged the connection request.
        case acknowledgingConnect = 2 // STATE_ACKNOWLEDGING_CONNECT
        /// The peer is currently connecting.
        case connectionPending = 3 // STATE_CONNECTION_PENDING
        /// The peer has successfully connected, but is not ready to communicate with yet (.stateConnected).
        case connectionSucceeded = 4 // STATE_CONNECTION_SUCCEEDED
        /// The peer is currently connected and ready to communicate with.
        case connected = 5 // STATE_CONNECTED
        /// The peer is slated to disconnect after it has no more outgoing packets to send.
        case disconnectLater = 6 // STATE_DISCONNECT_LATER
        /// The peer is currently disconnecting.
        case disconnecting = 7 // STATE_DISCONNECTING
        /// The peer has acknowledged the disconnection request.
        case acknowledgingDisconnect = 8 // STATE_ACKNOWLEDGING_DISCONNECT
        /// The peer has lost connection, but is not considered truly disconnected (as the peer didn't acknowledge the disconnection request).
        case zombie = 9 // STATE_ZOMBIE
    }
    
    public enum PeerStatistic: Int64 {
        /// Mean packet loss of reliable packets as a ratio with respect to the ``packetLossScale``.
        case packetLoss = 0 // PEER_PACKET_LOSS
        /// Packet loss variance.
        case packetLossVariance = 1 // PEER_PACKET_LOSS_VARIANCE
        /// The time at which packet loss statistics were last updated (in milliseconds since the connection started). The interval for packet loss statistics updates is 10 seconds, and at least one packet must have been sent since the last statistics update.
        case packetLossEpoch = 2 // PEER_PACKET_LOSS_EPOCH
        /// Mean packet round trip time for reliable packets.
        case roundTripTime = 3 // PEER_ROUND_TRIP_TIME
        /// Variance of the mean round trip time.
        case roundTripTimeVariance = 4 // PEER_ROUND_TRIP_TIME_VARIANCE
        /// Last recorded round trip time for a reliable packet.
        case lastRoundTripTime = 5 // PEER_LAST_ROUND_TRIP_TIME
        /// Variance of the last trip time recorded.
        case lastRoundTripTimeVariance = 6 // PEER_LAST_ROUND_TRIP_TIME_VARIANCE
        /// The peer's current throttle status.
        case packetThrottle = 7 // PEER_PACKET_THROTTLE
        /// The maximum number of unreliable packets that should not be dropped. This value is always greater than or equal to `1`. The initial value is equal to ``packetThrottleScale``.
        case packetThrottleLimit = 8 // PEER_PACKET_THROTTLE_LIMIT
        /// Internal value used to increment the packet throttle counter. The value is hardcoded to `7` and cannot be changed. You probably want to look at .peerPacketThrottleAcceleration instead.
        case packetThrottleCounter = 9 // PEER_PACKET_THROTTLE_COUNTER
        /// The time at which throttle statistics were last updated (in milliseconds since the connection started). The interval for throttle statistics updates is .peerPacketThrottleInterval.
        case packetThrottleEpoch = 10 // PEER_PACKET_THROTTLE_EPOCH
        /// The throttle's acceleration factor. Higher values will make ENet adapt to fluctuating network conditions faster, causing unrelaible packets to be sent _more_ often. The default value is `2`.
        case packetThrottleAcceleration = 11 // PEER_PACKET_THROTTLE_ACCELERATION
        /// The throttle's deceleration factor. Higher values will make ENet adapt to fluctuating network conditions faster, causing unrelaible packets to be sent _less_ often. The default value is `2`.
        case packetThrottleDeceleration = 12 // PEER_PACKET_THROTTLE_DECELERATION
        /// The interval over which the lowest mean round trip time should be measured for use by the throttle mechanism (in milliseconds). The default value is `5000`.
        case packetThrottleInterval = 13 // PEER_PACKET_THROTTLE_INTERVAL
    }
    
    /* Constants */
    /// The reference scale for packet loss. See ``getStatistic(_:)`` and .peerPacketLoss.
    public static let packetLossScale = 65536
    /// The reference value for throttle configuration. The default value is `32`. See ``throttleConfigure(interval:acceleration:deceleration:)``.
    public static let packetThrottleScale = 32
    /// Mark the packet to be sent as reliable.
    public static let flagReliable = 1
    /// Mark the packet to be sent unsequenced (unreliable).
    public static let flagUnsequenced = 2
    /// Mark the packet to be sent unreliable even if the packet is too big and needs fragmentation (increasing the chance of it being dropped).
    public static let flagUnreliableFragment = 8
    /* Methods */
    fileprivate static var method_peer_disconnect: GDExtensionMethodBindPtr = {
        let methodName = StringName ("peer_disconnect")
        return withUnsafePointer (to: &ENetPacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1995695955)!
            }
            
        }
        
    }()
    
    /// Request a disconnection from a peer. An ``ENetConnection/EventType/eventDisconnect`` will be generated during ``ENetConnection/service(timeout:)`` once the disconnection is complete.
    public final func peerDisconnect (data: Int32 = 0) {
        #if false
        
        var copy_data: Int = Int (data)
        
        gi.object_method_bind_ptrcall_v (ENetPacketPeer.method_peer_disconnect, UnsafeMutableRawPointer (mutating: handle), nil, &copy_data)
        
        #else
        
        var copy_data: Int = Int (data)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_data) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ENetPacketPeer.method_peer_disconnect, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_peer_disconnect_later: GDExtensionMethodBindPtr = {
        let methodName = StringName ("peer_disconnect_later")
        return withUnsafePointer (to: &ENetPacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1995695955)!
            }
            
        }
        
    }()
    
    /// Request a disconnection from a peer, but only after all queued outgoing packets are sent. An ``ENetConnection/EventType/eventDisconnect`` will be generated during ``ENetConnection/service(timeout:)`` once the disconnection is complete.
    public final func peerDisconnectLater (data: Int32 = 0) {
        #if false
        
        var copy_data: Int = Int (data)
        
        gi.object_method_bind_ptrcall_v (ENetPacketPeer.method_peer_disconnect_later, UnsafeMutableRawPointer (mutating: handle), nil, &copy_data)
        
        #else
        
        var copy_data: Int = Int (data)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_data) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ENetPacketPeer.method_peer_disconnect_later, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_peer_disconnect_now: GDExtensionMethodBindPtr = {
        let methodName = StringName ("peer_disconnect_now")
        return withUnsafePointer (to: &ENetPacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1995695955)!
            }
            
        }
        
    }()
    
    /// Force an immediate disconnection from a peer. No ``ENetConnection/EventType/eventDisconnect`` will be generated. The foreign peer is not guaranteed to receive the disconnect notification, and is reset immediately upon return from this function.
    public final func peerDisconnectNow (data: Int32 = 0) {
        #if false
        
        var copy_data: Int = Int (data)
        
        gi.object_method_bind_ptrcall_v (ENetPacketPeer.method_peer_disconnect_now, UnsafeMutableRawPointer (mutating: handle), nil, &copy_data)
        
        #else
        
        var copy_data: Int = Int (data)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_data) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ENetPacketPeer.method_peer_disconnect_now, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_ping: GDExtensionMethodBindPtr = {
        let methodName = StringName ("ping")
        return withUnsafePointer (to: &ENetPacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Sends a ping request to a peer. ENet automatically pings all connected peers at regular intervals, however, this function may be called to ensure more frequent ping requests.
    public final func ping () {
        gi.object_method_bind_ptrcall (ENetPacketPeer.method_ping, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_ping_interval: GDExtensionMethodBindPtr = {
        let methodName = StringName ("ping_interval")
        return withUnsafePointer (to: &ENetPacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Sets the `pingInterval` in milliseconds at which pings will be sent to a peer. Pings are used both to monitor the liveness of the connection and also to dynamically adjust the throttle during periods of low traffic so that the throttle has reasonable responsiveness during traffic spikes. The default ping interval is `500` milliseconds.
    public final func pingInterval (pingInterval: Int32) {
        #if false
        
        var copy_ping_interval: Int = Int (pingInterval)
        
        gi.object_method_bind_ptrcall_v (ENetPacketPeer.method_ping_interval, UnsafeMutableRawPointer (mutating: handle), nil, &copy_ping_interval)
        
        #else
        
        var copy_ping_interval: Int = Int (pingInterval)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_ping_interval) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ENetPacketPeer.method_ping_interval, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_reset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("reset")
        return withUnsafePointer (to: &ENetPacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Forcefully disconnects a peer. The foreign host represented by the peer is not notified of the disconnection and will timeout on its connection to the local host.
    public final func reset () {
        gi.object_method_bind_ptrcall (ENetPacketPeer.method_reset, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_send: GDExtensionMethodBindPtr = {
        let methodName = StringName ("send")
        return withUnsafePointer (to: &ENetPacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 120522849)!
            }
            
        }
        
    }()
    
    /// Queues a `packet` to be sent over the specified `channel`. See `FLAG_*` constants for available packet flags.
    public final func send (channel: Int32, packet: PackedByteArray, flags: Int32)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        var copy_channel: Int = Int (channel)
        var copy_flags: Int = Int (flags)
        
        gi.object_method_bind_ptrcall_v (ENetPacketPeer.method_send, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_channel, &packet.content, &copy_flags)
        return GodotError (rawValue: _result)!
        #else
        
        var copy_channel: Int = Int (channel)
        var copy_flags: Int = Int (flags)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_channel) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &packet.content) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_flags) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (ENetPacketPeer.method_send, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                    return GodotError (rawValue: _result)!
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_throttle_configure: GDExtensionMethodBindPtr = {
        let methodName = StringName ("throttle_configure")
        return withUnsafePointer (to: &ENetPacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1649997291)!
            }
            
        }
        
    }()
    
    /// Configures throttle parameter for a peer.
    /// 
    /// Unreliable packets are dropped by ENet in response to the varying conditions of the Internet connection to the peer. The throttle represents a probability that an unreliable packet should not be dropped and thus sent by ENet to the peer. By measuring fluctuations in round trip times of reliable packets over the specified `interval`, ENet will either increase the probability by the amount specified in the `acceleration` parameter, or decrease it by the amount specified in the `deceleration` parameter (both are ratios to ``packetThrottleScale``).
    /// 
    /// When the throttle has a value of ``packetThrottleScale``, no unreliable packets are dropped by ENet, and so 100% of all unreliable packets will be sent.
    /// 
    /// When the throttle has a value of `0`, all unreliable packets are dropped by ENet, and so 0% of all unreliable packets will be sent.
    /// 
    /// Intermediate values for the throttle represent intermediate probabilities between 0% and 100% of unreliable packets being sent. The bandwidth limits of the local and foreign hosts are taken into account to determine a sensible limit for the throttle probability above which it should not raise even in the best of conditions.
    /// 
    public final func throttleConfigure (interval: Int32, acceleration: Int32, deceleration: Int32) {
        #if false
        
        var copy_interval: Int = Int (interval)
        var copy_acceleration: Int = Int (acceleration)
        var copy_deceleration: Int = Int (deceleration)
        
        gi.object_method_bind_ptrcall_v (ENetPacketPeer.method_throttle_configure, UnsafeMutableRawPointer (mutating: handle), nil, &copy_interval, &copy_acceleration, &copy_deceleration)
        
        #else
        
        var copy_interval: Int = Int (interval)
        var copy_acceleration: Int = Int (acceleration)
        var copy_deceleration: Int = Int (deceleration)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_interval) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_acceleration) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_deceleration) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (ENetPacketPeer.method_throttle_configure, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_timeout: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_timeout")
        return withUnsafePointer (to: &ENetPacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1649997291)!
            }
            
        }
        
    }()
    
    /// Sets the timeout parameters for a peer. The timeout parameters control how and when a peer will timeout from a failure to acknowledge reliable traffic. Timeout values are expressed in milliseconds.
    /// 
    /// The `timeout` is a factor that, multiplied by a value based on the average round trip time, will determine the timeout limit for a reliable packet. When that limit is reached, the timeout will be doubled, and the peer will be disconnected if that limit has reached `timeoutMin`. The `timeoutMax` parameter, on the other hand, defines a fixed timeout for which any packet must be acknowledged or the peer will be dropped.
    /// 
    public final func setTimeout (_ timeout: Int32, timeoutMin: Int32, timeoutMax: Int32) {
        #if false
        
        var copy_timeout: Int = Int (timeout)
        var copy_timeout_min: Int = Int (timeoutMin)
        var copy_timeout_max: Int = Int (timeoutMax)
        
        gi.object_method_bind_ptrcall_v (ENetPacketPeer.method_set_timeout, UnsafeMutableRawPointer (mutating: handle), nil, &copy_timeout, &copy_timeout_min, &copy_timeout_max)
        
        #else
        
        var copy_timeout: Int = Int (timeout)
        var copy_timeout_min: Int = Int (timeoutMin)
        var copy_timeout_max: Int = Int (timeoutMax)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_timeout) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_timeout_min) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_timeout_max) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (ENetPacketPeer.method_set_timeout, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_remote_address: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_remote_address")
        return withUnsafePointer (to: &ENetPacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the IP address of this peer.
    public final func getRemoteAddress ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (ENetPacketPeer.method_get_remote_address, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_remote_port: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_remote_port")
        return withUnsafePointer (to: &ENetPacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the remote port of this peer.
    public final func getRemotePort ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (ENetPacketPeer.method_get_remote_port, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_statistic: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_statistic")
        return withUnsafePointer (to: &ENetPacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1642578323)!
            }
            
        }
        
    }()
    
    /// Returns the requested `statistic` for this peer. See ``ENetPacketPeer/PeerStatistic``.
    public final func getStatistic (_ statistic: ENetPacketPeer.PeerStatistic)-> Double {
        var _result: Double = 0.0
        #if false
        
        var copy_statistic = Int64 (statistic.rawValue)
        
        gi.object_method_bind_ptrcall_v (ENetPacketPeer.method_get_statistic, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_statistic)
        return _result
        #else
        
        var copy_statistic = Int64 (statistic.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_statistic) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ENetPacketPeer.method_get_statistic, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_state: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_state")
        return withUnsafePointer (to: &ENetPacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 711068532)!
            }
            
        }
        
    }()
    
    /// Returns the current peer state. See ``ENetPacketPeer/PeerState``.
    public final func getState ()-> ENetPacketPeer.PeerState {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (ENetPacketPeer.method_get_state, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return ENetPacketPeer.PeerState (rawValue: _result)!
    }
    
    fileprivate static var method_get_channels: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_channels")
        return withUnsafePointer (to: &ENetPacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of channels allocated for communication with peer.
    public final func getChannels ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (ENetPacketPeer.method_get_channels, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_active: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_active")
        return withUnsafePointer (to: &ENetPacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the peer is currently active (i.e. the associated ``ENetConnection`` is still valid).
    public final func isActive ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (ENetPacketPeer.method_is_active, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

