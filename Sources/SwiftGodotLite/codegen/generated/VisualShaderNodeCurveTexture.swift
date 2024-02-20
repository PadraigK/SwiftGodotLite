// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Performs a ``CurveTexture`` lookup within the visual shader graph.
/// 
/// Comes with a built-in editor for texture's curves.
open class VisualShaderNodeCurveTexture: VisualShaderNodeResizableBase {
    override open class var godotClassName: StringName { "VisualShaderNodeCurveTexture" }
    
    /* Properties */
    
    /// The source texture.
    final public var texture: CurveTexture? {
        get {
            return get_texture ()
        }
        
        set {
            set_texture (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_texture")
        return withUnsafePointer (to: &VisualShaderNodeCurveTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 181872837)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture (_ texture: CurveTexture?) {
        #if false
        
        var copy_texture_handle = texture?.handle
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeCurveTexture.method_set_texture, UnsafeMutableRawPointer (mutating: handle), nil, &copy_texture_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: texture?.handle) { p0 in
        _args.append (texture == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeCurveTexture.method_set_texture, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_texture")
        return withUnsafePointer (to: &VisualShaderNodeCurveTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2800800579)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture ()-> CurveTexture? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (VisualShaderNodeCurveTexture.method_get_texture, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

