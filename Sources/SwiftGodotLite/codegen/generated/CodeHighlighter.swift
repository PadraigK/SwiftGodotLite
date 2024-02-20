// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A syntax highlighter intended for code.
/// 
/// By adjusting various properties of this resource, you can change the colors of strings, comments, numbers, and other text patterns inside a ``TextEdit`` control.
open class CodeHighlighter: SyntaxHighlighter {
    override open class var godotClassName: StringName { "CodeHighlighter" }
    
    /* Properties */
    
    /// Sets the color for numbers.
    final public var numberColor: Color {
        get {
            return get_number_color ()
        }
        
        set {
            set_number_color (newValue)
        }
        
    }
    
    /// Sets the color for symbols.
    final public var symbolColor: Color {
        get {
            return get_symbol_color ()
        }
        
        set {
            set_symbol_color (newValue)
        }
        
    }
    
    /// Sets color for functions. A function is a non-keyword string followed by a '('.
    final public var functionColor: Color {
        get {
            return get_function_color ()
        }
        
        set {
            set_function_color (newValue)
        }
        
    }
    
    /// Sets color for member variables. A member variable is non-keyword, non-function string proceeded with a '.'.
    final public var memberVariableColor: Color {
        get {
            return get_member_variable_color ()
        }
        
        set {
            set_member_variable_color (newValue)
        }
        
    }
    
    /// Sets the keyword colors. All existing keywords will be removed. The ``GDictionary`` key is the keyword. The value is the keyword color.
    final public var keywordColors: GDictionary {
        get {
            return get_keyword_colors ()
        }
        
        set {
            set_keyword_colors (newValue)
        }
        
    }
    
    /// Sets the member keyword colors. All existing member keyword will be removed. The ``GDictionary`` key is the member keyword. The value is the member keyword color.
    final public var memberKeywordColors: GDictionary {
        get {
            return get_member_keyword_colors ()
        }
        
        set {
            set_member_keyword_colors (newValue)
        }
        
    }
    
    /// Sets the color regions. All existing regions will be removed. The ``GDictionary`` key is the region start and end key, separated by a space. The value is the region color.
    final public var colorRegions: GDictionary {
        get {
            return get_color_regions ()
        }
        
        set {
            set_color_regions (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_add_keyword_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_keyword_color")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1636512886)!
            }
            
        }
        
    }()
    
    /// Sets the color for a keyword.
    /// 
    /// The keyword cannot contain any symbols except '_'.
    /// 
    public final func addKeywordColor (keyword: String, color: Color) {
        #if true
        
        let gstr_keyword = GString (keyword)
        var copy_color = color
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_add_keyword_color, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_keyword.content, &copy_color)
        
        #else
        
        let gstr_keyword = GString (keyword)
        var copy_color = color
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_keyword.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_color) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (CodeHighlighter.method_add_keyword_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_remove_keyword_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_keyword_color")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Removes the keyword.
    public final func removeKeywordColor (keyword: String) {
        #if true
        
        let gstr_keyword = GString (keyword)
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_remove_keyword_color, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_keyword.content)
        
        #else
        
        let gstr_keyword = GString (keyword)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_keyword.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CodeHighlighter.method_remove_keyword_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_has_keyword_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_keyword_color")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the keyword exists, else `false`.
    public final func hasKeywordColor (keyword: String)-> Bool {
        var _result: Bool = false
        #if true
        
        let gstr_keyword = GString (keyword)
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_has_keyword_color, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_keyword.content)
        return _result
        #else
        
        let gstr_keyword = GString (keyword)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_keyword.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CodeHighlighter.method_has_keyword_color, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_keyword_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_keyword_color")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3855908743)!
            }
            
        }
        
    }()
    
    /// Returns the color for a keyword.
    public final func getKeywordColor (keyword: String)-> Color {
        var _result: Color = Color ()
        #if true
        
        let gstr_keyword = GString (keyword)
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_get_keyword_color, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_keyword.content)
        return _result
        #else
        
        let gstr_keyword = GString (keyword)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_keyword.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CodeHighlighter.method_get_keyword_color, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_keyword_colors: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_keyword_colors")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_keyword_colors (_ keywords: GDictionary) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_set_keyword_colors, UnsafeMutableRawPointer (mutating: handle), nil, &keywords.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &keywords.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CodeHighlighter.method_set_keyword_colors, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_clear_keyword_colors: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear_keyword_colors")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all keywords.
    public final func clearKeywordColors () {
        gi.object_method_bind_ptrcall (CodeHighlighter.method_clear_keyword_colors, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_get_keyword_colors: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_keyword_colors")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_keyword_colors ()-> GDictionary {
        let _result: GDictionary = GDictionary ()
        gi.object_method_bind_ptrcall (CodeHighlighter.method_get_keyword_colors, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_add_member_keyword_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_member_keyword_color")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1636512886)!
            }
            
        }
        
    }()
    
    /// Sets the color for a member keyword.
    /// 
    /// The member keyword cannot contain any symbols except '_'.
    /// 
    /// It will not be highlighted if preceded by a '.'.
    /// 
    public final func addMemberKeywordColor (memberKeyword: String, color: Color) {
        #if true
        
        let gstr_member_keyword = GString (memberKeyword)
        var copy_color = color
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_add_member_keyword_color, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_member_keyword.content, &copy_color)
        
        #else
        
        let gstr_member_keyword = GString (memberKeyword)
        var copy_color = color
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_member_keyword.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_color) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (CodeHighlighter.method_add_member_keyword_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_remove_member_keyword_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_member_keyword_color")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Removes the member keyword.
    public final func removeMemberKeywordColor (memberKeyword: String) {
        #if true
        
        let gstr_member_keyword = GString (memberKeyword)
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_remove_member_keyword_color, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_member_keyword.content)
        
        #else
        
        let gstr_member_keyword = GString (memberKeyword)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_member_keyword.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CodeHighlighter.method_remove_member_keyword_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_has_member_keyword_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_member_keyword_color")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the member keyword exists, else `false`.
    public final func hasMemberKeywordColor (memberKeyword: String)-> Bool {
        var _result: Bool = false
        #if true
        
        let gstr_member_keyword = GString (memberKeyword)
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_has_member_keyword_color, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_member_keyword.content)
        return _result
        #else
        
        let gstr_member_keyword = GString (memberKeyword)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_member_keyword.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CodeHighlighter.method_has_member_keyword_color, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_member_keyword_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_member_keyword_color")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3855908743)!
            }
            
        }
        
    }()
    
    /// Returns the color for a member keyword.
    public final func getMemberKeywordColor (memberKeyword: String)-> Color {
        var _result: Color = Color ()
        #if true
        
        let gstr_member_keyword = GString (memberKeyword)
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_get_member_keyword_color, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_member_keyword.content)
        return _result
        #else
        
        let gstr_member_keyword = GString (memberKeyword)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_member_keyword.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CodeHighlighter.method_get_member_keyword_color, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_member_keyword_colors: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_member_keyword_colors")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_member_keyword_colors (_ memberKeyword: GDictionary) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_set_member_keyword_colors, UnsafeMutableRawPointer (mutating: handle), nil, &memberKeyword.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &memberKeyword.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CodeHighlighter.method_set_member_keyword_colors, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_clear_member_keyword_colors: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear_member_keyword_colors")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all member keywords.
    public final func clearMemberKeywordColors () {
        gi.object_method_bind_ptrcall (CodeHighlighter.method_clear_member_keyword_colors, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_get_member_keyword_colors: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_member_keyword_colors")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_member_keyword_colors ()-> GDictionary {
        let _result: GDictionary = GDictionary ()
        gi.object_method_bind_ptrcall (CodeHighlighter.method_get_member_keyword_colors, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_add_color_region: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_color_region")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2924977451)!
            }
            
        }
        
    }()
    
    /// Adds a color region such as comments or strings.
    /// 
    /// Both the start and end keys must be symbols. Only the start key has to be unique.
    /// 
    /// `lineOnly` denotes if the region should continue until the end of the line or carry over on to the next line. If the end key is blank this is automatically set to `true`.
    /// 
    public final func addColorRegion (startKey: String, endKey: String, color: Color, lineOnly: Bool = false) {
        #if true
        
        let gstr_start_key = GString (startKey)
        let gstr_end_key = GString (endKey)
        var copy_color = color
        var copy_line_only = lineOnly
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_add_color_region, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_start_key.content, &gstr_end_key.content, &copy_color, &copy_line_only)
        
        #else
        
        let gstr_start_key = GString (startKey)
        let gstr_end_key = GString (endKey)
        var copy_color = color
        var copy_line_only = lineOnly
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_start_key.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &gstr_end_key.content) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_color) { p2 in
                    _args.append (p2)
                    withUnsafePointer (to: &copy_line_only) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (CodeHighlighter.method_add_color_region, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_remove_color_region: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_color_region")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Removes the color region that uses that start key.
    public final func removeColorRegion (startKey: String) {
        #if true
        
        let gstr_start_key = GString (startKey)
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_remove_color_region, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_start_key.content)
        
        #else
        
        let gstr_start_key = GString (startKey)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_start_key.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CodeHighlighter.method_remove_color_region, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_has_color_region: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_color_region")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the start key exists, else `false`.
    public final func hasColorRegion (startKey: String)-> Bool {
        var _result: Bool = false
        #if true
        
        let gstr_start_key = GString (startKey)
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_has_color_region, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_start_key.content)
        return _result
        #else
        
        let gstr_start_key = GString (startKey)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_start_key.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CodeHighlighter.method_has_color_region, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_color_regions: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_color_regions")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_color_regions (_ colorRegions: GDictionary) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_set_color_regions, UnsafeMutableRawPointer (mutating: handle), nil, &colorRegions.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &colorRegions.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CodeHighlighter.method_set_color_regions, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_clear_color_regions: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear_color_regions")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all color regions.
    public final func clearColorRegions () {
        gi.object_method_bind_ptrcall (CodeHighlighter.method_clear_color_regions, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_get_color_regions: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_color_regions")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_color_regions ()-> GDictionary {
        let _result: GDictionary = GDictionary ()
        gi.object_method_bind_ptrcall (CodeHighlighter.method_get_color_regions, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_function_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_function_color")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_function_color (_ color: Color) {
        #if true
        
        var copy_color = color
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_set_function_color, UnsafeMutableRawPointer (mutating: handle), nil, &copy_color)
        
        #else
        
        var copy_color = color
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_color) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CodeHighlighter.method_set_function_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_function_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_function_color")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_function_color ()-> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall (CodeHighlighter.method_get_function_color, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_number_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_number_color")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_number_color (_ color: Color) {
        #if true
        
        var copy_color = color
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_set_number_color, UnsafeMutableRawPointer (mutating: handle), nil, &copy_color)
        
        #else
        
        var copy_color = color
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_color) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CodeHighlighter.method_set_number_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_number_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_number_color")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_number_color ()-> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall (CodeHighlighter.method_get_number_color, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_symbol_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_symbol_color")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_symbol_color (_ color: Color) {
        #if true
        
        var copy_color = color
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_set_symbol_color, UnsafeMutableRawPointer (mutating: handle), nil, &copy_color)
        
        #else
        
        var copy_color = color
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_color) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CodeHighlighter.method_set_symbol_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_symbol_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_symbol_color")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_symbol_color ()-> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall (CodeHighlighter.method_get_symbol_color, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_member_variable_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_member_variable_color")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_member_variable_color (_ color: Color) {
        #if true
        
        var copy_color = color
        
        gi.object_method_bind_ptrcall_v (CodeHighlighter.method_set_member_variable_color, UnsafeMutableRawPointer (mutating: handle), nil, &copy_color)
        
        #else
        
        var copy_color = color
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_color) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (CodeHighlighter.method_set_member_variable_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_member_variable_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_member_variable_color")
        return withUnsafePointer (to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_member_variable_color ()-> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall (CodeHighlighter.method_get_member_variable_color, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

