a = 1
b = 10


print(a)
print(b)

if a then
	print(a)
end

if(not a) then
	print("no A")
end

function playdate.update()
	if playdate.buttonIsPressed(playdate.kButtonA) then
		a = 0
		print(a)
	end
end
