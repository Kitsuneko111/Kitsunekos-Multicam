export type iCameraMode = {
	state: iState,
	Tick: (self: iCameraMode, dt: number) -> (),
}

export type iState = {
	mode: iCameraMode?,
}

return {}
