// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A visual shader helper node for multiplying position and rotation of particles.
/// 
/// This node helps to multiply a position input vector by rotation using specific axis. Intended to work with emitters.
open class VisualShaderNodeParticleMultiplyByAxisAngle: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeParticleMultiplyByAxisAngle" }
    
    /* Properties */
    
    /// If `true`, the angle will be interpreted in degrees instead of radians.
    final public var degreesMode: Bool {
        get {
            return is_degrees_mode ()
        }
        
        set {
            set_degrees_mode (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_degrees_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_degrees_mode")
        return withUnsafePointer (to: &VisualShaderNodeParticleMultiplyByAxisAngle.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_degrees_mode (_ enabled: Bool) {
        #if false
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeParticleMultiplyByAxisAngle.method_set_degrees_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeParticleMultiplyByAxisAngle.method_set_degrees_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_degrees_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_degrees_mode")
        return withUnsafePointer (to: &VisualShaderNodeParticleMultiplyByAxisAngle.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_degrees_mode ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (VisualShaderNodeParticleMultiplyByAxisAngle.method_is_degrees_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

