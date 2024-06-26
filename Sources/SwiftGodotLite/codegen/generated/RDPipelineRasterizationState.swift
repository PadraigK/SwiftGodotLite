// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Pipeline rasterization state (used by ``RenderingDevice``).
/// 
/// This object is used by ``RenderingDevice``.
open class RDPipelineRasterizationState: RefCounted {
    override open class var godotClassName: StringName { "RDPipelineRasterizationState" }
    
    /* Properties */
    
    final public var enableDepthClamp: Bool {
        get {
            return get_enable_depth_clamp ()
        }
        
        set {
            set_enable_depth_clamp (newValue)
        }
        
    }
    
    /// If `true`, primitives are discarded immediately before the rasterization stage.
    final public var discardPrimitives: Bool {
        get {
            return get_discard_primitives ()
        }
        
        set {
            set_discard_primitives (newValue)
        }
        
    }
    
    /// If `true`, performs wireframe rendering for triangles instead of flat or textured rendering.
    final public var wireframe: Bool {
        get {
            return get_wireframe ()
        }
        
        set {
            set_wireframe (newValue)
        }
        
    }
    
    /// The cull mode to use when drawing polygons, which determines whether front faces or backfaces are hidden.
    final public var cullMode: RenderingDevice.PolygonCullMode {
        get {
            return get_cull_mode ()
        }
        
        set {
            set_cull_mode (newValue)
        }
        
    }
    
    /// The winding order to use to determine which face of a triangle is considered its front face.
    final public var frontFace: RenderingDevice.PolygonFrontFace {
        get {
            return get_front_face ()
        }
        
        set {
            set_front_face (newValue)
        }
        
    }
    
    final public var depthBiasEnabled: Bool {
        get {
            return get_depth_bias_enabled ()
        }
        
        set {
            set_depth_bias_enabled (newValue)
        }
        
    }
    
    final public var depthBiasConstantFactor: Double {
        get {
            return get_depth_bias_constant_factor ()
        }
        
        set {
            set_depth_bias_constant_factor (newValue)
        }
        
    }
    
    final public var depthBiasClamp: Double {
        get {
            return get_depth_bias_clamp ()
        }
        
        set {
            set_depth_bias_clamp (newValue)
        }
        
    }
    
    final public var depthBiasSlopeFactor: Double {
        get {
            return get_depth_bias_slope_factor ()
        }
        
        set {
            set_depth_bias_slope_factor (newValue)
        }
        
    }
    
    /// The line width to use when drawing lines (in pixels). Thick lines may not be supported on all hardware.
    final public var lineWidth: Double {
        get {
            return get_line_width ()
        }
        
        set {
            set_line_width (newValue)
        }
        
    }
    
    /// The number of control points to use when drawing a patch with tessellation enabled. Higher values result in higher quality at the cost of performance.
    final public var patchControlPoints: UInt32 {
        get {
            return get_patch_control_points ()
        }
        
        set {
            set_patch_control_points (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_enable_depth_clamp: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_enable_depth_clamp")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enable_depth_clamp (_ pMember: Bool) {
        #if false
        
        var copy_p_member = pMember
        
        gi.object_method_bind_ptrcall_v (RDPipelineRasterizationState.method_set_enable_depth_clamp, UnsafeMutableRawPointer (mutating: handle), nil, &copy_p_member)
        
        #else
        
        var copy_p_member = pMember
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_p_member) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_set_enable_depth_clamp, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_enable_depth_clamp: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_enable_depth_clamp")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_enable_depth_clamp ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_get_enable_depth_clamp, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_discard_primitives: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_discard_primitives")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_discard_primitives (_ pMember: Bool) {
        #if false
        
        var copy_p_member = pMember
        
        gi.object_method_bind_ptrcall_v (RDPipelineRasterizationState.method_set_discard_primitives, UnsafeMutableRawPointer (mutating: handle), nil, &copy_p_member)
        
        #else
        
        var copy_p_member = pMember
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_p_member) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_set_discard_primitives, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_discard_primitives: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_discard_primitives")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_discard_primitives ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_get_discard_primitives, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_wireframe: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_wireframe")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_wireframe (_ pMember: Bool) {
        #if false
        
        var copy_p_member = pMember
        
        gi.object_method_bind_ptrcall_v (RDPipelineRasterizationState.method_set_wireframe, UnsafeMutableRawPointer (mutating: handle), nil, &copy_p_member)
        
        #else
        
        var copy_p_member = pMember
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_p_member) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_set_wireframe, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_wireframe: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_wireframe")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_wireframe ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_get_wireframe, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_cull_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_cull_mode")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2662586502)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cull_mode (_ pMember: RenderingDevice.PolygonCullMode) {
        #if false
        
        var copy_p_member = Int64 (pMember.rawValue)
        
        gi.object_method_bind_ptrcall_v (RDPipelineRasterizationState.method_set_cull_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_p_member)
        
        #else
        
        var copy_p_member = Int64 (pMember.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_p_member) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_set_cull_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_cull_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_cull_mode")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2192484313)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cull_mode ()-> RenderingDevice.PolygonCullMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_get_cull_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return RenderingDevice.PolygonCullMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_front_face: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_front_face")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2637251213)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_front_face (_ pMember: RenderingDevice.PolygonFrontFace) {
        #if false
        
        var copy_p_member = Int64 (pMember.rawValue)
        
        gi.object_method_bind_ptrcall_v (RDPipelineRasterizationState.method_set_front_face, UnsafeMutableRawPointer (mutating: handle), nil, &copy_p_member)
        
        #else
        
        var copy_p_member = Int64 (pMember.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_p_member) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_set_front_face, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_front_face: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_front_face")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 708793786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_front_face ()-> RenderingDevice.PolygonFrontFace {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_get_front_face, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return RenderingDevice.PolygonFrontFace (rawValue: _result)!
    }
    
    fileprivate static var method_set_depth_bias_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_depth_bias_enabled")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth_bias_enabled (_ pMember: Bool) {
        #if false
        
        var copy_p_member = pMember
        
        gi.object_method_bind_ptrcall_v (RDPipelineRasterizationState.method_set_depth_bias_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_p_member)
        
        #else
        
        var copy_p_member = pMember
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_p_member) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_set_depth_bias_enabled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_depth_bias_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_depth_bias_enabled")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth_bias_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_get_depth_bias_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_depth_bias_constant_factor: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_depth_bias_constant_factor")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth_bias_constant_factor (_ pMember: Double) {
        #if false
        
        var copy_p_member = pMember
        
        gi.object_method_bind_ptrcall_v (RDPipelineRasterizationState.method_set_depth_bias_constant_factor, UnsafeMutableRawPointer (mutating: handle), nil, &copy_p_member)
        
        #else
        
        var copy_p_member = pMember
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_p_member) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_set_depth_bias_constant_factor, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_depth_bias_constant_factor: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_depth_bias_constant_factor")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth_bias_constant_factor ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_get_depth_bias_constant_factor, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_depth_bias_clamp: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_depth_bias_clamp")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth_bias_clamp (_ pMember: Double) {
        #if false
        
        var copy_p_member = pMember
        
        gi.object_method_bind_ptrcall_v (RDPipelineRasterizationState.method_set_depth_bias_clamp, UnsafeMutableRawPointer (mutating: handle), nil, &copy_p_member)
        
        #else
        
        var copy_p_member = pMember
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_p_member) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_set_depth_bias_clamp, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_depth_bias_clamp: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_depth_bias_clamp")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth_bias_clamp ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_get_depth_bias_clamp, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_depth_bias_slope_factor: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_depth_bias_slope_factor")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth_bias_slope_factor (_ pMember: Double) {
        #if false
        
        var copy_p_member = pMember
        
        gi.object_method_bind_ptrcall_v (RDPipelineRasterizationState.method_set_depth_bias_slope_factor, UnsafeMutableRawPointer (mutating: handle), nil, &copy_p_member)
        
        #else
        
        var copy_p_member = pMember
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_p_member) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_set_depth_bias_slope_factor, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_depth_bias_slope_factor: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_depth_bias_slope_factor")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth_bias_slope_factor ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_get_depth_bias_slope_factor, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_line_width: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_line_width")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_line_width (_ pMember: Double) {
        #if false
        
        var copy_p_member = pMember
        
        gi.object_method_bind_ptrcall_v (RDPipelineRasterizationState.method_set_line_width, UnsafeMutableRawPointer (mutating: handle), nil, &copy_p_member)
        
        #else
        
        var copy_p_member = pMember
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_p_member) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_set_line_width, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_line_width: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_line_width")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_line_width ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_get_line_width, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_patch_control_points: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_patch_control_points")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_patch_control_points (_ pMember: UInt32) {
        #if false
        
        var copy_p_member: Int = Int (pMember)
        
        gi.object_method_bind_ptrcall_v (RDPipelineRasterizationState.method_set_patch_control_points, UnsafeMutableRawPointer (mutating: handle), nil, &copy_p_member)
        
        #else
        
        var copy_p_member: Int = Int (pMember)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_p_member) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_set_patch_control_points, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_patch_control_points: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_patch_control_points")
        return withUnsafePointer (to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_patch_control_points ()-> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall (RDPipelineRasterizationState.method_get_patch_control_points, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

