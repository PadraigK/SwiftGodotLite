// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Occludes light cast by a Light2D, casting shadows.
/// 
/// Occludes light cast by a Light2D, casting shadows. The LightOccluder2D must be provided with an ``OccluderPolygon2D`` in order for the shadow to be computed.
open class LightOccluder2D: Node2D {
    override open class var godotClassName: StringName { "LightOccluder2D" }
    
    /* Properties */
    
    /// The ``OccluderPolygon2D`` used to compute the shadow.
    final public var occluder: OccluderPolygon2D? {
        get {
            return get_occluder_polygon ()
        }
        
        set {
            set_occluder_polygon (newValue)
        }
        
    }
    
    /// If enabled, the occluder will be part of a real-time generated signed distance field that can be used in custom shaders.
    final public var sdfCollision: Bool {
        get {
            return is_set_as_sdf_collision ()
        }
        
        set {
            set_as_sdf_collision (newValue)
        }
        
    }
    
    /// The LightOccluder2D's occluder light mask. The LightOccluder2D will cast shadows only from Light2D(s) that have the same light mask(s).
    final public var occluderLightMask: Int32 {
        get {
            return get_occluder_light_mask ()
        }
        
        set {
            set_occluder_light_mask (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_occluder_polygon: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_occluder_polygon")
        return withUnsafePointer (to: &LightOccluder2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3258315893)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_occluder_polygon (_ polygon: OccluderPolygon2D?) {
        #if false
        
        var copy_polygon_handle = polygon?.handle
        
        gi.object_method_bind_ptrcall_v (LightOccluder2D.method_set_occluder_polygon, UnsafeMutableRawPointer (mutating: handle), nil, &copy_polygon_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: polygon?.handle) { p0 in
        _args.append (polygon == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (LightOccluder2D.method_set_occluder_polygon, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_occluder_polygon: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_occluder_polygon")
        return withUnsafePointer (to: &LightOccluder2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3962317075)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_occluder_polygon ()-> OccluderPolygon2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (LightOccluder2D.method_get_occluder_polygon, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_occluder_light_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_occluder_light_mask")
        return withUnsafePointer (to: &LightOccluder2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_occluder_light_mask (_ mask: Int32) {
        #if false
        
        var copy_mask: Int = Int (mask)
        
        gi.object_method_bind_ptrcall_v (LightOccluder2D.method_set_occluder_light_mask, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mask)
        
        #else
        
        var copy_mask: Int = Int (mask)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mask) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (LightOccluder2D.method_set_occluder_light_mask, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_occluder_light_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_occluder_light_mask")
        return withUnsafePointer (to: &LightOccluder2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_occluder_light_mask ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (LightOccluder2D.method_get_occluder_light_mask, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_as_sdf_collision: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_as_sdf_collision")
        return withUnsafePointer (to: &LightOccluder2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_as_sdf_collision (_ enable: Bool) {
        #if false
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (LightOccluder2D.method_set_as_sdf_collision, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (LightOccluder2D.method_set_as_sdf_collision, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_set_as_sdf_collision: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_set_as_sdf_collision")
        return withUnsafePointer (to: &LightOccluder2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_set_as_sdf_collision ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (LightOccluder2D.method_is_set_as_sdf_collision, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

