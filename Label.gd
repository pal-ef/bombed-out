extends Label

var time_elapsed: float = 0.0

func _process(delta: float) -> void:
	time_elapsed += delta
	text = _format_seconds(time_elapsed, false)


func _format_seconds(time : float, use_milliseconds : bool) -> String:
	var minutes := time / 60
	var seconds := fmod(time, 60)
	if not use_milliseconds:
		return "%02d:%02d" % [minutes, seconds]
	var milliseconds := fmod(time, 1) * 100
	return "%02d:%02d:%02d" % [minutes, seconds, milliseconds]