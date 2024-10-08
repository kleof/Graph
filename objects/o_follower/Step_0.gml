var choice = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
selection += choice;
if (selection < 0) {
  selection = array_length(choices) - 1;
}
if (selection == array_length(choices)) {
  selection = 0;
}