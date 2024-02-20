// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Six square textures representing the faces of a cube. Commonly used as a skybox.
/// 
/// A cubemap is made of 6 textures organized in layers. They are typically used for faking reflections in 3D rendering (see ``ReflectionProbe``). It can be used to make an object look as if it's reflecting its surroundings. This usually delivers much better performance than other reflection methods.
/// 
/// This resource is typically used as a uniform in custom shaders. Few core Godot methods make use of ``Cubemap`` resources.
/// 
/// To create such a texture file yourself, reimport your image files using the Godot Editor import presets.
/// 
/// > Note: Godot doesn't support using cubemaps in a ``PanoramaSkyMaterial``. You can use [url=https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html]this tool[/url] to convert a cubemap to an equirectangular sky map.
/// 
open class Cubemap: ImageTextureLayered {
    override open class var godotClassName: StringName { "Cubemap" }
    /* Methods */
    fileprivate static var method_create_placeholder: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_placeholder")
        return withUnsafePointer (to: &Cubemap.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 121922552)!
            }
            
        }
        
    }()
    
    /// Creates a placeholder version of this resource (``PlaceholderCubemap``).
    public final func createPlaceholder ()-> Resource? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (Cubemap.method_create_placeholder, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

