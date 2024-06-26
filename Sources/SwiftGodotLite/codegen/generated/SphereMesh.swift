// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Class representing a spherical ``PrimitiveMesh``.
/// 
/// Class representing a spherical ``PrimitiveMesh``.
open class SphereMesh: PrimitiveMesh {
    override open class var godotClassName: StringName { "SphereMesh" }
    
    /* Properties */
    
    /// Radius of sphere.
    final public var radius: Double {
        get {
            return get_radius ()
        }
        
        set {
            set_radius (newValue)
        }
        
    }
    
    /// Full height of the sphere.
    final public var height: Double {
        get {
            return get_height ()
        }
        
        set {
            set_height (newValue)
        }
        
    }
    
    /// Number of radial segments on the sphere.
    final public var radialSegments: Int32 {
        get {
            return get_radial_segments ()
        }
        
        set {
            set_radial_segments (newValue)
        }
        
    }
    
    /// Number of segments along the height of the sphere.
    final public var rings: Int32 {
        get {
            return get_rings ()
        }
        
        set {
            set_rings (newValue)
        }
        
    }
    
    /// If `true`, a hemisphere is created rather than a full sphere.
    /// 
    /// > Note: To get a regular hemisphere, the height and radius of the sphere must be equal.
    /// 
    final public var isHemisphere: Bool {
        get {
            return get_is_hemisphere ()
        }
        
        set {
            set_is_hemisphere (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_radius")
        return withUnsafePointer (to: &SphereMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_radius (_ radius: Double) {
        #if false
        
        var copy_radius = radius
        
        gi.object_method_bind_ptrcall_v (SphereMesh.method_set_radius, UnsafeMutableRawPointer (mutating: handle), nil, &copy_radius)
        
        #else
        
        var copy_radius = radius
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_radius) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SphereMesh.method_set_radius, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_radius")
        return withUnsafePointer (to: &SphereMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_radius ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (SphereMesh.method_get_radius, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_height: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_height")
        return withUnsafePointer (to: &SphereMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_height (_ height: Double) {
        #if false
        
        var copy_height = height
        
        gi.object_method_bind_ptrcall_v (SphereMesh.method_set_height, UnsafeMutableRawPointer (mutating: handle), nil, &copy_height)
        
        #else
        
        var copy_height = height
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_height) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SphereMesh.method_set_height, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_height: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_height")
        return withUnsafePointer (to: &SphereMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_height ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (SphereMesh.method_get_height, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_radial_segments: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_radial_segments")
        return withUnsafePointer (to: &SphereMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_radial_segments (_ radialSegments: Int32) {
        #if false
        
        var copy_radial_segments: Int = Int (radialSegments)
        
        gi.object_method_bind_ptrcall_v (SphereMesh.method_set_radial_segments, UnsafeMutableRawPointer (mutating: handle), nil, &copy_radial_segments)
        
        #else
        
        var copy_radial_segments: Int = Int (radialSegments)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_radial_segments) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SphereMesh.method_set_radial_segments, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_radial_segments: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_radial_segments")
        return withUnsafePointer (to: &SphereMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_radial_segments ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (SphereMesh.method_get_radial_segments, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_rings: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_rings")
        return withUnsafePointer (to: &SphereMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rings (_ rings: Int32) {
        #if false
        
        var copy_rings: Int = Int (rings)
        
        gi.object_method_bind_ptrcall_v (SphereMesh.method_set_rings, UnsafeMutableRawPointer (mutating: handle), nil, &copy_rings)
        
        #else
        
        var copy_rings: Int = Int (rings)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_rings) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SphereMesh.method_set_rings, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_rings: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_rings")
        return withUnsafePointer (to: &SphereMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_rings ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (SphereMesh.method_get_rings, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_is_hemisphere: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_is_hemisphere")
        return withUnsafePointer (to: &SphereMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_is_hemisphere (_ isHemisphere: Bool) {
        #if false
        
        var copy_is_hemisphere = isHemisphere
        
        gi.object_method_bind_ptrcall_v (SphereMesh.method_set_is_hemisphere, UnsafeMutableRawPointer (mutating: handle), nil, &copy_is_hemisphere)
        
        #else
        
        var copy_is_hemisphere = isHemisphere
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_is_hemisphere) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SphereMesh.method_set_is_hemisphere, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_is_hemisphere: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_is_hemisphere")
        return withUnsafePointer (to: &SphereMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_is_hemisphere ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (SphereMesh.method_get_is_hemisphere, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

