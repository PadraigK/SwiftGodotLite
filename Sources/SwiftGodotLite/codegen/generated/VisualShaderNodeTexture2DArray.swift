// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A 2D texture uniform array to be used within the visual shader graph.
/// 
/// Translated to `uniform sampler2DArray` in the shader language.
open class VisualShaderNodeTexture2DArray: VisualShaderNodeSample3D {
    override open class var godotClassName: StringName { "VisualShaderNodeTexture2DArray" }
    
    /* Properties */
    
    /// A source texture array. Used if ``VisualShaderNodeSample3D/source`` is set to ``VisualShaderNodeSample3D/Source/texture``.
    final public var textureArray: Texture2DArray? {
        get {
            return get_texture_array ()
        }
        
        set {
            set_texture_array (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_texture_array: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_texture_array")
        return withUnsafePointer (to: &VisualShaderNodeTexture2DArray.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2206200446)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_array (_ value: Texture2DArray?) {
        #if false
        
        var copy_value_handle = value?.handle
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeTexture2DArray.method_set_texture_array, UnsafeMutableRawPointer (mutating: handle), nil, &copy_value_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: value?.handle) { p0 in
        _args.append (value == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeTexture2DArray.method_set_texture_array, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_texture_array: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_texture_array")
        return withUnsafePointer (to: &VisualShaderNodeTexture2DArray.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 146117123)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_array ()-> Texture2DArray? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (VisualShaderNodeTexture2DArray.method_get_texture_array, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

