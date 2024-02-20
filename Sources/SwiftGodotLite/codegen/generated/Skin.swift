// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

open class Skin: Resource {
    override open class var godotClassName: StringName { "Skin" }
    /* Methods */
    fileprivate static var method_set_bind_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_bind_count")
        return withUnsafePointer (to: &Skin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// 
    public final func setBindCount (_ bindCount: Int32) {
        #if false
        
        var copy_bind_count: Int = Int (bindCount)
        
        gi.object_method_bind_ptrcall_v (Skin.method_set_bind_count, UnsafeMutableRawPointer (mutating: handle), nil, &copy_bind_count)
        
        #else
        
        var copy_bind_count: Int = Int (bindCount)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_bind_count) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Skin.method_set_bind_count, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_bind_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bind_count")
        return withUnsafePointer (to: &Skin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// 
    public final func getBindCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (Skin.method_get_bind_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_add_bind: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_bind")
        return withUnsafePointer (to: &Skin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3616898986)!
            }
            
        }
        
    }()
    
    /// 
    public final func addBind (bone: Int32, pose: Transform3D) {
        #if false
        
        var copy_bone: Int = Int (bone)
        var copy_pose = pose
        
        gi.object_method_bind_ptrcall_v (Skin.method_add_bind, UnsafeMutableRawPointer (mutating: handle), nil, &copy_bone, &copy_pose)
        
        #else
        
        var copy_bone: Int = Int (bone)
        var copy_pose = pose
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_bone) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_pose) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Skin.method_add_bind, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_add_named_bind: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_named_bind")
        return withUnsafePointer (to: &Skin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3154712474)!
            }
            
        }
        
    }()
    
    /// 
    public final func addNamedBind (name: String, pose: Transform3D) {
        #if false
        
        let gstr_name = GString (name)
        var copy_pose = pose
        
        gi.object_method_bind_ptrcall_v (Skin.method_add_named_bind, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_name.content, &copy_pose)
        
        #else
        
        let gstr_name = GString (name)
        var copy_pose = pose
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_pose) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Skin.method_add_named_bind, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_bind_pose: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_bind_pose")
        return withUnsafePointer (to: &Skin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3616898986)!
            }
            
        }
        
    }()
    
    /// 
    public final func setBindPose (bindIndex: Int32, pose: Transform3D) {
        #if false
        
        var copy_bind_index: Int = Int (bindIndex)
        var copy_pose = pose
        
        gi.object_method_bind_ptrcall_v (Skin.method_set_bind_pose, UnsafeMutableRawPointer (mutating: handle), nil, &copy_bind_index, &copy_pose)
        
        #else
        
        var copy_bind_index: Int = Int (bindIndex)
        var copy_pose = pose
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_bind_index) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_pose) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Skin.method_set_bind_pose, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_bind_pose: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bind_pose")
        return withUnsafePointer (to: &Skin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1965739696)!
            }
            
        }
        
    }()
    
    /// 
    public final func getBindPose (bindIndex: Int32)-> Transform3D {
        var _result: Transform3D = Transform3D ()
        #if false
        
        var copy_bind_index: Int = Int (bindIndex)
        
        gi.object_method_bind_ptrcall_v (Skin.method_get_bind_pose, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_bind_index)
        return _result
        #else
        
        var copy_bind_index: Int = Int (bindIndex)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_bind_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Skin.method_get_bind_pose, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_bind_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_bind_name")
        return withUnsafePointer (to: &Skin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3780747571)!
            }
            
        }
        
    }()
    
    /// 
    public final func setBindName (bindIndex: Int32, name: StringName) {
        #if false
        
        var copy_bind_index: Int = Int (bindIndex)
        
        gi.object_method_bind_ptrcall_v (Skin.method_set_bind_name, UnsafeMutableRawPointer (mutating: handle), nil, &copy_bind_index, &name.content)
        
        #else
        
        var copy_bind_index: Int = Int (bindIndex)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_bind_index) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &name.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Skin.method_set_bind_name, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_bind_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bind_name")
        return withUnsafePointer (to: &Skin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// 
    public final func getBindName (bindIndex: Int32)-> StringName {
        let _result: StringName = StringName ()
        #if false
        
        var copy_bind_index: Int = Int (bindIndex)
        
        gi.object_method_bind_ptrcall_v (Skin.method_get_bind_name, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_bind_index)
        return _result
        #else
        
        var copy_bind_index: Int = Int (bindIndex)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_bind_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Skin.method_get_bind_name, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_bind_bone: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_bind_bone")
        return withUnsafePointer (to: &Skin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// 
    public final func setBindBone (bindIndex: Int32, bone: Int32) {
        #if false
        
        var copy_bind_index: Int = Int (bindIndex)
        var copy_bone: Int = Int (bone)
        
        gi.object_method_bind_ptrcall_v (Skin.method_set_bind_bone, UnsafeMutableRawPointer (mutating: handle), nil, &copy_bind_index, &copy_bone)
        
        #else
        
        var copy_bind_index: Int = Int (bindIndex)
        var copy_bone: Int = Int (bone)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_bind_index) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_bone) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Skin.method_set_bind_bone, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_bind_bone: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bind_bone")
        return withUnsafePointer (to: &Skin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// 
    public final func getBindBone (bindIndex: Int32)-> Int32 {
        var _result: Int32 = 0
        #if false
        
        var copy_bind_index: Int = Int (bindIndex)
        
        gi.object_method_bind_ptrcall_v (Skin.method_get_bind_bone, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_bind_index)
        return _result
        #else
        
        var copy_bind_index: Int = Int (bindIndex)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_bind_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Skin.method_get_bind_bone, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_clear_binds: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear_binds")
        return withUnsafePointer (to: &Skin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    public final func clearBinds () {
        gi.object_method_bind_ptrcall (Skin.method_clear_binds, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
}

