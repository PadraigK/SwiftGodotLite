// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Represents a single manually placed probe for dynamic object lighting with ``LightmapGI``.
/// 
/// ``LightmapProbe`` represents the position of a single manually placed probe for dynamic object lighting with ``LightmapGI``.
/// 
/// Typically, ``LightmapGI`` probes are placed automatically by setting ``LightmapGI/generateProbesSubdiv`` to a value other than ``LightmapGI/GenerateProbes/disabled``. By creating ``LightmapProbe`` nodes before baking lightmaps, you can add more probes in specific areas for greater detail, or disable automatic generation and rely only on manually placed probes instead.
/// 
open class LightmapProbe: Node3D {
    override open class var godotClassName: StringName { "LightmapProbe" }
}
