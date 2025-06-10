local followchars = true;
local focus=false

function onCreatePost()
makeLuaText('lyr', ' ', 0,170,470)
setTextSize('lyr', 60)
doTweenColor('lyrZ', 'lyr', '778899', 0.01, 'linear')
setObjectCamera('lyr', 'other')
setTextFont('lyr', 'Finn.ttf')
addLuaText('lyr', true)
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then 
if value1 == 'intro' then
setProperty('defaultCamZoom',0.90)
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha('fadeInn', 'camHUD', 1, 0.1, 'linear')
doTweenAlpha("c2A","c2", 0, 0.1, true);
introfocada=false
end

if value1 == 'pibby' then
triggerEvent('Ansfoxy', 'comeon', '')
triggerEvent('Play Animation', 'cmon', 'gf')
focus=true
runTimer('pibby',2);
end

if value1 == 'cinema1' then
doTweenX('cX', 'c.scale', 1, 0.5, 'linear')
doTweenY('cY', 'c.scale', 1, 0.5, 'linear')
end

if value1 == 'white' then
doTweenAlpha("white1","white2", 1, 0.001, 'linear');
doTweenAlpha("white2","white2", 0, 1, 'linear');
end

if value1 == 'white2' then
doTweenAlpha("blackA","black", 0, 0.001, true);
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
end

if value1 == 'cinema2' then
doTweenX('cX', 'c.scale', 2, 0.5, 'linear')
doTweenY('cY', 'c.scale', 2, 0.5, 'linear')
end

if value1 == 'cinema3' then
doTweenX('cX', 'c.scale', 1, 0.5, 'linear')
doTweenY('cY', 'c.scale', 1, 0.5, 'linear')
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
end

if value1 == 'blacker' then
doTweenAlpha("blackbgA3","blackbg3", 1, 0.001, true);
end

if value1 == 'blacker2' then
doTweenAlpha("blackbg3alpha","blackbg3", 0, 6, true);
doTweenAlpha("BFA","boyfriend", 0.2, 0.0001, true);
doTweenAlpha("DADA","dad", 0.4, 0.0001, true);
end

if value1 == 'finaph' then
doTweenAlpha("DADC","dad", 1, 0.0001, true);
end

if value1 == 'black1' then
setProperty('iluminacion.visible', true)
setProperty('light2.visible', false)
setProperty('mesa2.visible', true)
setProperty('mesa.visible', false)
setProperty('bg2.visible', true)
setProperty('bg.visible', false)
doTweenAlpha("GFA","gf", 0, 0.0001, true);
doTweenAlpha("JakeA","Jake", 0, 0.0001, true)
end

if value1 == 'black2' then
nonotas=false
setProperty('iluminacion.visible', false)
setProperty('light2.visible', true)
setProperty('mesa2.visible', false)
setProperty('mesa.visible', true)
setProperty('bg2.visible', false)
setProperty('bg.visible', true)
doTweenAlpha("gf","gf", 1, 0.0001, true);
doTweenAlpha("JakeB","Jake", 1, 0.0001, true)
end

if value1 == 'black3' then
focado=false
cam=true
setProperty('iluminacion.visible', false)
setProperty('light2.visible', false)
setProperty('mesa2.visible', false)
setProperty('mesa.visible', false)
setProperty('bg2.visible', false)
setProperty('bg.visible', false)
doTweenAlpha("gf","gf", 1, 0.0001, true);
--note
setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0)
setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1)
setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2)
setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3)
setPropertyFromGroup('opponentStrums', 4, 'x', defaultOpponentStrumX4)
end
if value1 == 'black4' then
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha();
setProperty('Jake.colorTransform.greenOffset', 255)
setProperty('Jake.colorTransform.redOffset', 255)
setProperty('Jake.colorTransform.blueOffset', 255)
setProperty('boyfriend.colorTransform.greenOffset', 255)
setProperty('boyfriend.colorTransform.redOffset', 255)
setProperty('boyfriend.colorTransform.blueOffset', 255)
setProperty('dad.colorTransform.greenOffset', 255)
setProperty('dad.colorTransform.redOffset', 255)
setProperty('dad.colorTransform.blueOffset', 255)
setProperty('gf.colorTransform.greenOffset', 255)
setProperty('gf.colorTransform.redOffset', 255)
setProperty('gf.colorTransform.blueOffset', 255)
setProperty('iluminacion.visible', false)
setProperty('light2.visible', false)
setProperty('mesa2.visible', false)
setProperty('mesa.visible', false)
setProperty('bg2.visible', false)
setProperty('bg.visible', false)
doTweenAlpha();
end
if value1 == 'black5' then
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha();
setProperty('Jake.colorTransform.greenOffset', 0)
setProperty('Jake.colorTransform.redOffset', 0)
setProperty('Jake.colorTransform.blueOffset', 0)
setProperty('boyfriend.colorTransform.greenOffset', 0)
setProperty('boyfriend.colorTransform.redOffset', 0)
setProperty('boyfriend.colorTransform.blueOffset', 0)
setProperty('dad.colorTransform.greenOffset', 0)
setProperty('dad.colorTransform.redOffset', 0)
setProperty('dad.colorTransform.blueOffset', 0)
setProperty('gf.colorTransform.greenOffset', 0)
setProperty('gf.colorTransform.redOffset', 0)
setProperty('gf.colorTransform.blueOffset', 0)
setProperty('iluminacion.visible', false)
setProperty('light2.visible', true)
setProperty('mesa2.visible', false)
setProperty('mesa.visible', true)
setProperty('bg2.visible', false)
setProperty('bg.visible', true)
doTweenAlpha();
end
if value1 == 'black6' then
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 2, 'linear');
setProperty('camGame.visible', false)
setProperty('camHUD.visible', false)
end
if value1 == 'black7' then
setProperty('iluminacion.visible', false)
setProperty('light2.visible', false)
setProperty('mesa2.visible', false)
setProperty('mesa.visible', false)
setProperty('bg2.visible', false)
setProperty('bg.visible', false)
doTweenAlpha("GFA","gf", 0, 0.0001, true);
doTweenAlpha("JakeA","Jake", 0, 0.0001, true)
end

end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='pibby' then
focus=false
end
if tag=='focan' then
foca2=false
end
end

function onUpdate(elapsed)
if nonotas then
setPropertyFromGroup('opponentStrums', 0, 'x', 100000)
setPropertyFromGroup('opponentStrums', 1, 'x', 100000)
setPropertyFromGroup('opponentStrums', 2, 'x', 100000)
setPropertyFromGroup('opponentStrums', 3, 'x', 100000)
setPropertyFromGroup('opponentStrums', 4, 'x', 100000)
end
end