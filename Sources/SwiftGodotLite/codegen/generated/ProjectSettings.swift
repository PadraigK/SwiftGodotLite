// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Stores globally-accessible variables.
/// 
/// Stores variables that can be accessed from everywhere. Use ``getSetting(name:defaultValue:)``, ``setSetting(name:value:)`` or ``hasSetting(name:)`` to access them. Variables stored in `project.godot` are also loaded into ``ProjectSettings``, making this object very useful for reading custom game configuration options.
/// 
/// When naming a Project Settings property, use the full path to the setting including the category. For example, `"application/config/name"` for the project name. Category and property names can be viewed in the Project Settings dialog.
/// 
/// **Feature tags:** Project settings can be overridden for specific platforms and configurations (debug, release, ...) using [url=$DOCS_URL/tutorials/export/feature_tags.html]feature tags[/url].
/// 
/// **Overriding:** Any project setting can be overridden by creating a file named `override.cfg` in the project's root directory. This can also be used in exported projects by placing this file in the same directory as the project binary. Overriding will still take the base project settings' [url=$DOCS_URL/tutorials/export/feature_tags.html]feature tags[/url] in account. Therefore, make sure to _also_ override the setting with the desired feature tags if you want them to override base project settings on all platforms and configurations.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``settingsChanged``
open class ProjectSettings: Object {
    /// The shared instance of this class
    public static var shared: ProjectSettings = {
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { ptr in
            ProjectSettings (nativeHandle: gi.global_get_singleton (ptr)!)
        }
        
    }()
    
    override open class var godotClassName: StringName { "ProjectSettings" }
    /* Methods */
    fileprivate static var method_has_setting: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_setting")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if a configuration value is present.
    public static func hasSetting (name: String)-> Bool {
        var _result: Bool = false
        #if false
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (ProjectSettings.method_has_setting, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &gstr_name.content)
        return _result
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ProjectSettings.method_has_setting, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_setting: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_setting")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 402577236)!
            }
            
        }
        
    }()
    
    /// Sets the value of a setting.
    /// 
    /// **Example:**
    /// 
    /// This can also be used to erase custom project settings. To do this change the setting value to `null`.
    /// 
    public static func setSetting (name: String, value: Variant) {
        #if false
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (ProjectSettings.method_set_setting, UnsafeMutableRawPointer (mutating: shared.handle), nil, &gstr_name.content, &value.content)
        
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &value.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (ProjectSettings.method_set_setting, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_setting: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_setting")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 223050753)!
            }
            
        }
        
    }()
    
    /// Returns the value of the setting identified by `name`. If the setting doesn't exist and `defaultValue` is specified, the value of `defaultValue` is returned. Otherwise, `null` is returned.
    /// 
    /// **Example:**
    /// 
    /// > Note: This method doesn't take potential feature overrides into account automatically. Use ``getSettingWithOverride(name:)`` to handle seamlessly.
    /// 
    public static func getSetting (name: String, defaultValue: Variant)-> Variant {
        let _result: Variant = Variant ()
        #if false
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (ProjectSettings.method_get_setting, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &gstr_name.content, &defaultValue.content)
        return _result
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &defaultValue.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (ProjectSettings.method_get_setting, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_setting_with_override: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_setting_with_override")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2760726917)!
            }
            
        }
        
    }()
    
    /// Similar to ``getSetting(name:defaultValue:)``, but applies feature tag overrides if any exists and is valid.
    /// 
    /// **Example:**
    /// 
    /// If the following setting override exists "application/config/name.windows", and the following code is executed:
    /// 
    /// Then the overridden setting will be returned instead if the project is running on the _Windows_ operating system.
    /// 
    public static func getSettingWithOverride (name: StringName)-> Variant {
        let _result: Variant = Variant ()
        #if false
        
        
        gi.object_method_bind_ptrcall_v (ProjectSettings.method_get_setting_with_override, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &name.content)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ProjectSettings.method_get_setting_with_override, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_global_class_list: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_global_class_list")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns an ``GArray`` of registered global classes. Each global class is represented as a ``GDictionary`` that contains the following entries:
    /// 
    /// - `base` is a name of the base class;
    /// 
    /// - `class` is a name of the registered global class;
    /// 
    /// - `icon` is a path to a custom icon of the global class, if it has any;
    /// 
    /// - `language` is a name of a programming language in which the global class is written;
    /// 
    /// - `path` is a path to a file containing the global class.
    /// 
    /// > Note: Both the script and the icon paths are local to the project filesystem, i.e. they start with `res://`.
    /// 
    public static func getGlobalClassList ()-> VariantCollection<GDictionary> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall (ProjectSettings.method_get_global_class_list, UnsafeMutableRawPointer (mutating: shared.handle), nil, &_result)
        return VariantCollection<GDictionary>(content: _result)
    }
    
    fileprivate static var method_set_order: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_order")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2956805083)!
            }
            
        }
        
    }()
    
    /// Sets the order of a configuration value (influences when saved to the config file).
    public static func setOrder (name: String, position: Int32) {
        #if false
        
        let gstr_name = GString (name)
        var copy_position: Int = Int (position)
        
        gi.object_method_bind_ptrcall_v (ProjectSettings.method_set_order, UnsafeMutableRawPointer (mutating: shared.handle), nil, &gstr_name.content, &copy_position)
        
        #else
        
        let gstr_name = GString (name)
        var copy_position: Int = Int (position)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_position) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (ProjectSettings.method_set_order, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_order: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_order")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1321353865)!
            }
            
        }
        
    }()
    
    /// Returns the order of a configuration value (influences when saved to the config file).
    public static func getOrder (name: String)-> Int32 {
        var _result: Int32 = 0
        #if false
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (ProjectSettings.method_get_order, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &gstr_name.content)
        return _result
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ProjectSettings.method_get_order, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_initial_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_initial_value")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 402577236)!
            }
            
        }
        
    }()
    
    /// Sets the specified setting's initial value. This is the value the setting reverts to.
    public static func setInitialValue (name: String, value: Variant) {
        #if false
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (ProjectSettings.method_set_initial_value, UnsafeMutableRawPointer (mutating: shared.handle), nil, &gstr_name.content, &value.content)
        
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &value.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (ProjectSettings.method_set_initial_value, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_as_basic: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_as_basic")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2678287736)!
            }
            
        }
        
    }()
    
    /// Defines if the specified setting is considered basic or advanced. Basic settings will always be shown in the project settings. Advanced settings will only be shown if the user enables the "Advanced Settings" option.
    public static func setAsBasic (name: String, basic: Bool) {
        #if false
        
        let gstr_name = GString (name)
        var copy_basic = basic
        
        gi.object_method_bind_ptrcall_v (ProjectSettings.method_set_as_basic, UnsafeMutableRawPointer (mutating: shared.handle), nil, &gstr_name.content, &copy_basic)
        
        #else
        
        let gstr_name = GString (name)
        var copy_basic = basic
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_basic) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (ProjectSettings.method_set_as_basic, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_as_internal: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_as_internal")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2678287736)!
            }
            
        }
        
    }()
    
    /// Defines if the specified setting is considered internal. An internal setting won't show up in the Project Settings dialog. This is mostly useful for addons that need to store their own internal settings without exposing them directly to the user.
    public static func setAsInternal (name: String, `internal`: Bool) {
        #if false
        
        let gstr_name = GString (name)
        var copy_internal = `internal`
        
        gi.object_method_bind_ptrcall_v (ProjectSettings.method_set_as_internal, UnsafeMutableRawPointer (mutating: shared.handle), nil, &gstr_name.content, &copy_internal)
        
        #else
        
        let gstr_name = GString (name)
        var copy_internal = `internal`
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_internal) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (ProjectSettings.method_set_as_internal, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_add_property_info: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_property_info")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    /// Adds a custom property info to a property. The dictionary must contain:
    /// 
    /// - `"name"`: ``String`` (the property's name)
    /// 
    /// - `"type"`: integer (see ``Variant.GType``)
    /// 
    /// - optionally `"hint"`: integer (see ``PropertyHint``) and `"hint_string"`: ``String``
    /// 
    /// **Example:**
    /// 
    public static func addPropertyInfo (hint: GDictionary) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (ProjectSettings.method_add_property_info, UnsafeMutableRawPointer (mutating: shared.handle), nil, &hint.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &hint.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ProjectSettings.method_add_property_info, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_restart_if_changed: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_restart_if_changed")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2678287736)!
            }
            
        }
        
    }()
    
    /// Sets whether a setting requires restarting the editor to properly take effect.
    /// 
    /// > Note: This is just a hint to display to the user that the editor must be restarted for changes to take effect. Enabling ``setRestartIfChanged(name:restart:)`` does _not_ delay the setting being set when changed.
    /// 
    public static func setRestartIfChanged (name: String, restart: Bool) {
        #if false
        
        let gstr_name = GString (name)
        var copy_restart = restart
        
        gi.object_method_bind_ptrcall_v (ProjectSettings.method_set_restart_if_changed, UnsafeMutableRawPointer (mutating: shared.handle), nil, &gstr_name.content, &copy_restart)
        
        #else
        
        let gstr_name = GString (name)
        var copy_restart = restart
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_restart) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (ProjectSettings.method_set_restart_if_changed, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_clear: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Clears the whole configuration (not recommended, may break things).
    public static func clear (name: String) {
        #if false
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (ProjectSettings.method_clear, UnsafeMutableRawPointer (mutating: shared.handle), nil, &gstr_name.content)
        
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ProjectSettings.method_clear, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_localize_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("localize_path")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns the localized path (starting with `res://`) corresponding to the absolute, native OS `path`. See also ``globalizePath(_:)``.
    public static func localizePath (_ path: String)-> String {
        let _result = GString ()
        #if false
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (ProjectSettings.method_localize_path, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &gstr_path.content)
        return _result.description
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ProjectSettings.method_localize_path, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_globalize_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("globalize_path")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns the absolute, native OS path corresponding to the localized `path` (starting with `res://` or `user://`). The returned path will vary depending on the operating system and user preferences. See [url=$DOCS_URL/tutorials/io/data_paths.html]File paths in Godot projects[/url] to see what those paths convert to. See also ``localizePath(_:)``.
    /// 
    /// > Note: ``globalizePath(_:)`` with `res://` will not work in an exported project. Instead, prepend the executable's base directory to the path when running from an exported project:
    /// 
    public static func globalizePath (_ path: String)-> String {
        let _result = GString ()
        #if false
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (ProjectSettings.method_globalize_path, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &gstr_path.content)
        return _result.description
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ProjectSettings.method_globalize_path, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_save: GDExtensionMethodBindPtr = {
        let methodName = StringName ("save")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Saves the configuration to the `project.godot` file.
    /// 
    /// > Note: This method is intended to be used by editor plugins, as modified ``ProjectSettings`` can't be loaded back in the running app. If you want to change project settings in exported projects, use ``saveCustom(file:)`` to save `override.cfg` file.
    /// 
    public static func save ()-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (ProjectSettings.method_save, UnsafeMutableRawPointer (mutating: shared.handle), nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_load_resource_pack: GDExtensionMethodBindPtr = {
        let methodName = StringName ("load_resource_pack")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 708980503)!
            }
            
        }
        
    }()
    
    /// Loads the contents of the .pck or .zip file specified by `pack` into the resource filesystem (`res://`). Returns `true` on success.
    /// 
    /// > Note: If a file from `pack` shares the same path as a file already in the resource filesystem, any attempts to load that file will use the file from `pack` unless `replaceFiles` is set to `false`.
    /// 
    /// > Note: The optional `offset` parameter can be used to specify the offset in bytes to the start of the resource pack. This is only supported for .pck files.
    /// 
    public static func loadResourcePack (_ pack: String, replaceFiles: Bool = true, offset: Int32 = 0)-> Bool {
        var _result: Bool = false
        #if false
        
        let gstr_pack = GString (pack)
        var copy_replace_files = replaceFiles
        var copy_offset: Int = Int (offset)
        
        gi.object_method_bind_ptrcall_v (ProjectSettings.method_load_resource_pack, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &gstr_pack.content, &copy_replace_files, &copy_offset)
        return _result
        #else
        
        let gstr_pack = GString (pack)
        var copy_replace_files = replaceFiles
        var copy_offset: Int = Int (offset)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_pack.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_replace_files) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_offset) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (ProjectSettings.method_load_resource_pack, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
                    return _result
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_save_custom: GDExtensionMethodBindPtr = {
        let methodName = StringName ("save_custom")
        return withUnsafePointer (to: &ProjectSettings.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Saves the configuration to a custom file. The file extension must be `.godot` (to save in text-based ``ConfigFile`` format) or `.binary` (to save in binary format). You can also save `override.cfg` file, which is also text, but can be used in exported projects unlike other formats.
    public static func saveCustom (file: String)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if false
        
        let gstr_file = GString (file)
        
        gi.object_method_bind_ptrcall_v (ProjectSettings.method_save_custom, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &gstr_file.content)
        return GodotError (rawValue: _result)!
        #else
        
        let gstr_file = GString (file)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_file.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ProjectSettings.method_save_custom, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    // Signals 
    /// Emitted when any setting is changed, up to once per process frame.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.settingsChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var settingsChanged: SimpleSignal { SimpleSignal (target: self, signalName: "settings_changed") }
    
}

