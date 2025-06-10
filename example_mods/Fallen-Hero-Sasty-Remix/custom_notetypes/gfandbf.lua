function onCreate()

    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'gfandbf' then 
            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
            setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false)
            end
        end
    end
end

local anim = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
function goodNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'gfandbf' then
playAnim('gf', anim[direction + 1], true)
end
end

if direction == 0 then
characterPlayAnim('gf', 'singRIGHT', true)
setProperty('gf.specialAnim', false)
elseif direction == 1 then
characterPlayAnim('gf', 'singUP', true)
setProperty('gf.specialAnim', true)
elseif direction == 2 then
characterPlayAnim('gf', 'singDOWN', true)
setProperty('gf.specialAnim', true)
elseif direction == 3 then
characterPlayAnim('gf', 'singLEFT', true)
setProperty('gf.specialAnim', true)
end