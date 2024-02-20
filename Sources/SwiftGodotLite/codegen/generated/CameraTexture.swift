// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Texture provided by a ``CameraFeed``.
/// 
/// This texture gives access to the camera texture provided by a ``CameraFeed``.
/// 
/// > Note: Many cameras supply YCbCr images which need to be converted in a shader.
/// 
open class CameraTexture: Texture2D {
    override open class var godotClassName: StringName { "CameraTexture" }
    
    /* Properties */
    
    /// The ID of the ``CameraFeed`` for which we want to display the image.
    final public var cameraFeedId: Int32 {
        get {
            return get_camera_feed_id ()
        }
        
        set {
            set_camera_feed_id (newValue)
        }
        
    }
    
    /// Which image within the ``CameraFeed`` we want access to, important if the camera image is split in a Y and CbCr component.
    final public var whichFeed: CameraServer.FeedImage {
        get {
            return get_which_feed ()
        }
        
        set {
            set_which_feed (newValue)
        }
        
    }
    
    /// Convenience property that gives access to the active property of the ``CameraFeed``.
    final public var cameraIsActive: Bool {
        get {
            return get_camera_active ()
        }
        
        set {
            set_camera_active (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_camera_feed_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_camera_feed_id")
        return withUnsafePointer (to: &CameraTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_camera_feed_id (_ feedId: Int32) {
        #if false
        
        var copy_feed_id: Int = Int (feedId)
        
        gi.object_method_bind_ptrcall_v (CameraTexture.method_set_camera_feed_id, UnsafeMutableRawPointer (mutating: handle), nil, &copy_feed_id)
        
        #else
        
        var copy_feed_id: Int = Int (feedId)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_feed_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CameraTexture.method_set_camera_feed_id, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_camera_feed_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_camera_feed_id")
        return withUnsafePointer (to: &CameraTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_camera_feed_id ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (CameraTexture.method_get_camera_feed_id, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_which_feed: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_which_feed")
        return withUnsafePointer (to: &CameraTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1595299230)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_which_feed (_ whichFeed: CameraServer.FeedImage) {
        #if false
        
        var copy_which_feed = Int64 (whichFeed.rawValue)
        
        gi.object_method_bind_ptrcall_v (CameraTexture.method_set_which_feed, UnsafeMutableRawPointer (mutating: handle), nil, &copy_which_feed)
        
        #else
        
        var copy_which_feed = Int64 (whichFeed.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_which_feed) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CameraTexture.method_set_which_feed, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_which_feed: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_which_feed")
        return withUnsafePointer (to: &CameraTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 91039457)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_which_feed ()-> CameraServer.FeedImage {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (CameraTexture.method_get_which_feed, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return CameraServer.FeedImage (rawValue: _result)!
    }
    
    fileprivate static var method_set_camera_active: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_camera_active")
        return withUnsafePointer (to: &CameraTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_camera_active (_ active: Bool) {
        #if false
        
        var copy_active = active
        
        gi.object_method_bind_ptrcall_v (CameraTexture.method_set_camera_active, UnsafeMutableRawPointer (mutating: handle), nil, &copy_active)
        
        #else
        
        var copy_active = active
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_active) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CameraTexture.method_set_camera_active, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_camera_active: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_camera_active")
        return withUnsafePointer (to: &CameraTexture.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_camera_active ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (CameraTexture.method_get_camera_active, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

