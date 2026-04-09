local CameraMode = require("./TypeUtils/interfaces")
type iCameraMode = CameraMode.iCameraMode
local State = require("./state")
type tState = State.tState

local FollowMode = {}
FollowMode.__index = FollowMode

function FollowMode.new(state: tState): tFollowMode & iCameraMode
	local self = setmetatable({
		state = state,
	}, FollowMode)

	return self
end

function FollowMode:Tick(dt: number) end

export type tFollowMode = typeof(FollowMode.new(nil :: any))
return FollowMode
