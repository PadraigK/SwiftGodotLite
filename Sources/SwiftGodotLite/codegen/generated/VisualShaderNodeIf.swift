// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Outputs a 3D vector based on the result of a floating point comparison within the visual shader graph.
/// 
/// This visual shader node has six input ports. Port 1 and 2 provide the two floating point numbers `a` and `b` that will be compared. Port 3 is the tolerance, which allows similar floating point number to be considered equal. Ports 4 to 6 are the possible outputs, returned if `a == b`, `a > b`, or `a < b` respectively.
open class VisualShaderNodeIf: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeIf" }
}

