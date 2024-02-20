// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// An X509 certificate (e.g. for TLS).
/// 
/// The X509Certificate class represents an X509 certificate. Certificates can be loaded and saved like any other ``Resource``.
/// 
/// They can be used as the server certificate in ``StreamPeerTLS/acceptStream(_:serverOptions:)`` (along with the proper ``CryptoKey``), and to specify the only certificate that should be accepted when connecting to a TLS server via ``StreamPeerTLS/connectToStream(_:commonName:clientOptions:)``.
/// 
open class X509Certificate: Resource {
    override open class var godotClassName: StringName { "X509Certificate" }
    /* Methods */
    fileprivate static var method_save: GDExtensionMethodBindPtr = {
        let methodName = StringName ("save")
        return withUnsafePointer (to: &X509Certificate.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Saves a certificate to the given `path` (should be a "*.crt" file).
    public final func save (path: String)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (X509Certificate.method_save, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_path.content)
        return GodotError (rawValue: _result)!
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (X509Certificate.method_save, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_load: GDExtensionMethodBindPtr = {
        let methodName = StringName ("load")
        return withUnsafePointer (to: &X509Certificate.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Loads a certificate from `path` ("*.crt" file).
    public final func load (path: String)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (X509Certificate.method_load, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_path.content)
        return GodotError (rawValue: _result)!
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (X509Certificate.method_load, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_save_to_string: GDExtensionMethodBindPtr = {
        let methodName = StringName ("save_to_string")
        return withUnsafePointer (to: &X509Certificate.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    /// Returns a string representation of the certificate, or an empty string if the certificate is invalid.
    public final func saveToString ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (X509Certificate.method_save_to_string, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_load_from_string: GDExtensionMethodBindPtr = {
        let methodName = StringName ("load_from_string")
        return withUnsafePointer (to: &X509Certificate.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Loads a certificate from the given `string`.
    public final func loadFromString (_ string: String)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        let gstr_string = GString (string)
        
        gi.object_method_bind_ptrcall_v (X509Certificate.method_load_from_string, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_string.content)
        return GodotError (rawValue: _result)!
        #else
        
        let gstr_string = GString (string)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_string.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (X509Certificate.method_load_from_string, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
}

