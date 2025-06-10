angl = false

function onCreatePost()
	   makeLuaSprite('flash2', '', 0, 0);
        makeGraphic('flash2',screenWidth,screenHeight,'ffffff')
	      addLuaSprite('flash2', true);
	setBlendMode('flash2', 'add')
	setObjectCamera ('flash2', 'other')
	      setProperty('flash2.alpha',0)
end

function onEvent(n,v1,v2)
	if n == 'flashzoom' then
doTweenAngle('d8', 'camHUD', 0, 0.5, 'circOut')
doTweenAngle('d88', 'camGame', 0, 0.5, 'circOut')
setProperty('flash2.alpha',0.2)
doTweenAlpha('fl','flash2',0,0.5,'linear')
if angl then
angl = false
setProperty('camHUD.angle', 20)
setProperty('camGame.angle', 20)
else
angl = true
setProperty('camHUD.angle', -20)
setProperty('camGame.angle', -20)
end
end
end