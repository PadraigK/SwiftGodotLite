// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Generic mobile VR implementation.
/// 
/// This is a generic mobile VR implementation where you need to provide details about the phone and HMD used. It does not rely on any existing framework. This is the most basic interface we have. For the best effect, you need a mobile phone with a gyroscope and accelerometer.
/// 
/// Note that even though there is no positional tracking, the camera will assume the headset is at a height of 1.85 meters. You can change this by setting ``eyeHeight``.
/// 
/// You can initialize this interface as follows:
/// 
open class MobileVRInterface: XRInterface {
    override open class var godotClassName: StringName { "MobileVRInterface" }
    
    /* Properties */
    
    /// The height at which the camera is placed in relation to the ground (i.e. ``XROrigin3D`` node).
    final public var eyeHeight: Double {
        get {
            return get_eye_height ()
        }
        
        set {
            set_eye_height (newValue)
        }
        
    }
    
    /// The interocular distance, also known as the interpupillary distance. The distance between the pupils of the left and right eye.
    final public var iod: Double {
        get {
            return get_iod ()
        }
        
        set {
            set_iod (newValue)
        }
        
    }
    
    /// The width of the display in centimeters.
    final public var displayWidth: Double {
        get {
            return get_display_width ()
        }
        
        set {
            set_display_width (newValue)
        }
        
    }
    
    /// The distance between the display and the lenses inside of the device in centimeters.
    final public var displayToLens: Double {
        get {
            return get_display_to_lens ()
        }
        
        set {
            set_display_to_lens (newValue)
        }
        
    }
    
    /// The oversample setting. Because of the lens distortion we have to render our buffers at a higher resolution then the screen can natively handle. A value between 1.5 and 2.0 often provides good results but at the cost of performance.
    final public var oversample: Double {
        get {
            return get_oversample ()
        }
        
        set {
            set_oversample (newValue)
        }
        
    }
    
    /// The k1 lens factor is one of the two constants that define the strength of the lens used and directly influences the lens distortion effect.
    final public var k1: Double {
        get {
            return get_k1 ()
        }
        
        set {
            set_k1 (newValue)
        }
        
    }
    
    /// The k2 lens factor, see k1.
    final public var k2: Double {
        get {
            return get_k2 ()
        }
        
        set {
            set_k2 (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_eye_height: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_eye_height")
        return withUnsafePointer (to: &MobileVRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_eye_height (_ eyeHeight: Double) {
        #if false
        
        var copy_eye_height = eyeHeight
        
        gi.object_method_bind_ptrcall_v (MobileVRInterface.method_set_eye_height, UnsafeMutableRawPointer (mutating: handle), nil, &copy_eye_height)
        
        #else
        
        var copy_eye_height = eyeHeight
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_eye_height) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MobileVRInterface.method_set_eye_height, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_eye_height: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_eye_height")
        return withUnsafePointer (to: &MobileVRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_eye_height ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (MobileVRInterface.method_get_eye_height, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_iod: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_iod")
        return withUnsafePointer (to: &MobileVRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_iod (_ iod: Double) {
        #if false
        
        var copy_iod = iod
        
        gi.object_method_bind_ptrcall_v (MobileVRInterface.method_set_iod, UnsafeMutableRawPointer (mutating: handle), nil, &copy_iod)
        
        #else
        
        var copy_iod = iod
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_iod) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MobileVRInterface.method_set_iod, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_iod: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_iod")
        return withUnsafePointer (to: &MobileVRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_iod ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (MobileVRInterface.method_get_iod, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_display_width: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_display_width")
        return withUnsafePointer (to: &MobileVRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_display_width (_ displayWidth: Double) {
        #if false
        
        var copy_display_width = displayWidth
        
        gi.object_method_bind_ptrcall_v (MobileVRInterface.method_set_display_width, UnsafeMutableRawPointer (mutating: handle), nil, &copy_display_width)
        
        #else
        
        var copy_display_width = displayWidth
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_display_width) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MobileVRInterface.method_set_display_width, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_display_width: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_display_width")
        return withUnsafePointer (to: &MobileVRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_display_width ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (MobileVRInterface.method_get_display_width, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_display_to_lens: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_display_to_lens")
        return withUnsafePointer (to: &MobileVRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_display_to_lens (_ displayToLens: Double) {
        #if false
        
        var copy_display_to_lens = displayToLens
        
        gi.object_method_bind_ptrcall_v (MobileVRInterface.method_set_display_to_lens, UnsafeMutableRawPointer (mutating: handle), nil, &copy_display_to_lens)
        
        #else
        
        var copy_display_to_lens = displayToLens
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_display_to_lens) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MobileVRInterface.method_set_display_to_lens, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_display_to_lens: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_display_to_lens")
        return withUnsafePointer (to: &MobileVRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_display_to_lens ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (MobileVRInterface.method_get_display_to_lens, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_oversample: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_oversample")
        return withUnsafePointer (to: &MobileVRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_oversample (_ oversample: Double) {
        #if false
        
        var copy_oversample = oversample
        
        gi.object_method_bind_ptrcall_v (MobileVRInterface.method_set_oversample, UnsafeMutableRawPointer (mutating: handle), nil, &copy_oversample)
        
        #else
        
        var copy_oversample = oversample
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_oversample) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MobileVRInterface.method_set_oversample, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_oversample: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_oversample")
        return withUnsafePointer (to: &MobileVRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_oversample ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (MobileVRInterface.method_get_oversample, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_k1: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_k1")
        return withUnsafePointer (to: &MobileVRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_k1 (_ k: Double) {
        #if false
        
        var copy_k = k
        
        gi.object_method_bind_ptrcall_v (MobileVRInterface.method_set_k1, UnsafeMutableRawPointer (mutating: handle), nil, &copy_k)
        
        #else
        
        var copy_k = k
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_k) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MobileVRInterface.method_set_k1, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_k1: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_k1")
        return withUnsafePointer (to: &MobileVRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_k1 ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (MobileVRInterface.method_get_k1, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_k2: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_k2")
        return withUnsafePointer (to: &MobileVRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_k2 (_ k: Double) {
        #if false
        
        var copy_k = k
        
        gi.object_method_bind_ptrcall_v (MobileVRInterface.method_set_k2, UnsafeMutableRawPointer (mutating: handle), nil, &copy_k)
        
        #else
        
        var copy_k = k
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_k) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MobileVRInterface.method_set_k2, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_k2: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_k2")
        return withUnsafePointer (to: &MobileVRInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_k2 ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (MobileVRInterface.method_get_k2, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

