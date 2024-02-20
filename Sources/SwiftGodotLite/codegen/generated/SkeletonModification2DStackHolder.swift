// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A modification that holds and executes a ``SkeletonModificationStack2D``.
/// 
/// This ``SkeletonModification2D`` holds a reference to a ``SkeletonModificationStack2D``, allowing you to use multiple modification stacks on a single ``Skeleton2D``.
/// 
/// > Note: The modifications in the held ``SkeletonModificationStack2D`` will only be executed if their execution mode matches the execution mode of the SkeletonModification2DStackHolder.
/// 
open class SkeletonModification2DStackHolder: SkeletonModification2D {
    override open class var godotClassName: StringName { "SkeletonModification2DStackHolder" }
    /* Methods */
    fileprivate static var method_set_held_modification_stack: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_held_modification_stack")
        return withUnsafePointer (to: &SkeletonModification2DStackHolder.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3907307132)!
            }
            
        }
        
    }()
    
    /// Sets the ``SkeletonModificationStack2D`` that this modification is holding. This modification stack will then be executed when this modification is executed.
    public final func setHeldModificationStack (_ heldModificationStack: SkeletonModificationStack2D?) {
        #if true
        
        var copy_held_modification_stack_handle = heldModificationStack?.handle
        
        gi.object_method_bind_ptrcall_v (SkeletonModification2DStackHolder.method_set_held_modification_stack, UnsafeMutableRawPointer (mutating: handle), nil, &copy_held_modification_stack_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: heldModificationStack?.handle) { p0 in
        _args.append (heldModificationStack == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (SkeletonModification2DStackHolder.method_set_held_modification_stack, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_held_modification_stack: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_held_modification_stack")
        return withUnsafePointer (to: &SkeletonModification2DStackHolder.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2107508396)!
            }
            
        }
        
    }()
    
    /// Returns the ``SkeletonModificationStack2D`` that this modification is holding.
    public final func getHeldModificationStack ()-> SkeletonModificationStack2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (SkeletonModification2DStackHolder.method_get_held_modification_stack, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}
