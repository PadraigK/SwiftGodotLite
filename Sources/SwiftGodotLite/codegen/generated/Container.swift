// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Base class for all GUI containers.
/// 
/// Base class for all GUI containers. A ``Container`` automatically arranges its child controls in a certain way. This class can be inherited to make custom container types.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``preSortChildren``
/// - ``sortChildren``
open class Container: Control {
    override open class var godotClassName: StringName { "Container" }
    /* Constants */
    /// Notification just before children are going to be sorted, in case there's something to process beforehand.
    public static let notificationPreSortChildren = 50
    /// Notification for when sorting the children, it must be obeyed immediately.
    public static let notificationSortChildren = 51
    /* Methods */
    /// Implement to return a list of allowed horizontal ``Control.SizeFlags`` for child nodes. This doesn't technically prevent the usages of any other size flags, if your implementation requires that. This only limits the options available to the user in the Inspector dock.
    /// 
    /// > Note: Having no size flags is equal to having ``Control/SizeFlags/sizeShrinkBegin``. As such, this value is always implicitly allowed.
    /// 
    @_documentation(visibility: public)
    open func _getAllowedSizeFlagsHorizontal ()-> PackedInt32Array {
        return PackedInt32Array ()
    }
    
    /// Implement to return a list of allowed vertical ``Control.SizeFlags`` for child nodes. This doesn't technically prevent the usages of any other size flags, if your implementation requires that. This only limits the options available to the user in the Inspector dock.
    /// 
    /// > Note: Having no size flags is equal to having ``Control/SizeFlags/sizeShrinkBegin``. As such, this value is always implicitly allowed.
    /// 
    @_documentation(visibility: public)
    open func _getAllowedSizeFlagsVertical ()-> PackedInt32Array {
        return PackedInt32Array ()
    }
    
    fileprivate static var method_queue_sort: GDExtensionMethodBindPtr = {
        let methodName = StringName ("queue_sort")
        return withUnsafePointer (to: &Container.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Queue resort of the contained children. This is called automatically anyway, but can be called upon request.
    public final func queueSort () {
        gi.object_method_bind_ptrcall (Container.method_queue_sort, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_fit_child_in_rect: GDExtensionMethodBindPtr = {
        let methodName = StringName ("fit_child_in_rect")
        return withUnsafePointer (to: &Container.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1993438598)!
            }
            
        }
        
    }()
    
    /// Fit a child control in a given rect. This is mainly a helper for creating custom container classes.
    public final func fitChildInRect (child: Control?, rect: Rect2) {
        #if false
        
        var copy_rect = rect
        var copy_child_handle = child?.handle
        
        gi.object_method_bind_ptrcall_v (Container.method_fit_child_in_rect, UnsafeMutableRawPointer (mutating: handle), nil, &copy_child_handle, &copy_rect)
        
        #else
        
        var copy_rect = rect
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: child?.handle) { p0 in
        _args.append (child == nil ? nil : p0)
            withUnsafePointer (to: &copy_rect) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Container.method_fit_child_in_rect, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_allowed_size_flags_horizontal":
                return _Container_proxy_get_allowed_size_flags_horizontal
            case "_get_allowed_size_flags_vertical":
                return _Container_proxy_get_allowed_size_flags_vertical
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted when children are going to be sorted.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.preSortChildren.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var preSortChildren: SimpleSignal { SimpleSignal (target: self, signalName: "pre_sort_children") }
    
    /// Emitted when sorting the children is needed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.sortChildren.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var sortChildren: SimpleSignal { SimpleSignal (target: self, signalName: "sort_children") }
    
}

// Support methods for proxies
func _Container_proxy_get_allowed_size_flags_horizontal (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<Container>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getAllowedSizeFlagsHorizontal ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedInt32Array
    ret.content = PackedInt32Array.zero
}

func _Container_proxy_get_allowed_size_flags_vertical (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<Container>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getAllowedSizeFlagsVertical ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedInt32Array
    ret.content = PackedInt32Array.zero
}

