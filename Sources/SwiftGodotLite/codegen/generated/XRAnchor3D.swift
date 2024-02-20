// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// An anchor point in AR space.
/// 
/// The ``XRAnchor3D`` point is a spatial node that maps a real world location identified by the AR platform to a position within the game world. For example, as long as plane detection in ARKit is on, ARKit will identify and update the position of planes (tables, floors, etc) and create anchors for them.
/// 
/// This node is mapped to one of the anchors through its unique ID. When you receive a signal that a new anchor is available, you should add this node to your scene for that anchor. You can predefine nodes and set the ID; the nodes will simply remain on 0,0,0 until a plane is recognized.
/// 
/// Keep in mind that, as long as plane detection is enabled, the size, placing and orientation of an anchor will be updated as the detection logic learns more about the real world out there especially if only part of the surface is in view.
/// 
open class XRAnchor3D: XRNode3D {
    override open class var godotClassName: StringName { "XRAnchor3D" }
    /* Methods */
    fileprivate static var method_get_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_size")
        return withUnsafePointer (to: &XRAnchor3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// Returns the estimated size of the plane that was detected. Say when the anchor relates to a table in the real world, this is the estimated size of the surface of that table.
    public final func getSize ()-> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall (XRAnchor3D.method_get_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_plane: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_plane")
        return withUnsafePointer (to: &XRAnchor3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2753500971)!
            }
            
        }
        
    }()
    
    /// Returns a plane aligned with our anchor; handy for intersection testing.
    public final func getPlane ()-> Plane {
        var _result: Plane = Plane ()
        gi.object_method_bind_ptrcall (XRAnchor3D.method_get_plane, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

