// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A control used for visual representation of a percentage.
/// 
/// A control used for visual representation of a percentage. Shows fill percentage from right to left.
open class ProgressBar: Range {
    override open class var godotClassName: StringName { "ProgressBar" }
    public enum FillMode: Int64 {
        /// The progress bar fills from begin to end horizontally, according to the language direction. If ``Control/isLayoutRtl()`` returns `false`, it fills from left to right, and if it returns `true`, it fills from right to left.
        case beginToEnd = 0 // FILL_BEGIN_TO_END
        /// The progress bar fills from end to begin horizontally, according to the language direction. If ``Control/isLayoutRtl()`` returns `false`, it fills from right to left, and if it returns `true`, it fills from left to right.
        case endToBegin = 1 // FILL_END_TO_BEGIN
        /// The progress fills from top to bottom.
        case topToBottom = 2 // FILL_TOP_TO_BOTTOM
        /// The progress fills from bottom to top.
        case bottomToTop = 3 // FILL_BOTTOM_TO_TOP
    }
    
    
    /* Properties */
    
    /// The fill direction. See ``ProgressBar/FillMode`` for possible values.
    final public var fillMode: Int32 {
        get {
            return get_fill_mode ()
        }
        
        set {
            set_fill_mode (newValue)
        }
        
    }
    
    /// If `true`, the fill percentage is displayed on the bar.
    final public var showPercentage: Bool {
        get {
            return is_percentage_shown ()
        }
        
        set {
            set_show_percentage (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_fill_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_fill_mode")
        return withUnsafePointer (to: &ProgressBar.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fill_mode (_ mode: Int32) {
        #if true
        
        var copy_mode: Int = Int (mode)
        
        gi.object_method_bind_ptrcall_v (ProgressBar.method_set_fill_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mode)
        
        #else
        
        var copy_mode: Int = Int (mode)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ProgressBar.method_set_fill_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_fill_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_fill_mode")
        return withUnsafePointer (to: &ProgressBar.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fill_mode ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (ProgressBar.method_get_fill_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_show_percentage: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_show_percentage")
        return withUnsafePointer (to: &ProgressBar.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_show_percentage (_ visible: Bool) {
        #if true
        
        var copy_visible = visible
        
        gi.object_method_bind_ptrcall_v (ProgressBar.method_set_show_percentage, UnsafeMutableRawPointer (mutating: handle), nil, &copy_visible)
        
        #else
        
        var copy_visible = visible
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_visible) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ProgressBar.method_set_show_percentage, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_percentage_shown: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_percentage_shown")
        return withUnsafePointer (to: &ProgressBar.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_percentage_shown ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (ProgressBar.method_is_percentage_shown, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

