local iCameraMode = require("./TypeUtils/interfaces")
type iCameraMode = iCameraMode.iCameraMode

local State = {}
State.__index = State
State.mode = nil :: iCameraMode?

function State.new(mode: string?): tState
	local self: tState = setmetatable({}, State)

	return self
end

export type tState = typeof(State.new())
return State
