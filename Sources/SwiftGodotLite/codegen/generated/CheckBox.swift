// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A button that represents a binary choice.
/// 
/// ``CheckBox`` allows the user to choose one of only two possible options. It's similar to ``CheckButton`` in functionality, but it has a different appearance. To follow established UX patterns, it's recommended to use ``CheckBox`` when toggling it has **no** immediate effect on something. For example, it could be used when toggling it will only do something once a confirmation button is pressed.
/// 
/// See also ``BaseButton`` which contains common properties and methods associated with this node.
/// 
/// When ``BaseButton/buttonGroup`` specifies a ``ButtonGroup``, ``CheckBox`` changes its appearance to that of a radio button and uses the various `radio_*` theme properties.
/// 
open class CheckBox: Button {
    override open class var godotClassName: StringName { "CheckBox" }
}

