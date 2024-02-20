// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Abstract base class for layered texture RD types.
/// 
/// Base class for ``Texture2DArrayRD``, ``TextureCubemapRD`` and ``TextureCubemapArrayRD``. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types.
open class TextureLayeredRD: TextureLayered {
    override open class var godotClassName: StringName { "TextureLayeredRD" }
    
    /* Properties */
    
    /// The RID of the texture object created on the ``RenderingDevice``.
    final public var textureRdRid: RID {
        get {
            return get_texture_rd_rid ()
        }
        
        set {
            set_texture_rd_rid (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_texture_rd_rid: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_texture_rd_rid")
        return withUnsafePointer (to: &TextureLayeredRD.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_rd_rid (_ textureRdRid: RID) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (TextureLayeredRD.method_set_texture_rd_rid, UnsafeMutableRawPointer (mutating: handle), nil, &textureRdRid.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &textureRdRid.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TextureLayeredRD.method_set_texture_rd_rid, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_texture_rd_rid: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_texture_rd_rid")
        return withUnsafePointer (to: &TextureLayeredRD.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_rd_rid ()-> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall (TextureLayeredRD.method_get_texture_rd_rid, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
}
