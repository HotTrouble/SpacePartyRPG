gl_init();

var cell_prefab = flathex_cell;
var cell_dimensions = gl_sprite_get_size(object_get_sprite(cell_prefab));
var screen_rect = gl_room_get_extent();

grid = gl_flathex_grid_create("hexagon", 10, 7);
map = gl_flathex_map_create(cell_dimensions);

gl_map_scale(map, 1.1);
gl_map_align_grid_in_rect(map, grid, screen_rect, global.gl_alignment_middlecenter);

var iter = gl_grid_get_iter(grid);

while(gl_iter_hasnext(iter))
{
    var grid_point = gl_iter_next(iter);    
    var world_point = gl_map_grid2world(map, grid_point);
    var cell = gl_instance_create(world_point, cell_prefab);

    cell.name = gl_vector2str(grid_point);    
    cell.image_blend = get_point_axis_color(grid_point, true);// global.gl_colors[gl_get_color(grid_point, 8, 1, 1)];
    
    gl_grid_set(grid, grid_point, cell);
}

gl_iter_destroy(iter);