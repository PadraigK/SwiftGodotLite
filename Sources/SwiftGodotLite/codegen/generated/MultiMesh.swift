// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Provides high-performance drawing of a mesh multiple times using GPU instancing.
/// 
/// MultiMesh provides low-level mesh instancing. Drawing thousands of ``MeshInstance3D`` nodes can be slow, since each object is submitted to the GPU then drawn individually.
/// 
/// MultiMesh is much faster as it can draw thousands of instances with a single draw call, resulting in less API overhead.
/// 
/// As a drawback, if the instances are too far away from each other, performance may be reduced as every single instance will always render (they are spatially indexed as one, for the whole object).
/// 
/// Since instances may have any behavior, the AABB used for visibility must be provided by the user.
/// 
/// > Note: A MultiMesh is a single object, therefore the same maximum lights per object restriction applies. This means, that once the maximum lights are consumed by one or more instances, the rest of the MultiMesh instances will **not** receive any lighting.
/// 
/// > Note: Blend Shapes will be ignored if used in a MultiMesh.
/// 
open class MultiMesh: Resource {
    override open class var godotClassName: StringName { "MultiMesh" }
    public enum TransformFormat: Int64 {
        /// Use this when using 2D transforms.
        case transform2d = 0 // TRANSFORM_2D
        /// Use this when using 3D transforms.
        case transform3d = 1 // TRANSFORM_3D
    }
    
    
    /* Properties */
    
    /// Format of transform used to transform mesh, either 2D or 3D.
    final public var transformFormat: MultiMesh.TransformFormat {
        get {
            return get_transform_format ()
        }
        
        set {
            set_transform_format (newValue)
        }
        
    }
    
    /// If `true`, the ``MultiMesh`` will use color data (see ``setInstanceColor(instance:color:)``). Can only be set when ``instanceCount`` is `0` or less. This means that you need to call this method before setting the instance count, or temporarily reset it to `0`.
    final public var useColors: Bool {
        get {
            return is_using_colors ()
        }
        
        set {
            set_use_colors (newValue)
        }
        
    }
    
    /// If `true`, the ``MultiMesh`` will use custom data (see ``setInstanceCustomData(instance:customData:)``). Can only be set when ``instanceCount`` is `0` or less. This means that you need to call this method before setting the instance count, or temporarily reset it to `0`.
    final public var useCustomData: Bool {
        get {
            return is_using_custom_data ()
        }
        
        set {
            set_use_custom_data (newValue)
        }
        
    }
    
    /// Number of instances that will get drawn. This clears and (re)sizes the buffers. Setting data format or flags afterwards will have no effect.
    /// 
    /// By default, all instances are drawn but you can limit this with ``visibleInstanceCount``.
    /// 
    final public var instanceCount: Int32 {
        get {
            return get_instance_count ()
        }
        
        set {
            set_instance_count (newValue)
        }
        
    }
    
    /// Limits the number of instances drawn, -1 draws all instances. Changing this does not change the sizes of the buffers.
    final public var visibleInstanceCount: Int32 {
        get {
            return get_visible_instance_count ()
        }
        
        set {
            set_visible_instance_count (newValue)
        }
        
    }
    
    /// ``Mesh`` resource to be instanced.
    /// 
    /// The looks of the individual instances can be modified using ``setInstanceColor(instance:color:)`` and ``setInstanceCustomData(instance:customData:)``.
    /// 
    final public var mesh: Mesh? {
        get {
            return get_mesh ()
        }
        
        set {
            set_mesh (newValue)
        }
        
    }
    
    final public var buffer: PackedFloat32Array {
        get {
            return get_buffer ()
        }
        
        set {
            set_buffer (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_mesh")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 194775623)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mesh (_ mesh: Mesh?) {
        #if false
        
        var copy_mesh_handle = mesh?.handle
        
        gi.object_method_bind_ptrcall_v (MultiMesh.method_set_mesh, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mesh_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: mesh?.handle) { p0 in
        _args.append (mesh == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (MultiMesh.method_set_mesh, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_mesh")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1808005922)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mesh ()-> Mesh? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (MultiMesh.method_get_mesh, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_use_colors: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_use_colors")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_colors (_ enable: Bool) {
        #if false
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (MultiMesh.method_set_use_colors, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiMesh.method_set_use_colors, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_using_colors: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_using_colors")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_colors ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (MultiMesh.method_is_using_colors, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_use_custom_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_use_custom_data")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_custom_data (_ enable: Bool) {
        #if false
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (MultiMesh.method_set_use_custom_data, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiMesh.method_set_use_custom_data, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_using_custom_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_using_custom_data")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_custom_data ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (MultiMesh.method_is_using_custom_data, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_transform_format: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_transform_format")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2404750322)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_transform_format (_ format: MultiMesh.TransformFormat) {
        #if false
        
        var copy_format = Int64 (format.rawValue)
        
        gi.object_method_bind_ptrcall_v (MultiMesh.method_set_transform_format, UnsafeMutableRawPointer (mutating: handle), nil, &copy_format)
        
        #else
        
        var copy_format = Int64 (format.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_format) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiMesh.method_set_transform_format, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_transform_format: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_transform_format")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2444156481)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_transform_format ()-> MultiMesh.TransformFormat {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (MultiMesh.method_get_transform_format, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return MultiMesh.TransformFormat (rawValue: _result)!
    }
    
    fileprivate static var method_set_instance_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_instance_count")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_instance_count (_ count: Int32) {
        #if false
        
        var copy_count: Int = Int (count)
        
        gi.object_method_bind_ptrcall_v (MultiMesh.method_set_instance_count, UnsafeMutableRawPointer (mutating: handle), nil, &copy_count)
        
        #else
        
        var copy_count: Int = Int (count)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_count) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiMesh.method_set_instance_count, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_instance_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_instance_count")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_instance_count ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (MultiMesh.method_get_instance_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_visible_instance_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_visible_instance_count")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visible_instance_count (_ count: Int32) {
        #if false
        
        var copy_count: Int = Int (count)
        
        gi.object_method_bind_ptrcall_v (MultiMesh.method_set_visible_instance_count, UnsafeMutableRawPointer (mutating: handle), nil, &copy_count)
        
        #else
        
        var copy_count: Int = Int (count)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_count) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiMesh.method_set_visible_instance_count, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_visible_instance_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_visible_instance_count")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visible_instance_count ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (MultiMesh.method_get_visible_instance_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_instance_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_instance_transform")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3616898986)!
            }
            
        }
        
    }()
    
    /// Sets the ``Transform3D`` for a specific instance.
    public final func setInstanceTransform (instance: Int32, transform: Transform3D) {
        #if false
        
        var copy_instance: Int = Int (instance)
        var copy_transform = transform
        
        gi.object_method_bind_ptrcall_v (MultiMesh.method_set_instance_transform, UnsafeMutableRawPointer (mutating: handle), nil, &copy_instance, &copy_transform)
        
        #else
        
        var copy_instance: Int = Int (instance)
        var copy_transform = transform
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_instance) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_transform) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (MultiMesh.method_set_instance_transform, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_instance_transform_2d: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_instance_transform_2d")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 30160968)!
            }
            
        }
        
    }()
    
    /// Sets the ``Transform2D`` for a specific instance.
    public final func setInstanceTransform2d (instance: Int32, transform: Transform2D) {
        #if false
        
        var copy_instance: Int = Int (instance)
        var copy_transform = transform
        
        gi.object_method_bind_ptrcall_v (MultiMesh.method_set_instance_transform_2d, UnsafeMutableRawPointer (mutating: handle), nil, &copy_instance, &copy_transform)
        
        #else
        
        var copy_instance: Int = Int (instance)
        var copy_transform = transform
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_instance) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_transform) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (MultiMesh.method_set_instance_transform_2d, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_instance_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_instance_transform")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1965739696)!
            }
            
        }
        
    }()
    
    /// Returns the ``Transform3D`` of a specific instance.
    public final func getInstanceTransform (instance: Int32)-> Transform3D {
        var _result: Transform3D = Transform3D ()
        #if false
        
        var copy_instance: Int = Int (instance)
        
        gi.object_method_bind_ptrcall_v (MultiMesh.method_get_instance_transform, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_instance)
        return _result
        #else
        
        var copy_instance: Int = Int (instance)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_instance) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiMesh.method_get_instance_transform, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_instance_transform_2d: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_instance_transform_2d")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3836996910)!
            }
            
        }
        
    }()
    
    /// Returns the ``Transform2D`` of a specific instance.
    public final func getInstanceTransform2d (instance: Int32)-> Transform2D {
        var _result: Transform2D = Transform2D ()
        #if false
        
        var copy_instance: Int = Int (instance)
        
        gi.object_method_bind_ptrcall_v (MultiMesh.method_get_instance_transform_2d, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_instance)
        return _result
        #else
        
        var copy_instance: Int = Int (instance)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_instance) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiMesh.method_get_instance_transform_2d, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_instance_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_instance_color")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2878471219)!
            }
            
        }
        
    }()
    
    /// Sets the color of a specific instance by _multiplying_ the mesh's existing vertex colors. This allows for different color tinting per instance.
    /// 
    /// For the color to take effect, ensure that ``useColors`` is `true` on the ``MultiMesh`` and ``BaseMaterial3D/vertexColorUseAsAlbedo`` is `true` on the material. If you intend to set an absolute color instead of tinting, make sure the material's albedo color is set to pure white (`Color(1, 1, 1)`).
    /// 
    public final func setInstanceColor (instance: Int32, color: Color) {
        #if false
        
        var copy_instance: Int = Int (instance)
        var copy_color = color
        
        gi.object_method_bind_ptrcall_v (MultiMesh.method_set_instance_color, UnsafeMutableRawPointer (mutating: handle), nil, &copy_instance, &copy_color)
        
        #else
        
        var copy_instance: Int = Int (instance)
        var copy_color = color
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_instance) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_color) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (MultiMesh.method_set_instance_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_instance_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_instance_color")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3457211756)!
            }
            
        }
        
    }()
    
    /// Gets a specific instance's color multiplier.
    public final func getInstanceColor (instance: Int32)-> Color {
        var _result: Color = Color ()
        #if false
        
        var copy_instance: Int = Int (instance)
        
        gi.object_method_bind_ptrcall_v (MultiMesh.method_get_instance_color, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_instance)
        return _result
        #else
        
        var copy_instance: Int = Int (instance)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_instance) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiMesh.method_get_instance_color, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_instance_custom_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_instance_custom_data")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2878471219)!
            }
            
        }
        
    }()
    
    /// Sets custom data for a specific instance. Although ``Color`` is used, it is just a container for 4 floating point numbers.
    /// 
    /// For the custom data to be used, ensure that ``useCustomData`` is `true`.
    /// 
    /// This custom instance data has to be manually accessed in your custom shader using `INSTANCE_CUSTOM`.
    /// 
    public final func setInstanceCustomData (instance: Int32, customData: Color) {
        #if false
        
        var copy_instance: Int = Int (instance)
        var copy_custom_data = customData
        
        gi.object_method_bind_ptrcall_v (MultiMesh.method_set_instance_custom_data, UnsafeMutableRawPointer (mutating: handle), nil, &copy_instance, &copy_custom_data)
        
        #else
        
        var copy_instance: Int = Int (instance)
        var copy_custom_data = customData
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_instance) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_custom_data) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (MultiMesh.method_set_instance_custom_data, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_instance_custom_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_instance_custom_data")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3457211756)!
            }
            
        }
        
    }()
    
    /// Returns the custom data that has been set for a specific instance.
    public final func getInstanceCustomData (instance: Int32)-> Color {
        var _result: Color = Color ()
        #if false
        
        var copy_instance: Int = Int (instance)
        
        gi.object_method_bind_ptrcall_v (MultiMesh.method_get_instance_custom_data, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_instance)
        return _result
        #else
        
        var copy_instance: Int = Int (instance)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_instance) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiMesh.method_get_instance_custom_data, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_aabb: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_aabb")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1068685055)!
            }
            
        }
        
    }()
    
    /// Returns the visibility axis-aligned bounding box in local space.
    public final func getAabb ()-> AABB {
        var _result: AABB = AABB ()
        gi.object_method_bind_ptrcall (MultiMesh.method_get_aabb, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_buffer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_buffer")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 675695659)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_buffer ()-> PackedFloat32Array {
        let _result: PackedFloat32Array = PackedFloat32Array ()
        gi.object_method_bind_ptrcall (MultiMesh.method_get_buffer, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_buffer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_buffer")
        return withUnsafePointer (to: &MultiMesh.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2899603908)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_buffer (_ buffer: PackedFloat32Array) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (MultiMesh.method_set_buffer, UnsafeMutableRawPointer (mutating: handle), nil, &buffer.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &buffer.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MultiMesh.method_set_buffer, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
}

