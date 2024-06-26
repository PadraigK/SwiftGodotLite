// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Provides playback control for an ``AnimationNodeStateMachine``.
/// 
/// Allows control of ``AnimationTree`` state machines created with ``AnimationNodeStateMachine``. Retrieve with `$AnimationTree.get("parameters/playback")`.
/// 
/// **Example:**
/// 
open class AnimationNodeStateMachinePlayback: Resource {
    override open class var godotClassName: StringName { "AnimationNodeStateMachinePlayback" }
    /* Methods */
    fileprivate static var method_travel: GDExtensionMethodBindPtr = {
        let methodName = StringName ("travel")
        return withUnsafePointer (to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3823612587)!
            }
            
        }
        
    }()
    
    /// Transitions from the current state to another one, following the shortest path.
    /// 
    /// If the path does not connect from the current state, the animation will play after the state teleports.
    /// 
    /// If `resetOnTeleport` is `true`, the animation is played from the beginning when the travel cause a teleportation.
    /// 
    public final func travel (toNode: StringName, resetOnTeleport: Bool = true) {
        #if false
        
        var copy_reset_on_teleport = resetOnTeleport
        
        gi.object_method_bind_ptrcall_v (AnimationNodeStateMachinePlayback.method_travel, UnsafeMutableRawPointer (mutating: handle), nil, &toNode.content, &copy_reset_on_teleport)
        
        #else
        
        var copy_reset_on_teleport = resetOnTeleport
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &toNode.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_reset_on_teleport) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (AnimationNodeStateMachinePlayback.method_travel, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_start: GDExtensionMethodBindPtr = {
        let methodName = StringName ("start")
        return withUnsafePointer (to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3823612587)!
            }
            
        }
        
    }()
    
    /// Starts playing the given animation.
    /// 
    /// If `reset` is `true`, the animation is played from the beginning.
    /// 
    public final func start (node: StringName, reset: Bool = true) {
        #if false
        
        var copy_reset = reset
        
        gi.object_method_bind_ptrcall_v (AnimationNodeStateMachinePlayback.method_start, UnsafeMutableRawPointer (mutating: handle), nil, &node.content, &copy_reset)
        
        #else
        
        var copy_reset = reset
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &node.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_reset) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (AnimationNodeStateMachinePlayback.method_start, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_next: GDExtensionMethodBindPtr = {
        let methodName = StringName ("next")
        return withUnsafePointer (to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// If there is a next path by travel or auto advance, immediately transitions from the current state to the next state.
    public final func next () {
        gi.object_method_bind_ptrcall (AnimationNodeStateMachinePlayback.method_next, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_stop: GDExtensionMethodBindPtr = {
        let methodName = StringName ("stop")
        return withUnsafePointer (to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops the currently playing animation.
    public final func stop () {
        gi.object_method_bind_ptrcall (AnimationNodeStateMachinePlayback.method_stop, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_is_playing: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_playing")
        return withUnsafePointer (to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if an animation is playing.
    public final func isPlaying ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (AnimationNodeStateMachinePlayback.method_is_playing, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_current_node: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_current_node")
        return withUnsafePointer (to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    /// Returns the currently playing animation state.
    /// 
    /// > Note: When using a cross-fade, the current state changes to the next state immediately after the cross-fade begins.
    /// 
    public final func getCurrentNode ()-> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall (AnimationNodeStateMachinePlayback.method_get_current_node, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_current_play_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_current_play_position")
        return withUnsafePointer (to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the playback position within the current animation state.
    public final func getCurrentPlayPosition ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AnimationNodeStateMachinePlayback.method_get_current_play_position, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_current_length: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_current_length")
        return withUnsafePointer (to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the current state length.
    /// 
    /// > Note: It is possible that any ``AnimationRootNode`` can be nodes as well as animations. This means that there can be multiple animations within a single state. Which animation length has priority depends on the nodes connected inside it. Also, if a transition does not reset, the remaining length at that point will be returned.
    /// 
    public final func getCurrentLength ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AnimationNodeStateMachinePlayback.method_get_current_length, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_fading_from_node: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_fading_from_node")
        return withUnsafePointer (to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    /// Returns the starting state of currently fading animation.
    public final func getFadingFromNode ()-> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall (AnimationNodeStateMachinePlayback.method_get_fading_from_node, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_travel_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_travel_path")
        return withUnsafePointer (to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns the current travel path as computed internally by the A* algorithm.
    public final func getTravelPath ()-> VariantCollection<StringName> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall (AnimationNodeStateMachinePlayback.method_get_travel_path, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VariantCollection<StringName>(content: _result)
    }
    
}

