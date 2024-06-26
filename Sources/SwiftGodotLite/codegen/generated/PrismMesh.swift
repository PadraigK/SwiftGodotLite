// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Class representing a prism-shaped ``PrimitiveMesh``.
/// 
/// Class representing a prism-shaped ``PrimitiveMesh``.
open class PrismMesh: PrimitiveMesh {
    override open class var godotClassName: StringName { "PrismMesh" }
    
    /* Properties */
    
    /// Displacement of the upper edge along the X axis. 0.0 positions edge straight above the bottom-left edge.
    final public var leftToRight: Double {
        get {
            return get_left_to_right ()
        }
        
        set {
            set_left_to_right (newValue)
        }
        
    }
    
    /// Size of the prism.
    final public var size: Vector3 {
        get {
            return get_size ()
        }
        
        set {
            set_size (newValue)
        }
        
    }
    
    /// Number of added edge loops along the X axis.
    final public var subdivideWidth: Int32 {
        get {
            return get_subdivide_width ()
        }
        
        set {
            set_subdivide_width (newValue)
        }
        
    }
    
    /// Number of added edge loops along the Y axis.
    final public var subdivideHeight: Int32 {
        get {
            return get_subdivide_height ()
        }
        
        set {
            set_subdivide_height (newValue)
        }
        
    }
    
    /// Number of added edge loops along the Z axis.
    final public var subdivideDepth: Int32 {
        get {
            return get_subdivide_depth ()
        }
        
        set {
            set_subdivide_depth (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_left_to_right: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_left_to_right")
        return withUnsafePointer (to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_left_to_right (_ leftToRight: Double) {
        #if false
        
        var copy_left_to_right = leftToRight
        
        gi.object_method_bind_ptrcall_v (PrismMesh.method_set_left_to_right, UnsafeMutableRawPointer (mutating: handle), nil, &copy_left_to_right)
        
        #else
        
        var copy_left_to_right = leftToRight
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_left_to_right) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PrismMesh.method_set_left_to_right, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_left_to_right: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_left_to_right")
        return withUnsafePointer (to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_left_to_right ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (PrismMesh.method_get_left_to_right, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_size")
        return withUnsafePointer (to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_size (_ size: Vector3) {
        #if false
        
        var copy_size = size
        
        gi.object_method_bind_ptrcall_v (PrismMesh.method_set_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_size)
        
        #else
        
        var copy_size = size
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PrismMesh.method_set_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_size")
        return withUnsafePointer (to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_size ()-> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall (PrismMesh.method_get_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_subdivide_width: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_subdivide_width")
        return withUnsafePointer (to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_subdivide_width (_ segments: Int32) {
        #if false
        
        var copy_segments: Int = Int (segments)
        
        gi.object_method_bind_ptrcall_v (PrismMesh.method_set_subdivide_width, UnsafeMutableRawPointer (mutating: handle), nil, &copy_segments)
        
        #else
        
        var copy_segments: Int = Int (segments)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_segments) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PrismMesh.method_set_subdivide_width, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_subdivide_width: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_subdivide_width")
        return withUnsafePointer (to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_subdivide_width ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (PrismMesh.method_get_subdivide_width, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_subdivide_height: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_subdivide_height")
        return withUnsafePointer (to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_subdivide_height (_ segments: Int32) {
        #if false
        
        var copy_segments: Int = Int (segments)
        
        gi.object_method_bind_ptrcall_v (PrismMesh.method_set_subdivide_height, UnsafeMutableRawPointer (mutating: handle), nil, &copy_segments)
        
        #else
        
        var copy_segments: Int = Int (segments)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_segments) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PrismMesh.method_set_subdivide_height, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_subdivide_height: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_subdivide_height")
        return withUnsafePointer (to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_subdivide_height ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (PrismMesh.method_get_subdivide_height, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_subdivide_depth: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_subdivide_depth")
        return withUnsafePointer (to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_subdivide_depth (_ segments: Int32) {
        #if false
        
        var copy_segments: Int = Int (segments)
        
        gi.object_method_bind_ptrcall_v (PrismMesh.method_set_subdivide_depth, UnsafeMutableRawPointer (mutating: handle), nil, &copy_segments)
        
        #else
        
        var copy_segments: Int = Int (segments)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_segments) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PrismMesh.method_set_subdivide_depth, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_subdivide_depth: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_subdivide_depth")
        return withUnsafePointer (to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_subdivide_depth ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (PrismMesh.method_get_subdivide_depth, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

