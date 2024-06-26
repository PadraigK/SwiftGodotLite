// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

open class GLTFBufferView: Resource {
    override open class var godotClassName: StringName { "GLTFBufferView" }
    
    /* Properties */
    
    final public var buffer: Int32 {
        get {
            return get_buffer ()
        }
        
        set {
            set_buffer (newValue)
        }
        
    }
    
    final public var byteOffset: Int32 {
        get {
            return get_byte_offset ()
        }
        
        set {
            set_byte_offset (newValue)
        }
        
    }
    
    final public var byteLength: Int32 {
        get {
            return get_byte_length ()
        }
        
        set {
            set_byte_length (newValue)
        }
        
    }
    
    final public var byteStride: Int32 {
        get {
            return get_byte_stride ()
        }
        
        set {
            set_byte_stride (newValue)
        }
        
    }
    
    final public var indices: Bool {
        get {
            return get_indices ()
        }
        
        set {
            set_indices (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_buffer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_buffer")
        return withUnsafePointer (to: &GLTFBufferView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_buffer ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GLTFBufferView.method_get_buffer, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_buffer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_buffer")
        return withUnsafePointer (to: &GLTFBufferView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_buffer (_ buffer: Int32) {
        #if false
        
        var copy_buffer: Int = Int (buffer)
        
        gi.object_method_bind_ptrcall_v (GLTFBufferView.method_set_buffer, UnsafeMutableRawPointer (mutating: handle), nil, &copy_buffer)
        
        #else
        
        var copy_buffer: Int = Int (buffer)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_buffer) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFBufferView.method_set_buffer, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_byte_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_byte_offset")
        return withUnsafePointer (to: &GLTFBufferView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_byte_offset ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GLTFBufferView.method_get_byte_offset, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_byte_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_byte_offset")
        return withUnsafePointer (to: &GLTFBufferView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_byte_offset (_ byteOffset: Int32) {
        #if false
        
        var copy_byte_offset: Int = Int (byteOffset)
        
        gi.object_method_bind_ptrcall_v (GLTFBufferView.method_set_byte_offset, UnsafeMutableRawPointer (mutating: handle), nil, &copy_byte_offset)
        
        #else
        
        var copy_byte_offset: Int = Int (byteOffset)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_byte_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFBufferView.method_set_byte_offset, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_byte_length: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_byte_length")
        return withUnsafePointer (to: &GLTFBufferView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_byte_length ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GLTFBufferView.method_get_byte_length, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_byte_length: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_byte_length")
        return withUnsafePointer (to: &GLTFBufferView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_byte_length (_ byteLength: Int32) {
        #if false
        
        var copy_byte_length: Int = Int (byteLength)
        
        gi.object_method_bind_ptrcall_v (GLTFBufferView.method_set_byte_length, UnsafeMutableRawPointer (mutating: handle), nil, &copy_byte_length)
        
        #else
        
        var copy_byte_length: Int = Int (byteLength)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_byte_length) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFBufferView.method_set_byte_length, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_byte_stride: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_byte_stride")
        return withUnsafePointer (to: &GLTFBufferView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_byte_stride ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GLTFBufferView.method_get_byte_stride, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_byte_stride: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_byte_stride")
        return withUnsafePointer (to: &GLTFBufferView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_byte_stride (_ byteStride: Int32) {
        #if false
        
        var copy_byte_stride: Int = Int (byteStride)
        
        gi.object_method_bind_ptrcall_v (GLTFBufferView.method_set_byte_stride, UnsafeMutableRawPointer (mutating: handle), nil, &copy_byte_stride)
        
        #else
        
        var copy_byte_stride: Int = Int (byteStride)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_byte_stride) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFBufferView.method_set_byte_stride, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_indices: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_indices")
        return withUnsafePointer (to: &GLTFBufferView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_indices ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (GLTFBufferView.method_get_indices, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_indices: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_indices")
        return withUnsafePointer (to: &GLTFBufferView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_indices (_ indices: Bool) {
        #if false
        
        var copy_indices = indices
        
        gi.object_method_bind_ptrcall_v (GLTFBufferView.method_set_indices, UnsafeMutableRawPointer (mutating: handle), nil, &copy_indices)
        
        #else
        
        var copy_indices = indices
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_indices) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFBufferView.method_set_indices, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
}

