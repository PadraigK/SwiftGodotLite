// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Abstract base class for controls that represent a number within a range.
/// 
/// Range is an abstract base class for controls that represent a number within a range, using a configured ``step`` and ``page`` size. See e.g. ``ScrollBar`` and ``Slider`` for examples of higher-level nodes using Range.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``valueChanged``
/// - ``changed``
open class Range: Control {
    override open class var godotClassName: StringName { "Range" }
    
    /* Properties */
    
    /// Minimum value. Range is clamped if ``value`` is less than ``minValue``.
    final public var minValue: Double {
        get {
            return get_min ()
        }
        
        set {
            set_min (newValue)
        }
        
    }
    
    /// Maximum value. Range is clamped if ``value`` is greater than ``maxValue``.
    final public var maxValue: Double {
        get {
            return get_max ()
        }
        
        set {
            set_max (newValue)
        }
        
    }
    
    /// If greater than 0, ``value`` will always be rounded to a multiple of this property's value. If ``rounded`` is also `true`, ``value`` will first be rounded to a multiple of this property's value, then rounded to the nearest integer.
    final public var step: Double {
        get {
            return get_step ()
        }
        
        set {
            set_step (newValue)
        }
        
    }
    
    /// Page size. Used mainly for ``ScrollBar``. ScrollBar's length is its size multiplied by ``page`` over the difference between ``minValue`` and ``maxValue``.
    final public var page: Double {
        get {
            return get_page ()
        }
        
        set {
            set_page (newValue)
        }
        
    }
    
    /// Range's current value. Changing this property (even via code) will trigger [signal value_changed] signal. Use ``setValueNoSignal(value:)`` if you want to avoid it.
    final public var value: Double {
        get {
            return get_value ()
        }
        
        set {
            set_value (newValue)
        }
        
    }
    
    /// The value mapped between 0 and 1.
    final public var ratio: Double {
        get {
            return get_as_ratio ()
        }
        
        set {
            set_as_ratio (newValue)
        }
        
    }
    
    /// If `true`, and ``minValue`` is greater than 0, ``value`` will be represented exponentially rather than linearly.
    final public var expEdit: Bool {
        get {
            return is_ratio_exp ()
        }
        
        set {
            set_exp_ratio (newValue)
        }
        
    }
    
    /// If `true`, ``value`` will always be rounded to the nearest integer.
    final public var rounded: Bool {
        get {
            return is_using_rounded_values ()
        }
        
        set {
            set_use_rounded_values (newValue)
        }
        
    }
    
    /// If `true`, ``value`` may be greater than ``maxValue``.
    final public var allowGreater: Bool {
        get {
            return is_greater_allowed ()
        }
        
        set {
            set_allow_greater (newValue)
        }
        
    }
    
    /// If `true`, ``value`` may be less than ``minValue``.
    final public var allowLesser: Bool {
        get {
            return is_lesser_allowed ()
        }
        
        set {
            set_allow_lesser (newValue)
        }
        
    }
    
    /* Methods */
    /// Called when the ``Range``'s value is changed (following the same conditions as [signal value_changed]).
    @_documentation(visibility: public)
    open func _valueChanged (newValue: Double) {
    }
    
    fileprivate static var method_get_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_value")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_value ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (Range.method_get_value, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_min: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_min")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_min ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (Range.method_get_min, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_max: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_max")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (Range.method_get_max, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_step: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_step")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_step ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (Range.method_get_step, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_page: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_page")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_page ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (Range.method_get_page, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_as_ratio: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_as_ratio")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_as_ratio ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (Range.method_get_as_ratio, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_value")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_value (_ value: Double) {
        #if false
        
        var copy_value = value
        
        gi.object_method_bind_ptrcall_v (Range.method_set_value, UnsafeMutableRawPointer (mutating: handle), nil, &copy_value)
        
        #else
        
        var copy_value = value
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_value) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Range.method_set_value, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_value_no_signal: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_value_no_signal")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Sets the ``Range``'s current value to the specified `value`, without emitting the [signal value_changed] signal.
    public final func setValueNoSignal (value: Double) {
        #if false
        
        var copy_value = value
        
        gi.object_method_bind_ptrcall_v (Range.method_set_value_no_signal, UnsafeMutableRawPointer (mutating: handle), nil, &copy_value)
        
        #else
        
        var copy_value = value
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_value) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Range.method_set_value_no_signal, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_min: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_min")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_min (_ minimum: Double) {
        #if false
        
        var copy_minimum = minimum
        
        gi.object_method_bind_ptrcall_v (Range.method_set_min, UnsafeMutableRawPointer (mutating: handle), nil, &copy_minimum)
        
        #else
        
        var copy_minimum = minimum
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_minimum) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Range.method_set_min, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_max: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_max")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max (_ maximum: Double) {
        #if false
        
        var copy_maximum = maximum
        
        gi.object_method_bind_ptrcall_v (Range.method_set_max, UnsafeMutableRawPointer (mutating: handle), nil, &copy_maximum)
        
        #else
        
        var copy_maximum = maximum
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_maximum) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Range.method_set_max, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_step: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_step")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_step (_ step: Double) {
        #if false
        
        var copy_step = step
        
        gi.object_method_bind_ptrcall_v (Range.method_set_step, UnsafeMutableRawPointer (mutating: handle), nil, &copy_step)
        
        #else
        
        var copy_step = step
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_step) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Range.method_set_step, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_page: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_page")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_page (_ pagesize: Double) {
        #if false
        
        var copy_pagesize = pagesize
        
        gi.object_method_bind_ptrcall_v (Range.method_set_page, UnsafeMutableRawPointer (mutating: handle), nil, &copy_pagesize)
        
        #else
        
        var copy_pagesize = pagesize
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_pagesize) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Range.method_set_page, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_as_ratio: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_as_ratio")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_as_ratio (_ value: Double) {
        #if false
        
        var copy_value = value
        
        gi.object_method_bind_ptrcall_v (Range.method_set_as_ratio, UnsafeMutableRawPointer (mutating: handle), nil, &copy_value)
        
        #else
        
        var copy_value = value
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_value) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Range.method_set_as_ratio, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_use_rounded_values: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_use_rounded_values")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_rounded_values (_ enabled: Bool) {
        #if false
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (Range.method_set_use_rounded_values, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Range.method_set_use_rounded_values, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_using_rounded_values: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_using_rounded_values")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_rounded_values ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (Range.method_is_using_rounded_values, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_exp_ratio: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_exp_ratio")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_exp_ratio (_ enabled: Bool) {
        #if false
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (Range.method_set_exp_ratio, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Range.method_set_exp_ratio, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_ratio_exp: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_ratio_exp")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_ratio_exp ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (Range.method_is_ratio_exp, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_allow_greater: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_allow_greater")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_allow_greater (_ allow: Bool) {
        #if false
        
        var copy_allow = allow
        
        gi.object_method_bind_ptrcall_v (Range.method_set_allow_greater, UnsafeMutableRawPointer (mutating: handle), nil, &copy_allow)
        
        #else
        
        var copy_allow = allow
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_allow) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Range.method_set_allow_greater, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_greater_allowed: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_greater_allowed")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_greater_allowed ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (Range.method_is_greater_allowed, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_allow_lesser: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_allow_lesser")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_allow_lesser (_ allow: Bool) {
        #if false
        
        var copy_allow = allow
        
        gi.object_method_bind_ptrcall_v (Range.method_set_allow_lesser, UnsafeMutableRawPointer (mutating: handle), nil, &copy_allow)
        
        #else
        
        var copy_allow = allow
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_allow) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Range.method_set_allow_lesser, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_lesser_allowed: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_lesser_allowed")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_lesser_allowed ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (Range.method_is_lesser_allowed, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_share: GDExtensionMethodBindPtr = {
        let methodName = StringName ("share")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    /// Binds two ``Range``s together along with any ranges previously grouped with either of them. When any of range's member variables change, it will share the new value with all other ranges in its group.
    public final func share (with: Node?) {
        #if false
        
        var copy_with_handle = with?.handle
        
        gi.object_method_bind_ptrcall_v (Range.method_share, UnsafeMutableRawPointer (mutating: handle), nil, &copy_with_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: with?.handle) { p0 in
        _args.append (with == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (Range.method_share, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_unshare: GDExtensionMethodBindPtr = {
        let methodName = StringName ("unshare")
        return withUnsafePointer (to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops the ``Range`` from sharing its member variables with any other.
    public final func unshare () {
        gi.object_method_bind_ptrcall (Range.method_unshare, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_value_changed":
                return _Range_proxy_value_changed
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal1/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal1/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal1/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal1 {
        var target: Object
        var signalName: StringName
        init (target: Object, signalName: StringName) {
            self.target = target
            self.signalName = signalName
        }
        
        /// Connects the signal to the specified callback
        /// 
        /// 
        /// 
        /// To disconnect, call the disconnect method, with the returned token on success
        /// 
        /// - Parameters:
        /// 
        /// - callback: the method to invoke when this signal is raised
        /// 
        /// - flags: Optional, can be also added to configure the connection's behavior (see ``Object/ConnectFlags`` constants).
        /// 
        /// - Returns: an object token that can be used to disconnect the object from the target on success, or the error produced by Godot.
        /// 
        @discardableResult /* Signal1 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ value: Double) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = Double (args [0])!
                
                callback (arg_0)
            }
            
            let callable = Callable(object: signalProxy, method: SignalProxy.proxyName)
            let r = target.connect(signal: signalName, callable: callable, flags: UInt32 (flags.rawValue))
            if r != .ok { print ("Warning, error connecting to signal, code: \(r)") }
            return signalProxy
        }
        
        /// Disconnects a signal that was previously connected, the return value from calling ``connect(flags:_:)``
        public func disconnect (_ token: Object) {
            target.disconnect(signal: signalName, callable: Callable (object: token, method: SignalProxy.proxyName))
        }
        
        /// You can await this property to wait for the signal to be emitted once
        public var emitted: Void  {
            get async {
                await withCheckedContinuation {
                    c in
                    connect (flags: .oneShot) { _ in c.resume () }
                }
                
            }
            
        }
        
    }
    
    /// Emitted when ``value`` changes. When used on a ``Slider``, this is called continuously while dragging (potentially every frame). If you are performing an expensive operation in a function connected to [signal value_changed], consider using a _debouncing_ ``Timer`` to call the function less often.
    /// 
    /// > Note: Unlike signals such as [signal LineEdit.text_changed], [signal value_changed] is also emitted when `value` is set directly via code.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.valueChanged.connect { value in
    ///    print ("caught signal")
    /// }
    /// ```
    public var valueChanged: Signal1 { Signal1 (target: self, signalName: "value_changed") }
    
    /// Emitted when ``minValue``, ``maxValue``, ``page``, or ``step`` change.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.changed.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var changed: SimpleSignal { SimpleSignal (target: self, signalName: "changed") }
    
}

// Support methods for proxies
func _Range_proxy_value_changed (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<Range>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._valueChanged (newValue: args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

