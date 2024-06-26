// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A binary ``Semaphore`` for synchronization of multiple ``Thread``s.
/// 
/// A synchronization mutex (mutual exclusion). This is used to synchronize multiple ``Thread``s, and is equivalent to a binary ``Semaphore``. It guarantees that only one thread can access a critical section at a time.
/// 
/// This is a reentrant mutex, meaning that it can be locked multiple times by one thread, provided it also unlocks it as many times.
/// 
/// > Warning: Mutexes must be used carefully to avoid deadlocks.
/// 
/// > Warning: To ensure proper cleanup without crashes or deadlocks, the following conditions must be met:
/// 
/// - When a ``Mutex``'s reference count reaches zero and it is therefore destroyed, no threads (including the one on which the destruction will happen) must have it locked.
/// 
/// - When a ``Thread``'s reference count reaches zero and it is therefore destroyed, it must not have any mutex locked.
/// 
open class Mutex: RefCounted {
    override open class var godotClassName: StringName { "Mutex" }
    /* Methods */
    fileprivate static var method_lock: GDExtensionMethodBindPtr = {
        let methodName = StringName ("lock")
        return withUnsafePointer (to: &Mutex.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Locks this ``Mutex``, blocks until it is unlocked by the current owner.
    /// 
    /// > Note: This function returns without blocking if the thread already has ownership of the mutex.
    /// 
    public final func lock () {
        gi.object_method_bind_ptrcall (Mutex.method_lock, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_try_lock: GDExtensionMethodBindPtr = {
        let methodName = StringName ("try_lock")
        return withUnsafePointer (to: &Mutex.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Tries locking this ``Mutex``, but does not block. Returns `true` on success, `false` otherwise.
    /// 
    /// > Note: This function returns `true` if the thread already has ownership of the mutex.
    /// 
    public final func tryLock ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (Mutex.method_try_lock, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_unlock: GDExtensionMethodBindPtr = {
        let methodName = StringName ("unlock")
        return withUnsafePointer (to: &Mutex.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Unlocks this ``Mutex``, leaving it to other threads.
    /// 
    /// > Note: If a thread called ``lock()`` or ``tryLock()`` multiple times while already having ownership of the mutex, it must also call ``unlock()`` the same number of times in order to unlock it correctly.
    /// 
    /// > Warning: Calling ``unlock()`` more times that ``lock()`` on a given thread, thus ending up trying to unlock a non-locked mutex, is wrong and may causes crashes or deadlocks.
    /// 
    public final func unlock () {
        gi.object_method_bind_ptrcall (Mutex.method_unlock, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
}

