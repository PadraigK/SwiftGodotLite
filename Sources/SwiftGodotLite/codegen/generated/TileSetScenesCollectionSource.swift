// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Exposes a set of scenes as tiles for a ``TileSet`` resource.
/// 
/// When placed on a ``TileMap``, tiles from ``TileSetScenesCollectionSource`` will automatically instantiate an associated scene at the cell's position in the TileMap.
/// 
/// Scenes are instantiated as children of the ``TileMap`` when it enters the tree. If you add/remove a scene tile in the ``TileMap`` that is already inside the tree, the ``TileMap`` will automatically instantiate/free the scene accordingly.
/// 
open class TileSetScenesCollectionSource: TileSetSource {
    override open class var godotClassName: StringName { "TileSetScenesCollectionSource" }
    /* Methods */
    fileprivate static var method_get_scene_tiles_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_scene_tiles_count")
        return withUnsafePointer (to: &TileSetScenesCollectionSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the number or scene tiles this TileSet source has.
    public final func getSceneTilesCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (TileSetScenesCollectionSource.method_get_scene_tiles_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_scene_tile_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_scene_tile_id")
        return withUnsafePointer (to: &TileSetScenesCollectionSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3744713108)!
            }
            
        }
        
    }()
    
    /// Returns the scene tile ID of the scene tile at `index`.
    public final func getSceneTileId (index: Int32)-> Int32 {
        var _result: Int32 = 0
        #if false
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (TileSetScenesCollectionSource.method_get_scene_tile_id, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_index)
        return _result
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TileSetScenesCollectionSource.method_get_scene_tile_id, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_has_scene_tile_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_scene_tile_id")
        return withUnsafePointer (to: &TileSetScenesCollectionSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3067735520)!
            }
            
        }
        
    }()
    
    /// Returns whether this TileSet source has a scene tile with `id`.
    public final func hasSceneTileId (_ id: Int32)-> Bool {
        var _result: Bool = false
        #if false
        
        var copy_id: Int = Int (id)
        
        gi.object_method_bind_ptrcall_v (TileSetScenesCollectionSource.method_has_scene_tile_id, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_id)
        return _result
        #else
        
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TileSetScenesCollectionSource.method_has_scene_tile_id, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_create_scene_tile: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_scene_tile")
        return withUnsafePointer (to: &TileSetScenesCollectionSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1117465415)!
            }
            
        }
        
    }()
    
    /// Creates a scene-based tile out of the given scene.
    /// 
    /// Returns a newly generated unique ID.
    /// 
    public final func createSceneTile (packedScene: PackedScene?, idOverride: Int32 = -1)-> Int32 {
        var _result: Int32 = 0
        #if false
        
        var copy_id_override: Int = Int (idOverride)
        var copy_packed_scene_handle = packedScene?.handle
        
        gi.object_method_bind_ptrcall_v (TileSetScenesCollectionSource.method_create_scene_tile, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_packed_scene_handle, &copy_id_override)
        return _result
        #else
        
        var copy_id_override: Int = Int (idOverride)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: packedScene?.handle) { p0 in
        _args.append (packedScene == nil ? nil : p0)
            return withUnsafePointer (to: &copy_id_override) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (TileSetScenesCollectionSource.method_create_scene_tile, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_scene_tile_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_scene_tile_id")
        return withUnsafePointer (to: &TileSetScenesCollectionSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Changes a scene tile's ID from `id` to `newId`. This will fail if there is already a tile with an ID equal to `newId`.
    public final func setSceneTileId (_ id: Int32, newId: Int32) {
        #if false
        
        var copy_id: Int = Int (id)
        var copy_new_id: Int = Int (newId)
        
        gi.object_method_bind_ptrcall_v (TileSetScenesCollectionSource.method_set_scene_tile_id, UnsafeMutableRawPointer (mutating: handle), nil, &copy_id, &copy_new_id)
        
        #else
        
        var copy_id: Int = Int (id)
        var copy_new_id: Int = Int (newId)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_new_id) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (TileSetScenesCollectionSource.method_set_scene_tile_id, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_scene_tile_scene: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_scene_tile_scene")
        return withUnsafePointer (to: &TileSetScenesCollectionSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3435852839)!
            }
            
        }
        
    }()
    
    /// Assigns a ``PackedScene`` resource to the scene tile with `id`. This will fail if the scene does not extend CanvasItem, as positioning properties are needed to place the scene on the TileMap.
    public final func setSceneTileScene (id: Int32, packedScene: PackedScene?) {
        #if false
        
        var copy_id: Int = Int (id)
        var copy_packed_scene_handle = packedScene?.handle
        
        gi.object_method_bind_ptrcall_v (TileSetScenesCollectionSource.method_set_scene_tile_scene, UnsafeMutableRawPointer (mutating: handle), nil, &copy_id, &copy_packed_scene_handle)
        
        #else
        
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
            withUnsafePointer (to: packedScene?.handle) { p1 in
            _args.append (packedScene == nil ? nil : p1)
        
                gi.object_method_bind_ptrcall (TileSetScenesCollectionSource.method_set_scene_tile_scene, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_scene_tile_scene: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_scene_tile_scene")
        return withUnsafePointer (to: &TileSetScenesCollectionSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 511017218)!
            }
            
        }
        
    }()
    
    /// Returns the ``PackedScene`` resource of scene tile with `id`.
    public final func getSceneTileScene (id: Int32)-> PackedScene? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if false
        
        var copy_id: Int = Int (id)
        
        gi.object_method_bind_ptrcall_v (TileSetScenesCollectionSource.method_get_scene_tile_scene, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_id)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TileSetScenesCollectionSource.method_get_scene_tile_scene, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_set_scene_tile_display_placeholder: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_scene_tile_display_placeholder")
        return withUnsafePointer (to: &TileSetScenesCollectionSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Sets whether or not the scene tile with `id` should display a placeholder in the editor. This might be useful for scenes that are not visible.
    public final func setSceneTileDisplayPlaceholder (id: Int32, displayPlaceholder: Bool) {
        #if false
        
        var copy_id: Int = Int (id)
        var copy_display_placeholder = displayPlaceholder
        
        gi.object_method_bind_ptrcall_v (TileSetScenesCollectionSource.method_set_scene_tile_display_placeholder, UnsafeMutableRawPointer (mutating: handle), nil, &copy_id, &copy_display_placeholder)
        
        #else
        
        var copy_id: Int = Int (id)
        var copy_display_placeholder = displayPlaceholder
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_display_placeholder) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (TileSetScenesCollectionSource.method_set_scene_tile_display_placeholder, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_scene_tile_display_placeholder: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_scene_tile_display_placeholder")
        return withUnsafePointer (to: &TileSetScenesCollectionSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether the scene tile with `id` displays a placeholder in the editor.
    public final func getSceneTileDisplayPlaceholder (id: Int32)-> Bool {
        var _result: Bool = false
        #if false
        
        var copy_id: Int = Int (id)
        
        gi.object_method_bind_ptrcall_v (TileSetScenesCollectionSource.method_get_scene_tile_display_placeholder, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_id)
        return _result
        #else
        
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TileSetScenesCollectionSource.method_get_scene_tile_display_placeholder, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_remove_scene_tile: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_scene_tile")
        return withUnsafePointer (to: &TileSetScenesCollectionSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Remove the scene tile with `id`.
    public final func removeSceneTile (id: Int32) {
        #if false
        
        var copy_id: Int = Int (id)
        
        gi.object_method_bind_ptrcall_v (TileSetScenesCollectionSource.method_remove_scene_tile, UnsafeMutableRawPointer (mutating: handle), nil, &copy_id)
        
        #else
        
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TileSetScenesCollectionSource.method_remove_scene_tile, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_next_scene_tile_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_next_scene_tile_id")
        return withUnsafePointer (to: &TileSetScenesCollectionSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the scene ID a following call to ``createSceneTile(packedScene:idOverride:)`` would return.
    public final func getNextSceneTileId ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (TileSetScenesCollectionSource.method_get_next_scene_tile_id, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

