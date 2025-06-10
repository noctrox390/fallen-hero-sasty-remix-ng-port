


function onCreatePost()
if songName ~= 'FreePlay' and songName ~= 'Credits' then
 runTimer('intro3',0.75)
 makeAnimatedLuaSprite('numbers','Numbers',500,200)
 addAnimationByPrefix('numbers','1','1',24,false)
 addAnimationByPrefix('numbers','2','2',24,false)
 addAnimationByPrefix('numbers','3','3',24,false)
 addAnimationByPrefix('numbers','Go','Go',24,false)
 scaleObject('numbers',0.8,0.8)
 setProperty('numbers.alpha',0)
 setObjectCamera('numbers','camOther')
 addLuaSprite('numbers',true)
 nameGF = getProperty()
 nameBF = getProperty()
setProperty('camHUD.alpha',0)
setProperty("skipCountdown", true)
   addCharacterToList();
   addCharacterToList();
follow=true
end
end

function onTimerCompleted(tag)
if tag=='intro3' then
setProperty('numbers.alpha',1)
triggerEvent()
setProperty('numbers.offset.x',60)
setProperty('numbers.offset.y',60)
   if nameGF == '' then
   triggerEvent()
   end
   objectPlayAnimation('numbers','3',false)
characterPlayAnim('','3', true)
characterPlayAnim('','3' , true)
setProperty('.flipX',false)
playSound('3')
runTimer('intro2',0.6)
pause = true
end

if tag=='intro2' then
setProperty('numbers.alpha',1)
setProperty('numbers.offset.x',0)
setProperty('numbers.offset.y',0)
characterPlayAnim('','2', true)
characterPlayAnim('','2' , true)
objectPlayAnimation('numbers','2',false)
playSound('2')
runTimer('intro1',0.6)
runTimer('End',0.5)
end

if tag=='intro1' then
setProperty('numbers.alpha',1)
characterPlayAnim('','1', true)
characterPlayAnim('','1' , true)
objectPlayAnimation('numbers','1',false)
playSound('1')
runTimer('introGo',0.6)
runTimer('End',1)
end

if tag=='introGo' then
setProperty('numbers.alpha',1)
characterPlayAnim('','Go', true)
characterPlayAnim('','Go' , true)
setProperty('numbers.offset.x',140)
setProperty('numbers.offset.y',50)
objectPlayAnimation('numbers','Go',false)
playSound('go')
runTimer('start',0.25)
runTimer('End',1)
end

if tag =='End' then
setProperty('numbers.alpha',0)
end

if tag=='start' then
mustHitSection = false
setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1)
		setProperty('vocals.volume', 1)		
cameraFlash('camOther','ffffff',0.4)

triggerEvent()
   triggerEvent()
   
follow=false
pause = false
end
end

function onSongStart()
setProperty('camHUD.alpha',51)
end

function onCountdownTick(counter)
if counter  ==  1 then
end
end

function onUpdate()
if follow == true then
triggerEvent('Camera Follow Pos',getProperty('boyfriend.x')+ -20,getProperty('boyfriend.y')+ -20)
else triggerEvent('Camera Follow Pos','','')
end 
end
function onUpdatePost(elapsed)
if pause == true then
        setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition') - elapsed * 1000  )
		setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
		setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
		setProperty('vocals.volume', 0)
	end
end