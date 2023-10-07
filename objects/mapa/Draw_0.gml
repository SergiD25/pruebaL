for (var yy=0; yy<6; yy++) {
for (var xx=0; xx<11; xx++){
	var tile = templates[yy][xx];
	
	if (tile != 0){ 
		draw_sprite(Sprite1, tile, xx * 16 , yy * 16  );
		}
}
}