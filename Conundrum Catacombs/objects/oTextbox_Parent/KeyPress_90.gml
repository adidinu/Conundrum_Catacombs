if (!instance_exists(oTextbox) & place_meeting(x,y,global.default_player) & (keyboard_check(ord("Z")) or gamepad_button_check(global.GP_NUM,gp_face1)))
{
    // Increment interaction number
    interact_number++;
    
    // Clamp interaction number to maximum message index
    interact_number = clamp(interact_number, 0, array_length(msg) - 1);
    
    // Create textbox instance
    var _tb = instance_create_layer(0, 0, "TXBOXLAY", oTextbox);
    
    // Add messages to textbox's list
    var _list = _tb.messages;
    
    for (var i = 0; i < array_length(msg[interact_number]); i++)
    {
        var _arr = msg[interact_number][i];
        
        ds_list_add(_list, _arr);
    }
}