-- by PatrickYT
function onCreate()
makeLuaSprite('black', nil, -40, -21)
makeGraphic('black', 1*2000, 1*2000, '000000')
scaleObject('black', 5, 5)
setProperty('black.alpha', 0)
addLuaSprite('black', false)
end
function onEvent(name,value1, value2)
if name == 'badapplelol' then
if value1 == '1' then
setProperty('black.alpha', 1)
setProperty('dad.colorTransform.greenOffset', 255)
setProperty('dad.colorTransform.redOffset', 255)
setProperty('dad.colorTransform.blueOffset', 255)
setProperty('gf.colorTransform.greenOffset', 255)
setProperty('gf.colorTransform.redOffset', 255)
setProperty('gf.colorTransform.blueOffset', 255)
setProperty('boyfriend.colorTransform.greenOffset', 255)
setProperty('boyfriend.colorTransform.redOffset', 255)
setProperty('boyfriend.colorTransform.blueOffset', 255)
end

if value1 == '0' then
setProperty('black.alpha', 0)
setProperty('WBG.colorTransform.greenOffset', 0)
setProperty('WBG.colorTransform.redOffset', 0)
setProperty('WBG.colorTransform.blueOffset', 0)

setProperty('dad.colorTransform.greenOffset', 0)
setProperty('dad.colorTransform.redOffset', 0)
setProperty('dad.colorTransform.blueOffset', 0)

setProperty('gf.colorTransform.greenOffset', 0)
setProperty('gf.colorTransform.redOffset', 0)
setProperty('gf.colorTransform.blueOffset', 0)

setProperty('boyfriend.colorTransform.greenOffset', 0)
setProperty('boyfriend.colorTransform.redOffset', 0)
setProperty('boyfriend.colorTransform.blueOffset', 0)
end
end
end