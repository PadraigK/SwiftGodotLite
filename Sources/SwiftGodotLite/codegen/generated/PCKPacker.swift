// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Creates packages that can be loaded into a running project.
/// 
/// The ``PCKPacker`` is used to create packages that can be loaded into a running project using ``ProjectSettings/loadResourcePack(_:replaceFiles:offset:)``.
/// 
/// The above ``PCKPacker`` creates package `test.pck`, then adds a file named `text.txt` at the root of the package.
/// 
open class PCKPacker: RefCounted {
    override open class var godotClassName: StringName { "PCKPacker" }
    /* Methods */
    fileprivate static var method_pck_start: GDExtensionMethodBindPtr = {
        let methodName = StringName ("pck_start")
        return withUnsafePointer (to: &PCKPacker.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 508410629)!
            }
            
        }
        
    }()
    
    /// Creates a new PCK file with the name `pckName`. The `.pck` file extension isn't added automatically, so it should be part of `pckName` (even though it's not required).
    public final func pckStart (pckName: String, alignment: Int32 = 32, key: String = "0000000000000000000000000000000000000000000000000000000000000000", encryptDirectory: Bool = false)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        let gstr_pck_name = GString (pckName)
        var copy_alignment: Int = Int (alignment)
        let gstr_key = GString (key)
        var copy_encrypt_directory = encryptDirectory
        
        gi.object_method_bind_ptrcall_v (PCKPacker.method_pck_start, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_pck_name.content, &copy_alignment, &gstr_key.content, &copy_encrypt_directory)
        return GodotError (rawValue: _result)!
        #else
        
        let gstr_pck_name = GString (pckName)
        var copy_alignment: Int = Int (alignment)
        let gstr_key = GString (key)
        var copy_encrypt_directory = encryptDirectory
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_pck_name.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_alignment) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &gstr_key.content) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &copy_encrypt_directory) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (PCKPacker.method_pck_start, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                        return GodotError (rawValue: _result)!
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_add_file: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_file")
        return withUnsafePointer (to: &PCKPacker.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2215643711)!
            }
            
        }
        
    }()
    
    /// Adds the `sourcePath` file to the current PCK package at the `pckPath` internal path (should start with `res://`).
    public final func addFile (pckPath: String, sourcePath: String, encrypt: Bool = false)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        let gstr_pck_path = GString (pckPath)
        let gstr_source_path = GString (sourcePath)
        var copy_encrypt = encrypt
        
        gi.object_method_bind_ptrcall_v (PCKPacker.method_add_file, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_pck_path.content, &gstr_source_path.content, &copy_encrypt)
        return GodotError (rawValue: _result)!
        #else
        
        let gstr_pck_path = GString (pckPath)
        let gstr_source_path = GString (sourcePath)
        var copy_encrypt = encrypt
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_pck_path.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &gstr_source_path.content) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_encrypt) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (PCKPacker.method_add_file, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                    return GodotError (rawValue: _result)!
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_flush: GDExtensionMethodBindPtr = {
        let methodName = StringName ("flush")
        return withUnsafePointer (to: &PCKPacker.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1633102583)!
            }
            
        }
        
    }()
    
    /// Writes the files specified using all ``addFile(pckPath:sourcePath:encrypt:)`` calls since the last flush. If `verbose` is `true`, a list of files added will be printed to the console for easier debugging.
    public final func flush (verbose: Bool = false)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        var copy_verbose = verbose
        
        gi.object_method_bind_ptrcall_v (PCKPacker.method_flush, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_verbose)
        return GodotError (rawValue: _result)!
        #else
        
        var copy_verbose = verbose
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_verbose) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PCKPacker.method_flush, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
}

