// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A 1D texture where pixel brightness corresponds to points on a curve.
/// 
/// A 1D texture where pixel brightness corresponds to points on a ``Curve`` resource, either in grayscale or in red. This visual representation simplifies the task of saving curves as image files.
/// 
/// If you need to store up to 3 curves within a single texture, use ``CurveXYZTexture`` instead. See also ``GradientTexture1D`` and ``GradientTexture2D``.
/// 
open class CurveTexture: Texture2D {
    override open class var godotClassName: StringName { "CurveTexture" }
    public enum TextureMode: Int64 {
        /// Store the curve equally across the red, green and blue channels. This uses more video memory, but is more compatible with shaders that only read the green and blue values.
        case rgb = 0 // TEXTURE_MODE_RGB
        /// Store the curve only in the red channel. This saves video memory, but some custom shaders may not be able to work with this.
        case red = 1 // TEXTURE_MODE_RED
    }
    
    
    /* Properties */
    
    /// The width of the texture (in pixels). Higher values make it possible to represent high-frequency data better (such as sudden direction changes), at the cost of increased generation time and memory usage.
    final public var width: Int32 {
        get {
            return getWidth ()
        }
        
        set {
            set_width (newValue)
        }
        
    }
    
    /// The format the texture should be generated with. When passing a CurveTexture as an input to a ``Shader``, this may need to be adjusted.
    final public var textureMode: CurveTexture.TextureMode {
        get {
            return get_texture_mode ()
        }
        
        set {
            set_texture_mode (newValue)
        }
        
    }
    
    /// The ``Curve`` that is rendered onto the texture.
    final public var curve: Curve? {
        get {
            return get_curve ()
        }
        
        set {
            set_curve (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_width: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_width")
        return withUnsafePointer (to: &CurveTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_width (_ width: Int32) {
        #if false
        
        var copy_width: Int = Int (width)
        
        gi.object_method_bind_ptrcall_v (CurveTexture.method_set_width, UnsafeMutableRawPointer (mutating: handle), nil, &copy_width)
        
        #else
        
        var copy_width: Int = Int (width)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_width) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CurveTexture.method_set_width, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_curve: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_curve")
        return withUnsafePointer (to: &CurveTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 270443179)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_curve (_ curve: Curve?) {
        #if false
        
        var copy_curve_handle = curve?.handle
        
        gi.object_method_bind_ptrcall_v (CurveTexture.method_set_curve, UnsafeMutableRawPointer (mutating: handle), nil, &copy_curve_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: curve?.handle) { p0 in
        _args.append (curve == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (CurveTexture.method_set_curve, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_curve: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_curve")
        return withUnsafePointer (to: &CurveTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2460114913)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_curve ()-> Curve? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (CurveTexture.method_get_curve, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_texture_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_texture_mode")
        return withUnsafePointer (to: &CurveTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1321955367)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_mode (_ textureMode: CurveTexture.TextureMode) {
        #if false
        
        var copy_texture_mode = Int64 (textureMode.rawValue)
        
        gi.object_method_bind_ptrcall_v (CurveTexture.method_set_texture_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_texture_mode)
        
        #else
        
        var copy_texture_mode = Int64 (textureMode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_texture_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CurveTexture.method_set_texture_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_texture_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_texture_mode")
        return withUnsafePointer (to: &CurveTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 715756376)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_mode ()-> CurveTexture.TextureMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (CurveTexture.method_get_texture_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return CurveTexture.TextureMode (rawValue: _result)!
    }
    
}

