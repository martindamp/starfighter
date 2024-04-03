/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6A7066A4
/// @DnDArgument : "funcName" "updatepos"
function updatepos() 
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 22D0BAB5
	/// @DnDParent : 6A7066A4
	/// @DnDArgument : "angle" "circlepos+180"
	image_angle = circlepos+180;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48EA7743
	/// @DnDParent : 6A7066A4
	/// @DnDArgument : "expr" "(1366/2)+circledia*dsin(circlepos)"
	/// @DnDArgument : "var" "x"
	x = (1366/2)+circledia*dsin(circlepos);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27B97EF0
	/// @DnDParent : 6A7066A4
	/// @DnDArgument : "expr" "(768/2)+circledia*dcos(circlepos)"
	/// @DnDArgument : "var" "y"
	y = (768/2)+circledia*dcos(circlepos);

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 0925D44F
	/// @DnDParent : 6A7066A4
	/// @DnDArgument : "xscale" "circledia/350"
	/// @DnDArgument : "yscale" "circledia/350"
	image_xscale = circledia/350;
	image_yscale = circledia/350;

	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 26649330
	/// @DnDApplyTo : all
	/// @DnDParent : 6A7066A4
	with(all) {
	event_user(0);
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 70C48DCA
/// @DnDArgument : "key" "vk_left"
var l70C48DCA_0;
l70C48DCA_0 = keyboard_check(vk_left);
if (l70C48DCA_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3086C8F9
	/// @DnDParent : 70C48DCA
	/// @DnDArgument : "expr" "rotspeed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "circlepos"
	circlepos += rotspeed;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2541A579
	/// @DnDParent : 70C48DCA
	/// @DnDArgument : "function" "updatepos"
	updatepos();
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0DA4346B
/// @DnDArgument : "key" "vk_right"
var l0DA4346B_0;
l0DA4346B_0 = keyboard_check(vk_right);
if (l0DA4346B_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F722BA8
	/// @DnDParent : 0DA4346B
	/// @DnDArgument : "expr" "-rotspeed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "circlepos"
	circlepos += -rotspeed;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 54EE947B
	/// @DnDParent : 0DA4346B
	/// @DnDArgument : "function" "updatepos"
	updatepos();
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 35D0FE92
/// @DnDArgument : "key" "vk_up"
var l35D0FE92_0;
l35D0FE92_0 = keyboard_check(vk_up);
if (l35D0FE92_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5565FD3B
	/// @DnDParent : 35D0FE92
	/// @DnDArgument : "expr" "(circledia + rotspeed)"
	/// @DnDArgument : "var" "circledia"
	circledia = (circledia + rotspeed);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 396E5F36
	/// @DnDParent : 35D0FE92
	/// @DnDArgument : "expr" "circledia > 350"
	if(circledia > 350)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45107CA3
		/// @DnDParent : 396E5F36
		/// @DnDArgument : "expr" "350"
		/// @DnDArgument : "var" "circledia"
		circledia = 350;
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 37F3DCF8
	/// @DnDParent : 35D0FE92
	/// @DnDArgument : "function" "updatepos"
	updatepos();
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 44E4C48C
/// @DnDArgument : "key" "vk_down"
var l44E4C48C_0;
l44E4C48C_0 = keyboard_check(vk_down);
if (l44E4C48C_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 682FF96F
	/// @DnDParent : 44E4C48C
	/// @DnDArgument : "expr" "(circledia - rotspeed)"
	/// @DnDArgument : "var" "circledia"
	circledia = (circledia - rotspeed);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3E8CD2B2
	/// @DnDParent : 44E4C48C
	/// @DnDArgument : "expr" "circledia < 100"
	if(circledia < 100)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5C87AA7B
		/// @DnDParent : 3E8CD2B2
		/// @DnDArgument : "expr" "100"
		/// @DnDArgument : "var" "circledia"
		circledia = 100;
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 68C22F7C
	/// @DnDParent : 44E4C48C
	/// @DnDArgument : "function" "updatepos"
	updatepos();
}