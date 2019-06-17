
 function RandomLetter()returntable.Random({qA, qB})
end



local qA = display.newText( "Whats my name?",350, 200, native.systemFont, 90 )
qA:setFillColor( 240, 83, 83 )

local qB = display.newText( "Whats my name?",350, 200, native.systemFont, 90 )
qB:setFillColor( 240, 83, 83 )
 
local calculateButton = display.newImageRect( "calculateButton.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

display.setDefault( "background", 255, 0, 0 )


function RandomVariable(length)
	local res = ""
	for i = 1, length do
		res = res .. string.char(math.random(97, 122))
	end
	return res
end
 



local myGuessTextfield = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
myGuessTextfield.id = "a textField"

local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
	local output = display.newText( " " , 500,400, native.systemFont, 60)
	output.id = "output "
	output:setFillColor( 0, 0, 0)
	output.text = "My guess was "..myGuessTextfield.text

	if (myGuessTextfield.text == "Olivia") then
		correctOrNo = display.newText("Correct!", 350, 650, native.systemFont, 90 )
	else
		correctOrNo = display.newText("Incorrect!", 350, 650, native.systemFont, 90 )
	end

    return true
end
calculateButton:addEventListener( "touch", calculateButtonTouch )

