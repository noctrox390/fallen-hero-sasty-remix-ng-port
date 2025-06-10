local spin = 0
function onCreate()
addLuaScript('scripts extras/healtbar by AnsfoxyMB') 
addLuaScript('scripts extras/count by AnsfoxyMB') 
runTimer('charge',0.1);
makeLuaSprite('bg', 'images/lab/bg', 300, 100);
scaleObject('bg', 2.0, 2.0);
doTweenX('bgX', 'bg.scale', 2.4, 0.001, 'linear')
doTweenY('bgY', 'bg.scale', 2.7, 0.001, 'linear')
makeLuaSprite('bg2', 'images/lab/bg2', 300, 100);
scaleObject('bg2', 2.0, 2.0);
doTweenX('bg2X', 'bg2.scale', 2.4, 0.001, 'linear')
doTweenY('bg2Y', 'bg2.scale', 2.7, 0.001, 'linear')
makeLuaSprite('mesa', 'images/lab/mesa', -100, -500);
scaleObject('mesa', 2.0, 2.0);
doTweenX('mesaX', 'mesa.scale', 2, 0.001, 'linear')
doTweenY('mesaY', 'mesa.scale', 2, 0.001, 'linear')
makeLuaSprite('mesa2', 'images/lab/mesa2', -100, -500);
scaleObject('mesa2', 2.0, 2.0);
doTweenX('mesa2X', 'mesa2.scale', 2, 0.001, 'linear')
doTweenY('mesa2Y', 'mesa2.scale', 2, 0.001, 'linear')
makeLuaSprite('light2', 'images/lab/light2', -2400, -500);
scaleObject('light2', 2.0, 2.0);
doTweenX('light2X', 'light2.scale', 2, 0.001, 'linear')
doTweenY('light2Y', 'light2.scale', 2, 0.001, 'linear')
makeLuaSprite('iluminacion', 'images/lab/iluminacion', -100, -500);
scaleObject('iluminacion', 2.0, 2.0);
doTweenX('iluminacionX', 'iluminacion.scale', 2, 0.001, 'linear')
doTweenY('iluminacionY', 'iluminacion.scale', 2, 0.001, 'linear')
makeLuaSprite("white","white", 680, 400);
setObjectCamera("white", 'other')
setProperty("white.scale.x", 1380);
setProperty("white.scale.y", 820);
makeLuaSprite("white2","white", 680, 400);
setObjectCamera("white2", 'hud')
setProperty("white2.scale.x", 1380);
setProperty("white2.scale.y", 820);
makeLuaSprite('c', 'mov', 0, 0);
setObjectCamera('c', 'hud');
doTweenX('cX', 'c.scale', 2, 0.001, 'linear')
doTweenY('cY', 'c.scale', 2, 0.001, 'linear')
makeLuaSprite('c2', 'mov', 0, 0);
setObjectCamera('c2', 'other');
makeLuaSprite("blackbg3","blacktnt", 680, 400);
setProperty("blackbg3.scale.x", 1380);
setProperty("blackbg3.scale.y", 820);
setObjectCamera("blackbg3", 'other')
makeLuaSprite("black2","blacktnt", 2240, 750);
setProperty("black2.scale.x", 3000);
setProperty("black2.scale.y", 2000);
setObjectCamera("black2", 'game')
if songName == 'Mindless' then
makeAnimatedLuaSprite('Finn','Finn_Transformation', -280, -150);
luaSpriteAddAnimationByPrefix('Finn', 'transform', 'FINN-CUTSCENE', 19, true);
scaleObject('Finn', 4, 4);
doTweenX('FinnX', 'Finn.scale', 5, 0.001, 'linear')
doTweenY('FinnY', 'Finn.scale', 5, 0.001, 'linear')
setObjectCamera('Finn', 'hud')
end
addLuaSprite('bg', false);
addLuaSprite('bg2', false);
addLuaSprite('mesa', true);
addLuaSprite('mesa2', true);
addLuaSprite('light2', true);
addLuaSprite('iluminacion', true);
addLuaSprite('c', false);
addLuaSprite('c2', false);
addLuaSprite("blackbg3", false);
addLuaSprite("black2", true);
addLuaSprite('Finn', false)
addLuaSprite("white", false);
addLuaSprite("white2", false);
end
function onUpdate(elapsed)
local songPos = getPropertyFromClass('Conductor', 'songPosition') / 300
if curStep >= 0 and curStep < 5000 then
setProperty("BG1.angle", spin * math.sin(songPos))
setProperty("BG2.angle", spin * math.sin(songPos))
end
end
function onTimerCompleted(tag, loops, loopsLeft)
if tag=='movL' then
doTweenX('BG1X', 'BG1', 1080, 0.8, true);
doTweenX('BG2X', 'BG2', 1080, 0.8, true);
runTimer('movL2',0.9)
end
if tag=='movL2' then
doTweenX('BG1X2', 'BG1', 1120, 0.8, true);
doTweenX('BG2X2', 'BG2', 1120, 0.8, true)
runTimer('movL',0.9);
end
if tag=='charge' then
doTweenAlpha("BG2N","BG2", 0, 0.1, true);
doTweenAlpha("blackbg3A10","blackbg3", 0, 0.1, true);
doTweenAlpha("black2A","black2", 0, 0.1, true);
doTweenAlpha("c2A","c2", 0, 0.1, true);
doTweenAlpha("white2","white2", 0, 0.1, true);
doTweenAlpha("white","white", 0, 0.1, true);
if songName == 'Mindless' then
doTweenAlpha("black2A","black2", 1, 0.2, true);
doTweenAlpha("FinnA","Finn", 0, 0.1, true);
end
end
end
function onEvent(name,value1,value2)
if name == 'RobZ' then
if value1 == 'no hud (solo algunos)' then
setProperty('uglyHB.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('iconP2.visible', false)
setProperty('iconP1.visible', false)
end
if value1 == 'hud' then
setProperty('uglyHB.visible', true)
setProperty('scoreTxt.visible', true)
setProperty('iconP2.visible', true)
setProperty('iconP1.visible', true)
end

time = 0

function onUpdatePost(elapsed) 
    time = time + elapsed*1000
    setTextFont('scoreTxt','thunderman.ttf')
    setProperty('timeBarBG.color',getColorFromHex('a8a0b3'))
    setTextFont('timeTxt','thunderman.ttf')
    setTextFont('botplayTxt','thunderman.ttf')
    setTextColor('botplayTxt','a8a0b3')

end
end
end