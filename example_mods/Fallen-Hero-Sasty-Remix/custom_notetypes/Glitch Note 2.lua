function onCreate()

	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Glitch Note 2' then --Check if the note on the chart is a Bullet Note
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end


function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Glitch Note 2' then
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
n = false
else
initLuaShader("glitch")
setSpriteShader("dad", "glitch")
setShaderFloat("dad", "binaryIntensity", -0.5)
n = true
end

elseif t == 'remove' then
removeSpriteShader('dad')
end
end


function onUpdate()
setShaderFloat("dad", "iTime", os.clock())
end
