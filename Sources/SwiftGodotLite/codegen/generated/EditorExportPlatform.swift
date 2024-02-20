// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Identifies a supported export platform, and internally provides the functionality of exporting to that platform.
/// 
/// Base resource that provides the functionality of exporting a release build of a project to a platform, from the editor. Stores platform-specific metadata such as the name and supported features of the platform, and performs the exporting of projects, PCK files, and ZIP files. Uses an export template for the platform provided at the time of project exporting.
/// 
/// Used in scripting by ``EditorExportPlugin`` to configure platform-specific customization of scenes and resources. See ``EditorExportPlugin/_beginCustomizeScenes(platform:features:)`` and ``EditorExportPlugin/_beginCustomizeResources(platform:features:)`` for more details.
/// 
open class EditorExportPlatform: RefCounted {
    override open class var godotClassName: StringName { "EditorExportPlatform" }
    /* Methods */
    fileprivate static var method_get_os_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_os_name")
        return withUnsafePointer (to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the name of the export operating system handled by this ``EditorExportPlatform`` class, as a friendly string. Possible return values are `Windows`, `Linux`, `macOS`, `Android`, `iOS`, and `Web`.
    public final func getOsName ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (EditorExportPlatform.method_get_os_name, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
}

