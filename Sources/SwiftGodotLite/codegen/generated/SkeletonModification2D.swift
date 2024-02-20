// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Base class for resources that operate on ``Bone2D``s in a ``Skeleton2D``.
/// 
/// This resource provides an interface that can be expanded so code that operates on ``Bone2D`` nodes in a ``Skeleton2D`` can be mixed and matched together to create complex interactions.
/// 
/// This is used to provide Godot with a flexible and powerful Inverse Kinematics solution that can be adapted for many different uses.
/// 
open class SkeletonModification2D: Resource {
    override open class var godotClassName: StringName { "SkeletonModification2D" }
    
    /* Properties */
    
    /// If `true`, the modification's ``_execute(delta:)`` function will be called by the ``SkeletonModificationStack2D``.
    final public var enabled: Bool {
        get {
            return get_enabled ()
        }
        
        set {
            set_enabled (newValue)
        }
        
    }
    
    /// The execution mode for the modification. This tells the modification stack when to execute the modification. Some modifications have settings that are only available in certain execution modes.
    final public var executionMode: Int32 {
        get {
            return get_execution_mode ()
        }
        
        set {
            set_execution_mode (newValue)
        }
        
    }
    
    /* Methods */
    /// Executes the given modification. This is where the modification performs whatever function it is designed to do.
    @_documentation(visibility: public)
    open func _execute (delta: Double) {
    }
    
    /// Called when the modification is setup. This is where the modification performs initialization.
    @_documentation(visibility: public)
    open func _setupModification (modificationStack: SkeletonModificationStack2D?) {
    }
    
    /// Used for drawing **editor-only** modification gizmos. This function will only be called in the Godot editor and can be overridden to draw custom gizmos.
    /// 
    /// > Note: You will need to use the Skeleton2D from ``SkeletonModificationStack2D/getSkeleton()`` and it's draw functions, as the ``SkeletonModification2D`` resource cannot draw on its own.
    /// 
    @_documentation(visibility: public)
    open func _drawEditorGizmo () {
    }
    
    fileprivate static var method_set_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_enabled")
        return withUnsafePointer (to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enabled (_ enabled: Bool) {
        #if true
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (SkeletonModification2D.method_set_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonModification2D.method_set_enabled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_enabled")
        return withUnsafePointer (to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (SkeletonModification2D.method_get_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_modification_stack: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_modification_stack")
        return withUnsafePointer (to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2137761694)!
            }
            
        }
        
    }()
    
    /// Returns the ``SkeletonModificationStack2D`` that this modification is bound to. Through the modification stack, you can access the Skeleton2D the modification is operating on.
    public final func getModificationStack ()-> SkeletonModificationStack2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (SkeletonModification2D.method_get_modification_stack, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_is_setup: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_is_setup")
        return withUnsafePointer (to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Manually allows you to set the setup state of the modification. This function should only rarely be used, as the ``SkeletonModificationStack2D`` the modification is bound to should handle setting the modification up.
    public final func setIsSetup (_ isSetup: Bool) {
        #if true
        
        var copy_is_setup = isSetup
        
        gi.object_method_bind_ptrcall_v (SkeletonModification2D.method_set_is_setup, UnsafeMutableRawPointer (mutating: handle), nil, &copy_is_setup)
        
        #else
        
        var copy_is_setup = isSetup
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_is_setup) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonModification2D.method_set_is_setup, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_is_setup: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_is_setup")
        return withUnsafePointer (to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether this modification has been successfully setup or not.
    public final func getIsSetup ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (SkeletonModification2D.method_get_is_setup, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_execution_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_execution_mode")
        return withUnsafePointer (to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_execution_mode (_ executionMode: Int32) {
        #if true
        
        var copy_execution_mode: Int = Int (executionMode)
        
        gi.object_method_bind_ptrcall_v (SkeletonModification2D.method_set_execution_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_execution_mode)
        
        #else
        
        var copy_execution_mode: Int = Int (executionMode)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_execution_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonModification2D.method_set_execution_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_execution_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_execution_mode")
        return withUnsafePointer (to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_execution_mode ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (SkeletonModification2D.method_get_execution_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_clamp_angle: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clamp_angle")
        return withUnsafePointer (to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1229502682)!
            }
            
        }
        
    }()
    
    /// Takes an angle and clamps it so it is within the passed-in `min` and `max` range. `invert` will inversely clamp the angle, clamping it to the range outside of the given bounds.
    public final func clampAngle (_ angle: Double, min: Double, max: Double, invert: Bool)-> Double {
        var _result: Double = 0.0
        #if true
        
        var copy_angle = angle
        var copy_min = min
        var copy_max = max
        var copy_invert = invert
        
        gi.object_method_bind_ptrcall_v (SkeletonModification2D.method_clamp_angle, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_angle, &copy_min, &copy_max, &copy_invert)
        return _result
        #else
        
        var copy_angle = angle
        var copy_min = min
        var copy_max = max
        var copy_invert = invert
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_angle) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_min) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_max) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &copy_invert) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (SkeletonModification2D.method_clamp_angle, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                        return _result
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_editor_draw_gizmo: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_editor_draw_gizmo")
        return withUnsafePointer (to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Sets whether this modification will call ``_drawEditorGizmo()`` in the Godot editor to draw modification-specific gizmos.
    public final func setEditorDrawGizmo (_ drawGizmo: Bool) {
        #if true
        
        var copy_draw_gizmo = drawGizmo
        
        gi.object_method_bind_ptrcall_v (SkeletonModification2D.method_set_editor_draw_gizmo, UnsafeMutableRawPointer (mutating: handle), nil, &copy_draw_gizmo)
        
        #else
        
        var copy_draw_gizmo = drawGizmo
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_draw_gizmo) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonModification2D.method_set_editor_draw_gizmo, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_editor_draw_gizmo: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_editor_draw_gizmo")
        return withUnsafePointer (to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether this modification will call ``_drawEditorGizmo()`` in the Godot editor to draw modification-specific gizmos.
    public final func getEditorDrawGizmo ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (SkeletonModification2D.method_get_editor_draw_gizmo, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_draw_editor_gizmo":
                return _SkeletonModification2D_proxy_draw_editor_gizmo
            case "_execute":
                return _SkeletonModification2D_proxy_execute
            case "_setup_modification":
                return _SkeletonModification2D_proxy_setup_modification
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _SkeletonModification2D_proxy_draw_editor_gizmo (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<SkeletonModification2D>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._drawEditorGizmo ()
}

func _SkeletonModification2D_proxy_execute (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<SkeletonModification2D>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._execute (delta: args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _SkeletonModification2D_proxy_setup_modification (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<SkeletonModification2D>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    swiftObject._setupModification (modificationStack: lookupLiveObject (handleAddress: resolved_0) as? SkeletonModificationStack2D ?? lookupObject (nativeHandle: resolved_0)!)
}
