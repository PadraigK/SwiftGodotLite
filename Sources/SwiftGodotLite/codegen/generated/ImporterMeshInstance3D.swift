// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

open class ImporterMeshInstance3D: Node3D {
    override open class var godotClassName: StringName { "ImporterMeshInstance3D" }
    
    /* Properties */
    
    final public var mesh: ImporterMesh? {
        get {
            return get_mesh ()
        }
        
        set {
            set_mesh (newValue)
        }
        
    }
    
    final public var skin: Skin? {
        get {
            return get_skin ()
        }
        
        set {
            set_skin (newValue)
        }
        
    }
    
    final public var skeletonPath: NodePath {
        get {
            return get_skeleton_path ()
        }
        
        set {
            set_skeleton_path (newValue)
        }
        
    }
    
    final public var layerMask: UInt32 {
        get {
            return get_layer_mask ()
        }
        
        set {
            set_layer_mask (newValue)
        }
        
    }
    
    final public var castShadow: GeometryInstance3D.ShadowCastingSetting {
        get {
            return get_cast_shadows_setting ()
        }
        
        set {
            set_cast_shadows_setting (newValue)
        }
        
    }
    
    final public var visibilityRangeBegin: Double {
        get {
            return get_visibility_range_begin ()
        }
        
        set {
            set_visibility_range_begin (newValue)
        }
        
    }
    
    final public var visibilityRangeBeginMargin: Double {
        get {
            return get_visibility_range_begin_margin ()
        }
        
        set {
            set_visibility_range_begin_margin (newValue)
        }
        
    }
    
    final public var visibilityRangeEnd: Double {
        get {
            return get_visibility_range_end ()
        }
        
        set {
            set_visibility_range_end (newValue)
        }
        
    }
    
    final public var visibilityRangeEndMargin: Double {
        get {
            return get_visibility_range_end_margin ()
        }
        
        set {
            set_visibility_range_end_margin (newValue)
        }
        
    }
    
    final public var visibilityRangeFadeMode: GeometryInstance3D.VisibilityRangeFadeMode {
        get {
            return get_visibility_range_fade_mode ()
        }
        
        set {
            set_visibility_range_fade_mode (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_mesh")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2255166972)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mesh (_ mesh: ImporterMesh?) {
        #if false
        
        var copy_mesh_handle = mesh?.handle
        
        gi.object_method_bind_ptrcall_v (ImporterMeshInstance3D.method_set_mesh, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mesh_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: mesh?.handle) { p0 in
        _args.append (mesh == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_set_mesh, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_mesh")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3161779525)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mesh ()-> ImporterMesh? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_get_mesh, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_skin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_skin")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3971435618)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_skin (_ skin: Skin?) {
        #if false
        
        var copy_skin_handle = skin?.handle
        
        gi.object_method_bind_ptrcall_v (ImporterMeshInstance3D.method_set_skin, UnsafeMutableRawPointer (mutating: handle), nil, &copy_skin_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: skin?.handle) { p0 in
        _args.append (skin == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_set_skin, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_skin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_skin")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2074563878)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_skin ()-> Skin? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_get_skin, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_skeleton_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_skeleton_path")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_skeleton_path (_ skeletonPath: NodePath) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (ImporterMeshInstance3D.method_set_skeleton_path, UnsafeMutableRawPointer (mutating: handle), nil, &skeletonPath.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &skeletonPath.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_set_skeleton_path, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_skeleton_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_skeleton_path")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_skeleton_path ()-> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_get_skeleton_path, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_layer_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_layer_mask")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_layer_mask (_ layerMask: UInt32) {
        #if false
        
        var copy_layer_mask: Int = Int (layerMask)
        
        gi.object_method_bind_ptrcall_v (ImporterMeshInstance3D.method_set_layer_mask, UnsafeMutableRawPointer (mutating: handle), nil, &copy_layer_mask)
        
        #else
        
        var copy_layer_mask: Int = Int (layerMask)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_layer_mask) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_set_layer_mask, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_layer_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_layer_mask")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_layer_mask ()-> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_get_layer_mask, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_cast_shadows_setting: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_cast_shadows_setting")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 856677339)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cast_shadows_setting (_ shadowCastingSetting: GeometryInstance3D.ShadowCastingSetting) {
        #if false
        
        var copy_shadow_casting_setting = Int64 (shadowCastingSetting.rawValue)
        
        gi.object_method_bind_ptrcall_v (ImporterMeshInstance3D.method_set_cast_shadows_setting, UnsafeMutableRawPointer (mutating: handle), nil, &copy_shadow_casting_setting)
        
        #else
        
        var copy_shadow_casting_setting = Int64 (shadowCastingSetting.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_shadow_casting_setting) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_set_cast_shadows_setting, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_cast_shadows_setting: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_cast_shadows_setting")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3383019359)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cast_shadows_setting ()-> GeometryInstance3D.ShadowCastingSetting {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_get_cast_shadows_setting, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return GeometryInstance3D.ShadowCastingSetting (rawValue: _result)!
    }
    
    fileprivate static var method_set_visibility_range_end_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_visibility_range_end_margin")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_range_end_margin (_ distance: Double) {
        #if false
        
        var copy_distance = distance
        
        gi.object_method_bind_ptrcall_v (ImporterMeshInstance3D.method_set_visibility_range_end_margin, UnsafeMutableRawPointer (mutating: handle), nil, &copy_distance)
        
        #else
        
        var copy_distance = distance
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_distance) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_set_visibility_range_end_margin, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_visibility_range_end_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_visibility_range_end_margin")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_range_end_margin ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_get_visibility_range_end_margin, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_visibility_range_end: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_visibility_range_end")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_range_end (_ distance: Double) {
        #if false
        
        var copy_distance = distance
        
        gi.object_method_bind_ptrcall_v (ImporterMeshInstance3D.method_set_visibility_range_end, UnsafeMutableRawPointer (mutating: handle), nil, &copy_distance)
        
        #else
        
        var copy_distance = distance
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_distance) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_set_visibility_range_end, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_visibility_range_end: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_visibility_range_end")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_range_end ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_get_visibility_range_end, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_visibility_range_begin_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_visibility_range_begin_margin")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_range_begin_margin (_ distance: Double) {
        #if false
        
        var copy_distance = distance
        
        gi.object_method_bind_ptrcall_v (ImporterMeshInstance3D.method_set_visibility_range_begin_margin, UnsafeMutableRawPointer (mutating: handle), nil, &copy_distance)
        
        #else
        
        var copy_distance = distance
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_distance) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_set_visibility_range_begin_margin, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_visibility_range_begin_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_visibility_range_begin_margin")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_range_begin_margin ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_get_visibility_range_begin_margin, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_visibility_range_begin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_visibility_range_begin")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_range_begin (_ distance: Double) {
        #if false
        
        var copy_distance = distance
        
        gi.object_method_bind_ptrcall_v (ImporterMeshInstance3D.method_set_visibility_range_begin, UnsafeMutableRawPointer (mutating: handle), nil, &copy_distance)
        
        #else
        
        var copy_distance = distance
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_distance) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_set_visibility_range_begin, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_visibility_range_begin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_visibility_range_begin")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_range_begin ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_get_visibility_range_begin, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_visibility_range_fade_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_visibility_range_fade_mode")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1440117808)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_range_fade_mode (_ mode: GeometryInstance3D.VisibilityRangeFadeMode) {
        #if false
        
        var copy_mode = Int64 (mode.rawValue)
        
        gi.object_method_bind_ptrcall_v (ImporterMeshInstance3D.method_set_visibility_range_fade_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mode)
        
        #else
        
        var copy_mode = Int64 (mode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_set_visibility_range_fade_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_visibility_range_fade_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_visibility_range_fade_mode")
        return withUnsafePointer (to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2067221882)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_range_fade_mode ()-> GeometryInstance3D.VisibilityRangeFadeMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (ImporterMeshInstance3D.method_get_visibility_range_fade_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return GeometryInstance3D.VisibilityRangeFadeMode (rawValue: _result)!
    }
    
}

