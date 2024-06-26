// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Exposes a set of tiles for a ``TileSet`` resource.
/// 
/// Exposes a set of tiles for a ``TileSet`` resource.
/// 
/// Tiles in a source are indexed with two IDs, coordinates ID (of type Vector2i) and an alternative ID (of type int), named according to their use in the ``TileSetAtlasSource`` class.
/// 
/// Depending on the TileSet source type, those IDs might have restrictions on their values, this is why the base ``TileSetSource`` class only exposes getters for them.
/// 
/// You can iterate over all tiles exposed by a TileSetSource by first iterating over coordinates IDs using ``getTilesCount()`` and ``getTileId(index:)``, then over alternative IDs using ``getAlternativeTilesCount(atlasCoords:)`` and ``getAlternativeTileId(atlasCoords:index:)``.
/// 
/// > Warning: ``TileSetSource`` can only be added to one TileSet at the same time. Calling ``TileSet/addSource(_:atlasSourceIdOverride:)`` on a second ``TileSet`` will remove the source from the first one.
/// 
open class TileSetSource: Resource {
    override open class var godotClassName: StringName { "TileSetSource" }
    /* Methods */
    fileprivate static var method_get_tiles_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_tiles_count")
        return withUnsafePointer (to: &TileSetSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns how many tiles this atlas source defines (not including alternative tiles).
    public final func getTilesCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (TileSetSource.method_get_tiles_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_tile_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_tile_id")
        return withUnsafePointer (to: &TileSetSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 880721226)!
            }
            
        }
        
    }()
    
    /// Returns the tile coordinates ID of the tile with index `index`.
    public final func getTileId (index: Int32)-> Vector2i {
        var _result: Vector2i = Vector2i ()
        #if false
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (TileSetSource.method_get_tile_id, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_index)
        return _result
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TileSetSource.method_get_tile_id, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_has_tile: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_tile")
        return withUnsafePointer (to: &TileSetSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3900751641)!
            }
            
        }
        
    }()
    
    /// Returns if this atlas has a tile with coordinates ID `atlasCoords`.
    public final func hasTile (atlasCoords: Vector2i)-> Bool {
        var _result: Bool = false
        #if false
        
        var copy_atlas_coords = atlasCoords
        
        gi.object_method_bind_ptrcall_v (TileSetSource.method_has_tile, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_atlas_coords)
        return _result
        #else
        
        var copy_atlas_coords = atlasCoords
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_atlas_coords) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TileSetSource.method_has_tile, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_alternative_tiles_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_alternative_tiles_count")
        return withUnsafePointer (to: &TileSetSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2485466453)!
            }
            
        }
        
    }()
    
    /// Returns the number of alternatives tiles for the coordinates ID `atlasCoords`.
    /// 
    /// For ``TileSetAtlasSource``, this always return at least 1, as the base tile with ID 0 is always part of the alternatives list.
    /// 
    /// Returns -1 if there is not tile at the given coords.
    /// 
    public final func getAlternativeTilesCount (atlasCoords: Vector2i)-> Int32 {
        var _result: Int32 = 0
        #if false
        
        var copy_atlas_coords = atlasCoords
        
        gi.object_method_bind_ptrcall_v (TileSetSource.method_get_alternative_tiles_count, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_atlas_coords)
        return _result
        #else
        
        var copy_atlas_coords = atlasCoords
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_atlas_coords) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TileSetSource.method_get_alternative_tiles_count, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_alternative_tile_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_alternative_tile_id")
        return withUnsafePointer (to: &TileSetSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 89881719)!
            }
            
        }
        
    }()
    
    /// Returns the alternative ID for the tile with coordinates ID `atlasCoords` at index `index`.
    public final func getAlternativeTileId (atlasCoords: Vector2i, index: Int32)-> Int32 {
        var _result: Int32 = 0
        #if false
        
        var copy_atlas_coords = atlasCoords
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (TileSetSource.method_get_alternative_tile_id, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_atlas_coords, &copy_index)
        return _result
        #else
        
        var copy_atlas_coords = atlasCoords
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_atlas_coords) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_index) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (TileSetSource.method_get_alternative_tile_id, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_has_alternative_tile: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_alternative_tile")
        return withUnsafePointer (to: &TileSetSource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1073731340)!
            }
            
        }
        
    }()
    
    /// Returns if the base tile at coordinates `atlasCoords` has an alternative with ID `alternativeTile`.
    public final func hasAlternativeTile (atlasCoords: Vector2i, alternativeTile: Int32)-> Bool {
        var _result: Bool = false
        #if false
        
        var copy_atlas_coords = atlasCoords
        var copy_alternative_tile: Int = Int (alternativeTile)
        
        gi.object_method_bind_ptrcall_v (TileSetSource.method_has_alternative_tile, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_atlas_coords, &copy_alternative_tile)
        return _result
        #else
        
        var copy_atlas_coords = atlasCoords
        var copy_alternative_tile: Int = Int (alternativeTile)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_atlas_coords) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_alternative_tile) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (TileSetSource.method_has_alternative_tile, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
}

