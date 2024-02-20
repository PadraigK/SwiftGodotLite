// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// The server responsible for language translations.
/// 
/// The server that manages all language translations. Translations can be added to or removed from it.
open class TranslationServer: Object {
    /// The shared instance of this class
    public static var shared: TranslationServer = {
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { ptr in
            TranslationServer (nativeHandle: gi.global_get_singleton (ptr)!)
        }
        
    }()
    
    override open class var godotClassName: StringName { "TranslationServer" }
    
    /* Properties */
    
    /// If `true`, enables the use of pseudolocalization. See ``ProjectSettings/internationalization/pseudolocalization/usePseudolocalization`` for details.
    static public var pseudolocalizationEnabled: Bool {
        get {
            return is_pseudolocalization_enabled ()
        }
        
        set {
            set_pseudolocalization_enabled (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_locale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_locale")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Sets the locale of the project. The `locale` string will be standardized to match known locales (e.g. `en-US` would be matched to `en_US`).
    /// 
    /// If translations have been loaded beforehand for the new locale, they will be applied.
    /// 
    public static func setLocale (_ locale: String) {
        #if true
        
        let gstr_locale = GString (locale)
        
        gi.object_method_bind_ptrcall_v (TranslationServer.method_set_locale, UnsafeMutableRawPointer (mutating: shared.handle), nil, &gstr_locale.content)
        
        #else
        
        let gstr_locale = GString (locale)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_locale.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TranslationServer.method_set_locale, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_locale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_locale")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the current locale of the project.
    /// 
    /// See also ``OS/getLocale()`` and ``OS/getLocaleLanguage()`` to query the locale of the user system.
    /// 
    public static func getLocale ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (TranslationServer.method_get_locale, UnsafeMutableRawPointer (mutating: shared.handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_tool_locale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_tool_locale")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    /// Returns the current locale of the editor.
    /// 
    /// > Note: When called from an exported project returns the same value as ``getLocale()``.
    /// 
    public static func getToolLocale ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (TranslationServer.method_get_tool_locale, UnsafeMutableRawPointer (mutating: shared.handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_compare_locales: GDExtensionMethodBindPtr = {
        let methodName = StringName ("compare_locales")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2878152881)!
            }
            
        }
        
    }()
    
    /// Compares two locales and returns a similarity score between `0` (no match) and `10` (full match).
    public static func compareLocales (localeA: String, localeB: String)-> Int32 {
        var _result: Int32 = 0
        #if true
        
        let gstr_locale_a = GString (localeA)
        let gstr_locale_b = GString (localeB)
        
        gi.object_method_bind_ptrcall_v (TranslationServer.method_compare_locales, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &gstr_locale_a.content, &gstr_locale_b.content)
        return _result
        #else
        
        let gstr_locale_a = GString (localeA)
        let gstr_locale_b = GString (localeB)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_locale_a.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &gstr_locale_b.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (TranslationServer.method_compare_locales, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_standardize_locale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("standardize_locale")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns a `locale` string standardized to match known locales (e.g. `en-US` would be matched to `en_US`).
    public static func standardizeLocale (_ locale: String)-> String {
        let _result = GString ()
        #if true
        
        let gstr_locale = GString (locale)
        
        gi.object_method_bind_ptrcall_v (TranslationServer.method_standardize_locale, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &gstr_locale.content)
        return _result.description
        #else
        
        let gstr_locale = GString (locale)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_locale.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TranslationServer.method_standardize_locale, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_get_all_languages: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_all_languages")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns array of known language codes.
    public static func getAllLanguages ()-> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall (TranslationServer.method_get_all_languages, UnsafeMutableRawPointer (mutating: shared.handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_language_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_language_name")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns a readable language name for the `language` code.
    public static func getLanguageName (language: String)-> String {
        let _result = GString ()
        #if true
        
        let gstr_language = GString (language)
        
        gi.object_method_bind_ptrcall_v (TranslationServer.method_get_language_name, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &gstr_language.content)
        return _result.description
        #else
        
        let gstr_language = GString (language)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_language.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TranslationServer.method_get_language_name, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_get_all_scripts: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_all_scripts")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns an array of known script codes.
    public static func getAllScripts ()-> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall (TranslationServer.method_get_all_scripts, UnsafeMutableRawPointer (mutating: shared.handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_script_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_script_name")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns a readable script name for the `script` code.
    public static func getScriptName (script: String)-> String {
        let _result = GString ()
        #if true
        
        let gstr_script = GString (script)
        
        gi.object_method_bind_ptrcall_v (TranslationServer.method_get_script_name, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &gstr_script.content)
        return _result.description
        #else
        
        let gstr_script = GString (script)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_script.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TranslationServer.method_get_script_name, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_get_all_countries: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_all_countries")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns an array of known country codes.
    public static func getAllCountries ()-> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall (TranslationServer.method_get_all_countries, UnsafeMutableRawPointer (mutating: shared.handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_country_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_country_name")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns a readable country name for the `country` code.
    public static func getCountryName (country: String)-> String {
        let _result = GString ()
        #if true
        
        let gstr_country = GString (country)
        
        gi.object_method_bind_ptrcall_v (TranslationServer.method_get_country_name, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &gstr_country.content)
        return _result.description
        #else
        
        let gstr_country = GString (country)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_country.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TranslationServer.method_get_country_name, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_get_locale_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_locale_name")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns a locale's language and its variant (e.g. `"en_US"` would return `"English (United States)"`).
    public static func getLocaleName (locale: String)-> String {
        let _result = GString ()
        #if true
        
        let gstr_locale = GString (locale)
        
        gi.object_method_bind_ptrcall_v (TranslationServer.method_get_locale_name, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &gstr_locale.content)
        return _result.description
        #else
        
        let gstr_locale = GString (locale)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_locale.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TranslationServer.method_get_locale_name, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_translate: GDExtensionMethodBindPtr = {
        let methodName = StringName ("translate")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1829228469)!
            }
            
        }
        
    }()
    
    /// Returns the current locale's translation for the given message (key) and context.
    public static func translate (message: StringName, context: StringName = StringName (""))-> StringName {
        let _result: StringName = StringName ()
        #if true
        
        
        gi.object_method_bind_ptrcall_v (TranslationServer.method_translate, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &message.content, &context.content)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &message.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &context.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (TranslationServer.method_translate, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_translate_plural: GDExtensionMethodBindPtr = {
        let methodName = StringName ("translate_plural")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 229954002)!
            }
            
        }
        
    }()
    
    /// Returns the current locale's translation for the given message (key), plural message and context.
    /// 
    /// The number `n` is the number or quantity of the plural object. It will be used to guide the translation system to fetch the correct plural form for the selected language.
    /// 
    public static func translatePlural (message: StringName, pluralMessage: StringName, n: Int32, context: StringName = StringName (""))-> StringName {
        let _result: StringName = StringName ()
        #if true
        
        var copy_n: Int = Int (n)
        
        gi.object_method_bind_ptrcall_v (TranslationServer.method_translate_plural, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &message.content, &pluralMessage.content, &copy_n, &context.content)
        return _result
        #else
        
        var copy_n: Int = Int (n)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &message.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &pluralMessage.content) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_n) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &context.content) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (TranslationServer.method_translate_plural, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
                        return _result
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_add_translation: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_translation")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1466479800)!
            }
            
        }
        
    }()
    
    /// Adds a ``Translation`` resource.
    public static func addTranslation (_ translation: Translation?) {
        #if true
        
        var copy_translation_handle = translation?.handle
        
        gi.object_method_bind_ptrcall_v (TranslationServer.method_add_translation, UnsafeMutableRawPointer (mutating: shared.handle), nil, &copy_translation_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: translation?.handle) { p0 in
        _args.append (translation == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (TranslationServer.method_add_translation, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_remove_translation: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_translation")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1466479800)!
            }
            
        }
        
    }()
    
    /// Removes the given translation from the server.
    public static func removeTranslation (_ translation: Translation?) {
        #if true
        
        var copy_translation_handle = translation?.handle
        
        gi.object_method_bind_ptrcall_v (TranslationServer.method_remove_translation, UnsafeMutableRawPointer (mutating: shared.handle), nil, &copy_translation_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: translation?.handle) { p0 in
        _args.append (translation == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (TranslationServer.method_remove_translation, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_translation_object: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_translation_object")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2065240175)!
            }
            
        }
        
    }()
    
    /// Returns the ``Translation`` instance based on the `locale` passed in.
    /// 
    /// It will return `null` if there is no ``Translation`` instance that matches the `locale`.
    /// 
    public static func getTranslationObject (locale: String)-> Translation? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        let gstr_locale = GString (locale)
        
        gi.object_method_bind_ptrcall_v (TranslationServer.method_get_translation_object, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &gstr_locale.content)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        let gstr_locale = GString (locale)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_locale.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TranslationServer.method_get_translation_object, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_clear: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the server from all translations.
    public static func clear () {
        gi.object_method_bind_ptrcall (TranslationServer.method_clear, UnsafeMutableRawPointer (mutating: shared.handle), nil, nil)
    }
    
    fileprivate static var method_get_loaded_locales: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_loaded_locales")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns an array of all loaded locales of the project.
    public static func getLoadedLocales ()-> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall (TranslationServer.method_get_loaded_locales, UnsafeMutableRawPointer (mutating: shared.handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_is_pseudolocalization_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_pseudolocalization_enabled")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate static func is_pseudolocalization_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (TranslationServer.method_is_pseudolocalization_enabled, UnsafeMutableRawPointer (mutating: shared.handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_pseudolocalization_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_pseudolocalization_enabled")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate static func set_pseudolocalization_enabled (_ enabled: Bool) {
        #if true
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (TranslationServer.method_set_pseudolocalization_enabled, UnsafeMutableRawPointer (mutating: shared.handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TranslationServer.method_set_pseudolocalization_enabled, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_reload_pseudolocalization: GDExtensionMethodBindPtr = {
        let methodName = StringName ("reload_pseudolocalization")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Reparses the pseudolocalization options and reloads the translation.
    public static func reloadPseudolocalization () {
        gi.object_method_bind_ptrcall (TranslationServer.method_reload_pseudolocalization, UnsafeMutableRawPointer (mutating: shared.handle), nil, nil)
    }
    
    fileprivate static var method_pseudolocalize: GDExtensionMethodBindPtr = {
        let methodName = StringName ("pseudolocalize")
        return withUnsafePointer (to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1965194235)!
            }
            
        }
        
    }()
    
    /// Returns the pseudolocalized string based on the `message` passed in.
    public static func pseudolocalize (message: StringName)-> StringName {
        let _result: StringName = StringName ()
        #if true
        
        
        gi.object_method_bind_ptrcall_v (TranslationServer.method_pseudolocalize, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &message.content)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &message.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TranslationServer.method_pseudolocalize, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
}

