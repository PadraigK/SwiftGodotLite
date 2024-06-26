// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Blends two of three animations additively inside of an ``AnimationNodeBlendTree``.
/// 
/// A resource to add to an ``AnimationNodeBlendTree``. Blends two animations out of three additively out of three based on the amount value.
/// 
/// This animation node has three inputs:
/// 
/// - The base animation to add to
/// 
/// - A "-add" animation to blend with when the blend amount is negative
/// 
/// - A "+add" animation to blend with when the blend amount is positive
/// 
/// If the absolute value of the amount is greater than `1.0`, the animation connected to "in" port is blended with the amplified animation connected to "-add"/"+add" port.
/// 
open class AnimationNodeAdd3: AnimationNodeSync {
    override open class var godotClassName: StringName { "AnimationNodeAdd3" }
}

