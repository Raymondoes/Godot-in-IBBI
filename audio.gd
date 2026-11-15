extends Node
	
var BG_MUSIC_NODE: AudioStreamPlayer = null

func _ready():
	if BgSnowSounds.BG_MUSIC_NODE:
		BgSnowSounds.BG_MUSIC_NODE = AudioStreamPlayer.new()
		BgSnowSounds.BG_MUSIC_NODE.stream = load("res://Audio/Snow.ogg")
		BgSnowSounds.BG_MUSIC_NODE.autoplay = true
		BgSnowSounds.attenuationdd_child(BG_MUSIC_NODE)
