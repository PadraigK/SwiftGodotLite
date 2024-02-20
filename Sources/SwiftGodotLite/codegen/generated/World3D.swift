// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A resource that holds all components of a 3D world, such as a visual scenario and a physics space.
/// 
/// Class that has everything pertaining to a world: A physics space, a visual scenario, and a sound space. 3D nodes register their resources into the current 3D world.
open class World3D: Resource {
    override open class var godotClassName: StringName { "World3D" }
    
    /* Properties */
    
    /// The World3D's ``Environment``.
    final public var environment: Environment? {
        get {
            return get_environment ()
        }
        
        set {
            set_environment (newValue)
        }
        
    }
    
    /// The World3D's fallback environment will be used if ``environment`` fails or is missing.
    final public var fallbackEnvironment: Environment? {
        get {
            return get_fallback_environment ()
        }
        
        set {
            set_fallback_environment (newValue)
        }
        
    }
    
    /// The default ``CameraAttributes`` resource to use if none set on the ``Camera3D``.
    final public var cameraAttributes: CameraAttributes? {
        get {
            return get_camera_attributes ()
        }
        
        set {
            set_camera_attributes (newValue)
        }
        
    }
    
    /// The World3D's physics space.
    final public var space: RID {
        get {
            return get_space ()
        }
        
    }
    
    /// The ``RID`` of this world's navigation map. Used by the ``NavigationServer3D``.
    final public var navigationMap: RID {
        get {
            return get_navigation_map ()
        }
        
    }
    
    /// The World3D's visual scenario.
    final public var scenario: RID {
        get {
            return get_scenario ()
        }
        
    }
    
    /// Direct access to the world's physics 3D space state. Used for querying current and potential collisions. When using multi-threaded physics, access is limited to ``Node/_physicsProcess(delta:)`` in the main thread.
    final public var directSpaceState: PhysicsDirectSpaceState3D? {
        get {
            return get_direct_space_state ()
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_space: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_space")
        return withUnsafePointer (to: &World3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_space ()-> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall (World3D.method_get_space, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_navigation_map: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_navigation_map")
        return withUnsafePointer (to: &World3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_navigation_map ()-> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall (World3D.method_get_navigation_map, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_scenario: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_scenario")
        return withUnsafePointer (to: &World3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scenario ()-> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall (World3D.method_get_scenario, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_environment: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_environment")
        return withUnsafePointer (to: &World3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4143518816)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_environment (_ env: Environment?) {
        #if false
        
        var copy_env_handle = env?.handle
        
        gi.object_method_bind_ptrcall_v (World3D.method_set_environment, UnsafeMutableRawPointer (mutating: handle), nil, &copy_env_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: env?.handle) { p0 in
        _args.append (env == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (World3D.method_set_environment, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_environment: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_environment")
        return withUnsafePointer (to: &World3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3082064660)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_environment ()-> Environment? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (World3D.method_get_environment, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_fallback_environment: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_fallback_environment")
        return withUnsafePointer (to: &World3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4143518816)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fallback_environment (_ env: Environment?) {
        #if false
        
        var copy_env_handle = env?.handle
        
        gi.object_method_bind_ptrcall_v (World3D.method_set_fallback_environment, UnsafeMutableRawPointer (mutating: handle), nil, &copy_env_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: env?.handle) { p0 in
        _args.append (env == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (World3D.method_set_fallback_environment, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_fallback_environment: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_fallback_environment")
        return withUnsafePointer (to: &World3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3082064660)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fallback_environment ()-> Environment? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (World3D.method_get_fallback_environment, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_camera_attributes: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_camera_attributes")
        return withUnsafePointer (to: &World3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2817810567)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_camera_attributes (_ attributes: CameraAttributes?) {
        #if false
        
        var copy_attributes_handle = attributes?.handle
        
        gi.object_method_bind_ptrcall_v (World3D.method_set_camera_attributes, UnsafeMutableRawPointer (mutating: handle), nil, &copy_attributes_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: attributes?.handle) { p0 in
        _args.append (attributes == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (World3D.method_set_camera_attributes, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_camera_attributes: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_camera_attributes")
        return withUnsafePointer (to: &World3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3921283215)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_camera_attributes ()-> CameraAttributes? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (World3D.method_get_camera_attributes, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_direct_space_state: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_direct_space_state")
        return withUnsafePointer (to: &World3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2069328350)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_direct_space_state ()-> PhysicsDirectSpaceState3D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (World3D.method_get_direct_space_state, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

