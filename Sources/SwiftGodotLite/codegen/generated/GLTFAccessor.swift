// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

open class GLTFAccessor: Resource {
    override open class var godotClassName: StringName { "GLTFAccessor" }
    
    /* Properties */
    
    final public var bufferView: Int32 {
        get {
            return get_buffer_view ()
        }
        
        set {
            set_buffer_view (newValue)
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
    
    final public var componentType: Int32 {
        get {
            return get_component_type ()
        }
        
        set {
            set_component_type (newValue)
        }
        
    }
    
    final public var normalized: Bool {
        get {
            return get_normalized ()
        }
        
        set {
            set_normalized (newValue)
        }
        
    }
    
    final public var count: Int32 {
        get {
            return get_count ()
        }
        
        set {
            set_count (newValue)
        }
        
    }
    
    final public var type: Int32 {
        get {
            return get_type ()
        }
        
        set {
            set_type (newValue)
        }
        
    }
    
    final public var min: PackedFloat64Array {
        get {
            return get_min ()
        }
        
        set {
            set_min (newValue)
        }
        
    }
    
    final public var max: PackedFloat64Array {
        get {
            return get_max ()
        }
        
        set {
            set_max (newValue)
        }
        
    }
    
    final public var sparseCount: Int32 {
        get {
            return get_sparse_count ()
        }
        
        set {
            set_sparse_count (newValue)
        }
        
    }
    
    final public var sparseIndicesBufferView: Int32 {
        get {
            return get_sparse_indices_buffer_view ()
        }
        
        set {
            set_sparse_indices_buffer_view (newValue)
        }
        
    }
    
    final public var sparseIndicesByteOffset: Int32 {
        get {
            return get_sparse_indices_byte_offset ()
        }
        
        set {
            set_sparse_indices_byte_offset (newValue)
        }
        
    }
    
    final public var sparseIndicesComponentType: Int32 {
        get {
            return get_sparse_indices_component_type ()
        }
        
        set {
            set_sparse_indices_component_type (newValue)
        }
        
    }
    
    final public var sparseValuesBufferView: Int32 {
        get {
            return get_sparse_values_buffer_view ()
        }
        
        set {
            set_sparse_values_buffer_view (newValue)
        }
        
    }
    
    final public var sparseValuesByteOffset: Int32 {
        get {
            return get_sparse_values_byte_offset ()
        }
        
        set {
            set_sparse_values_byte_offset (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_buffer_view: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_buffer_view")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_buffer_view ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GLTFAccessor.method_get_buffer_view, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_buffer_view: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_buffer_view")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_buffer_view (_ bufferView: Int32) {
        #if false
        
        var copy_buffer_view: Int = Int (bufferView)
        
        gi.object_method_bind_ptrcall_v (GLTFAccessor.method_set_buffer_view, UnsafeMutableRawPointer (mutating: handle), nil, &copy_buffer_view)
        
        #else
        
        var copy_buffer_view: Int = Int (bufferView)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_buffer_view) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFAccessor.method_set_buffer_view, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_byte_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_byte_offset")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_byte_offset ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GLTFAccessor.method_get_byte_offset, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_byte_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_byte_offset")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_byte_offset (_ byteOffset: Int32) {
        #if false
        
        var copy_byte_offset: Int = Int (byteOffset)
        
        gi.object_method_bind_ptrcall_v (GLTFAccessor.method_set_byte_offset, UnsafeMutableRawPointer (mutating: handle), nil, &copy_byte_offset)
        
        #else
        
        var copy_byte_offset: Int = Int (byteOffset)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_byte_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFAccessor.method_set_byte_offset, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_component_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_component_type")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_component_type ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GLTFAccessor.method_get_component_type, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_component_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_component_type")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_component_type (_ componentType: Int32) {
        #if false
        
        var copy_component_type: Int = Int (componentType)
        
        gi.object_method_bind_ptrcall_v (GLTFAccessor.method_set_component_type, UnsafeMutableRawPointer (mutating: handle), nil, &copy_component_type)
        
        #else
        
        var copy_component_type: Int = Int (componentType)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_component_type) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFAccessor.method_set_component_type, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_normalized: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_normalized")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_normalized ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (GLTFAccessor.method_get_normalized, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_normalized: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_normalized")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_normalized (_ normalized: Bool) {
        #if false
        
        var copy_normalized = normalized
        
        gi.object_method_bind_ptrcall_v (GLTFAccessor.method_set_normalized, UnsafeMutableRawPointer (mutating: handle), nil, &copy_normalized)
        
        #else
        
        var copy_normalized = normalized
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_normalized) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFAccessor.method_set_normalized, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_count")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_count ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GLTFAccessor.method_get_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_count")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_count (_ count: Int32) {
        #if false
        
        var copy_count: Int = Int (count)
        
        gi.object_method_bind_ptrcall_v (GLTFAccessor.method_set_count, UnsafeMutableRawPointer (mutating: handle), nil, &copy_count)
        
        #else
        
        var copy_count: Int = Int (count)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_count) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFAccessor.method_set_count, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_type")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_type ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GLTFAccessor.method_get_type, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_type")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_type (_ type: Int32) {
        #if false
        
        var copy_type: Int = Int (type)
        
        gi.object_method_bind_ptrcall_v (GLTFAccessor.method_set_type, UnsafeMutableRawPointer (mutating: handle), nil, &copy_type)
        
        #else
        
        var copy_type: Int = Int (type)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFAccessor.method_set_type, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_min: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_min")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 148677866)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_min ()-> PackedFloat64Array {
        let _result: PackedFloat64Array = PackedFloat64Array ()
        gi.object_method_bind_ptrcall (GLTFAccessor.method_get_min, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_min: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_min")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2576592201)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_min (_ min: PackedFloat64Array) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (GLTFAccessor.method_set_min, UnsafeMutableRawPointer (mutating: handle), nil, &min.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &min.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFAccessor.method_set_min, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_max: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_max")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 148677866)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max ()-> PackedFloat64Array {
        let _result: PackedFloat64Array = PackedFloat64Array ()
        gi.object_method_bind_ptrcall (GLTFAccessor.method_get_max, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_max: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_max")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2576592201)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max (_ max: PackedFloat64Array) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (GLTFAccessor.method_set_max, UnsafeMutableRawPointer (mutating: handle), nil, &max.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &max.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFAccessor.method_set_max, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_sparse_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_sparse_count")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sparse_count ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GLTFAccessor.method_get_sparse_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_sparse_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_sparse_count")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sparse_count (_ sparseCount: Int32) {
        #if false
        
        var copy_sparse_count: Int = Int (sparseCount)
        
        gi.object_method_bind_ptrcall_v (GLTFAccessor.method_set_sparse_count, UnsafeMutableRawPointer (mutating: handle), nil, &copy_sparse_count)
        
        #else
        
        var copy_sparse_count: Int = Int (sparseCount)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_sparse_count) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFAccessor.method_set_sparse_count, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_sparse_indices_buffer_view: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_sparse_indices_buffer_view")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sparse_indices_buffer_view ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GLTFAccessor.method_get_sparse_indices_buffer_view, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_sparse_indices_buffer_view: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_sparse_indices_buffer_view")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sparse_indices_buffer_view (_ sparseIndicesBufferView: Int32) {
        #if false
        
        var copy_sparse_indices_buffer_view: Int = Int (sparseIndicesBufferView)
        
        gi.object_method_bind_ptrcall_v (GLTFAccessor.method_set_sparse_indices_buffer_view, UnsafeMutableRawPointer (mutating: handle), nil, &copy_sparse_indices_buffer_view)
        
        #else
        
        var copy_sparse_indices_buffer_view: Int = Int (sparseIndicesBufferView)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_sparse_indices_buffer_view) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFAccessor.method_set_sparse_indices_buffer_view, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_sparse_indices_byte_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_sparse_indices_byte_offset")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sparse_indices_byte_offset ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GLTFAccessor.method_get_sparse_indices_byte_offset, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_sparse_indices_byte_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_sparse_indices_byte_offset")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sparse_indices_byte_offset (_ sparseIndicesByteOffset: Int32) {
        #if false
        
        var copy_sparse_indices_byte_offset: Int = Int (sparseIndicesByteOffset)
        
        gi.object_method_bind_ptrcall_v (GLTFAccessor.method_set_sparse_indices_byte_offset, UnsafeMutableRawPointer (mutating: handle), nil, &copy_sparse_indices_byte_offset)
        
        #else
        
        var copy_sparse_indices_byte_offset: Int = Int (sparseIndicesByteOffset)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_sparse_indices_byte_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFAccessor.method_set_sparse_indices_byte_offset, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_sparse_indices_component_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_sparse_indices_component_type")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sparse_indices_component_type ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GLTFAccessor.method_get_sparse_indices_component_type, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_sparse_indices_component_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_sparse_indices_component_type")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sparse_indices_component_type (_ sparseIndicesComponentType: Int32) {
        #if false
        
        var copy_sparse_indices_component_type: Int = Int (sparseIndicesComponentType)
        
        gi.object_method_bind_ptrcall_v (GLTFAccessor.method_set_sparse_indices_component_type, UnsafeMutableRawPointer (mutating: handle), nil, &copy_sparse_indices_component_type)
        
        #else
        
        var copy_sparse_indices_component_type: Int = Int (sparseIndicesComponentType)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_sparse_indices_component_type) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFAccessor.method_set_sparse_indices_component_type, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_sparse_values_buffer_view: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_sparse_values_buffer_view")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sparse_values_buffer_view ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GLTFAccessor.method_get_sparse_values_buffer_view, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_sparse_values_buffer_view: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_sparse_values_buffer_view")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sparse_values_buffer_view (_ sparseValuesBufferView: Int32) {
        #if false
        
        var copy_sparse_values_buffer_view: Int = Int (sparseValuesBufferView)
        
        gi.object_method_bind_ptrcall_v (GLTFAccessor.method_set_sparse_values_buffer_view, UnsafeMutableRawPointer (mutating: handle), nil, &copy_sparse_values_buffer_view)
        
        #else
        
        var copy_sparse_values_buffer_view: Int = Int (sparseValuesBufferView)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_sparse_values_buffer_view) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFAccessor.method_set_sparse_values_buffer_view, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_sparse_values_byte_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_sparse_values_byte_offset")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sparse_values_byte_offset ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GLTFAccessor.method_get_sparse_values_byte_offset, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_sparse_values_byte_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_sparse_values_byte_offset")
        return withUnsafePointer (to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sparse_values_byte_offset (_ sparseValuesByteOffset: Int32) {
        #if false
        
        var copy_sparse_values_byte_offset: Int = Int (sparseValuesByteOffset)
        
        gi.object_method_bind_ptrcall_v (GLTFAccessor.method_set_sparse_values_byte_offset, UnsafeMutableRawPointer (mutating: handle), nil, &copy_sparse_values_byte_offset)
        
        #else
        
        var copy_sparse_values_byte_offset: Int = Int (sparseValuesByteOffset)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_sparse_values_byte_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFAccessor.method_set_sparse_values_byte_offset, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
}

