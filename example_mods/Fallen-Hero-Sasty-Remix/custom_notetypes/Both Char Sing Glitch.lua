function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Both Char Sing Glitch' then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end


function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Both Char Sing Glitch' then
runTimer('nover', 0.01,20)
end
end

n = true
function onTimerCompleted(t)
if t == 'nover' then
runTimer('remove', 0.1)
if n then
initLuaShader("INV")
setSpriteShader("dad", "INV")
setShaderInt("dad", "invert", 1)
setSpriteShader("Jake", "INV")
setShaderInt("Jake", "invert", 1)
setSpriteShader("Jake2", "INV")
setShaderInt("Jake2", "invert", 1)
n = false
else
initLuaShader("glitch")
setSpriteShader("dad", "glitch")
setShaderFloat("dad", "binaryIntensity", -0.5)
setSpriteShader("Jake", "glitch")
setShaderFloat("Jake", "binaryIntensity", -0.5)
setSpriteShader("Jake2", "glitch")
setShaderFloat("Jake2", "binaryIntensity", -0.5)
n = true
end

elseif t == 'remove' then
removeSpriteShader('dad')
removeSpriteShader('Jake')
removeSpriteShader('Jake2')
end
end


function onUpdate()
setShaderFloat("dad", "iTime", os.clock())
setShaderFloat("Jake", "iTime", os.clock())
setShaderFloat("Jake2", "iTime", os.clock())
end