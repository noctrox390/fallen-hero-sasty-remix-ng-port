-- Created by RamenDominoes (Feel free to credit or not I don't really care)
--Not bad for my first event created... I think

start = 0

finish = 0



function onCreate()
	

	--THE TOP BAR
	makeLuaSprite('UpperBar', 'empty', 0, 720)
	makeGraphic('UpperBar', 1280, 120, '000000')
	setObjectCamera('UpperBar', 'hud')
	addLuaSprite('UpperBar', false)


	--THE BOTTOM BAR
	makeLuaSprite('LowerBar', 'empty', 0, -120)
	makeGraphic('LowerBar', 1280, 120, '000000')
	setObjectCamera('LowerBar', 'hud')
	addLuaSprite('LowerBar', false)

end


function onUpdate()

	if start == 1 then
	
	doTweenY('Cinematics1', 'UpperBar', 0, 0.2, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 600, 0.2, 'Linear')

	end

	if downscroll and start == 1 then
	
	doTweenY('Cinematics1', 'UpperBar', 0, 0.2, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 600, 0.2, 'Linear')

	end


	if finish == 2 then
	
	doTweenY('Cinematics1', 'UpperBar', -120, 0.5, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 720, 0.5, 'Linear')
	
	end

	if downscroll and finish == 2 then
	
	doTweenY('Cinematics1', 'UpperBar', -120, 0.5, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 720, 0.5, 'Linear')
	
	end
	
end

function onEvent(name,value1,value2)
	if name == 'Cinematics' then
		start = tonumber(value1)
		finish = tonumber(value2)
			end
	
		end
