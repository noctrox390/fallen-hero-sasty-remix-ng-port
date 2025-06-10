function onCreatePost()
makeLuaSprite("temporaryShader1")
setSpriteShader("temporaryShader1", "Glitchy")

makeLuaSprite("temporaryShader2")
setSpriteShader("temporaryShader2", "Test")

makeLuaSprite("temporaryShader3")
setSpriteShader("temporaryShader3", "smok")

makeLuaSprite("temporaryShader4")
setSpriteShader("temporaryShader4", "GreyscaleEffect")

makeLuaSprite("temporaryShader5")
setSpriteShader("temporaryShader5", "bloom")

makeLuaSprite("temporaryShader6")
setSpriteShader("temporaryShader6", "transparent")

runHaxeCode([[
trace(ShaderFilter);
game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(game.getLuaObject("temporaryShader4").shader)]);

game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(game.getLuaObject("temporaryShader2").shader),new ShaderFilter(game.getLuaObject("temporaryShader4").shader),new ShaderFilter(game.getLuaObject("temporaryShader6").shader),new ShaderFilter(game.getLuaObject("temporaryShader5").shader)]);

		]])
addHaxeLibrary("ShaderFilter1", "openfl.filters")


setShaderFloat("temporaryShader1", "AMT", 0)
setShaderFloat("temporaryShader1", "SPEED", 0)
setShaderInt("temporaryShader3", "invert", 0)
setShaderFloat("temporaryShader4", "intensity", 1)

setShaderFloat("temporaryShader5", "thresholdRed", 0)
setShaderFloat("temporaryShader5", "thresholdBlack", 0)

setShaderFloat("temporaryShader6", "threshold", 0)

setShaderFloat("temporaryShader2", "zoom", 20)
setShaderFloat("temporaryShader2", "opacity", 0.2)
setShaderFloat("temporaryShader2", "raindropLength", 0.15)
end

function onUpdatePost()
setShaderFloat("temporaryShader2", "iTime", os.clock())
setShaderFloat("temporaryShader1", "iTime", os.clock())
setShaderFloat("temporaryShader3", "iTime", os.clock())
setShaderFloat("temporaryShader4", "iTime", os.clock())
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Glitch Note' then
setShaderFloat("temporaryShader1", "AMT", 0.25)
setShaderFloat("temporaryShader1", "SPEED", 0.35)
runTimer('remove', 0.1111)
end
end

function onTimerCompleted(t)
if t == 'remove' then
setShaderFloat("temporaryShader1", "AMT", 0)
setShaderFloat("temporaryShader1", "SPEED", 0)
end
end