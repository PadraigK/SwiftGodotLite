// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Base class for an XR interface implementation.
/// 
/// This class needs to be implemented to make an AR or VR platform available to Godot and these should be implemented as C++ modules or GDExtension modules. Part of the interface is exposed to GDScript so you can detect, enable and configure an AR or VR platform.
/// 
/// Interfaces should be written in such a way that simply enabling them will give us a working setup. You can query the available interfaces through ``XRServer``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``playAreaChanged``
open class XRInterface: RefCounted {
    override open class var godotClassName: StringName { "XRInterface" }
    public enum Capabilities: Int64 {
        /// No XR capabilities.
        case none = 0 // XR_NONE
        /// This interface can work with normal rendering output (non-HMD based AR).
        case mono = 1 // XR_MONO
        /// This interface supports stereoscopic rendering.
        case stereo = 2 // XR_STEREO
        /// This interface supports quad rendering (not yet supported by Godot).
        case quad = 4 // XR_QUAD
        /// This interface supports VR.
        case vr = 8 // XR_VR
        /// This interface supports AR (video background and real world tracking).
        case ar = 16 // XR_AR
        /// This interface outputs to an external device. If the main viewport is used, the on screen output is an unmodified buffer of either the left or right eye (stretched if the viewport size is not changed to the same aspect ratio of ``getRenderTargetSize()``). Using a separate viewport node frees up the main viewport for other purposes.
        case external = 32 // XR_EXTERNAL
    }
    
    public enum TrackingStatus: Int64 {
        /// Tracking is behaving as expected.
        case normalTracking = 0 // XR_NORMAL_TRACKING
        /// Tracking is hindered by excessive motion (the player is moving faster than tracking can keep up).
        case excessiveMotion = 1 // XR_EXCESSIVE_MOTION
        /// Tracking is hindered by insufficient features, it's too dark (for camera-based tracking), player is blocked, etc.
        case insufficientFeatures = 2 // XR_INSUFFICIENT_FEATURES
        /// We don't know the status of the tracking or this interface does not provide feedback.
        case unknownTracking = 3 // XR_UNKNOWN_TRACKING
        /// Tracking is not functional (camera not plugged in or obscured, lighthouses turned off, etc.).
        case notTracking = 4 // XR_NOT_TRACKING
    }
    
    public enum PlayAreaMode: Int64 {
        /// Play area mode not set or not available.
        case unknown = 0 // XR_PLAY_AREA_UNKNOWN
        /// Play area only supports orientation tracking, no positional tracking, area will center around player.
        case xrPlayArea3dof = 1 // XR_PLAY_AREA_3DOF
        /// Player is in seated position, limited positional tracking, fixed guardian around player.
        case sitting = 2 // XR_PLAY_AREA_SITTING
        /// Player is free to move around, full positional tracking.
        case roomscale = 3 // XR_PLAY_AREA_ROOMSCALE
        /// Same as .xrPlayAreaRoomscale but origin point is fixed to the center of the physical space, ``XRServer/centerOnHmd(rotationMode:keepHeight:)`` disabled.
        case stage = 4 // XR_PLAY_AREA_STAGE
    }
    
    public enum EnvironmentBlendMode: Int64 {
        /// Opaque blend mode. This is typically used for VR devices.
        case opaque = 0 // XR_ENV_BLEND_MODE_OPAQUE
        /// Additive blend mode. This is typically used for AR devices or VR devices with passthrough.
        case additive = 1 // XR_ENV_BLEND_MODE_ADDITIVE
        /// Alpha blend mode. This is typically used for AR or VR devices with passthrough capabilities. The alpha channel controls how much of the passthrough is visible. Alpha of 0.0 means the passthrough is visible and this pixel works in ADDITIVE mode. Alpha of 1.0 means that the passthrough is not visible and this pixel works in OPAQUE mode.
        case alphaBlend = 2 // XR_ENV_BLEND_MODE_ALPHA_BLEND
    }
    
    
    /* Properties */
    
    /// `true` if this is the primary interface.
    final public var interfaceIsPrimary: Bool {
        get {
            return is_primary ()
        }
        
        set {
            set_primary (newValue)
        }
        
    }
    
    /// The play area mode for this interface.
    final public var xrPlayAreaMode: XRInterface.PlayAreaMode {
        get {
            return get_play_area_mode ()
        }
        
        set {
            _ = set_play_area_mode (newValue)
        }
        
    }
    
    /// Specify how XR should blend in the environment. This is specific to certain AR and passthrough devices where camera images are blended in by the XR compositor.
    final public var environmentBlendMode: XRInterface.EnvironmentBlendMode {
        get {
            return get_environment_blend_mode ()
        }
        
        set {
            _ = set_environment_blend_mode (newValue)
        }
        
    }
    
    /// On an AR interface, `true` if anchor detection is enabled.
    final public var arIsAnchorDetectionEnabled: Bool {
        get {
            return get_anchor_detection_is_enabled ()
        }
        
        set {
            set_anchor_detection_is_enabled (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_name")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    /// Returns the name of this interface (OpenXR, OpenVR, OpenHMD, ARKit, etc).
    public final func getName ()-> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall (XRInterface.method_get_name, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_capabilities: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_capabilities")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns a combination of ``XRInterface/Capabilities`` flags providing information about the capabilities of this interface.
    public final func getCapabilities ()-> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall (XRInterface.method_get_capabilities, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_primary: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_primary")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_primary ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (XRInterface.method_is_primary, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_primary: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_primary")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_primary (_ primary: Bool) {
        #if true
        
        var copy_primary = primary
        
        gi.object_method_bind_ptrcall_v (XRInterface.method_set_primary, UnsafeMutableRawPointer (mutating: handle), nil, &copy_primary)
        
        #else
        
        var copy_primary = primary
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_primary) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XRInterface.method_set_primary, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_initialized: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_initialized")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Is `true` if this interface has been initialized.
    public final func isInitialized ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (XRInterface.method_is_initialized, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_initialize: GDExtensionMethodBindPtr = {
        let methodName = StringName ("initialize")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Call this to initialize this interface. The first interface that is initialized is identified as the primary interface and it will be used for rendering output.
    /// 
    /// After initializing the interface you want to use you then need to enable the AR/VR mode of a viewport and rendering should commence.
    /// 
    /// > Note: You must enable the XR mode on the main viewport for any device that uses the main output of Godot, such as for mobile VR.
    /// 
    /// If you do this for a platform that handles its own output (such as OpenVR) Godot will show just one eye without distortion on screen. Alternatively, you can add a separate viewport node to your scene and enable AR/VR on that viewport. It will be used to output to the HMD, leaving you free to do anything you like in the main window, such as using a separate camera as a spectator camera or rendering something completely different.
    /// 
    /// While currently not used, you can activate additional interfaces. You may wish to do this if you want to track controllers from other platforms. However, at this point in time only one interface can render to an HMD.
    /// 
    public final func initialize ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (XRInterface.method_initialize, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_uninitialize: GDExtensionMethodBindPtr = {
        let methodName = StringName ("uninitialize")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Turns the interface off.
    public final func uninitialize () {
        gi.object_method_bind_ptrcall (XRInterface.method_uninitialize, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_get_system_info: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_system_info")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2382534195)!
            }
            
        }
        
    }()
    
    /// Returns a ``GDictionary`` with extra system info. Interfaces are expected to return `XRRuntimeName` and `XRRuntimeVersion` providing info about the used XR runtime. Additional entries may be provided specific to an interface.
    /// 
    /// > Note:This information may only be available after ``initialize()`` was successfully called.
    /// 
    public final func getSystemInfo ()-> GDictionary {
        let _result: GDictionary = GDictionary ()
        gi.object_method_bind_ptrcall (XRInterface.method_get_system_info, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_tracking_status: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_tracking_status")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 167423259)!
            }
            
        }
        
    }()
    
    /// If supported, returns the status of our tracking. This will allow you to provide feedback to the user whether there are issues with positional tracking.
    public final func getTrackingStatus ()-> XRInterface.TrackingStatus {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (XRInterface.method_get_tracking_status, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return XRInterface.TrackingStatus (rawValue: _result)!
    }
    
    fileprivate static var method_get_render_target_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_render_target_size")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1497962370)!
            }
            
        }
        
    }()
    
    /// Returns the resolution at which we should render our intermediate results before things like lens distortion are applied by the VR platform.
    public final func getRenderTargetSize ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (XRInterface.method_get_render_target_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_view_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_view_count")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the number of views that need to be rendered for this device. 1 for Monoscopic, 2 for Stereoscopic.
    public final func getViewCount ()-> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall (XRInterface.method_get_view_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_trigger_haptic_pulse: GDExtensionMethodBindPtr = {
        let methodName = StringName ("trigger_haptic_pulse")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3752640163)!
            }
            
        }
        
    }()
    
    /// Triggers a haptic pulse on a device associated with this interface.
    /// 
    /// `actionName` is the name of the action for this pulse.
    /// 
    /// `trackerName` is optional and can be used to direct the pulse to a specific device provided that device is bound to this haptic.
    /// 
    public final func triggerHapticPulse (actionName: String, trackerName: StringName, frequency: Double, amplitude: Double, durationSec: Double, delaySec: Double) {
        #if true
        
        let gstr_action_name = GString (actionName)
        var copy_frequency = frequency
        var copy_amplitude = amplitude
        var copy_duration_sec = durationSec
        var copy_delay_sec = delaySec
        
        gi.object_method_bind_ptrcall_v (XRInterface.method_trigger_haptic_pulse, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_action_name.content, &trackerName.content, &copy_frequency, &copy_amplitude, &copy_duration_sec, &copy_delay_sec)
        
        #else
        
        let gstr_action_name = GString (actionName)
        var copy_frequency = frequency
        var copy_amplitude = amplitude
        var copy_duration_sec = durationSec
        var copy_delay_sec = delaySec
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_action_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &trackerName.content) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_frequency) { p2 in
                    _args.append (p2)
                    withUnsafePointer (to: &copy_amplitude) { p3 in
                        _args.append (p3)
                        withUnsafePointer (to: &copy_duration_sec) { p4 in
                            _args.append (p4)
                            withUnsafePointer (to: &copy_delay_sec) { p5 in
                                _args.append (p5)
        
                                gi.object_method_bind_ptrcall (XRInterface.method_trigger_haptic_pulse, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                            }
                        }
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_supports_play_area_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("supports_play_area_mode")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3429955281)!
            }
            
        }
        
    }()
    
    /// Call this to find out if a given play area mode is supported by this interface.
    public final func supportsPlayAreaMode (_ mode: XRInterface.PlayAreaMode)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_mode = Int64 (mode.rawValue)
        
        gi.object_method_bind_ptrcall_v (XRInterface.method_supports_play_area_mode, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_mode)
        return _result
        #else
        
        var copy_mode = Int64 (mode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XRInterface.method_supports_play_area_mode, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_play_area_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_play_area_mode")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1615132885)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_play_area_mode ()-> XRInterface.PlayAreaMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (XRInterface.method_get_play_area_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return XRInterface.PlayAreaMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_play_area_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_play_area_mode")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3429955281)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the active play area mode, will return `false` if the mode can't be used with this interface.
    fileprivate final func set_play_area_mode (_ mode: XRInterface.PlayAreaMode)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_mode = Int64 (mode.rawValue)
        
        gi.object_method_bind_ptrcall_v (XRInterface.method_set_play_area_mode, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_mode)
        return _result
        #else
        
        var copy_mode = Int64 (mode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XRInterface.method_set_play_area_mode, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_play_area: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_play_area")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 497664490)!
            }
            
        }
        
    }()
    
    /// Returns an array of vectors that denotes the physical play area mapped to the virtual space around the ``XROrigin3D`` point. The points form a convex polygon that can be used to react to or visualize the play area. This returns an empty array if this feature is not supported or if the information is not yet available.
    public final func getPlayArea ()-> PackedVector3Array {
        let _result: PackedVector3Array = PackedVector3Array ()
        gi.object_method_bind_ptrcall (XRInterface.method_get_play_area, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_anchor_detection_is_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_anchor_detection_is_enabled")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_anchor_detection_is_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (XRInterface.method_get_anchor_detection_is_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_anchor_detection_is_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_anchor_detection_is_enabled")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_anchor_detection_is_enabled (_ enable: Bool) {
        #if true
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (XRInterface.method_set_anchor_detection_is_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XRInterface.method_set_anchor_detection_is_enabled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_camera_feed_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_camera_feed_id")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// If this is an AR interface that requires displaying a camera feed as the background, this method returns the feed ID in the ``CameraServer`` for this interface.
    public final func getCameraFeedId ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (XRInterface.method_get_camera_feed_id, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_passthrough_supported: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_passthrough_supported")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Is `true` if this interface supports passthrough.
    public final func isPassthroughSupported ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (XRInterface.method_is_passthrough_supported, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_passthrough_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_passthrough_enabled")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Is `true` if passthrough is enabled.
    public final func isPassthroughEnabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (XRInterface.method_is_passthrough_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_start_passthrough: GDExtensionMethodBindPtr = {
        let methodName = StringName ("start_passthrough")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Starts passthrough, will return `false` if passthrough couldn't be started.
    /// 
    /// > Note: The viewport used for XR must have a transparent background, otherwise passthrough may not properly render.
    /// 
    public final func startPassthrough ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (XRInterface.method_start_passthrough, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_stop_passthrough: GDExtensionMethodBindPtr = {
        let methodName = StringName ("stop_passthrough")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops passthrough.
    public final func stopPassthrough () {
        gi.object_method_bind_ptrcall (XRInterface.method_stop_passthrough, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_get_transform_for_view: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_transform_for_view")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 518934792)!
            }
            
        }
        
    }()
    
    /// Returns the transform for a view/eye.
    /// 
    /// `view` is the view/eye index.
    /// 
    /// `camTransform` is the transform that maps device coordinates to scene coordinates, typically the ``Node3D/globalTransform`` of the current XROrigin3D.
    /// 
    public final func getTransformForView (_ view: UInt32, camTransform: Transform3D)-> Transform3D {
        var _result: Transform3D = Transform3D ()
        #if true
        
        var copy_view: Int = Int (view)
        var copy_cam_transform = camTransform
        
        gi.object_method_bind_ptrcall_v (XRInterface.method_get_transform_for_view, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_view, &copy_cam_transform)
        return _result
        #else
        
        var copy_view: Int = Int (view)
        var copy_cam_transform = camTransform
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_view) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_cam_transform) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (XRInterface.method_get_transform_for_view, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_projection_for_view: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_projection_for_view")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3766090294)!
            }
            
        }
        
    }()
    
    /// Returns the projection matrix for a view/eye.
    public final func getProjectionForView (_ view: UInt32, aspect: Double, near: Double, far: Double)-> Projection {
        var _result: Projection = Projection ()
        #if true
        
        var copy_view: Int = Int (view)
        var copy_aspect = aspect
        var copy_near = near
        var copy_far = far
        
        gi.object_method_bind_ptrcall_v (XRInterface.method_get_projection_for_view, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_view, &copy_aspect, &copy_near, &copy_far)
        return _result
        #else
        
        var copy_view: Int = Int (view)
        var copy_aspect = aspect
        var copy_near = near
        var copy_far = far
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_view) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_aspect) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_near) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &copy_far) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (XRInterface.method_get_projection_for_view, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                        return _result
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_supported_environment_blend_modes: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_supported_environment_blend_modes")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns the an array of supported environment blend modes, see ``XRInterface.EnvironmentBlendMode``.
    public final func getSupportedEnvironmentBlendModes ()-> GArray {
        let _result: GArray = GArray ()
        gi.object_method_bind_ptrcall (XRInterface.method_get_supported_environment_blend_modes, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_environment_blend_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_environment_blend_mode")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 551152418)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the active environment blend mode.
    /// 
    /// `mode` is the ``XRInterface.EnvironmentBlendMode`` starting with the next frame.
    /// 
    /// > Note: Not all runtimes support all environment blend modes, so it is important to check this at startup. For example:
    /// 
    fileprivate final func set_environment_blend_mode (_ mode: XRInterface.EnvironmentBlendMode)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_mode = Int64 (mode.rawValue)
        
        gi.object_method_bind_ptrcall_v (XRInterface.method_set_environment_blend_mode, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_mode)
        return _result
        #else
        
        var copy_mode = Int64 (mode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XRInterface.method_set_environment_blend_mode, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_environment_blend_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_environment_blend_mode")
        return withUnsafePointer (to: &XRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1984334071)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_environment_blend_mode ()-> XRInterface.EnvironmentBlendMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (XRInterface.method_get_environment_blend_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return XRInterface.EnvironmentBlendMode (rawValue: _result)!
    }
    
    // Signals 
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal1/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal1/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal1/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal1 {
        var target: Object
        var signalName: StringName
        init (target: Object, signalName: StringName) {
            self.target = target
            self.signalName = signalName
        }
        
        /// Connects the signal to the specified callback
        /// 
        /// 
        /// 
        /// To disconnect, call the disconnect method, with the returned token on success
        /// 
        /// - Parameters:
        /// 
        /// - callback: the method to invoke when this signal is raised
        /// 
        /// - flags: Optional, can be also added to configure the connection's behavior (see ``Object/ConnectFlags`` constants).
        /// 
        /// - Returns: an object token that can be used to disconnect the object from the target on success, or the error produced by Godot.
        /// 
        @discardableResult /* Signal1 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ mode: Int64) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = Int64 (args [0])!
                
                callback (arg_0)
            }
            
            let callable = Callable(object: signalProxy, method: SignalProxy.proxyName)
            let r = target.connect(signal: signalName, callable: callable, flags: UInt32 (flags.rawValue))
            if r != .ok { print ("Warning, error connecting to signal, code: \(r)") }
            return signalProxy
        }
        
        /// Disconnects a signal that was previously connected, the return value from calling ``connect(flags:_:)``
        public func disconnect (_ token: Object) {
            target.disconnect(signal: signalName, callable: Callable (object: token, method: SignalProxy.proxyName))
        }
        
        /// You can await this property to wait for the signal to be emitted once
        public var emitted: Void  {
            get async {
                await withCheckedContinuation {
                    c in
                    connect (flags: .oneShot) { _ in c.resume () }
                }
                
            }
            
        }
        
    }
    
    /// Emitted when the play area is changed. This can be a result of the player resetting the boundary or entering a new play area, the player changing the play area mode, the world scale changing or the player resetting their headset orientation.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.playAreaChanged.connect { mode in
    ///    print ("caught signal")
    /// }
    /// ```
    public var playAreaChanged: Signal1 { Signal1 (target: self, signalName: "play_area_changed") }
    
}

