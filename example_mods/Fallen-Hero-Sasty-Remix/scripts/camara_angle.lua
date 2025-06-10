local Ax = 6
local Ax2 = 6
local Ay = -6
local Ay2 = -6
local Time = 0.5
local followchars = true;

function onUpdate()
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                doTweenAngle('camGameAngle','camGame',Ax,Time,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                doTweenAngle('camGameAngle','camGame',Ay,Time,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                doTweenAngle('camGameAngle','camGame',Ax,Time,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                doTweenAngle('camGameAngle','camGame',Ay,Time,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
                      if getProperty('gf.animation.curAnim.name') == 'singLEFT' then
                doTweenAngle('camGameAngle','camGame',Ax,Time,'linear')
            end
            if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                doTweenAngle('camGameAngle','camGame',Ay,Time,'linear')
            end
            if getProperty('gf.animation.curAnim.name') == 'singUP' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
            if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                doTweenAngle('camGameAngle','camGame',Ax,Time,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                doTweenAngle('camGameAngle','camGame',Ay,Time,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
                doTweenAngle('camGameAngle','camGame',Ax,Time,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
                doTweenAngle('camGameAngle','camGame',Ay,Time,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'beatLEFT-alt' then
                doTweenAngle('camGameAngle','camGame',Ax,Time,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'beatRIGHT-alt' then
                doTweenAngle('camGameAngle','camGame',Ay,Time,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'beatUP-alt' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'beatDOWN-alt' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
                      if getProperty('gf.animation.curAnim.name') == 'singLEFT' then
                doTweenAngle('camGameAngle','camGame',Ax,Time,'linear')
            end
            if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                doTweenAngle('camGameAngle','camGame',Ay,Time,'linear')
            end
            if getProperty('gf.animation.curAnim.name') == 'singUP' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
            if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                doTweenAngle('camGameAngle','camGame',0,Time,'linear')
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end