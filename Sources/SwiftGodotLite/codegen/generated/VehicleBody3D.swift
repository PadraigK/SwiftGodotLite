// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A 3D physics body that simulates the behavior of a car.
/// 
/// This physics body implements all the physics logic needed to simulate a car. It is based on the raycast vehicle system commonly found in physics engines. Aside from a ``CollisionShape3D`` for the main body of the vehicle, you must also add a ``VehicleWheel3D`` node for each wheel. You should also add a ``MeshInstance3D`` to this node for the 3D model of the vehicle, but this model should generally not include meshes for the wheels. You can control the vehicle by using the ``brake``, ``engineForce``, and ``steering`` properties. The position or orientation of this node shouldn't be changed directly.
/// 
/// > Note: The origin point of your VehicleBody3D will determine the center of gravity of your vehicle. To make the vehicle more grounded, the origin point is usually kept low, moving the ``CollisionShape3D`` and ``MeshInstance3D`` upwards.
/// 
/// > Note: This class has known issues and isn't designed to provide realistic 3D vehicle physics. If you want advanced vehicle physics, you may have to write your own physics integration using ``CharacterBody3D`` or ``RigidBody3D``.
/// 
open class VehicleBody3D: RigidBody3D {
    override open class var godotClassName: StringName { "VehicleBody3D" }
    
    /* Properties */
    
    /// Accelerates the vehicle by applying an engine force. The vehicle is only sped up if the wheels that have ``VehicleWheel3D/useAsTraction`` set to `true` and are in contact with a surface. The ``RigidBody3D/mass`` of the vehicle has an effect on the acceleration of the vehicle. For a vehicle with a mass set to 1000, try a value in the 25 - 50 range for acceleration.
    /// 
    /// > Note: The simulation does not take the effect of gears into account, you will need to add logic for this if you wish to simulate gears.
    /// 
    /// A negative value will result in the vehicle reversing.
    /// 
    final public var engineForce: Double {
        get {
            return get_engine_force ()
        }
        
        set {
            set_engine_force (newValue)
        }
        
    }
    
    /// Slows down the vehicle by applying a braking force. The vehicle is only slowed down if the wheels are in contact with a surface. The force you need to apply to adequately slow down your vehicle depends on the ``RigidBody3D/mass`` of the vehicle. For a vehicle with a mass set to 1000, try a value in the 25 - 30 range for hard braking.
    final public var brake: Double {
        get {
            return get_brake ()
        }
        
        set {
            set_brake (newValue)
        }
        
    }
    
    /// The steering angle for the vehicle. Setting this to a non-zero value will result in the vehicle turning when it's moving. Wheels that have ``VehicleWheel3D/useAsSteering`` set to `true` will automatically be rotated.
    /// 
    /// > Note: This property is edited in the inspector in degrees. In code the property is set in radians.
    /// 
    final public var steering: Double {
        get {
            return get_steering ()
        }
        
        set {
            set_steering (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_engine_force: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_engine_force")
        return withUnsafePointer (to: &VehicleBody3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_engine_force (_ engineForce: Double) {
        #if true
        
        var copy_engine_force = engineForce
        
        gi.object_method_bind_ptrcall_v (VehicleBody3D.method_set_engine_force, UnsafeMutableRawPointer (mutating: handle), nil, &copy_engine_force)
        
        #else
        
        var copy_engine_force = engineForce
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_engine_force) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VehicleBody3D.method_set_engine_force, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_engine_force: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_engine_force")
        return withUnsafePointer (to: &VehicleBody3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_engine_force ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (VehicleBody3D.method_get_engine_force, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_brake: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_brake")
        return withUnsafePointer (to: &VehicleBody3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_brake (_ brake: Double) {
        #if true
        
        var copy_brake = brake
        
        gi.object_method_bind_ptrcall_v (VehicleBody3D.method_set_brake, UnsafeMutableRawPointer (mutating: handle), nil, &copy_brake)
        
        #else
        
        var copy_brake = brake
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_brake) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VehicleBody3D.method_set_brake, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_brake: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_brake")
        return withUnsafePointer (to: &VehicleBody3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_brake ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (VehicleBody3D.method_get_brake, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_steering: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_steering")
        return withUnsafePointer (to: &VehicleBody3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_steering (_ steering: Double) {
        #if true
        
        var copy_steering = steering
        
        gi.object_method_bind_ptrcall_v (VehicleBody3D.method_set_steering, UnsafeMutableRawPointer (mutating: handle), nil, &copy_steering)
        
        #else
        
        var copy_steering = steering
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_steering) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VehicleBody3D.method_set_steering, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_steering: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_steering")
        return withUnsafePointer (to: &VehicleBody3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_steering ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (VehicleBody3D.method_get_steering, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

