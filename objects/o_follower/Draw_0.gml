//draw_text(x, y + (selection * 32), " > " + array_get(choices, selection));


for (var i = 0; i < array_length(choices); i++) {
	var marker = (i == selection) ? " > " : "";
	
	draw_text(x, y + (i * 32), marker + choices[i]);
}