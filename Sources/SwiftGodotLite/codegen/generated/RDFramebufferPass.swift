// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Framebuffer pass attachment description (used by ``RenderingDevice``).
/// 
/// This class contains the list of attachment descriptions for a framebuffer pass. Each points with an index to a previously supplied list of texture attachments.
/// 
/// Multipass framebuffers can optimize some configurations in mobile. On desktop, they provide little to no advantage.
/// 
/// This object is used by ``RenderingDevice``.
/// 
open class RDFramebufferPass: RefCounted {
    override open class var godotClassName: StringName { "RDFramebufferPass" }
    /* Constants */
    /// Attachment is unused.
    public static let attachmentUnused = -1
    
    /* Properties */
    
    /// Color attachments in order starting from 0. If this attachment is not used by the shader, pass ATTACHMENT_UNUSED to skip.
    final public var colorAttachments: PackedInt32Array {
        get {
            return get_color_attachments ()
        }
        
        set {
            set_color_attachments (newValue)
        }
        
    }
    
    /// Used for multipass framebuffers (more than one render pass). Converts an attachment to an input. Make sure to also supply it properly in the ``RDUniform`` for the uniform set.
    final public var inputAttachments: PackedInt32Array {
        get {
            return get_input_attachments ()
        }
        
        set {
            set_input_attachments (newValue)
        }
        
    }
    
    /// If the color attachments are multisampled, non-multisampled resolve attachments can be provided.
    final public var resolveAttachments: PackedInt32Array {
        get {
            return get_resolve_attachments ()
        }
        
        set {
            set_resolve_attachments (newValue)
        }
        
    }
    
    /// Attachments to preserve in this pass (otherwise they are erased).
    final public var preserveAttachments: PackedInt32Array {
        get {
            return get_preserve_attachments ()
        }
        
        set {
            set_preserve_attachments (newValue)
        }
        
    }
    
    /// Depth attachment. ATTACHMENT_UNUSED should be used if no depth buffer is required for this pass.
    final public var depthAttachment: Int32 {
        get {
            return get_depth_attachment ()
        }
        
        set {
            set_depth_attachment (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_color_attachments: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_color_attachments")
        return withUnsafePointer (to: &RDFramebufferPass.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_color_attachments (_ pMember: PackedInt32Array) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (RDFramebufferPass.method_set_color_attachments, UnsafeMutableRawPointer (mutating: handle), nil, &pMember.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &pMember.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RDFramebufferPass.method_set_color_attachments, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_color_attachments: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_color_attachments")
        return withUnsafePointer (to: &RDFramebufferPass.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1930428628)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_color_attachments ()-> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall (RDFramebufferPass.method_get_color_attachments, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_input_attachments: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_input_attachments")
        return withUnsafePointer (to: &RDFramebufferPass.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_input_attachments (_ pMember: PackedInt32Array) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (RDFramebufferPass.method_set_input_attachments, UnsafeMutableRawPointer (mutating: handle), nil, &pMember.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &pMember.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RDFramebufferPass.method_set_input_attachments, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_input_attachments: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_input_attachments")
        return withUnsafePointer (to: &RDFramebufferPass.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1930428628)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_input_attachments ()-> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall (RDFramebufferPass.method_get_input_attachments, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_resolve_attachments: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_resolve_attachments")
        return withUnsafePointer (to: &RDFramebufferPass.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_resolve_attachments (_ pMember: PackedInt32Array) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (RDFramebufferPass.method_set_resolve_attachments, UnsafeMutableRawPointer (mutating: handle), nil, &pMember.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &pMember.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RDFramebufferPass.method_set_resolve_attachments, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_resolve_attachments: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_resolve_attachments")
        return withUnsafePointer (to: &RDFramebufferPass.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1930428628)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_resolve_attachments ()-> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall (RDFramebufferPass.method_get_resolve_attachments, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_preserve_attachments: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_preserve_attachments")
        return withUnsafePointer (to: &RDFramebufferPass.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_preserve_attachments (_ pMember: PackedInt32Array) {
        #if false
        
        
        gi.object_method_bind_ptrcall_v (RDFramebufferPass.method_set_preserve_attachments, UnsafeMutableRawPointer (mutating: handle), nil, &pMember.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &pMember.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RDFramebufferPass.method_set_preserve_attachments, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_preserve_attachments: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_preserve_attachments")
        return withUnsafePointer (to: &RDFramebufferPass.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1930428628)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_preserve_attachments ()-> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall (RDFramebufferPass.method_get_preserve_attachments, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_depth_attachment: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_depth_attachment")
        return withUnsafePointer (to: &RDFramebufferPass.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth_attachment (_ pMember: Int32) {
        #if false
        
        var copy_p_member: Int = Int (pMember)
        
        gi.object_method_bind_ptrcall_v (RDFramebufferPass.method_set_depth_attachment, UnsafeMutableRawPointer (mutating: handle), nil, &copy_p_member)
        
        #else
        
        var copy_p_member: Int = Int (pMember)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_p_member) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RDFramebufferPass.method_set_depth_attachment, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_depth_attachment: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_depth_attachment")
        return withUnsafePointer (to: &RDFramebufferPass.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth_attachment ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (RDFramebufferPass.method_get_depth_attachment, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

