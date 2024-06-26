// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Meta class registering supported devices in OpenXR.
/// 
/// This class allows OpenXR core and extensions to register metadata relating to supported interaction devices such as controllers, trackers, haptic devices, etc. It is primarily used by the action map editor and to sanitize any action map by removing extension-dependent entries when applicable.
open class OpenXRInteractionProfileMetadata: Object {
    override open class var godotClassName: StringName { "OpenXRInteractionProfileMetadata" }
    /* Methods */
    fileprivate static var method_register_profile_rename: GDExtensionMethodBindPtr = {
        let methodName = StringName ("register_profile_rename")
        return withUnsafePointer (to: &OpenXRInteractionProfileMetadata.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3186203200)!
            }
            
        }
        
    }()
    
    /// Allows for renaming old interaction profile paths to new paths to maintain backwards compatibility with older action maps.
    public final func registerProfileRename (oldName: String, newName: String) {
        #if false
        
        let gstr_old_name = GString (oldName)
        let gstr_new_name = GString (newName)
        
        gi.object_method_bind_ptrcall_v (OpenXRInteractionProfileMetadata.method_register_profile_rename, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_old_name.content, &gstr_new_name.content)
        
        #else
        
        let gstr_old_name = GString (oldName)
        let gstr_new_name = GString (newName)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_old_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &gstr_new_name.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (OpenXRInteractionProfileMetadata.method_register_profile_rename, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_register_top_level_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("register_top_level_path")
        return withUnsafePointer (to: &OpenXRInteractionProfileMetadata.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 254767734)!
            }
            
        }
        
    }()
    
    /// Registers a top level path to which profiles can be bound. For instance `/user/hand/left` refers to the bind point for the player's left hand. Extensions can register additional top level paths, for instance a haptic vest extension might register `/user/body/vest`.
    /// 
    /// `displayName` is the name shown to the user. `openxrPath` is the top level path being registered. `openxrExtensionName` is optional and ensures the top level path is only used if the specified extension is available/enabled.
    /// 
    /// When a top level path ends up being bound by OpenXR, a ``XRPositionalTracker`` is instantiated to manage the state of the device.
    /// 
    public final func registerTopLevelPath (displayName: String, openxrPath: String, openxrExtensionName: String) {
        #if false
        
        let gstr_display_name = GString (displayName)
        let gstr_openxr_path = GString (openxrPath)
        let gstr_openxr_extension_name = GString (openxrExtensionName)
        
        gi.object_method_bind_ptrcall_v (OpenXRInteractionProfileMetadata.method_register_top_level_path, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_display_name.content, &gstr_openxr_path.content, &gstr_openxr_extension_name.content)
        
        #else
        
        let gstr_display_name = GString (displayName)
        let gstr_openxr_path = GString (openxrPath)
        let gstr_openxr_extension_name = GString (openxrExtensionName)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_display_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &gstr_openxr_path.content) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &gstr_openxr_extension_name.content) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (OpenXRInteractionProfileMetadata.method_register_top_level_path, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_register_interaction_profile: GDExtensionMethodBindPtr = {
        let methodName = StringName ("register_interaction_profile")
        return withUnsafePointer (to: &OpenXRInteractionProfileMetadata.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 254767734)!
            }
            
        }
        
    }()
    
    /// Registers an interaction profile using its OpenXR designation (e.g. `/interaction_profiles/khr/simple_controller` is the profile for OpenXR's simple controller profile).
    /// 
    /// `displayName` is the description shown to the user. `openxrPath` is the interaction profile path being registered. `openxrExtensionName` optionally restricts this profile to the given extension being enabled/available. If the extension is not available, the profile and all related entries used in an action map are filtered out.
    /// 
    public final func registerInteractionProfile (displayName: String, openxrPath: String, openxrExtensionName: String) {
        #if false
        
        let gstr_display_name = GString (displayName)
        let gstr_openxr_path = GString (openxrPath)
        let gstr_openxr_extension_name = GString (openxrExtensionName)
        
        gi.object_method_bind_ptrcall_v (OpenXRInteractionProfileMetadata.method_register_interaction_profile, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_display_name.content, &gstr_openxr_path.content, &gstr_openxr_extension_name.content)
        
        #else
        
        let gstr_display_name = GString (displayName)
        let gstr_openxr_path = GString (openxrPath)
        let gstr_openxr_extension_name = GString (openxrExtensionName)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_display_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &gstr_openxr_path.content) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &gstr_openxr_extension_name.content) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (OpenXRInteractionProfileMetadata.method_register_interaction_profile, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_register_io_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("register_io_path")
        return withUnsafePointer (to: &OpenXRInteractionProfileMetadata.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3443511926)!
            }
            
        }
        
    }()
    
    /// Registers an input/output path for the given `interactionProfile`. The profile should previously have been registered using ``registerInteractionProfile(displayName:openxrPath:openxrExtensionName:)``. `displayName` is the description shown to the user. `toplevelPath` specifies the bind path this input/output can be bound to (e.g. `/user/hand/left` or `/user/hand/right`). `openxrPath` is the action input/output being registered (e.g. `/user/hand/left/input/aim/pose`). `openxrExtensionName` restricts this input/output to an enabled/available extension, this doesn't need to repeat the extension on the profile but relates to overlapping extension (e.g. `XR_EXT_palm_pose` that introduces `…/input/palm_ext/pose` input paths). `actionType` defines the type of input or output provided by OpenXR.
    public final func registerIoPath (interactionProfile: String, displayName: String, toplevelPath: String, openxrPath: String, openxrExtensionName: String, actionType: OpenXRAction.ActionType) {
        #if false
        
        let gstr_interaction_profile = GString (interactionProfile)
        let gstr_display_name = GString (displayName)
        let gstr_toplevel_path = GString (toplevelPath)
        let gstr_openxr_path = GString (openxrPath)
        let gstr_openxr_extension_name = GString (openxrExtensionName)
        var copy_action_type = Int64 (actionType.rawValue)
        
        gi.object_method_bind_ptrcall_v (OpenXRInteractionProfileMetadata.method_register_io_path, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_interaction_profile.content, &gstr_display_name.content, &gstr_toplevel_path.content, &gstr_openxr_path.content, &gstr_openxr_extension_name.content, &copy_action_type)
        
        #else
        
        let gstr_interaction_profile = GString (interactionProfile)
        let gstr_display_name = GString (displayName)
        let gstr_toplevel_path = GString (toplevelPath)
        let gstr_openxr_path = GString (openxrPath)
        let gstr_openxr_extension_name = GString (openxrExtensionName)
        var copy_action_type = Int64 (actionType.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_interaction_profile.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &gstr_display_name.content) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &gstr_toplevel_path.content) { p2 in
                    _args.append (p2)
                    withUnsafePointer (to: &gstr_openxr_path.content) { p3 in
                        _args.append (p3)
                        withUnsafePointer (to: &gstr_openxr_extension_name.content) { p4 in
                            _args.append (p4)
                            withUnsafePointer (to: &copy_action_type) { p5 in
                                _args.append (p5)
        
                                gi.object_method_bind_ptrcall (OpenXRInteractionProfileMetadata.method_register_io_path, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                            }
                        }
                    }
                }
            }
        }
        
        #endif
    }
    
}

