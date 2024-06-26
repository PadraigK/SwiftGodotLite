// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// This object contains all data related to a pose on a tracked object.
/// 
/// XR runtimes often identify multiple locations on devices such as controllers that are spatially tracked.
/// 
/// Orientation, location, linear velocity and angular velocity are all provided for each pose by the XR runtime. This object contains this state of a pose.
/// 
open class XRPose: RefCounted {
    override open class var godotClassName: StringName { "XRPose" }
    public enum TrackingConfidence: Int64 {
        /// No tracking information is available for this pose.
        case none = 0 // XR_TRACKING_CONFIDENCE_NONE
        /// Tracking information may be inaccurate or estimated. For example, with inside out tracking this would indicate a controller may be (partially) obscured.
        case low = 1 // XR_TRACKING_CONFIDENCE_LOW
        /// Tracking information is deemed accurate and up to date.
        case high = 2 // XR_TRACKING_CONFIDENCE_HIGH
    }
    
    
    /* Properties */
    
    /// If `true` our tracking data is up to date. If `false` we're no longer receiving new tracking data and our state is whatever that last valid state was.
    final public var hasTrackingData: Bool {
        get {
            return get_has_tracking_data ()
        }
        
        set {
            set_has_tracking_data (newValue)
        }
        
    }
    
    /// The name of this pose. Pose names are often driven by an action map setup by the user. Godot does suggest a number of pose names that it expects ``XRInterface``s to implement:
    /// 
    /// - `root` defines a root location, often used for tracked objects that do not have further nodes.
    /// 
    /// - `aim` defines the tip of a controller with the orientation pointing outwards, for example: add your raycasts to this.
    /// 
    /// - `grip` defines the location where the user grips the controller
    /// 
    /// - `skeleton` defines the root location a hand mesh should be placed when using hand tracking and the animated skeleton supplied by the XR runtime.
    /// 
    final public var name: StringName {
        get {
            return get_name ()
        }
        
        set {
            set_name (newValue)
        }
        
    }
    
    /// The transform containing the original and transform as reported by the XR runtime.
    final public var transform: Transform3D {
        get {
            return get_transform ()
        }
        
        set {
            set_transform (newValue)
        }
        
    }
    
    /// The linear velocity of this pose.
    final public var linearVelocity: Vector3 {
        get {
            return get_linear_velocity ()
        }
        
        set {
            set_linear_velocity (newValue)
        }
        
    }
    
    /// The angular velocity for this pose.
    final public var angularVelocity: Vector3 {
        get {
            return get_angular_velocity ()
        }
        
        set {
            set_angular_velocity (newValue)
        }
        
    }
    
    /// The tracking confidence for this pose, provides insight on how accurate the spatial positioning of this record is.
    final public var trackingConfidence: XRPose.TrackingConfidence {
        get {
            return get_tracking_confidence ()
        }
        
        set {
            set_tracking_confidence (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_has_tracking_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_has_tracking_data")
        return withUnsafePointer (to: &XRPose.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_has_tracking_data (_ hasTrackingData: Bool) {
        #if false
        
        var copy_has_tracking_data = hasTrackingData
        
        gi.object_method_bind_ptrcall_v (XRPose.method_set_has_tracking_data, UnsafeMutableRawPointer (mutating: handle), nil, &copy_has_tracking_data)
        
        #else
        
        var copy_has_tracking_data = hasTrackingData
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_has_tracking_data) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XRPose.method_set_has_tracking_data, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_has_tracking_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_has_tracking_data")
        return withUnsafePointer (to: &XRPose.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_has_tracking_data ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (XRPose.method_get_has_tracking_data, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_name")
        return withUnsafePointer (to: &XRPose.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_name (_ name: StringName) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (XRPose.method_set_name, UnsafeMutableRawPointer (mutating: handle), nil, &name.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XRPose.method_set_name, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_name")
        return withUnsafePointer (to: &XRPose.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_name ()-> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall (XRPose.method_get_name, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_transform")
        return withUnsafePointer (to: &XRPose.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2952846383)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_transform (_ transform: Transform3D) {
        #if false
        
        var copy_transform = transform
        
        gi.object_method_bind_ptrcall_v (XRPose.method_set_transform, UnsafeMutableRawPointer (mutating: handle), nil, &copy_transform)
        
        #else
        
        var copy_transform = transform
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_transform) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XRPose.method_set_transform, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_transform")
        return withUnsafePointer (to: &XRPose.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3229777777)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_transform ()-> Transform3D {
        var _result: Transform3D = Transform3D ()
        gi.object_method_bind_ptrcall (XRPose.method_get_transform, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_adjusted_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_adjusted_transform")
        return withUnsafePointer (to: &XRPose.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3229777777)!
            }
            
        }
        
    }()
    
    /// Returns the ``transform`` with world scale and our reference frame applied. This is the transform used to position ``XRNode3D`` objects.
    public final func getAdjustedTransform ()-> Transform3D {
        var _result: Transform3D = Transform3D ()
        gi.object_method_bind_ptrcall (XRPose.method_get_adjusted_transform, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_linear_velocity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_linear_velocity")
        return withUnsafePointer (to: &XRPose.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_linear_velocity (_ velocity: Vector3) {
        #if false
        
        var copy_velocity = velocity
        
        gi.object_method_bind_ptrcall_v (XRPose.method_set_linear_velocity, UnsafeMutableRawPointer (mutating: handle), nil, &copy_velocity)
        
        #else
        
        var copy_velocity = velocity
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_velocity) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XRPose.method_set_linear_velocity, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_linear_velocity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_linear_velocity")
        return withUnsafePointer (to: &XRPose.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_linear_velocity ()-> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall (XRPose.method_get_linear_velocity, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_angular_velocity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_angular_velocity")
        return withUnsafePointer (to: &XRPose.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_angular_velocity (_ velocity: Vector3) {
        #if false
        
        var copy_velocity = velocity
        
        gi.object_method_bind_ptrcall_v (XRPose.method_set_angular_velocity, UnsafeMutableRawPointer (mutating: handle), nil, &copy_velocity)
        
        #else
        
        var copy_velocity = velocity
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_velocity) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XRPose.method_set_angular_velocity, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_angular_velocity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_angular_velocity")
        return withUnsafePointer (to: &XRPose.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_angular_velocity ()-> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall (XRPose.method_get_angular_velocity, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_tracking_confidence: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_tracking_confidence")
        return withUnsafePointer (to: &XRPose.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4171656666)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tracking_confidence (_ trackingConfidence: XRPose.TrackingConfidence) {
        #if false
        
        var copy_tracking_confidence = Int64 (trackingConfidence.rawValue)
        
        gi.object_method_bind_ptrcall_v (XRPose.method_set_tracking_confidence, UnsafeMutableRawPointer (mutating: handle), nil, &copy_tracking_confidence)
        
        #else
        
        var copy_tracking_confidence = Int64 (trackingConfidence.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_tracking_confidence) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XRPose.method_set_tracking_confidence, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_tracking_confidence: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_tracking_confidence")
        return withUnsafePointer (to: &XRPose.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2064923680)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tracking_confidence ()-> XRPose.TrackingConfidence {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (XRPose.method_get_tracking_confidence, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return XRPose.TrackingConfidence (rawValue: _result)!
    }
    
}

