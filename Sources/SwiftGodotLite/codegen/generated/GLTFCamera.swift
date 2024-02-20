// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Represents a GLTF camera.
/// 
/// Represents a camera as defined by the base GLTF spec.
open class GLTFCamera: Resource {
    override open class var godotClassName: StringName { "GLTFCamera" }
    
    /* Properties */
    
    /// Whether or not the camera is in perspective mode. If false, the camera is in orthographic/orthogonal mode. This maps to GLTF's camera `type` property. See ``Camera3D/projection`` and the GLTF spec for more information.
    final public var perspective: Bool {
        get {
            return get_perspective ()
        }
        
        set {
            set_perspective (newValue)
        }
        
    }
    
    /// The FOV of the camera. This class and GLTF define the camera FOV in radians, while Godot uses degrees. This maps to GLTF's `yfov` property. This value is only used for perspective cameras, when ``perspective`` is true.
    final public var fov: Double {
        get {
            return get_fov ()
        }
        
        set {
            set_fov (newValue)
        }
        
    }
    
    /// The size of the camera. This class and GLTF define the camera size magnitude as a radius in meters, while Godot defines it as a diameter in meters. This maps to GLTF's `ymag` property. This value is only used for orthographic/orthogonal cameras, when ``perspective`` is false.
    final public var sizeMag: Double {
        get {
            return get_size_mag ()
        }
        
        set {
            set_size_mag (newValue)
        }
        
    }
    
    /// The distance to the far culling boundary for this camera relative to its local Z axis, in meters. This maps to GLTF's `zfar` property.
    final public var depthFar: Double {
        get {
            return get_depth_far ()
        }
        
        set {
            set_depth_far (newValue)
        }
        
    }
    
    /// The distance to the near culling boundary for this camera relative to its local Z axis, in meters. This maps to GLTF's `znear` property.
    final public var depthNear: Double {
        get {
            return get_depth_near ()
        }
        
        set {
            set_depth_near (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_from_node: GDExtensionMethodBindPtr = {
        let methodName = StringName ("from_node")
        return withUnsafePointer (to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 237784)!
            }
            
        }
        
    }()
    
    /// Create a new GLTFCamera instance from the given Godot ``Camera3D`` node.
    public static func fromNode (cameraNode: Camera3D?)-> GLTFCamera? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if false
        
        var copy_camera_node_handle = cameraNode?.handle
        
        gi.object_method_bind_ptrcall_v (GLTFCamera.method_from_node, nil, &_result, &copy_camera_node_handle)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: cameraNode?.handle) { p0 in
        _args.append (cameraNode == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (GLTFCamera.method_from_node, nil, &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_to_node: GDExtensionMethodBindPtr = {
        let methodName = StringName ("to_node")
        return withUnsafePointer (to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2285090890)!
            }
            
        }
        
    }()
    
    /// Converts this GLTFCamera instance into a Godot ``Camera3D`` node.
    public final func toNode ()-> Camera3D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (GLTFCamera.method_to_node, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_from_dictionary: GDExtensionMethodBindPtr = {
        let methodName = StringName ("from_dictionary")
        return withUnsafePointer (to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2495512509)!
            }
            
        }
        
    }()
    
    /// Creates a new GLTFCamera instance by parsing the given ``GDictionary``.
    public static func fromDictionary (_ dictionary: GDictionary)-> GLTFCamera? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if false
        
        
        gi.object_method_bind_ptrcall_v (GLTFCamera.method_from_dictionary, nil, &_result, &dictionary.content)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &dictionary.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFCamera.method_from_dictionary, nil, &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_to_dictionary: GDExtensionMethodBindPtr = {
        let methodName = StringName ("to_dictionary")
        return withUnsafePointer (to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    /// Serializes this GLTFCamera instance into a ``GDictionary``.
    public final func toDictionary ()-> GDictionary {
        let _result: GDictionary = GDictionary ()
        gi.object_method_bind_ptrcall (GLTFCamera.method_to_dictionary, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_perspective: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_perspective")
        return withUnsafePointer (to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_perspective ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (GLTFCamera.method_get_perspective, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_perspective: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_perspective")
        return withUnsafePointer (to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_perspective (_ perspective: Bool) {
        #if false
        
        var copy_perspective = perspective
        
        gi.object_method_bind_ptrcall_v (GLTFCamera.method_set_perspective, UnsafeMutableRawPointer (mutating: handle), nil, &copy_perspective)
        
        #else
        
        var copy_perspective = perspective
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_perspective) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFCamera.method_set_perspective, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_fov: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_fov")
        return withUnsafePointer (to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fov ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (GLTFCamera.method_get_fov, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_fov: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_fov")
        return withUnsafePointer (to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fov (_ fov: Double) {
        #if false
        
        var copy_fov = fov
        
        gi.object_method_bind_ptrcall_v (GLTFCamera.method_set_fov, UnsafeMutableRawPointer (mutating: handle), nil, &copy_fov)
        
        #else
        
        var copy_fov = fov
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_fov) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFCamera.method_set_fov, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_size_mag: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_size_mag")
        return withUnsafePointer (to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_size_mag ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (GLTFCamera.method_get_size_mag, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_size_mag: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_size_mag")
        return withUnsafePointer (to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_size_mag (_ sizeMag: Double) {
        #if false
        
        var copy_size_mag = sizeMag
        
        gi.object_method_bind_ptrcall_v (GLTFCamera.method_set_size_mag, UnsafeMutableRawPointer (mutating: handle), nil, &copy_size_mag)
        
        #else
        
        var copy_size_mag = sizeMag
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_size_mag) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFCamera.method_set_size_mag, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_depth_far: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_depth_far")
        return withUnsafePointer (to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth_far ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (GLTFCamera.method_get_depth_far, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_depth_far: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_depth_far")
        return withUnsafePointer (to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth_far (_ zdepthFar: Double) {
        #if false
        
        var copy_zdepth_far = zdepthFar
        
        gi.object_method_bind_ptrcall_v (GLTFCamera.method_set_depth_far, UnsafeMutableRawPointer (mutating: handle), nil, &copy_zdepth_far)
        
        #else
        
        var copy_zdepth_far = zdepthFar
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_zdepth_far) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFCamera.method_set_depth_far, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_depth_near: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_depth_near")
        return withUnsafePointer (to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth_near ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (GLTFCamera.method_get_depth_near, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_depth_near: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_depth_near")
        return withUnsafePointer (to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth_near (_ zdepthNear: Double) {
        #if false
        
        var copy_zdepth_near = zdepthNear
        
        gi.object_method_bind_ptrcall_v (GLTFCamera.method_set_depth_near, UnsafeMutableRawPointer (mutating: handle), nil, &copy_zdepth_near)
        
        #else
        
        var copy_zdepth_near = zdepthNear
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_zdepth_near) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFCamera.method_set_depth_near, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
}

