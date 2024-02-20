// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Provides functionality for computing cryptographic hashes chunk by chunk.
/// 
/// The HashingContext class provides an interface for computing cryptographic hashes over multiple iterations. Useful for computing hashes of big files (so you don't have to load them all in memory), network streams, and data streams in general (so you don't have to hold buffers).
/// 
/// The ``HashingContext/HashType`` enum shows the supported hashing algorithms.
/// 
open class HashingContext: RefCounted {
    override open class var godotClassName: StringName { "HashingContext" }
    public enum HashType: Int64 {
        /// Hashing algorithm: MD5.
        case md5 = 0 // HASH_MD5
        /// Hashing algorithm: SHA-1.
        case sha1 = 1 // HASH_SHA1
        /// Hashing algorithm: SHA-256.
        case sha256 = 2 // HASH_SHA256
    }
    
    /* Methods */
    fileprivate static var method_start: GDExtensionMethodBindPtr = {
        let methodName = StringName ("start")
        return withUnsafePointer (to: &HashingContext.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3940338335)!
            }
            
        }
        
    }()
    
    /// Starts a new hash computation of the given `type` (e.g. .hashSha256 to start computation of a SHA-256).
    public final func start (type: HashingContext.HashType)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        var copy_type = Int64 (type.rawValue)
        
        gi.object_method_bind_ptrcall_v (HashingContext.method_start, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_type)
        return GodotError (rawValue: _result)!
        #else
        
        var copy_type = Int64 (type.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (HashingContext.method_start, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_update: GDExtensionMethodBindPtr = {
        let methodName = StringName ("update")
        return withUnsafePointer (to: &HashingContext.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 680677267)!
            }
            
        }
        
    }()
    
    /// Updates the computation with the given `chunk` of data.
    public final func update (chunk: PackedByteArray)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        
        gi.object_method_bind_ptrcall_v (HashingContext.method_update, UnsafeMutableRawPointer (mutating: handle), &_result, &chunk.content)
        return GodotError (rawValue: _result)!
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &chunk.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (HashingContext.method_update, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_finish: GDExtensionMethodBindPtr = {
        let methodName = StringName ("finish")
        return withUnsafePointer (to: &HashingContext.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2115431945)!
            }
            
        }
        
    }()
    
    /// Closes the current context, and return the computed hash.
    public final func finish ()-> PackedByteArray {
        let _result: PackedByteArray = PackedByteArray ()
        gi.object_method_bind_ptrcall (HashingContext.method_finish, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
}

