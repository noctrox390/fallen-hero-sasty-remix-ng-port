function onCreatePost()
makeLuaSprite('POPEYE', '', -5000, -5000)
setScrollFactor('POPEYE', 0, 0)
scaleObject('POPEYE', 20.0, 20.0)
makeGraphic('POPEYE', 3840, 2160, '000000')
addLuaSprite('POPEYE', true)
screenCenter('POPEYE', 'xy')
end

function onSongStart()
      doTweenAlpha('zzz','POPEYE',1.00001,1,'sineInOut')
      triggerEvent('camera_target','nogf',nil)
      triggerEvent('BlackInTheHole','on',0.01)
end

function onTweenCompleted(t)
      if t == 'zzz' then
          removeLuaSprite('POPEYE')
      end
end 