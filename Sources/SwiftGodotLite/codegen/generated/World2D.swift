// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A resource that holds all components of a 2D world, such as a canvas and a physics space.
/// 
/// Class that has everything pertaining to a 2D world: A physics space, a canvas, and a sound space. 2D nodes register their resources into the current 2D world.
open class World2D: Resource {
    override open class var godotClassName: StringName { "World2D" }
    
    /* Properties */
    
    /// The ``RID`` of this world's canvas resource. Used by the ``RenderingServer`` for 2D drawing.
    final public var canvas: RID {
        get {
            return get_canvas ()
        }
        
    }
    
    /// The ``RID`` of this world's physics space resource. Used by the ``PhysicsServer2D`` for 2D physics, treating it as both a space and an area.
    final public var space: RID {
        get {
            return get_space ()
        }
        
    }
    
    /// The ``RID`` of this world's navigation map. Used by the ``NavigationServer2D``.
    final public var navigationMap: RID {
        get {
            return get_navigation_map ()
        }
        
    }
    
    /// Direct access to the world's physics 2D space state. Used for querying current and potential collisions. When using multi-threaded physics, access is limited to ``Node/_physicsProcess(delta:)`` in the main thread.
    final public var directSpaceState: PhysicsDirectSpaceState2D? {
        get {
            return get_direct_space_state ()
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_canvas: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_canvas")
        return withUnsafePointer (to: &World2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_canvas ()-> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall (World2D.method_get_canvas, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_space: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_space")
        return withUnsafePointer (to: &World2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_space ()-> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall (World2D.method_get_space, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_navigation_map: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_navigation_map")
        return withUnsafePointer (to: &World2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_navigation_map ()-> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall (World2D.method_get_navigation_map, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_direct_space_state: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_direct_space_state")
        return withUnsafePointer (to: &World2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2506717822)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_direct_space_state ()-> PhysicsDirectSpaceState2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (World2D.method_get_direct_space_state, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

