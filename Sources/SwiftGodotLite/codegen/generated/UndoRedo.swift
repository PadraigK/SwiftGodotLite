// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Provides a high-level interface for implementing undo and redo operations.
/// 
/// UndoRedo works by registering methods and property changes inside "actions". You can create an action, then provide ways to do and undo this action using function calls and property changes, then commit the action.
/// 
/// When an action is committed, all of the `do_*` methods will run. If the ``undo()`` method is used, the `undo_*` methods will run. If the ``redo()`` method is used, once again, all of the `do_*` methods will run.
/// 
/// Here's an example on how to add an action:
/// 
/// Before calling any of the `add_(un)do_*` methods, you need to first call ``createAction(name:mergeMode:backwardUndoOps:)``. Afterwards you need to call ``commitAction(execute:)``.
/// 
/// If you don't need to register a method, you can leave ``addDoMethod(callable:)`` and ``addUndoMethod(callable:)`` out; the same goes for properties. You can also register more than one method/property.
/// 
/// If you are making an ``EditorPlugin`` and want to integrate into the editor's undo history, use ``EditorUndoRedoManager`` instead.
/// 
/// If you are registering multiple properties/method which depend on one another, be aware that by default undo operation are called in the same order they have been added. Therefore instead of grouping do operation with their undo operations it is better to group do on one side and undo on the other as shown below.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``versionChanged``
open class UndoRedo: Object {
    override open class var godotClassName: StringName { "UndoRedo" }
    public enum MergeMode: Int64 {
        /// Makes "do"/"undo" operations stay in separate actions.
        case disable = 0 // MERGE_DISABLE
        /// Makes so that the action's "undo" operations are from the first action created and the "do" operations are from the last subsequent action with the same name.
        case ends = 1 // MERGE_ENDS
        /// Makes subsequent actions with the same name be merged into one.
        case all = 2 // MERGE_ALL
    }
    
    /* Methods */
    fileprivate static var method_create_action: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_action")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3171901514)!
            }
            
        }
        
    }()
    
    /// Create a new action. After this is called, do all your calls to ``addDoMethod(callable:)``, ``addUndoMethod(callable:)``, ``addDoProperty(object:property:value:)``, and ``addUndoProperty(object:property:value:)``, then commit the action with ``commitAction(execute:)``.
    /// 
    /// The way actions are merged is dictated by `mergeMode`. See ``UndoRedo/MergeMode`` for details.
    /// 
    /// The way undo operation are ordered in actions is dictated by `backwardUndoOps`. When `backwardUndoOps` is `false` undo option are ordered in the same order they were added. Which means the first operation to be added will be the first to be undone.
    /// 
    public final func createAction (name: String, mergeMode: UndoRedo.MergeMode = .disable, backwardUndoOps: Bool = false) {
        #if true
        
        let gstr_name = GString (name)
        var copy_merge_mode = Int64 (mergeMode.rawValue)
        var copy_backward_undo_ops = backwardUndoOps
        
        gi.object_method_bind_ptrcall_v (UndoRedo.method_create_action, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_name.content, &copy_merge_mode, &copy_backward_undo_ops)
        
        #else
        
        let gstr_name = GString (name)
        var copy_merge_mode = Int64 (mergeMode.rawValue)
        var copy_backward_undo_ops = backwardUndoOps
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_merge_mode) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_backward_undo_ops) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (UndoRedo.method_create_action, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_commit_action: GDExtensionMethodBindPtr = {
        let methodName = StringName ("commit_action")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3216645846)!
            }
            
        }
        
    }()
    
    /// Commit the action. If `execute` is `true` (which it is by default), all "do" methods/properties are called/set when this function is called.
    public final func commitAction (execute: Bool = true) {
        #if true
        
        var copy_execute = execute
        
        gi.object_method_bind_ptrcall_v (UndoRedo.method_commit_action, UnsafeMutableRawPointer (mutating: handle), nil, &copy_execute)
        
        #else
        
        var copy_execute = execute
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_execute) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (UndoRedo.method_commit_action, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_committing_action: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_committing_action")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the ``UndoRedo`` is currently committing the action, i.e. running its "do" method or property change (see ``commitAction(execute:)``).
    public final func isCommittingAction ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (UndoRedo.method_is_committing_action, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_add_do_method: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_do_method")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1611583062)!
            }
            
        }
        
    }()
    
    /// Register a ``Callable`` that will be called when the action is committed.
    public final func addDoMethod (callable: Callable) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (UndoRedo.method_add_do_method, UnsafeMutableRawPointer (mutating: handle), nil, &callable.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &callable.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (UndoRedo.method_add_do_method, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_add_undo_method: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_undo_method")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1611583062)!
            }
            
        }
        
    }()
    
    /// Register a ``Callable`` that will be called when the action is undone.
    public final func addUndoMethod (callable: Callable) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (UndoRedo.method_add_undo_method, UnsafeMutableRawPointer (mutating: handle), nil, &callable.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &callable.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (UndoRedo.method_add_undo_method, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_add_do_property: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_do_property")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1017172818)!
            }
            
        }
        
    }()
    
    /// Register a `property` that would change its value to `value` when the action is committed.
    public final func addDoProperty (object: Object?, property: StringName, value: Variant) {
        #if true
        
        var copy_object_handle = object?.handle
        
        gi.object_method_bind_ptrcall_v (UndoRedo.method_add_do_property, UnsafeMutableRawPointer (mutating: handle), nil, &copy_object_handle, &property.content, &value.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: object?.handle) { p0 in
        _args.append (object == nil ? nil : p0)
            withUnsafePointer (to: &property.content) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &value.content) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (UndoRedo.method_add_do_property, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_add_undo_property: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_undo_property")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1017172818)!
            }
            
        }
        
    }()
    
    /// Register a `property` that would change its value to `value` when the action is undone.
    public final func addUndoProperty (object: Object?, property: StringName, value: Variant) {
        #if true
        
        var copy_object_handle = object?.handle
        
        gi.object_method_bind_ptrcall_v (UndoRedo.method_add_undo_property, UnsafeMutableRawPointer (mutating: handle), nil, &copy_object_handle, &property.content, &value.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: object?.handle) { p0 in
        _args.append (object == nil ? nil : p0)
            withUnsafePointer (to: &property.content) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &value.content) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (UndoRedo.method_add_undo_property, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_add_do_reference: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_do_reference")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3975164845)!
            }
            
        }
        
    }()
    
    /// Register a reference for "do" that will be erased if the "do" history is lost. This is useful mostly for new nodes created for the "do" call. Do not use for resources.
    /// 
    public final func addDoReference (object: Object?) {
        #if true
        
        var copy_object_handle = object?.handle
        
        gi.object_method_bind_ptrcall_v (UndoRedo.method_add_do_reference, UnsafeMutableRawPointer (mutating: handle), nil, &copy_object_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: object?.handle) { p0 in
        _args.append (object == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (UndoRedo.method_add_do_reference, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_add_undo_reference: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_undo_reference")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3975164845)!
            }
            
        }
        
    }()
    
    /// Register a reference for "undo" that will be erased if the "undo" history is lost. This is useful mostly for nodes removed with the "do" call (not the "undo" call!).
    /// 
    public final func addUndoReference (object: Object?) {
        #if true
        
        var copy_object_handle = object?.handle
        
        gi.object_method_bind_ptrcall_v (UndoRedo.method_add_undo_reference, UnsafeMutableRawPointer (mutating: handle), nil, &copy_object_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: object?.handle) { p0 in
        _args.append (object == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (UndoRedo.method_add_undo_reference, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_start_force_keep_in_merge_ends: GDExtensionMethodBindPtr = {
        let methodName = StringName ("start_force_keep_in_merge_ends")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Marks the next "do" and "undo" operations to be processed even if the action gets merged with another in the .mergeEnds mode. Return to normal operation using ``endForceKeepInMergeEnds()``.
    public final func startForceKeepInMergeEnds () {
        gi.object_method_bind_ptrcall (UndoRedo.method_start_force_keep_in_merge_ends, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_end_force_keep_in_merge_ends: GDExtensionMethodBindPtr = {
        let methodName = StringName ("end_force_keep_in_merge_ends")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops marking operations as to be processed even if the action gets merged with another in the .mergeEnds mode. See ``startForceKeepInMergeEnds()``.
    public final func endForceKeepInMergeEnds () {
        gi.object_method_bind_ptrcall (UndoRedo.method_end_force_keep_in_merge_ends, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_get_history_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_history_count")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns how many elements are in the history.
    public final func getHistoryCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (UndoRedo.method_get_history_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_current_action: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_current_action")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Gets the index of the current action.
    public final func getCurrentAction ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (UndoRedo.method_get_current_action, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_action_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_action_name")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 990163283)!
            }
            
        }
        
    }()
    
    /// Gets the action name from its index.
    public final func getActionName (id: Int32)-> String {
        let _result = GString ()
        #if true
        
        var copy_id: Int = Int (id)
        
        gi.object_method_bind_ptrcall_v (UndoRedo.method_get_action_name, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_id)
        return _result.description
        #else
        
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (UndoRedo.method_get_action_name, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_clear_history: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear_history")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3216645846)!
            }
            
        }
        
    }()
    
    /// Clear the undo/redo history and associated references.
    /// 
    /// Passing `false` to `increaseVersion` will prevent the version number from increasing when the history is cleared.
    /// 
    public final func clearHistory (increaseVersion: Bool = true) {
        #if true
        
        var copy_increase_version = increaseVersion
        
        gi.object_method_bind_ptrcall_v (UndoRedo.method_clear_history, UnsafeMutableRawPointer (mutating: handle), nil, &copy_increase_version)
        
        #else
        
        var copy_increase_version = increaseVersion
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_increase_version) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (UndoRedo.method_clear_history, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_current_action_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_current_action_name")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Gets the name of the current action, equivalent to `get_action_name(get_current_action())`.
    public final func getCurrentActionName ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (UndoRedo.method_get_current_action_name, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_has_undo: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_undo")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if an "undo" action is available.
    public final func hasUndo ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (UndoRedo.method_has_undo, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_has_redo: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_redo")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if a "redo" action is available.
    public final func hasRedo ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (UndoRedo.method_has_redo, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_version: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_version")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Gets the version. Every time a new action is committed, the ``UndoRedo``'s version number is increased automatically.
    /// 
    /// This is useful mostly to check if something changed from a saved version.
    /// 
    public final func getVersion ()-> UInt {
        var _result: UInt = 0
        gi.object_method_bind_ptrcall (UndoRedo.method_get_version, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_redo: GDExtensionMethodBindPtr = {
        let methodName = StringName ("redo")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Redo the last action.
    public final func redo ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (UndoRedo.method_redo, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_undo: GDExtensionMethodBindPtr = {
        let methodName = StringName ("undo")
        return withUnsafePointer (to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Undo the last action.
    public final func undo ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (UndoRedo.method_undo, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Called when ``undo()`` or ``redo()`` was called.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.versionChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var versionChanged: SimpleSignal { SimpleSignal (target: self, signalName: "version_changed") }
    
}

