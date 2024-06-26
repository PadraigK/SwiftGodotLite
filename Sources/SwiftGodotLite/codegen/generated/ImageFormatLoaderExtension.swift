// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Base class for creating ``ImageFormatLoader`` extensions (adding support for extra image formats).
/// 
/// The engine supports multiple image formats out of the box (PNG, SVG, JPEG, WebP to name a few), but you can choose to implement support for additional image formats by extending this class.
/// 
/// Be sure to respect the documented return types and values. You should create an instance of it, and call ``addFormatLoader()`` to register that loader during the initialization phase.
/// 
open class ImageFormatLoaderExtension: ImageFormatLoader {
    override open class var godotClassName: StringName { "ImageFormatLoaderExtension" }
    /* Methods */
    /// Returns the list of file extensions for this image format. Files with the given extensions will be treated as image file and loaded using this class.
    @_documentation(visibility: public)
    open func _getRecognizedExtensions ()-> PackedStringArray {
        return PackedStringArray ()
    }
    
    /// Loads the content of `fileaccess` into the provided `image`.
    @_documentation(visibility: public)
    open func _loadImage (_ image: Image?, fileaccess: FileAccess?, flags: ImageFormatLoader.LoaderFlags, scale: Double)-> GodotError {
        return .ok
    }
    
    fileprivate static var method_add_format_loader: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_format_loader")
        return withUnsafePointer (to: &ImageFormatLoaderExtension.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Add this format loader to the engine, allowing it to recognize the file extensions returned by ``_getRecognizedExtensions()``.
    public final func addFormatLoader () {
        gi.object_method_bind_ptrcall (ImageFormatLoaderExtension.method_add_format_loader, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_remove_format_loader: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_format_loader")
        return withUnsafePointer (to: &ImageFormatLoaderExtension.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Remove this format loader from the engine.
    public final func removeFormatLoader () {
        gi.object_method_bind_ptrcall (ImageFormatLoaderExtension.method_remove_format_loader, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_recognized_extensions":
                return _ImageFormatLoaderExtension_proxy_get_recognized_extensions
            case "_load_image":
                return _ImageFormatLoaderExtension_proxy_load_image
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _ImageFormatLoaderExtension_proxy_get_recognized_extensions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<ImageFormatLoaderExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getRecognizedExtensions ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _ImageFormatLoaderExtension_proxy_load_image (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<ImageFormatLoaderExtension>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    let resolved_1 = args [1]!.load (as: UnsafeRawPointer.self)
    
    let ret = swiftObject._loadImage (lookupLiveObject (handleAddress: resolved_0) as? Image ?? Image (nativeHandle: resolved_0), fileaccess: lookupLiveObject (handleAddress: resolved_1) as? FileAccess ?? FileAccess (nativeHandle: resolved_1), flags: args [2]!.assumingMemoryBound (to: ImageFormatLoader.LoaderFlags.self).pointee, scale: args [3]!.assumingMemoryBound (to: Double.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

