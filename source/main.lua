a = 1
b = 10

-- addition:		 a + b
-- substraction:	 a - b
-- multiplication:	 a * b
-- division:		 a / b
-- exponent:		 a ^ b
-- negative:		 -a
-- modulus: 		 a % b,	shows how much is left after a division (55 % 10 = 5)



function playdate.update()
	if playdate.buttonIsPressed(playdate.kButtonA) then
		a = 0
		print(a)
	end
end
