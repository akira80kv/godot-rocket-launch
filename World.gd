extends Node

onready var animationPlayer = $AnimationPlayer
onready var fire = $RocketShip/Fire
onready var rocketShip = $RocketShip

func _on_LaunchButton_pressed():
	animationPlayer.play("Launch")
	fire.emitting = true



func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "Launch":
		fire.emitting = false
