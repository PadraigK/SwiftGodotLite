// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Holds an ``Object``. If the object is ``RefCounted``, it doesn't update the reference count.
/// 
/// A weakref can hold a ``RefCounted`` without contributing to the reference counter. A weakref can be created from an ``Object`` using ``@GlobalScope.weakref``. If this object is not a reference, weakref still works, however, it does not have any effect on the object. Weakrefs are useful in cases where multiple classes have variables that refer to each other. Without weakrefs, using these classes could lead to memory leaks, since both references keep each other from being released. Making part of the variables a weakref can prevent this cyclic dependency, and allows the references to be released.
open class WeakRef: RefCounted {
    override open class var godotClassName: StringName { "WeakRef" }
    /* Methods */
    fileprivate static var method_get_ref: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_ref")
        return withUnsafePointer (to: &WeakRef.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1214101251)!
            }
            
        }
        
    }()
    
    /// Returns the ``Object`` this weakref is referring to. Returns `null` if that object no longer exists.
    public final func getRef ()-> Variant {
        let _result: Variant = Variant ()
        gi.object_method_bind_ptrcall (WeakRef.method_get_ref, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
}

