// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A modification that uses FABRIK to manipulate a series of ``Bone2D`` nodes to reach a target.
/// 
/// This ``SkeletonModification2D`` uses an algorithm called Forward And Backward Reaching Inverse Kinematics, or FABRIK, to rotate a bone chain so that it reaches a target.
/// 
/// FABRIK works by knowing the positions and lengths of a series of bones, typically called a "bone chain". It first starts by running a forward pass, which places the final bone at the target's position. Then all other bones are moved towards the tip bone, so they stay at the defined bone length away. Then a backwards pass is performed, where the root/first bone in the FABRIK chain is placed back at the origin. Then all other bones are moved so they stay at the defined bone length away. This positions the bone chain so that it reaches the target when possible, but all of the bones stay the correct length away from each other.
/// 
/// Because of how FABRIK works, it often gives more natural results than those seen in ``SkeletonModification2DCCDIK``. FABRIK also supports angle constraints, which are fully taken into account when solving.
/// 
/// > Note: The FABRIK modifier has `fabrik_joints`, which are the data objects that hold the data for each joint in the FABRIK chain. This is different from ``Bone2D`` nodes! FABRIK joints hold the data needed for each ``Bone2D`` in the bone chain used by FABRIK.
/// 
/// To help control how the FABRIK joints move, a magnet vector can be passed, which can nudge the bones in a certain direction prior to solving, giving a level of control over the final result.
/// 
open class SkeletonModification2DFABRIK: SkeletonModification2D {
    override open class var godotClassName: StringName { "SkeletonModification2DFABRIK" }
    
    /* Properties */
    
    /// The NodePath to the node that is the target for the FABRIK modification. This node is what the FABRIK chain will attempt to rotate the bone chain to.
    final public var targetNodepath: NodePath {
        get {
            return get_target_node ()
        }
        
        set {
            set_target_node (newValue)
        }
        
    }
    
    /// The number of FABRIK joints in the FABRIK modification.
    final public var fabrikDataChainLength: Int32 {
        get {
            return get_fabrik_data_chain_length ()
        }
        
        set {
            set_fabrik_data_chain_length (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_target_node: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_target_node")
        return withUnsafePointer (to: &SkeletonModification2DFABRIK.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_target_node (_ targetNodepath: NodePath) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (SkeletonModification2DFABRIK.method_set_target_node, UnsafeMutableRawPointer (mutating: handle), nil, &targetNodepath.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &targetNodepath.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonModification2DFABRIK.method_set_target_node, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_target_node: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_target_node")
        return withUnsafePointer (to: &SkeletonModification2DFABRIK.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_target_node ()-> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall (SkeletonModification2DFABRIK.method_get_target_node, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_fabrik_data_chain_length: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_fabrik_data_chain_length")
        return withUnsafePointer (to: &SkeletonModification2DFABRIK.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fabrik_data_chain_length (_ length: Int32) {
        #if false
        
        var copy_length: Int = Int (length)
        
        gi.object_method_bind_ptrcall_v (SkeletonModification2DFABRIK.method_set_fabrik_data_chain_length, UnsafeMutableRawPointer (mutating: handle), nil, &copy_length)
        
        #else
        
        var copy_length: Int = Int (length)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_length) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonModification2DFABRIK.method_set_fabrik_data_chain_length, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_fabrik_data_chain_length: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_fabrik_data_chain_length")
        return withUnsafePointer (to: &SkeletonModification2DFABRIK.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fabrik_data_chain_length ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (SkeletonModification2DFABRIK.method_get_fabrik_data_chain_length, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_fabrik_joint_bone2d_node: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_fabrik_joint_bone2d_node")
        return withUnsafePointer (to: &SkeletonModification2DFABRIK.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2761262315)!
            }
            
        }
        
    }()
    
    /// Sets the ``Bone2D`` node assigned to the FABRIK joint at `jointIdx`.
    public final func setFabrikJointBone2dNode (jointIdx: Int32, bone2dNodepath: NodePath) {
        #if false
        
        var copy_joint_idx: Int = Int (jointIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonModification2DFABRIK.method_set_fabrik_joint_bone2d_node, UnsafeMutableRawPointer (mutating: handle), nil, &copy_joint_idx, &bone2dNodepath.content)
        
        #else
        
        var copy_joint_idx: Int = Int (jointIdx)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_joint_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &bone2dNodepath.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (SkeletonModification2DFABRIK.method_set_fabrik_joint_bone2d_node, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_fabrik_joint_bone2d_node: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_fabrik_joint_bone2d_node")
        return withUnsafePointer (to: &SkeletonModification2DFABRIK.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 408788394)!
            }
            
        }
        
    }()
    
    /// Returns the ``Bone2D`` node assigned to the FABRIK joint at `jointIdx`.
    public final func getFabrikJointBone2dNode (jointIdx: Int32)-> NodePath {
        let _result: NodePath = NodePath ()
        #if false
        
        var copy_joint_idx: Int = Int (jointIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonModification2DFABRIK.method_get_fabrik_joint_bone2d_node, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_joint_idx)
        return _result
        #else
        
        var copy_joint_idx: Int = Int (jointIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_joint_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonModification2DFABRIK.method_get_fabrik_joint_bone2d_node, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_fabrik_joint_bone_index: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_fabrik_joint_bone_index")
        return withUnsafePointer (to: &SkeletonModification2DFABRIK.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the bone index, `boneIdx`, of the FABRIK joint at `jointIdx`. When possible, this will also update the `bone2d_node` of the FABRIK joint based on data provided by the linked skeleton.
    public final func setFabrikJointBoneIndex (jointIdx: Int32, boneIdx: Int32) {
        #if false
        
        var copy_joint_idx: Int = Int (jointIdx)
        var copy_bone_idx: Int = Int (boneIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonModification2DFABRIK.method_set_fabrik_joint_bone_index, UnsafeMutableRawPointer (mutating: handle), nil, &copy_joint_idx, &copy_bone_idx)
        
        #else
        
        var copy_joint_idx: Int = Int (jointIdx)
        var copy_bone_idx: Int = Int (boneIdx)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_joint_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_bone_idx) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (SkeletonModification2DFABRIK.method_set_fabrik_joint_bone_index, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_fabrik_joint_bone_index: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_fabrik_joint_bone_index")
        return withUnsafePointer (to: &SkeletonModification2DFABRIK.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the index of the ``Bone2D`` node assigned to the FABRIK joint at `jointIdx`.
    public final func getFabrikJointBoneIndex (jointIdx: Int32)-> Int32 {
        var _result: Int32 = 0
        #if false
        
        var copy_joint_idx: Int = Int (jointIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonModification2DFABRIK.method_get_fabrik_joint_bone_index, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_joint_idx)
        return _result
        #else
        
        var copy_joint_idx: Int = Int (jointIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_joint_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonModification2DFABRIK.method_get_fabrik_joint_bone_index, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_fabrik_joint_magnet_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_fabrik_joint_magnet_position")
        return withUnsafePointer (to: &SkeletonModification2DFABRIK.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 163021252)!
            }
            
        }
        
    }()
    
    /// Sets the magnet position vector for the joint at `jointIdx`.
    public final func setFabrikJointMagnetPosition (jointIdx: Int32, magnetPosition: Vector2) {
        #if false
        
        var copy_joint_idx: Int = Int (jointIdx)
        var copy_magnet_position = magnetPosition
        
        gi.object_method_bind_ptrcall_v (SkeletonModification2DFABRIK.method_set_fabrik_joint_magnet_position, UnsafeMutableRawPointer (mutating: handle), nil, &copy_joint_idx, &copy_magnet_position)
        
        #else
        
        var copy_joint_idx: Int = Int (jointIdx)
        var copy_magnet_position = magnetPosition
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_joint_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_magnet_position) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (SkeletonModification2DFABRIK.method_set_fabrik_joint_magnet_position, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_fabrik_joint_magnet_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_fabrik_joint_magnet_position")
        return withUnsafePointer (to: &SkeletonModification2DFABRIK.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2299179447)!
            }
            
        }
        
    }()
    
    /// Returns the magnet position vector for the joint at `jointIdx`.
    public final func getFabrikJointMagnetPosition (jointIdx: Int32)-> Vector2 {
        var _result: Vector2 = Vector2 ()
        #if false
        
        var copy_joint_idx: Int = Int (jointIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonModification2DFABRIK.method_get_fabrik_joint_magnet_position, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_joint_idx)
        return _result
        #else
        
        var copy_joint_idx: Int = Int (jointIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_joint_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonModification2DFABRIK.method_get_fabrik_joint_magnet_position, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_fabrik_joint_use_target_rotation: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_fabrik_joint_use_target_rotation")
        return withUnsafePointer (to: &SkeletonModification2DFABRIK.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Sets whether the joint at `jointIdx` will use the target node's rotation rather than letting FABRIK rotate the node.
    /// 
    /// > Note: This option only works for the tip/final joint in the chain. For all other nodes, this option will be ignored.
    /// 
    public final func setFabrikJointUseTargetRotation (jointIdx: Int32, useTargetRotation: Bool) {
        #if false
        
        var copy_joint_idx: Int = Int (jointIdx)
        var copy_use_target_rotation = useTargetRotation
        
        gi.object_method_bind_ptrcall_v (SkeletonModification2DFABRIK.method_set_fabrik_joint_use_target_rotation, UnsafeMutableRawPointer (mutating: handle), nil, &copy_joint_idx, &copy_use_target_rotation)
        
        #else
        
        var copy_joint_idx: Int = Int (jointIdx)
        var copy_use_target_rotation = useTargetRotation
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_joint_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_use_target_rotation) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (SkeletonModification2DFABRIK.method_set_fabrik_joint_use_target_rotation, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_fabrik_joint_use_target_rotation: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_fabrik_joint_use_target_rotation")
        return withUnsafePointer (to: &SkeletonModification2DFABRIK.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether the joint is using the target's rotation rather than allowing FABRIK to rotate the joint. This option only applies to the tip/final joint in the chain.
    public final func getFabrikJointUseTargetRotation (jointIdx: Int32)-> Bool {
        var _result: Bool = false
        #if false
        
        var copy_joint_idx: Int = Int (jointIdx)
        
        gi.object_method_bind_ptrcall_v (SkeletonModification2DFABRIK.method_get_fabrik_joint_use_target_rotation, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_joint_idx)
        return _result
        #else
        
        var copy_joint_idx: Int = Int (jointIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_joint_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SkeletonModification2DFABRIK.method_get_fabrik_joint_use_target_rotation, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
}

