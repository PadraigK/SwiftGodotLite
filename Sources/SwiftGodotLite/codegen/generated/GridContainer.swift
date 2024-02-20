// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A container that arranges its child controls in a grid layout.
/// 
/// ``GridContainer`` arranges its child controls in a grid layout. The number of columns is specified by the ``columns`` property, whereas the number of rows depends on how many are needed for the child controls. The number of rows and columns is preserved for every size of the container.
/// 
/// > Note: ``GridContainer`` only works with child nodes inheriting from ``Control``. It won't rearrange child nodes inheriting from ``Node2D``.
/// 
open class GridContainer: Container {
    override open class var godotClassName: StringName { "GridContainer" }
    
    /* Properties */
    
    /// The number of columns in the ``GridContainer``. If modified, ``GridContainer`` reorders its Control-derived children to accommodate the new layout.
    final public var columns: Int32 {
        get {
            return get_columns ()
        }
        
        set {
            set_columns (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_columns: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_columns")
        return withUnsafePointer (to: &GridContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_columns (_ columns: Int32) {
        #if false
        
        var copy_columns: Int = Int (columns)
        
        gi.object_method_bind_ptrcall_v (GridContainer.method_set_columns, UnsafeMutableRawPointer (mutating: handle), nil, &copy_columns)
        
        #else
        
        var copy_columns: Int = Int (columns)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_columns) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (GridContainer.method_set_columns, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_columns: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_columns")
        return withUnsafePointer (to: &GridContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_columns ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (GridContainer.method_get_columns, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

