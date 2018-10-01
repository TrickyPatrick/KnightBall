local DragAndDrop = {}
Objects = {}
local sprt = nil
	 STATECONST=768
	--keys
	 A=97
	 B=98
	 C=99
	 D=100
	 E=101
	 F=102
	 G=103
	 H=104
	 I=105
	 J=106
	 K=107
	 L=108
	 M=109
	 N=110
	 O=111
	 P=112
	 Q=113
	 R=114
	 S=115
	 T=116
	 U=117
	 V=118
	 W=119
	 X=120
	 Y=121
	 Z=122
	 UP=1073741906
	 DOWN=1073741905
	 LEFT=1073741904
	 RIGHT=1073741903
	 SPACEBAR=32
	 LEFTSHIFT=1073742049
	 KeyPressed = {}


function OnMouseClick(EventType, MouseButton, PosX, PosY)
	sprtX, sprtY = getSpritePosition(sprt)
	sprtSX, sprtSY = getSpriteSize(sprt)
	if DragAndDrop[1] == nil and EventType == 1025  then
		if (PosX > sprtX and PosY > sprtY and PosX < PosX+sprtSX and PosY < sprtY+sprtSY) then -- if the click inside the sprite
			outputConsole("Click inside sprite!", "info")
			DragAndDrop = {sprt, PosX-sprtX, PosY-sprtY}
		end
	end
	if (DragAndDrop[1] ~= nil) and (EventType == 1026) then
		outputConsole("Releasing sprite !", "info")
		setSpritePosition(DragAndDrop[1], PosX-DragAndDrop[2], PosY-DragAndDrop[3])
		DragAndDrop = {}
	end
end

-- Called on mouse move arguments: ([int] x, [int] y) {POSITION OF THE MOUSE MOVE}
function OnMouseMove(x, y) 
	if (DragAndDrop[1]) then
		setSpritePosition(DragAndDrop[1], x-DragAndDrop[2], y-DragAndDrop[3])
	end
end

function smooth()
	local LastDeltaTime2 = 0
		LastDeltaTime2 = LastDeltaTime2+dt
		if (LastDeltaTime2 > 0.01 and Objects[Personnage]) then
			LastDeltaTime2 = 0
			x, y = GetPos(Personnage)
			SetPos(Personnage,x-20,y)
			if ( x <= ResolutionLargeur(100)) then
				SetPos(Personnage, x, y)
				MoveBack = false
			end
		end
end
function RandomGenerationBackground(x)
	math.randomseed(os.clock()*100000000000)
	a = math.random(0, 1)
	math.floor(a)
	b = 1+a
	return b
end
function RandomGenerationYFeuille(x)
	math.randomseed(os.clock()*100000000000)
	a = math.random(0, 1)
	math.floor(a)
	b = -1
	a = a*2
	b = b + a
	return b
end 
function RandomGenerationFeuille(x)
	math.randomseed(os.clock()*100000000000)
	a = math.random(0, 1)
	math.floor(a)
	a = math.random(0, 1)
	math.floor(a)
	a = math.random(0, 1)
	math.floor(a)
	b = 1+a
	return b
end

function ResolutionLargeur(x)
	local w=x/1920
	local eye=WINDOW_WIDTH*w
	return eye
end

function ResolutionHauteur(x)
	local w=x/1080
	local eye=WINDOW_HEIGHT*w
	return eye
end

function valueInRange(value, min, max)
	return (value >= min) and (value <= max);
end

function rectOverlap(A, B)
	Ax, Ay = getSpritePosition(A)
	Bx, By = getSpritePosition(B)
	Bwidth, Bheight = getSpriteSize(B)
	Awidth, Aheight = getSpriteSize(A)
    xOverlap = valueInRange(Ax, Bx, Bx + Bwidth) or
                    valueInRange(Bx, Ax, Ax + Awidth);

    yOverlap = valueInRange(Ay, By, By + Bheight) or
                    valueInRange(By, Ay, Ay + Aheight);

    return xOverlap and yOverlap;
end

function StopBorders(A)
	if Objects[A] == true then
		local X, Y = GetPos(A)
		local SX, SY = getSpriteSize(A)
		if (X > WINDOW_WIDTH-SX) then -- droite
			SetPos(A, WINDOW_WIDTH-SX, Y)
		end
		if (Y > WINDOW_HEIGHT-SY) then -- bas
			SetPos(A, X, WINDOW_HEIGHT-SY)
		end
		if (X < 0) then -- gauche
			SetPos(A, 0, Y)
		end
		if (Y < 0) then -- haut
			SetPos(A, X, 0)
		end
	end
end

function PassBorders(A)
	if Objects[A] == true then
		local X, Y = GetPos(A)
		local SX, SY = getSpriteSize(A)
		if (X > WINDOW_WIDTH-SX) then -- droite
			SetPos(A, 0, Y)
		end
		if (Y > WINDOW_HEIGHT-SY) then -- bas
			SetPos(A, X, 0)
		end
		if (X < 0) then -- gauche
			SetPos(A, WINDOW_WIDTH-SX, Y)
		end
		if (Y < 0) then -- haut
			SetPos(A, X, WINDOW_WIDTH-SX)
		end
	end
end

if state == STATECONST then -- dont delete this
		KeyPressed[key] = true
end
if state == STATECONST+1 then -- dont delete this
		KeyPressed[key] = false
end