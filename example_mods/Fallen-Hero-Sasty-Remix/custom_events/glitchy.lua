function onCreatePost()
if shadersEnabled then
makeLuaSprite("temporaryShader1")
setSpriteShader("temporaryShader1", "Glitchy")

runHaxeCode([[
trace(ShaderFilter);
game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader)]);
game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader)]);
		]])

addHaxeLibrary("ShaderFilter1", "openfl.filters")

setShaderFloat("temporaryShader1", "AMT", 0)
setShaderFloat("temporaryShader1", "SPEED", 0)
end
end

function onUpdatePost()
if shadersEnabled then
setShaderFloat("temporaryShader1", "iTime", os.clock())
end
end

function onEvent(n,v1,v2)
if shadersEnabled then
if n == 'glitchy' then
setShaderFloat("temporaryShader1", "AMT", v1)
setShaderFloat("temporaryShader1", "SPEED", v2)
end
end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
if shadersEnabled then
if noteType == 'glitch_note' then
setShaderFloat("temporaryShader1", "AMT", 0.3)
setShaderFloat("temporaryShader1", "SPEED", 0.3)
runTimer('remove', 0.1)
end
end
end

function onTimerCompleted(t)
if shadersEnabled then
if t == 'remove' then
setShaderFloat("temporaryShader1", "AMT", 0)
setShaderFloat("temporaryShader1", "SPEED", 0)
end
end
end