a = 1
b = 10


print(a)
print(b)

if(a) then
	print(a)
end

if(playdate.buttonIsPressed(playdate.kButtonA)) then
	a = 0
end

if(!a) then
	print("no A")
end

function playdate.update()
	
end
