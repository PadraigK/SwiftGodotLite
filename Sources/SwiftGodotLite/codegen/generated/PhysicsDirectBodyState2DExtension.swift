// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Provides virtual methods that can be overridden to create custom ``PhysicsDirectBodyState2D`` implementations.
/// 
/// This class extends ``PhysicsDirectBodyState2D`` by providing additional virtual methods that can be overridden. When these methods are overridden, they will be called instead of the internal methods of the physics server.
/// 
/// Intended for use with GDExtension to create custom implementations of ``PhysicsDirectBodyState2D``.
/// 
open class PhysicsDirectBodyState2DExtension: PhysicsDirectBodyState2D {
    override open class var godotClassName: StringName { "PhysicsDirectBodyState2DExtension" }
    /* Methods */
    /// 
    @_documentation(visibility: public)
    open func _getTotalGravity ()-> Vector2 {
        return Vector2 ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getTotalLinearDamp ()-> Double {
        return 0.0
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getTotalAngularDamp ()-> Double {
        return 0.0
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getCenterOfMass ()-> Vector2 {
        return Vector2 ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getCenterOfMassLocal ()-> Vector2 {
        return Vector2 ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getInverseMass ()-> Double {
        return 0.0
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getInverseInertia ()-> Double {
        return 0.0
    }
    
    /// 
    @_documentation(visibility: public)
    open func _setLinearVelocity (_ velocity: Vector2) {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getLinearVelocity ()-> Vector2 {
        return Vector2 ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _setAngularVelocity (_ velocity: Double) {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getAngularVelocity ()-> Double {
        return 0.0
    }
    
    /// 
    @_documentation(visibility: public)
    open func _setTransform (_ transform: Transform2D) {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getTransform ()-> Transform2D {
        return Transform2D ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getVelocityAtLocalPosition (_ localPosition: Vector2)-> Vector2 {
        return Vector2 ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _applyCentralImpulse (_ impulse: Vector2) {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _applyImpulse (_ impulse: Vector2, position: Vector2) {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _applyTorqueImpulse (_ impulse: Double) {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _applyCentralForce (_ force: Vector2) {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _applyForce (_ force: Vector2, position: Vector2) {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _applyTorque (_ torque: Double) {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _addConstantCentralForce (_ force: Vector2) {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _addConstantForce (_ force: Vector2, position: Vector2) {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _addConstantTorque (_ torque: Double) {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _setConstantForce (_ force: Vector2) {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getConstantForce ()-> Vector2 {
        return Vector2 ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _setConstantTorque (_ torque: Double) {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getConstantTorque ()-> Double {
        return 0.0
    }
    
    /// 
    @_documentation(visibility: public)
    open func _setSleepState (enabled: Bool) {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _isSleeping ()-> Bool {
        return false
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getContactCount ()-> Int32 {
        return 0
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getContactLocalPosition (contactIdx: Int32)-> Vector2 {
        return Vector2 ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getContactLocalNormal (contactIdx: Int32)-> Vector2 {
        return Vector2 ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getContactLocalShape (contactIdx: Int32)-> Int32 {
        return 0
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getContactLocalVelocityAtPosition (contactIdx: Int32)-> Vector2 {
        return Vector2 ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getContactCollider (contactIdx: Int32)-> RID {
        return RID ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getContactColliderPosition (contactIdx: Int32)-> Vector2 {
        return Vector2 ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getContactColliderId (contactIdx: Int32)-> UInt {
        return 0
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getContactColliderObject (contactIdx: Int32)-> Object? {
        return Object ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getContactColliderShape (contactIdx: Int32)-> Int32 {
        return 0
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getContactColliderVelocityAtPosition (contactIdx: Int32)-> Vector2 {
        return Vector2 ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getContactImpulse (contactIdx: Int32)-> Vector2 {
        return Vector2 ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getStep ()-> Double {
        return 0.0
    }
    
    /// 
    @_documentation(visibility: public)
    open func _integrateForces () {
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getSpaceState ()-> PhysicsDirectSpaceState2D? {
        return PhysicsDirectSpaceState2D ()
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_add_constant_central_force":
                return _PhysicsDirectBodyState2DExtension_proxy_add_constant_central_force
            case "_add_constant_force":
                return _PhysicsDirectBodyState2DExtension_proxy_add_constant_force
            case "_add_constant_torque":
                return _PhysicsDirectBodyState2DExtension_proxy_add_constant_torque
            case "_apply_central_force":
                return _PhysicsDirectBodyState2DExtension_proxy_apply_central_force
            case "_apply_central_impulse":
                return _PhysicsDirectBodyState2DExtension_proxy_apply_central_impulse
            case "_apply_force":
                return _PhysicsDirectBodyState2DExtension_proxy_apply_force
            case "_apply_impulse":
                return _PhysicsDirectBodyState2DExtension_proxy_apply_impulse
            case "_apply_torque":
                return _PhysicsDirectBodyState2DExtension_proxy_apply_torque
            case "_apply_torque_impulse":
                return _PhysicsDirectBodyState2DExtension_proxy_apply_torque_impulse
            case "_get_angular_velocity":
                return _PhysicsDirectBodyState2DExtension_proxy_get_angular_velocity
            case "_get_center_of_mass":
                return _PhysicsDirectBodyState2DExtension_proxy_get_center_of_mass
            case "_get_center_of_mass_local":
                return _PhysicsDirectBodyState2DExtension_proxy_get_center_of_mass_local
            case "_get_constant_force":
                return _PhysicsDirectBodyState2DExtension_proxy_get_constant_force
            case "_get_constant_torque":
                return _PhysicsDirectBodyState2DExtension_proxy_get_constant_torque
            case "_get_contact_collider":
                return _PhysicsDirectBodyState2DExtension_proxy_get_contact_collider
            case "_get_contact_collider_id":
                return _PhysicsDirectBodyState2DExtension_proxy_get_contact_collider_id
            case "_get_contact_collider_object":
                return _PhysicsDirectBodyState2DExtension_proxy_get_contact_collider_object
            case "_get_contact_collider_position":
                return _PhysicsDirectBodyState2DExtension_proxy_get_contact_collider_position
            case "_get_contact_collider_shape":
                return _PhysicsDirectBodyState2DExtension_proxy_get_contact_collider_shape
            case "_get_contact_collider_velocity_at_position":
                return _PhysicsDirectBodyState2DExtension_proxy_get_contact_collider_velocity_at_position
            case "_get_contact_count":
                return _PhysicsDirectBodyState2DExtension_proxy_get_contact_count
            case "_get_contact_impulse":
                return _PhysicsDirectBodyState2DExtension_proxy_get_contact_impulse
            case "_get_contact_local_normal":
                return _PhysicsDirectBodyState2DExtension_proxy_get_contact_local_normal
            case "_get_contact_local_position":
                return _PhysicsDirectBodyState2DExtension_proxy_get_contact_local_position
            case "_get_contact_local_shape":
                return _PhysicsDirectBodyState2DExtension_proxy_get_contact_local_shape
            case "_get_contact_local_velocity_at_position":
                return _PhysicsDirectBodyState2DExtension_proxy_get_contact_local_velocity_at_position
            case "_get_inverse_inertia":
                return _PhysicsDirectBodyState2DExtension_proxy_get_inverse_inertia
            case "_get_inverse_mass":
                return _PhysicsDirectBodyState2DExtension_proxy_get_inverse_mass
            case "_get_linear_velocity":
                return _PhysicsDirectBodyState2DExtension_proxy_get_linear_velocity
            case "_get_space_state":
                return _PhysicsDirectBodyState2DExtension_proxy_get_space_state
            case "_get_step":
                return _PhysicsDirectBodyState2DExtension_proxy_get_step
            case "_get_total_angular_damp":
                return _PhysicsDirectBodyState2DExtension_proxy_get_total_angular_damp
            case "_get_total_gravity":
                return _PhysicsDirectBodyState2DExtension_proxy_get_total_gravity
            case "_get_total_linear_damp":
                return _PhysicsDirectBodyState2DExtension_proxy_get_total_linear_damp
            case "_get_transform":
                return _PhysicsDirectBodyState2DExtension_proxy_get_transform
            case "_get_velocity_at_local_position":
                return _PhysicsDirectBodyState2DExtension_proxy_get_velocity_at_local_position
            case "_integrate_forces":
                return _PhysicsDirectBodyState2DExtension_proxy_integrate_forces
            case "_is_sleeping":
                return _PhysicsDirectBodyState2DExtension_proxy_is_sleeping
            case "_set_angular_velocity":
                return _PhysicsDirectBodyState2DExtension_proxy_set_angular_velocity
            case "_set_constant_force":
                return _PhysicsDirectBodyState2DExtension_proxy_set_constant_force
            case "_set_constant_torque":
                return _PhysicsDirectBodyState2DExtension_proxy_set_constant_torque
            case "_set_linear_velocity":
                return _PhysicsDirectBodyState2DExtension_proxy_set_linear_velocity
            case "_set_sleep_state":
                return _PhysicsDirectBodyState2DExtension_proxy_set_sleep_state
            case "_set_transform":
                return _PhysicsDirectBodyState2DExtension_proxy_set_transform
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _PhysicsDirectBodyState2DExtension_proxy_add_constant_central_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._addConstantCentralForce (args [0]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _PhysicsDirectBodyState2DExtension_proxy_add_constant_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._addConstantForce (args [0]!.assumingMemoryBound (to: Vector2.self).pointee, position: args [1]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _PhysicsDirectBodyState2DExtension_proxy_add_constant_torque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._addConstantTorque (args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsDirectBodyState2DExtension_proxy_apply_central_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._applyCentralForce (args [0]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _PhysicsDirectBodyState2DExtension_proxy_apply_central_impulse (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._applyCentralImpulse (args [0]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _PhysicsDirectBodyState2DExtension_proxy_apply_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._applyForce (args [0]!.assumingMemoryBound (to: Vector2.self).pointee, position: args [1]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _PhysicsDirectBodyState2DExtension_proxy_apply_impulse (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._applyImpulse (args [0]!.assumingMemoryBound (to: Vector2.self).pointee, position: args [1]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _PhysicsDirectBodyState2DExtension_proxy_apply_torque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._applyTorque (args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsDirectBodyState2DExtension_proxy_apply_torque_impulse (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._applyTorqueImpulse (args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_angular_velocity (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getAngularVelocity ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_center_of_mass (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getCenterOfMass ()
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_center_of_mass_local (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getCenterOfMassLocal ()
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_constant_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getConstantForce ()
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_constant_torque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getConstantTorque ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_contact_collider (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getContactCollider (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsDirectBodyState2DExtension_proxy_get_contact_collider_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getContactColliderId (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: UInt.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_contact_collider_object (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getContactColliderObject (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // Object
}

func _PhysicsDirectBodyState2DExtension_proxy_get_contact_collider_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getContactColliderPosition (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_contact_collider_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getContactColliderShape (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_contact_collider_velocity_at_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getContactColliderVelocityAtPosition (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_contact_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getContactCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_contact_impulse (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getContactImpulse (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_contact_local_normal (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getContactLocalNormal (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_contact_local_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getContactLocalPosition (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_contact_local_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getContactLocalShape (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_contact_local_velocity_at_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getContactLocalVelocityAtPosition (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_inverse_inertia (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getInverseInertia ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_inverse_mass (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getInverseMass ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_linear_velocity (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getLinearVelocity ()
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_space_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getSpaceState ()
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // PhysicsDirectSpaceState2D
}

func _PhysicsDirectBodyState2DExtension_proxy_get_step (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getStep ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_total_angular_damp (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getTotalAngularDamp ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_total_gravity (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getTotalGravity ()
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_total_linear_damp (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getTotalLinearDamp ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getTransform ()
    retPtr!.storeBytes (of: ret, as: Transform2D.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_get_velocity_at_local_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getVelocityAtLocalPosition (args [0]!.assumingMemoryBound (to: Vector2.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_integrate_forces (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._integrateForces ()
}

func _PhysicsDirectBodyState2DExtension_proxy_is_sleeping (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._isSleeping ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _PhysicsDirectBodyState2DExtension_proxy_set_angular_velocity (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._setAngularVelocity (args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsDirectBodyState2DExtension_proxy_set_constant_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._setConstantForce (args [0]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _PhysicsDirectBodyState2DExtension_proxy_set_constant_torque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._setConstantTorque (args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsDirectBodyState2DExtension_proxy_set_linear_velocity (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._setLinearVelocity (args [0]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _PhysicsDirectBodyState2DExtension_proxy_set_sleep_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._setSleepState (enabled: args [0]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsDirectBodyState2DExtension_proxy_set_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<PhysicsDirectBodyState2DExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._setTransform (args [0]!.assumingMemoryBound (to: Transform2D.self).pointee)
}
