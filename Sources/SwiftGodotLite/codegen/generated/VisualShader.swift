// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A custom shader program with a visual editor.
/// 
/// This class provides a graph-like visual editor for creating a ``Shader``. Although ``VisualShader``s do not require coding, they share the same logic with script shaders. They use ``VisualShaderNode``s that can be connected to each other to control the flow of the shader. The visual shader graph is converted to a script shader behind the scenes.
open class VisualShader: Shader {
    override open class var godotClassName: StringName { "VisualShader" }
    public enum GType: Int64 {
        /// A vertex shader, operating on vertices.
        case vertex = 0 // TYPE_VERTEX
        /// A fragment shader, operating on fragments (pixels).
        case fragment = 1 // TYPE_FRAGMENT
        /// A shader for light calculations.
        case light = 2 // TYPE_LIGHT
        /// A function for the "start" stage of particle shader.
        case start = 3 // TYPE_START
        /// A function for the "process" stage of particle shader.
        case process = 4 // TYPE_PROCESS
        /// A function for the "collide" stage (particle collision handler) of particle shader.
        case collide = 5 // TYPE_COLLIDE
        /// A function for the "start" stage of particle shader, with customized output.
        case startCustom = 6 // TYPE_START_CUSTOM
        /// A function for the "process" stage of particle shader, with customized output.
        case processCustom = 7 // TYPE_PROCESS_CUSTOM
        /// A shader for 3D environment's sky.
        case sky = 8 // TYPE_SKY
        /// A compute shader that runs for each froxel of the volumetric fog map.
        case fog = 9 // TYPE_FOG
        /// Represents the size of the ``VisualShader/Type`` enum.
        case max = 10 // TYPE_MAX
    }
    
    public enum VaryingMode: Int64 {
        /// Varying is passed from `Vertex` function to `Fragment` and `Light` functions.
        case vertexToFragLight = 0 // VARYING_MODE_VERTEX_TO_FRAG_LIGHT
        /// Varying is passed from `Fragment` function to `Light` function.
        case fragToLight = 1 // VARYING_MODE_FRAG_TO_LIGHT
        /// Represents the size of the ``VisualShader/VaryingMode`` enum.
        case max = 2 // VARYING_MODE_MAX
    }
    
    public enum VaryingType: Int64 {
        /// Varying is of type float.
        case float = 0 // VARYING_TYPE_FLOAT
        /// Varying is of type integer.
        case int = 1 // VARYING_TYPE_INT
        /// Varying is of type unsigned integer.
        case uint = 2 // VARYING_TYPE_UINT
        /// Varying is of type ``Vector2``.
        case vector2d = 3 // VARYING_TYPE_VECTOR_2D
        /// Varying is of type ``Vector3``.
        case vector3d = 4 // VARYING_TYPE_VECTOR_3D
        /// Varying is of type ``Vector4``.
        case vector4d = 5 // VARYING_TYPE_VECTOR_4D
        /// Varying is of type [bool].
        case boolean = 6 // VARYING_TYPE_BOOLEAN
        /// Varying is of type ``Transform3D``.
        case transform = 7 // VARYING_TYPE_TRANSFORM
        /// Represents the size of the ``VisualShader/VaryingType`` enum.
        case max = 8 // VARYING_TYPE_MAX
    }
    
    /* Constants */
    /// Denotes invalid ``VisualShader`` node.
    public static let nodeIdInvalid = -1
    /// Denotes output node of ``VisualShader``.
    public static let nodeIdOutput = 0
    
    /* Properties */
    
    /// The offset vector of the whole graph.
    final public var graphOffset: Vector2 {
        get {
            return get_graph_offset ()
        }
        
        set {
            set_graph_offset (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_mode")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3978014962)!
            }
            
        }
        
    }()
    
    /// Sets the mode of this shader.
    public final func setMode (_ mode: Shader.Mode) {
        #if true
        
        var copy_mode = Int64 (mode.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_set_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mode)
        
        #else
        
        var copy_mode = Int64 (mode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShader.method_set_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_add_node: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_node")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1560769431)!
            }
            
        }
        
    }()
    
    /// Adds the specified `node` to the shader.
    public final func addNode (type: VisualShader.GType, node: VisualShaderNode?, position: Vector2, id: Int32) {
        #if true
        
        var copy_type = Int64 (type.rawValue)
        var copy_position = position
        var copy_id: Int = Int (id)
        var copy_node_handle = node?.handle
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_add_node, UnsafeMutableRawPointer (mutating: handle), nil, &copy_type, &copy_node_handle, &copy_position, &copy_id)
        
        #else
        
        var copy_type = Int64 (type.rawValue)
        var copy_position = position
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
            withUnsafePointer (to: node?.handle) { p1 in
            _args.append (node == nil ? nil : p1)
                withUnsafePointer (to: &copy_position) { p2 in
                    _args.append (p2)
                    withUnsafePointer (to: &copy_id) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (VisualShader.method_add_node, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_node: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3784670312)!
            }
            
        }
        
    }()
    
    /// Returns the shader node instance with specified `type` and `id`.
    public final func getNode (type: VisualShader.GType, id: Int32)-> VisualShaderNode? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        var copy_type = Int64 (type.rawValue)
        var copy_id: Int = Int (id)
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_get_node, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_type, &copy_id)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_type = Int64 (type.rawValue)
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_id) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (VisualShader.method_get_node, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_node_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_node_position")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2726660721)!
            }
            
        }
        
    }()
    
    /// Sets the position of the specified node.
    public final func setNodePosition (type: VisualShader.GType, id: Int32, position: Vector2) {
        #if true
        
        var copy_type = Int64 (type.rawValue)
        var copy_id: Int = Int (id)
        var copy_position = position
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_set_node_position, UnsafeMutableRawPointer (mutating: handle), nil, &copy_type, &copy_id, &copy_position)
        
        #else
        
        var copy_type = Int64 (type.rawValue)
        var copy_id: Int = Int (id)
        var copy_position = position
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_id) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_position) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (VisualShader.method_set_node_position, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_node_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_position")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2175036082)!
            }
            
        }
        
    }()
    
    /// Returns the position of the specified node within the shader graph.
    public final func getNodePosition (type: VisualShader.GType, id: Int32)-> Vector2 {
        var _result: Vector2 = Vector2 ()
        #if true
        
        var copy_type = Int64 (type.rawValue)
        var copy_id: Int = Int (id)
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_get_node_position, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_type, &copy_id)
        return _result
        #else
        
        var copy_type = Int64 (type.rawValue)
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_id) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (VisualShader.method_get_node_position, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_node_list: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_list")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2370592410)!
            }
            
        }
        
    }()
    
    /// Returns the list of all nodes in the shader with the specified type.
    public final func getNodeList (type: VisualShader.GType)-> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        #if true
        
        var copy_type = Int64 (type.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_get_node_list, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_type)
        return _result
        #else
        
        var copy_type = Int64 (type.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShader.method_get_node_list, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_valid_node_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_valid_node_id")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 629467342)!
            }
            
        }
        
    }()
    
    /// Returns next valid node ID that can be added to the shader graph.
    public final func getValidNodeId (type: VisualShader.GType)-> Int32 {
        var _result: Int32 = 0
        #if true
        
        var copy_type = Int64 (type.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_get_valid_node_id, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_type)
        return _result
        #else
        
        var copy_type = Int64 (type.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShader.method_get_valid_node_id, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_remove_node: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_node")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 844050912)!
            }
            
        }
        
    }()
    
    /// Removes the specified node from the shader.
    public final func removeNode (type: VisualShader.GType, id: Int32) {
        #if true
        
        var copy_type = Int64 (type.rawValue)
        var copy_id: Int = Int (id)
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_remove_node, UnsafeMutableRawPointer (mutating: handle), nil, &copy_type, &copy_id)
        
        #else
        
        var copy_type = Int64 (type.rawValue)
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_id) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (VisualShader.method_remove_node, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_replace_node: GDExtensionMethodBindPtr = {
        let methodName = StringName ("replace_node")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3144735253)!
            }
            
        }
        
    }()
    
    /// Replaces the specified node with a node of new class type.
    public final func replaceNode (type: VisualShader.GType, id: Int32, newClass: StringName) {
        #if true
        
        var copy_type = Int64 (type.rawValue)
        var copy_id: Int = Int (id)
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_replace_node, UnsafeMutableRawPointer (mutating: handle), nil, &copy_type, &copy_id, &newClass.content)
        
        #else
        
        var copy_type = Int64 (type.rawValue)
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_id) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &newClass.content) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (VisualShader.method_replace_node, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_is_node_connection: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_node_connection")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3922381898)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the specified node and port connection exist.
    public final func isNodeConnection (type: VisualShader.GType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_type = Int64 (type.rawValue)
        var copy_from_node: Int = Int (fromNode)
        var copy_from_port: Int = Int (fromPort)
        var copy_to_node: Int = Int (toNode)
        var copy_to_port: Int = Int (toPort)
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_is_node_connection, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_type, &copy_from_node, &copy_from_port, &copy_to_node, &copy_to_port)
        return _result
        #else
        
        var copy_type = Int64 (type.rawValue)
        var copy_from_node: Int = Int (fromNode)
        var copy_from_port: Int = Int (fromPort)
        var copy_to_node: Int = Int (toNode)
        var copy_to_port: Int = Int (toPort)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_from_node) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_from_port) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &copy_to_node) { p3 in
                        _args.append (p3)
                        return withUnsafePointer (to: &copy_to_port) { p4 in
                            _args.append (p4)
        
                            gi.object_method_bind_ptrcall (VisualShader.method_is_node_connection, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                            return _result
                        }
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_can_connect_nodes: GDExtensionMethodBindPtr = {
        let methodName = StringName ("can_connect_nodes")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3922381898)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the specified nodes and ports can be connected together.
    public final func canConnectNodes (type: VisualShader.GType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_type = Int64 (type.rawValue)
        var copy_from_node: Int = Int (fromNode)
        var copy_from_port: Int = Int (fromPort)
        var copy_to_node: Int = Int (toNode)
        var copy_to_port: Int = Int (toPort)
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_can_connect_nodes, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_type, &copy_from_node, &copy_from_port, &copy_to_node, &copy_to_port)
        return _result
        #else
        
        var copy_type = Int64 (type.rawValue)
        var copy_from_node: Int = Int (fromNode)
        var copy_from_port: Int = Int (fromPort)
        var copy_to_node: Int = Int (toNode)
        var copy_to_port: Int = Int (toPort)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_from_node) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_from_port) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &copy_to_node) { p3 in
                        _args.append (p3)
                        return withUnsafePointer (to: &copy_to_port) { p4 in
                            _args.append (p4)
        
                            gi.object_method_bind_ptrcall (VisualShader.method_can_connect_nodes, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                            return _result
                        }
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_connect_nodes: GDExtensionMethodBindPtr = {
        let methodName = StringName ("connect_nodes")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3081049573)!
            }
            
        }
        
    }()
    
    /// Connects the specified nodes and ports.
    public final func connectNodes (type: VisualShader.GType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        var copy_type = Int64 (type.rawValue)
        var copy_from_node: Int = Int (fromNode)
        var copy_from_port: Int = Int (fromPort)
        var copy_to_node: Int = Int (toNode)
        var copy_to_port: Int = Int (toPort)
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_connect_nodes, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_type, &copy_from_node, &copy_from_port, &copy_to_node, &copy_to_port)
        return GodotError (rawValue: _result)!
        #else
        
        var copy_type = Int64 (type.rawValue)
        var copy_from_node: Int = Int (fromNode)
        var copy_from_port: Int = Int (fromPort)
        var copy_to_node: Int = Int (toNode)
        var copy_to_port: Int = Int (toPort)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_from_node) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_from_port) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &copy_to_node) { p3 in
                        _args.append (p3)
                        return withUnsafePointer (to: &copy_to_port) { p4 in
                            _args.append (p4)
        
                            gi.object_method_bind_ptrcall (VisualShader.method_connect_nodes, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                            return GodotError (rawValue: _result)!
                        }
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_disconnect_nodes: GDExtensionMethodBindPtr = {
        let methodName = StringName ("disconnect_nodes")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2268060358)!
            }
            
        }
        
    }()
    
    /// Connects the specified nodes and ports.
    public final func disconnectNodes (type: VisualShader.GType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) {
        #if true
        
        var copy_type = Int64 (type.rawValue)
        var copy_from_node: Int = Int (fromNode)
        var copy_from_port: Int = Int (fromPort)
        var copy_to_node: Int = Int (toNode)
        var copy_to_port: Int = Int (toPort)
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_disconnect_nodes, UnsafeMutableRawPointer (mutating: handle), nil, &copy_type, &copy_from_node, &copy_from_port, &copy_to_node, &copy_to_port)
        
        #else
        
        var copy_type = Int64 (type.rawValue)
        var copy_from_node: Int = Int (fromNode)
        var copy_from_port: Int = Int (fromPort)
        var copy_to_node: Int = Int (toNode)
        var copy_to_port: Int = Int (toPort)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_from_node) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_from_port) { p2 in
                    _args.append (p2)
                    withUnsafePointer (to: &copy_to_node) { p3 in
                        _args.append (p3)
                        withUnsafePointer (to: &copy_to_port) { p4 in
                            _args.append (p4)
        
                            gi.object_method_bind_ptrcall (VisualShader.method_disconnect_nodes, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                        }
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_connect_nodes_forced: GDExtensionMethodBindPtr = {
        let methodName = StringName ("connect_nodes_forced")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2268060358)!
            }
            
        }
        
    }()
    
    /// Connects the specified nodes and ports, even if they can't be connected. Such connection is invalid and will not function properly.
    public final func connectNodesForced (type: VisualShader.GType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) {
        #if true
        
        var copy_type = Int64 (type.rawValue)
        var copy_from_node: Int = Int (fromNode)
        var copy_from_port: Int = Int (fromPort)
        var copy_to_node: Int = Int (toNode)
        var copy_to_port: Int = Int (toPort)
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_connect_nodes_forced, UnsafeMutableRawPointer (mutating: handle), nil, &copy_type, &copy_from_node, &copy_from_port, &copy_to_node, &copy_to_port)
        
        #else
        
        var copy_type = Int64 (type.rawValue)
        var copy_from_node: Int = Int (fromNode)
        var copy_from_port: Int = Int (fromPort)
        var copy_to_node: Int = Int (toNode)
        var copy_to_port: Int = Int (toPort)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_from_node) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_from_port) { p2 in
                    _args.append (p2)
                    withUnsafePointer (to: &copy_to_node) { p3 in
                        _args.append (p3)
                        withUnsafePointer (to: &copy_to_port) { p4 in
                            _args.append (p4)
        
                            gi.object_method_bind_ptrcall (VisualShader.method_connect_nodes_forced, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                        }
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_node_connections: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_connections")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1441964831)!
            }
            
        }
        
    }()
    
    /// Returns the list of connected nodes with the specified type.
    public final func getNodeConnections (type: VisualShader.GType)-> VariantCollection<GDictionary> {
        var _result: Int64 = 0
        #if true
        
        var copy_type = Int64 (type.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_get_node_connections, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_type)
        return VariantCollection<GDictionary>(content: _result)
        #else
        
        var copy_type = Int64 (type.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShader.method_get_node_connections, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return VariantCollection<GDictionary>(content: _result)
        }
        
        #endif
    }
    
    fileprivate static var method_set_graph_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_graph_offset")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_graph_offset (_ offset: Vector2) {
        #if true
        
        var copy_offset = offset
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_set_graph_offset, UnsafeMutableRawPointer (mutating: handle), nil, &copy_offset)
        
        #else
        
        var copy_offset = offset
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShader.method_set_graph_offset, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_graph_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_graph_offset")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_graph_offset ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (VisualShader.method_get_graph_offset, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_add_varying: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_varying")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2084110726)!
            }
            
        }
        
    }()
    
    /// Adds a new varying value node to the shader.
    public final func addVarying (name: String, mode: VisualShader.VaryingMode, type: VisualShader.VaryingType) {
        #if true
        
        let gstr_name = GString (name)
        var copy_mode = Int64 (mode.rawValue)
        var copy_type = Int64 (type.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_add_varying, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_name.content, &copy_mode, &copy_type)
        
        #else
        
        let gstr_name = GString (name)
        var copy_mode = Int64 (mode.rawValue)
        var copy_type = Int64 (type.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_mode) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_type) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (VisualShader.method_add_varying, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_remove_varying: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_varying")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Removes a varying value node with the given `name`. Prints an error if a node with this name is not found.
    public final func removeVarying (name: String) {
        #if true
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_remove_varying, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_name.content)
        
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShader.method_remove_varying, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_has_varying: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_varying")
        return withUnsafePointer (to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the shader has a varying with the given `name`.
    public final func hasVarying (name: String)-> Bool {
        var _result: Bool = false
        #if true
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (VisualShader.method_has_varying, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_name.content)
        return _result
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShader.method_has_varying, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
}

