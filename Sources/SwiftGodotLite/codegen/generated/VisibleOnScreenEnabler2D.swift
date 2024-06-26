// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A rectangular region of 2D space that, when visible on screen, enables a target node.
/// 
/// ``VisibleOnScreenEnabler2D`` contains a rectangular region of 2D space and a target node. The target node will be automatically enabled (via its ``Node/processMode`` property) when any part of this region becomes visible on the screen, and automatically disabled otherwise. This can for example be used to activate enemies only when the player approaches them.
/// 
/// See ``VisibleOnScreenNotifier2D`` if you only want to be notified when the region is visible on screen.
/// 
/// > Note: ``VisibleOnScreenEnabler2D`` uses the render culling code to determine whether it's visible on screen, so it won't function unless ``CanvasItem/visible`` is set to `true`.
/// 
open class VisibleOnScreenEnabler2D: VisibleOnScreenNotifier2D {
    override open class var godotClassName: StringName { "VisibleOnScreenEnabler2D" }
    public enum EnableMode: Int64 {
        /// Corresponds to ``Node/ProcessMode/inherit``.
        case inherit = 0 // ENABLE_MODE_INHERIT
        /// Corresponds to ``Node/ProcessMode/always``.
        case always = 1 // ENABLE_MODE_ALWAYS
        /// Corresponds to ``Node/ProcessMode/whenPaused``.
        case whenPaused = 2 // ENABLE_MODE_WHEN_PAUSED
    }
    
    
    /* Properties */
    
    /// Determines how the target node is enabled. Corresponds to ``Node.ProcessMode``. When the node is disabled, it always uses ``Node/ProcessMode/disabled``.
    final public var enableMode: VisibleOnScreenEnabler2D.EnableMode {
        get {
            return get_enable_mode ()
        }
        
        set {
            set_enable_mode (newValue)
        }
        
    }
    
    /// The path to the target node, relative to the ``VisibleOnScreenEnabler2D``. The target node is cached; it's only assigned when setting this property (if the ``VisibleOnScreenEnabler2D`` is inside the scene tree) and every time the ``VisibleOnScreenEnabler2D`` enters the scene tree. If the path is invalid, an error will be printed in the editor and no node will be affected.
    final public var enableNodePath: NodePath {
        get {
            return get_enable_node_path ()
        }
        
        set {
            set_enable_node_path (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_enable_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_enable_mode")
        return withUnsafePointer (to: &VisibleOnScreenEnabler2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2961788752)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enable_mode (_ mode: VisibleOnScreenEnabler2D.EnableMode) {
        #if false
        
        var copy_mode = Int64 (mode.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisibleOnScreenEnabler2D.method_set_enable_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mode)
        
        #else
        
        var copy_mode = Int64 (mode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisibleOnScreenEnabler2D.method_set_enable_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_enable_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_enable_mode")
        return withUnsafePointer (to: &VisibleOnScreenEnabler2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2650445576)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_enable_mode ()-> VisibleOnScreenEnabler2D.EnableMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisibleOnScreenEnabler2D.method_get_enable_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisibleOnScreenEnabler2D.EnableMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_enable_node_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_enable_node_path")
        return withUnsafePointer (to: &VisibleOnScreenEnabler2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enable_node_path (_ path: NodePath) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (VisibleOnScreenEnabler2D.method_set_enable_node_path, UnsafeMutableRawPointer (mutating: handle), nil, &path.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisibleOnScreenEnabler2D.method_set_enable_node_path, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_enable_node_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_enable_node_path")
        return withUnsafePointer (to: &VisibleOnScreenEnabler2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 277076166)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_enable_node_path ()-> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall (VisibleOnScreenEnabler2D.method_get_enable_node_path, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
}

