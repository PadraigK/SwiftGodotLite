// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Base class for a profile of a virtual skeleton used as a target for retargeting.
/// 
/// This resource is used in ``EditorScenePostImport``. Some parameters are referring to bones in ``Skeleton3D``, ``Skin``, ``Animation``, and some other nodes are rewritten based on the parameters of ``SkeletonProfile``.
/// 
/// > Note: These parameters need to be set only when creating a custom profile. In ``SkeletonProfileHumanoid``, they are defined internally as read-only values.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``profileUpdated``
open class SkeletonProfile: Resource {
    override open class var godotClassName: StringName { "SkeletonProfile" }
    public enum TailDirection: Int64 {
        /// Direction to the average coordinates of bone children.
        case averageChildren = 0 // TAIL_DIRECTION_AVERAGE_CHILDREN
        /// Direction to the coordinates of specified bone child.
        case specificChild = 1 // TAIL_DIRECTION_SPECIFIC_CHILD
        /// Direction is not calculated.
        case end = 2 // TAIL_DIRECTION_END
    }
    
    
    /* Properties */
    
    /// A bone name that will be used as the root bone in ``AnimationTree``. This should be the bone of the parent of hips that exists at the world origin.
    final public var rootBone: StringName {
        get {
            return get_root_bone ()
        }
        
        set {
            set_root_bone (newValue)
        }
        
    }
    
    /// A bone name which will use model's height as the coefficient for normalization. For example, ``SkeletonProfileHumanoid`` defines it as `Hips`.
    final public var scaleBaseBone: StringName {
        get {
            return get_scale_base_bone ()
        }
        
        set {
            set_scale_base_bone (newValue)
        }
        
    }
    
    /// The amount of groups of bones in retargeting section's ``BoneMap`` editor. For example, ``SkeletonProfileHumanoid`` has 4 groups.
    /// 
    /// This property exists to separate the bone list into several sections in the editor.
    /// 
    final public var groupSize: Int32 {
        get {
            return get_group_size ()
        }
        
        set {
            set_group_size (newValue)
        }
        
    }
    
    /// The amount of bones in retargeting section's ``BoneMap`` editor. For example, ``SkeletonProfileHumanoid`` has 56 bones.
    /// 
    /// The size of elements in ``BoneMap`` updates when changing this property in it's assigned ``SkeletonProfile``.
    /// 
    final public var boneSize: Int32 {
        get {
            return get_bone_size ()
        }
        
        set {
            set_bone_size (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_root_bone: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_root_bone")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_root_bone (_ boneName: StringName) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_set_root_bone, UnsafeMutableRawPointer (mutating: handle), nil, &boneName.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &boneName.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonProfile.method_set_root_bone, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_root_bone: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_root_bone")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2737447660)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_root_bone ()-> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall (SkeletonProfile.method_get_root_bone, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_scale_base_bone: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_scale_base_bone")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scale_base_bone (_ boneName: StringName) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_set_scale_base_bone, UnsafeMutableRawPointer (mutating: handle), nil, &boneName.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &boneName.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonProfile.method_set_scale_base_bone, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_scale_base_bone: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_scale_base_bone")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2737447660)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scale_base_bone ()-> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall (SkeletonProfile.method_get_scale_base_bone, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_group_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_group_size")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_group_size (_ size: Int32) {
        #if false
        
        var copy_size: Int = Int (size)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_set_group_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_size)
        
        #else
        
        var copy_size: Int = Int (size)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonProfile.method_set_group_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_group_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_group_size")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_group_size ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (SkeletonProfile.method_get_group_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_group_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_group_name")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the name of the group at `groupIdx` that will be the drawing group in the ``BoneMap`` editor.
    public final func getGroupName (groupIdx: Int32)-> StringName {
        let _result: StringName = StringName ()
        #if false
        
        var copy_group_idx: Int = Int (groupIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_get_group_name, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_group_idx)
        return _result
        #else
        
        var copy_group_idx: Int = Int (groupIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_group_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonProfile.method_get_group_name, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_group_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_group_name")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3780747571)!
            }
            
        }
        
    }()
    
    /// Sets the name of the group at `groupIdx` that will be the drawing group in the ``BoneMap`` editor.
    public final func setGroupName (groupIdx: Int32, groupName: StringName) {
        #if false
        
        var copy_group_idx: Int = Int (groupIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_set_group_name, UnsafeMutableRawPointer (mutating: handle), nil, &copy_group_idx, &groupName.content)
        
        #else
        
        var copy_group_idx: Int = Int (groupIdx)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_group_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &groupName.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (SkeletonProfile.method_set_group_name, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_texture")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3536238170)!
            }
            
        }
        
    }()
    
    /// Returns the texture of the group at `groupIdx` that will be the drawing group background image in the ``BoneMap`` editor.
    public final func getTexture (groupIdx: Int32)-> Texture2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if false
        
        var copy_group_idx: Int = Int (groupIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_get_texture, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_group_idx)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_group_idx: Int = Int (groupIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_group_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonProfile.method_get_texture, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_set_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_texture")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 666127730)!
            }
            
        }
        
    }()
    
    /// Sets the texture of the group at `groupIdx` that will be the drawing group background image in the ``BoneMap`` editor.
    public final func setTexture (groupIdx: Int32, texture: Texture2D?) {
        #if false
        
        var copy_group_idx: Int = Int (groupIdx)
        var copy_texture_handle = texture?.handle
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_set_texture, UnsafeMutableRawPointer (mutating: handle), nil, &copy_group_idx, &copy_texture_handle)
        
        #else
        
        var copy_group_idx: Int = Int (groupIdx)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_group_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: texture?.handle) { p1 in
            _args.append (texture == nil ? nil : p1)
        
                gi.object_method_bind_ptrcall (SkeletonProfile.method_set_texture, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_bone_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_bone_size")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bone_size (_ size: Int32) {
        #if false
        
        var copy_size: Int = Int (size)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_set_bone_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_size)
        
        #else
        
        var copy_size: Int = Int (size)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonProfile.method_set_bone_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_bone_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bone_size")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bone_size ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (SkeletonProfile.method_get_bone_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_find_bone: GDExtensionMethodBindPtr = {
        let methodName = StringName ("find_bone")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2458036349)!
            }
            
        }
        
    }()
    
    /// Returns the bone index that matches `boneName` as its name.
    public final func findBone (boneName: StringName)-> Int32 {
        var _result: Int32 = 0
        #if false
        
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_find_bone, UnsafeMutableRawPointer (mutating: handle), &_result, &boneName.content)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &boneName.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonProfile.method_find_bone, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_bone_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bone_name")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the name of the bone at `boneIdx` that will be the key name in the ``BoneMap``.
    /// 
    /// In the retargeting process, the returned bone name is the bone name of the target skeleton.
    /// 
    public final func getBoneName (boneIdx: Int32)-> StringName {
        let _result: StringName = StringName ()
        #if false
        
        var copy_bone_idx: Int = Int (boneIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_get_bone_name, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_bone_idx)
        return _result
        #else
        
        var copy_bone_idx: Int = Int (boneIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_bone_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonProfile.method_get_bone_name, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_bone_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_bone_name")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3780747571)!
            }
            
        }
        
    }()
    
    /// Sets the name of the bone at `boneIdx` that will be the key name in the ``BoneMap``.
    /// 
    /// In the retargeting process, the setting bone name is the bone name of the target skeleton.
    /// 
    public final func setBoneName (boneIdx: Int32, boneName: StringName) {
        #if false
        
        var copy_bone_idx: Int = Int (boneIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_set_bone_name, UnsafeMutableRawPointer (mutating: handle), nil, &copy_bone_idx, &boneName.content)
        
        #else
        
        var copy_bone_idx: Int = Int (boneIdx)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_bone_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &boneName.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (SkeletonProfile.method_set_bone_name, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_bone_parent: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bone_parent")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the name of the bone which is the parent to the bone at `boneIdx`. The result is empty if the bone has no parent.
    public final func getBoneParent (boneIdx: Int32)-> StringName {
        let _result: StringName = StringName ()
        #if false
        
        var copy_bone_idx: Int = Int (boneIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_get_bone_parent, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_bone_idx)
        return _result
        #else
        
        var copy_bone_idx: Int = Int (boneIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_bone_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonProfile.method_get_bone_parent, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_bone_parent: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_bone_parent")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3780747571)!
            }
            
        }
        
    }()
    
    /// Sets the bone with name `boneParent` as the parent of the bone at `boneIdx`. If an empty string is passed, then the bone has no parent.
    public final func setBoneParent (boneIdx: Int32, boneParent: StringName) {
        #if false
        
        var copy_bone_idx: Int = Int (boneIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_set_bone_parent, UnsafeMutableRawPointer (mutating: handle), nil, &copy_bone_idx, &boneParent.content)
        
        #else
        
        var copy_bone_idx: Int = Int (boneIdx)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_bone_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &boneParent.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (SkeletonProfile.method_set_bone_parent, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_tail_direction: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_tail_direction")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2675997574)!
            }
            
        }
        
    }()
    
    /// Returns the tail direction of the bone at `boneIdx`.
    public final func getTailDirection (boneIdx: Int32)-> SkeletonProfile.TailDirection {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        var copy_bone_idx: Int = Int (boneIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_get_tail_direction, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_bone_idx)
        return SkeletonProfile.TailDirection (rawValue: _result)!
        #else
        
        var copy_bone_idx: Int = Int (boneIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_bone_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonProfile.method_get_tail_direction, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return SkeletonProfile.TailDirection (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_set_tail_direction: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_tail_direction")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1231951015)!
            }
            
        }
        
    }()
    
    /// Sets the tail direction of the bone at `boneIdx`.
    /// 
    /// > Note: This only specifies the method of calculation. The actual coordinates required should be stored in an external skeleton, so the calculation itself needs to be done externally.
    /// 
    public final func setTailDirection (boneIdx: Int32, tailDirection: SkeletonProfile.TailDirection) {
        #if false
        
        var copy_bone_idx: Int = Int (boneIdx)
        var copy_tail_direction = Int64 (tailDirection.rawValue)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_set_tail_direction, UnsafeMutableRawPointer (mutating: handle), nil, &copy_bone_idx, &copy_tail_direction)
        
        #else
        
        var copy_bone_idx: Int = Int (boneIdx)
        var copy_tail_direction = Int64 (tailDirection.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_bone_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_tail_direction) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (SkeletonProfile.method_set_tail_direction, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_bone_tail: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bone_tail")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the name of the bone which is the tail of the bone at `boneIdx`.
    public final func getBoneTail (boneIdx: Int32)-> StringName {
        let _result: StringName = StringName ()
        #if false
        
        var copy_bone_idx: Int = Int (boneIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_get_bone_tail, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_bone_idx)
        return _result
        #else
        
        var copy_bone_idx: Int = Int (boneIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_bone_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonProfile.method_get_bone_tail, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_bone_tail: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_bone_tail")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3780747571)!
            }
            
        }
        
    }()
    
    /// Sets the bone with name `boneTail` as the tail of the bone at `boneIdx`.
    public final func setBoneTail (boneIdx: Int32, boneTail: StringName) {
        #if false
        
        var copy_bone_idx: Int = Int (boneIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_set_bone_tail, UnsafeMutableRawPointer (mutating: handle), nil, &copy_bone_idx, &boneTail.content)
        
        #else
        
        var copy_bone_idx: Int = Int (boneIdx)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_bone_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &boneTail.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (SkeletonProfile.method_set_bone_tail, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_reference_pose: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_reference_pose")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1965739696)!
            }
            
        }
        
    }()
    
    /// Returns the reference pose transform for bone `boneIdx`.
    public final func getReferencePose (boneIdx: Int32)-> Transform3D {
        var _result: Transform3D = Transform3D ()
        #if false
        
        var copy_bone_idx: Int = Int (boneIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_get_reference_pose, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_bone_idx)
        return _result
        #else
        
        var copy_bone_idx: Int = Int (boneIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_bone_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonProfile.method_get_reference_pose, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_reference_pose: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_reference_pose")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3616898986)!
            }
            
        }
        
    }()
    
    /// Sets the reference pose transform for bone `boneIdx`.
    public final func setReferencePose (boneIdx: Int32, boneName: Transform3D) {
        #if false
        
        var copy_bone_idx: Int = Int (boneIdx)
        var copy_bone_name = boneName
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_set_reference_pose, UnsafeMutableRawPointer (mutating: handle), nil, &copy_bone_idx, &copy_bone_name)
        
        #else
        
        var copy_bone_idx: Int = Int (boneIdx)
        var copy_bone_name = boneName
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_bone_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_bone_name) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (SkeletonProfile.method_set_reference_pose, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_handle_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_handle_offset")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2299179447)!
            }
            
        }
        
    }()
    
    /// Returns the offset of the bone at `boneIdx` that will be the button position in the ``BoneMap`` editor.
    /// 
    /// This is the offset with origin at the top left corner of the square.
    /// 
    public final func getHandleOffset (boneIdx: Int32)-> Vector2 {
        var _result: Vector2 = Vector2 ()
        #if false
        
        var copy_bone_idx: Int = Int (boneIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_get_handle_offset, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_bone_idx)
        return _result
        #else
        
        var copy_bone_idx: Int = Int (boneIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_bone_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonProfile.method_get_handle_offset, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_handle_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_handle_offset")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 163021252)!
            }
            
        }
        
    }()
    
    /// Sets the offset of the bone at `boneIdx` that will be the button position in the ``BoneMap`` editor.
    /// 
    /// This is the offset with origin at the top left corner of the square.
    /// 
    public final func setHandleOffset (boneIdx: Int32, handleOffset: Vector2) {
        #if false
        
        var copy_bone_idx: Int = Int (boneIdx)
        var copy_handle_offset = handleOffset
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_set_handle_offset, UnsafeMutableRawPointer (mutating: handle), nil, &copy_bone_idx, &copy_handle_offset)
        
        #else
        
        var copy_bone_idx: Int = Int (boneIdx)
        var copy_handle_offset = handleOffset
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_bone_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_handle_offset) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (SkeletonProfile.method_set_handle_offset, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_group: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_group")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the group of the bone at `boneIdx`.
    public final func getGroup (boneIdx: Int32)-> StringName {
        let _result: StringName = StringName ()
        #if false
        
        var copy_bone_idx: Int = Int (boneIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_get_group, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_bone_idx)
        return _result
        #else
        
        var copy_bone_idx: Int = Int (boneIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_bone_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonProfile.method_get_group, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_group: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_group")
        return withUnsafePointer (to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3780747571)!
            }
            
        }
        
    }()
    
    /// Sets the group of the bone at `boneIdx`.
    public final func setGroup (boneIdx: Int32, group: StringName) {
        #if false
        
        var copy_bone_idx: Int = Int (boneIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonProfile.method_set_group, UnsafeMutableRawPointer (mutating: handle), nil, &copy_bone_idx, &group.content)
        
        #else
        
        var copy_bone_idx: Int = Int (boneIdx)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_bone_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &group.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (SkeletonProfile.method_set_group, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    // Signals 
    /// This signal is emitted when change the value in profile. This is used to update key name in the ``BoneMap`` and to redraw the ``BoneMap`` editor.
    /// 
    /// > Note: This signal is not connected directly to editor to simplify the reference, instead it is passed on to editor through the ``BoneMap``.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.profileUpdated.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var profileUpdated: SimpleSignal { SimpleSignal (target: self, signalName: "profile_updated") }
    
}

