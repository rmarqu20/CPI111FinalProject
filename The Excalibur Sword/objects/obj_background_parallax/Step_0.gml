//background parallax

//layer IDs
var layer_id1 = layer_get_id("Background_cave1");
var layer_id2 = layer_get_id("Background_cave2");
var layer_id3 = layer_get_id("Background_cave3");
var layer_id4 = layer_get_id("Background_cave4");

//lerp the layer coordinates to camera view
layer_x(layer_id1, lerp(0, camera_get_view_x(view_camera[0]), 0.40));
layer_x(layer_id2, lerp(0, camera_get_view_x(view_camera[0]), 0.35));
layer_x(layer_id3, lerp(0, camera_get_view_x(view_camera[0]), 0.25));
layer_x(layer_id4, lerp(0, camera_get_view_x(view_camera[0]), 0.15));

layer_y(layer_id1, lerp(0, camera_get_view_y(view_camera[0]), 0.40));
layer_y(layer_id2, lerp(0, camera_get_view_y(view_camera[0]), 0.35));
layer_y(layer_id3, lerp(0, camera_get_view_y(view_camera[0]), 0.25));
layer_y(layer_id4, lerp(0, camera_get_view_y(view_camera[0]), 0.15));