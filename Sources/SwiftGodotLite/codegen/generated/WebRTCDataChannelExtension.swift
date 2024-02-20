// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

open class WebRTCDataChannelExtension: WebRTCDataChannel {
    override open class var godotClassName: StringName { "WebRTCDataChannelExtension" }
    /* Methods */
    /// 
    @_documentation(visibility: public)
    open func _getAvailablePacketCount ()-> Int32 {
        return 0
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getMaxPacketSize ()-> Int32 {
        return 0
    }
    
    /// 
    @_documentation(visibility: public)
    open func _poll ()-> GodotError {
        return .ok
    }
    
    /// 
    @_documentation(visibility: public)
    open func _close () {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _setWriteMode (pWriteMode: WebRTCDataChannel.WriteMode) {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getWriteMode ()-> WebRTCDataChannel.WriteMode {
        return WebRTCDataChannel.WriteMode(rawValue: 0)!
    }
    
    /// 
    @_documentation(visibility: public)
    open func _wasStringPacket ()-> Bool {
        return false
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getReadyState ()-> WebRTCDataChannel.ChannelState {
        return WebRTCDataChannel.ChannelState(rawValue: 0)!
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getLabel ()-> String {
        return String ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _isOrdered ()-> Bool {
        return false
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getId ()-> Int32 {
        return 0
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getMaxPacketLifeTime ()-> Int32 {
        return 0
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getMaxRetransmits ()-> Int32 {
        return 0
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getProtocol ()-> String {
        return String ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _isNegotiated ()-> Bool {
        return false
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getBufferedAmount ()-> Int32 {
        return 0
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_close":
                return _WebRTCDataChannelExtension_proxy_close
            case "_get_available_packet_count":
                return _WebRTCDataChannelExtension_proxy_get_available_packet_count
            case "_get_buffered_amount":
                return _WebRTCDataChannelExtension_proxy_get_buffered_amount
            case "_get_id":
                return _WebRTCDataChannelExtension_proxy_get_id
            case "_get_label":
                return _WebRTCDataChannelExtension_proxy_get_label
            case "_get_max_packet_life_time":
                return _WebRTCDataChannelExtension_proxy_get_max_packet_life_time
            case "_get_max_packet_size":
                return _WebRTCDataChannelExtension_proxy_get_max_packet_size
            case "_get_max_retransmits":
                return _WebRTCDataChannelExtension_proxy_get_max_retransmits
            case "_get_protocol":
                return _WebRTCDataChannelExtension_proxy_get_protocol
            case "_get_ready_state":
                return _WebRTCDataChannelExtension_proxy_get_ready_state
            case "_get_write_mode":
                return _WebRTCDataChannelExtension_proxy_get_write_mode
            case "_is_negotiated":
                return _WebRTCDataChannelExtension_proxy_is_negotiated
            case "_is_ordered":
                return _WebRTCDataChannelExtension_proxy_is_ordered
            case "_poll":
                return _WebRTCDataChannelExtension_proxy_poll
            case "_set_write_mode":
                return _WebRTCDataChannelExtension_proxy_set_write_mode
            case "_was_string_packet":
                return _WebRTCDataChannelExtension_proxy_was_string_packet
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _WebRTCDataChannelExtension_proxy_close (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<WebRTCDataChannelExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._close ()
}

func _WebRTCDataChannelExtension_proxy_get_available_packet_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<WebRTCDataChannelExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getAvailablePacketCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_get_buffered_amount (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<WebRTCDataChannelExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getBufferedAmount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_get_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<WebRTCDataChannelExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getId ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_get_label (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<WebRTCDataChannelExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = GString (swiftObject._getLabel ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _WebRTCDataChannelExtension_proxy_get_max_packet_life_time (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<WebRTCDataChannelExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getMaxPacketLifeTime ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_get_max_packet_size (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<WebRTCDataChannelExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getMaxPacketSize ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_get_max_retransmits (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<WebRTCDataChannelExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getMaxRetransmits ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_get_protocol (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<WebRTCDataChannelExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = GString (swiftObject._getProtocol ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _WebRTCDataChannelExtension_proxy_get_ready_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<WebRTCDataChannelExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getReadyState ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_get_write_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<WebRTCDataChannelExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getWriteMode ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_is_negotiated (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<WebRTCDataChannelExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._isNegotiated ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _WebRTCDataChannelExtension_proxy_is_ordered (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<WebRTCDataChannelExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._isOrdered ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _WebRTCDataChannelExtension_proxy_poll (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<WebRTCDataChannelExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._poll ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_set_write_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<WebRTCDataChannelExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._setWriteMode (pWriteMode: args [0]!.assumingMemoryBound (to: WebRTCDataChannel.WriteMode.self).pointee)
}

func _WebRTCDataChannelExtension_proxy_was_string_packet (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<WebRTCDataChannelExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._wasStringPacket ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

