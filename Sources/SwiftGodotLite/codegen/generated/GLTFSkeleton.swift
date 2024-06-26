// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

open class GLTFSkeleton: Resource {
    override open class var godotClassName: StringName { "GLTFSkeleton" }
    
    /* Properties */
    
    final public var joints: PackedInt32Array {
        get {
            return get_joints ()
        }
        
        set {
            set_joints (newValue)
        }
        
    }
    
    final public var roots: PackedInt32Array {
        get {
            return get_roots ()
        }
        
        set {
            set_roots (newValue)
        }
        
    }
    
    final public var uniqueNames: VariantCollection<String> {
        get {
            return get_unique_names ()
        }
        
        set {
            set_unique_names (newValue)
        }
        
    }
    
    final public var godotBoneNode: GDictionary {
        get {
            return get_godot_bone_node ()
        }
        
        set {
            set_godot_bone_node (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_joints: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_joints")
        return withUnsafePointer (to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 969006518)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_joints ()-> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall (GLTFSkeleton.method_get_joints, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_joints: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_joints")
        return withUnsafePointer (to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_joints (_ joints: PackedInt32Array) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (GLTFSkeleton.method_set_joints, UnsafeMutableRawPointer (mutating: handle), nil, &joints.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &joints.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFSkeleton.method_set_joints, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_roots: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_roots")
        return withUnsafePointer (to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 969006518)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_roots ()-> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall (GLTFSkeleton.method_get_roots, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_roots: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_roots")
        return withUnsafePointer (to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_roots (_ roots: PackedInt32Array) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (GLTFSkeleton.method_set_roots, UnsafeMutableRawPointer (mutating: handle), nil, &roots.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &roots.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFSkeleton.method_set_roots, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_godot_skeleton: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_godot_skeleton")
        return withUnsafePointer (to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1814733083)!
            }
            
        }
        
    }()
    
    /// 
    public final func getGodotSkeleton ()-> Skeleton3D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (GLTFSkeleton.method_get_godot_skeleton, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_unique_names: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_unique_names")
        return withUnsafePointer (to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func get_unique_names ()-> VariantCollection<String> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall (GLTFSkeleton.method_get_unique_names, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VariantCollection<String>(content: _result)
    }
    
    fileprivate static var method_set_unique_names: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_unique_names")
        return withUnsafePointer (to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func set_unique_names (_ uniqueNames: VariantCollection<String>) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (GLTFSkeleton.method_set_unique_names, UnsafeMutableRawPointer (mutating: handle), nil, &uniqueNames.array.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &uniqueNames.array.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFSkeleton.method_set_unique_names, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_godot_bone_node: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_godot_bone_node")
        return withUnsafePointer (to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2382534195)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns a ``GDictionary`` that maps skeleton bone indices to the indices of GLTF nodes. This property is unused during import, and only set during export. In a GLTF file, a bone is a node, so Godot converts skeleton bones to GLTF nodes.
    fileprivate final func get_godot_bone_node ()-> GDictionary {
        let _result: GDictionary = GDictionary ()
        gi.object_method_bind_ptrcall (GLTFSkeleton.method_get_godot_bone_node, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_godot_bone_node: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_godot_bone_node")
        return withUnsafePointer (to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets a ``GDictionary`` that maps skeleton bone indices to the indices of GLTF nodes. This property is unused during import, and only set during export. In a GLTF file, a bone is a node, so Godot converts skeleton bones to GLTF nodes.
    fileprivate final func set_godot_bone_node (_ godotBoneNode: GDictionary) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (GLTFSkeleton.method_set_godot_bone_node, UnsafeMutableRawPointer (mutating: handle), nil, &godotBoneNode.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &godotBoneNode.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFSkeleton.method_set_godot_bone_node, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_bone_attachment_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bone_attachment_count")
        return withUnsafePointer (to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// 
    public final func getBoneAttachmentCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GLTFSkeleton.method_get_bone_attachment_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_bone_attachment: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bone_attachment")
        return withUnsafePointer (to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 945440495)!
            }
            
        }
        
    }()
    
    /// 
    public final func getBoneAttachment (idx: Int32)-> BoneAttachment3D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if false
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (GLTFSkeleton.method_get_bone_attachment, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_idx)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GLTFSkeleton.method_get_bone_attachment, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
}

