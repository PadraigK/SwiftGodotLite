// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Abstraction and base class for packet-based protocols.
/// 
/// PacketPeer is an abstraction and base class for packet-based protocols (such as UDP). It provides an API for sending and receiving packets both as raw data or variables. This makes it easy to transfer data over a protocol, without having to encode data as low-level bytes or having to worry about network ordering.
/// 
/// > Note: When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
/// 
open class PacketPeer: RefCounted {
    override open class var godotClassName: StringName { "PacketPeer" }
    
    /* Properties */
    
    /// Maximum buffer size allowed when encoding ``Variant``s. Raise this value to support heavier memory allocations.
    /// 
    /// The ``putVar(_:fullObjects:)`` method allocates memory on the stack, and the buffer used will grow automatically to the closest power of two to match the size of the ``Variant``. If the ``Variant`` is bigger than ``encodeBufferMaxSize``, the method will error out with ``GodotError/errOutOfMemory``.
    /// 
    final public var encodeBufferMaxSize: Int32 {
        get {
            return get_encode_buffer_max_size ()
        }
        
        set {
            set_encode_buffer_max_size (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_var: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_var")
        return withUnsafePointer (to: &PacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3442865206)!
            }
            
        }
        
    }()
    
    /// Gets a Variant. If `allowObjects` is `true`, decoding objects is allowed.
    /// 
    /// Internally, this uses the same decoding mechanism as the ``@GlobalScope.bytes_to_var`` method.
    /// 
    /// > Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
    /// 
    public final func getVar (allowObjects: Bool = false)-> Variant {
        let _result: Variant = Variant ()
        #if false
        
        var copy_allow_objects = allowObjects
        
        gi.object_method_bind_ptrcall_v (PacketPeer.method_get_var, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_allow_objects)
        return _result
        #else
        
        var copy_allow_objects = allowObjects
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_allow_objects) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PacketPeer.method_get_var, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_put_var: GDExtensionMethodBindPtr = {
        let methodName = StringName ("put_var")
        return withUnsafePointer (to: &PacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2436251611)!
            }
            
        }
        
    }()
    
    /// Sends a ``Variant`` as a packet. If `fullObjects` is `true`, encoding objects is allowed (and can potentially include code).
    /// 
    /// Internally, this uses the same encoding mechanism as the ``@GlobalScope.var_to_bytes`` method.
    /// 
    public final func putVar (_ `var`: Variant, fullObjects: Bool = false)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        var copy_full_objects = fullObjects
        
        gi.object_method_bind_ptrcall_v (PacketPeer.method_put_var, UnsafeMutableRawPointer (mutating: handle), &_result, &`var`.content, &copy_full_objects)
        return GodotError (rawValue: _result)!
        #else
        
        var copy_full_objects = fullObjects
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &`var`.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_full_objects) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (PacketPeer.method_put_var, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return GodotError (rawValue: _result)!
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_packet: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_packet")
        return withUnsafePointer (to: &PacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2115431945)!
            }
            
        }
        
    }()
    
    /// Gets a raw packet.
    public final func getPacket ()-> PackedByteArray {
        let _result: PackedByteArray = PackedByteArray ()
        gi.object_method_bind_ptrcall (PacketPeer.method_get_packet, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_put_packet: GDExtensionMethodBindPtr = {
        let methodName = StringName ("put_packet")
        return withUnsafePointer (to: &PacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 680677267)!
            }
            
        }
        
    }()
    
    /// Sends a raw packet.
    public final func putPacket (buffer: PackedByteArray)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        
        gi.object_method_bind_ptrcall_v (PacketPeer.method_put_packet, UnsafeMutableRawPointer (mutating: handle), &_result, &buffer.content)
        return GodotError (rawValue: _result)!
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &buffer.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PacketPeer.method_put_packet, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_get_packet_error: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_packet_error")
        return withUnsafePointer (to: &PacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3185525595)!
            }
            
        }
        
    }()
    
    /// Returns the error state of the last packet received (via ``getPacket()`` and ``getVar(allowObjects:)``).
    public final func getPacketError ()-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (PacketPeer.method_get_packet_error, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_get_available_packet_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_available_packet_count")
        return withUnsafePointer (to: &PacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of packets currently available in the ring-buffer.
    public final func getAvailablePacketCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (PacketPeer.method_get_available_packet_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_encode_buffer_max_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_encode_buffer_max_size")
        return withUnsafePointer (to: &PacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_encode_buffer_max_size ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (PacketPeer.method_get_encode_buffer_max_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_encode_buffer_max_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_encode_buffer_max_size")
        return withUnsafePointer (to: &PacketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_encode_buffer_max_size (_ maxSize: Int32) {
        #if false
        
        var copy_max_size: Int = Int (maxSize)
        
        gi.object_method_bind_ptrcall_v (PacketPeer.method_set_encode_buffer_max_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_max_size)
        
        #else
        
        var copy_max_size: Int = Int (maxSize)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_max_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PacketPeer.method_set_encode_buffer_max_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
}

