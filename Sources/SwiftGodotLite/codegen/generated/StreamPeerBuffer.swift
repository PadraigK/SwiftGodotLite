// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A stream peer used to handle binary data streams.
/// 
/// A data buffer stream peer that uses a byte array as the stream. This object can be used to handle binary data from network sessions. To handle binary data stored in files, ``FileAccess`` can be used directly.
/// 
/// A ``StreamPeerBuffer`` object keeps an internal cursor which is the offset in bytes to the start of the buffer. Get and put operations are performed at the cursor position and will move the cursor accordingly.
/// 
open class StreamPeerBuffer: StreamPeer {
    override open class var godotClassName: StringName { "StreamPeerBuffer" }
    
    /* Properties */
    
    /// The underlying data buffer. Setting this value resets the cursor.
    final public var dataArray: PackedByteArray {
        get {
            return get_data_array ()
        }
        
        set {
            set_data_array (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_seek: GDExtensionMethodBindPtr = {
        let methodName = StringName ("seek")
        return withUnsafePointer (to: &StreamPeerBuffer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Moves the cursor to the specified position. `position` must be a valid index of ``dataArray``.
    public final func seek (position: Int32) {
        #if false
        
        var copy_position: Int = Int (position)
        
        gi.object_method_bind_ptrcall_v (StreamPeerBuffer.method_seek, UnsafeMutableRawPointer (mutating: handle), nil, &copy_position)
        
        #else
        
        var copy_position: Int = Int (position)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_position) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (StreamPeerBuffer.method_seek, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_size")
        return withUnsafePointer (to: &StreamPeerBuffer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the size of ``dataArray``.
    public final func getSize ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (StreamPeerBuffer.method_get_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_position")
        return withUnsafePointer (to: &StreamPeerBuffer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the current cursor position.
    public final func getPosition ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (StreamPeerBuffer.method_get_position, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_resize: GDExtensionMethodBindPtr = {
        let methodName = StringName ("resize")
        return withUnsafePointer (to: &StreamPeerBuffer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Resizes the ``dataArray``. This _doesn't_ update the cursor.
    public final func resize (size: Int32) {
        #if false
        
        var copy_size: Int = Int (size)
        
        gi.object_method_bind_ptrcall_v (StreamPeerBuffer.method_resize, UnsafeMutableRawPointer (mutating: handle), nil, &copy_size)
        
        #else
        
        var copy_size: Int = Int (size)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (StreamPeerBuffer.method_resize, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_data_array: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_data_array")
        return withUnsafePointer (to: &StreamPeerBuffer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2971499966)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_data_array (_ data: PackedByteArray) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (StreamPeerBuffer.method_set_data_array, UnsafeMutableRawPointer (mutating: handle), nil, &data.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &data.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (StreamPeerBuffer.method_set_data_array, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_data_array: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_data_array")
        return withUnsafePointer (to: &StreamPeerBuffer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2362200018)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_data_array ()-> PackedByteArray {
        let _result: PackedByteArray = PackedByteArray ()
        gi.object_method_bind_ptrcall (StreamPeerBuffer.method_get_data_array, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_clear: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear")
        return withUnsafePointer (to: &StreamPeerBuffer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the ``dataArray`` and resets the cursor.
    public final func clear () {
        gi.object_method_bind_ptrcall (StreamPeerBuffer.method_clear, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_duplicate: GDExtensionMethodBindPtr = {
        let methodName = StringName ("duplicate")
        return withUnsafePointer (to: &StreamPeerBuffer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2474064677)!
            }
            
        }
        
    }()
    
    /// Returns a new ``StreamPeerBuffer`` with the same ``dataArray`` content.
    public final func duplicate ()-> StreamPeerBuffer? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (StreamPeerBuffer.method_duplicate, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

