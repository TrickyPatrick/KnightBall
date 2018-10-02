-- Copyright Tricky Patrick aka Thomas Decroix
-- Special Thanks for Darhal                                                

local Background
local isKeyPressed = {}
local knightBody 
local knight
local isJumpBlocked = false
local i = "Dynamic"
local knight2 
local NbGoalRed = 0
local NbGoalBlue = 0
local a,b
local victory = true
local RandomBall
local Balls1 = {}
local Balls2 = {}
local Balls3= {}
local AddBumper = 0
function lol ()
RandomBall = GeneratedBall()
AddBumper = AddBumper + 1
	if NbGoalBlue<10 and NbGoalRed<10 and RandomBall==1 then 
		createBall1()
	end
	if NbGoalBlue<10 and NbGoalRed<10 and RandomBall==2 then 
		createBall2()
	end
	if NbGoalBlue<10 and NbGoalRed<10 and RandomBall==3 then 
		createBall3()
	end
end

function GeneratedBall(x)
	math.randomseed(os.clock()*100000000000)
	p = math.random(0, 1)
	math.floor(p)
	c = math.random(0, 1)
	math.floor(c)
	n = 1+p+c
	return n
end

function GeneratedBumper(x)
	math.randomseed(os.clock()*100000000000)
	p = math.random(0, 1)
	math.floor(p)
	c = math.random(0, 1)
	math.floor(c)
	pp = math.random(0, 1)
	math.floor(pp)
	cc = math.random(0, 1)
	math.floor(cc)
	ppp = math.random(0, 1)
	math.floor(ppp)
	ccc = math.random(0, 1)
	math.floor(ccc)
	pppp = math.random(0, 1)
	math.floor(pppp)
	cccc = math.random(0, 1)
	math.floor(cccc)
	
	n = 1+p+c+pp+cc+ppp+ccc+pppp+cccc
	return n
end

function GeneratedBumperLargeur(x)
	math.randomseed(os.clock()*100000000000)
	p = math.random(0, 1)
	math.floor(p)
	c = math.random(0, 1)
	math.floor(c)
	pp = math.random(0, 1)
	math.floor(pp)
	cc = math.random(0, 1)
	math.floor(cc)
	ppp = math.random(0, 1)
	math.floor(ppp)
	ccc = math.random(0, 1)
	math.floor(ccc)
	pppp = math.random(0, 1)
	math.floor(pppp)
	cccc = math.random(0, 1)
	math.floor(cccc)
		p = math.random(0, 1)
	math.floor(p)
	c = math.random(0, 1)
	math.floor(c)
	pp = math.random(0, 1)
	math.floor(pp)
	cc = math.random(0, 1)
	math.floor(cc)
	ppp = math.random(0, 1)
	math.floor(ppp)
	ccc = math.random(0, 1)
	math.floor(ccc)
	pppp = math.random(0, 1)
	math.floor(pppp)
	cccc = math.random(0, 1)
	math.floor(cccc)
		p = math.random(0, 1)
	math.floor(p)
	c = math.random(0, 1)
	math.floor(c)
	pp = math.random(0, 1)
	math.floor(pp)
	cc = math.random(0, 1)
	math.floor(cc)
	ppp = math.random(0, 1)
	math.floor(ppp)
	ccc = math.random(0, 1)
	math.floor(ccc)
	pppp = math.random(0, 1)
	math.floor(pppp)
	cccc = math.random(0, 1)
	math.floor(cccc)
	
	n = 1+p+c+pp+cc+ppp+ccc+pppp+cccc
	return n
end

function GeneratedBumperLongueur(x)
	math.randomseed(os.clock()*100000000000)
	p = math.random(0, 1)
	math.floor(p)
	c = math.random(0, 1)
	math.floor(c)
	pp = math.random(0, 1)
	math.floor(pp)
	cc = math.random(0, 1)
	math.floor(cc)
	ppp = math.random(0, 1)
	math.floor(ppp)
	ccc = math.random(0, 1)
	math.floor(ccc)
	pppp = math.random(0, 1)
	math.floor(pppp)
	cccc = math.random(0, 1)
	math.floor(cccc)
		p = math.random(0, 1)
	math.floor(p)
	c = math.random(0, 1)
	math.floor(c)
	pp = math.random(0, 1)
	math.floor(pp)
	cc = math.random(0, 1)
	math.floor(cc)
	ppp = math.random(0, 1)
	math.floor(ppp)
	ccc = math.random(0, 1)
	math.floor(ccc)
	pppp = math.random(0, 1)
	math.floor(pppp)
	cccc = math.random(0, 1)
	math.floor(cccc)
		p = math.random(0, 1)
	math.floor(p)
	c = math.random(0, 1)
	math.floor(c)
	pp = math.random(0, 1)
	math.floor(pp)
	cc = math.random(0, 1)
	math.floor(cc)
	ppp = math.random(0, 1)
	math.floor(ppp)
	ccc = math.random(0, 1)
	math.floor(ccc)
	pppp = math.random(0, 1)
	math.floor(pppp)
	cccc = math.random(0, 1)
	math.floor(cccc)
		p = math.random(0, 1)
	math.floor(p)
	c = math.random(0, 1)
	math.floor(c)
	pp = math.random(0, 1)
	math.floor(pp)
	cc = math.random(0, 1)
	math.floor(cc)
	ppp = math.random(0, 1)
	math.floor(ppp)
	ccc = math.random(0, 1)
	math.floor(ccc)
	pppp = math.random(0, 1)
	math.floor(pppp)
	cccc = math.random(0, 1)
	math.floor(cccc)
	
	n = 1+p+c+pp+cc+ppp+ccc+pppp+cccc
	return n
end

function GeneratedBumper2(x)
	math.randomseed(os.clock()*100000000000)
	p = math.random(0, 1)
	math.floor(p)
	c = math.random(0, 1)
	math.floor(c)
	pp = math.random(0, 1)
	math.floor(pp)
	cc = math.random(0, 1)
	math.floor(cc)
	ppp = math.random(0, 1)
	math.floor(ppp)
	ccc = math.random(0, 1)
	math.floor(ccc)
	pppp = math.random(0, 1)
	math.floor(pppp)
	cccc = math.random(0, 1)
	math.floor(cccc)
	p = math.random(0, 1)
	math.floor(p)
	c = math.random(0, 1)
	math.floor(c)
	pp = math.random(0, 1)
	math.floor(pp)
	cc = math.random(0, 1)
	math.floor(cc)
	ppp = math.random(0, 1)
	math.floor(ppp)
	ccc = math.random(0, 1)
	math.floor(ccc)
	pppp = math.random(0, 1)
	math.floor(pppp)
	cccc = math.random(0, 1)
	math.floor(cccc)
	
	n = 1+p+c+pp+cc+ppp+ccc+pppp+cccc
	return n
end

function createBall1()
	local ballBody1 = createBody(i, "Circle", 0.001, 0.01, 0.9,false,ResolutionLargeur(960), ResolutionHauteur(500), {ResolutionLargeur(20), 0})
	local ball1 = createSprite("assets/Balle1.png", ResolutionLargeur(45), ResolutionHauteur(45), 0,0)
	attachSpriteTo(ball1, ballBody1, -0.5, -0.5)
	table.insert(Balls1, {BallSprite1=ball1, BallBody1=ballBody1})
	return ball1, ballBody1
end

function createBall2()
	local ballBody2 = createBody(i, "Circle", 0.001, 0.01, 0.9,false,ResolutionLargeur(960), ResolutionHauteur(500), {ResolutionLargeur(20), 0})
	local ball2 = createSprite("assets/Balle2.png", ResolutionLargeur(45), ResolutionHauteur(45), 0,0)
	attachSpriteTo(ball2, ballBody2, -0.5, -0.5)
	table.insert(Balls2, {BallSprite2=ball2, BallBody2=ballBody2})
	return ball2, ballBody2
end

function createBall3()
	local ballBody3 = createBody(i, "Circle", 0.001, 0.01, 0.9,false,ResolutionLargeur(960), ResolutionHauteur(500), {ResolutionLargeur(20), 0})
	local ball3 = createSprite("assets/Balle3.png", ResolutionLargeur(45), ResolutionHauteur(45), 0,0)
	attachSpriteTo(ball3, ballBody3, -0.5, -0.5)
	table.insert(Balls3, {BallSprite3=ball3, BallBody3=ballBody3})
	return ball3, ballBody3
end

function onGameReady()
	Background = createSprite("assets/Background.png", WINDOW_WIDTH,WINDOW_HEIGHT,0,0)
	local backgroundBody11 = createBody("Static", "Box", 1, 0.1,0,false, ResolutionLargeur(-1000), ResolutionHauteur(1045), {ResolutionLargeur(5000), ResolutionHauteur(35)}) -- en bas
	local backgroundBody12 = createBody("Static", "Box", 1, 0.1,0,false, ResolutionLargeur(-1000), 0, {ResolutionLargeur(5000), ResolutionHauteur(35)})	-- en haut
	local backgroundBody13 = createBody("Static", "Box", 1, 0.1,0,false, ResolutionLargeur(50), 0, {ResolutionLargeur(100), ResolutionHauteur(600)})	-- à gauche
	local backgroundBody14 = createBody("Static", "Box", 1, 0.1,0,false, ResolutionLargeur(1870), 0, {ResolutionLargeur(100), ResolutionHauteur(600)})	-- à droite
	local backgroundBody15 = createBody("Static", "Box", 1, 0.1,0,false, ResolutionLargeur(1920+707/4+1+55+50), 0, {ResolutionLargeur(1), ResolutionHauteur(1500)})  -- cage droite
	local backgroundBody16 = createBody("Static", "Box", 1, 0.1,0,false, ResolutionLargeur(-300), 0, {ResolutionLargeur(100), ResolutionHauteur(1500)}) -- cage gauche
	local BackGroundSprite12 = createSprite("assets/BackGroundSprite.jpg", ResolutionLargeur(5000)*2,ResolutionHauteur(35)*2,ResolutionLargeur(-1000)*2,0*2)
	attachSpriteTo(BackGroundSprite12, backgroundBody12, -0.5, -0.5)
	local BackGroundSprite13 = createSprite("assets/BackGroundSprite.jpg", ResolutionLargeur(100)*2,ResolutionHauteur(600)*2,ResolutionLargeur(50)*2,0*2)
	attachSpriteTo(BackGroundSprite13, backgroundBody13, -0.5, -0.5)
	local BackGroundSprite14 = createSprite("assets/BackGroundSprite.jpg", ResolutionLargeur(100)*2,ResolutionHauteur(600)*2,ResolutionLargeur(1870)*2,0*2)
	attachSpriteTo(BackGroundSprite14, backgroundBody14, -0.5, -0.5)
	local BackGroundSprite11 = createSprite("assets/BackGroundSprite.jpg", ResolutionLargeur(5000)*2,ResolutionHauteur(35)*2,ResolutionLargeur(1000)*2,ResolutionHauteur(1045)*2)
	attachSpriteTo(BackGroundSprite11, backgroundBody11, -0.5, -0.5)
	--local groundPhysics = physicalizeWithOffset(Background, 1, 1, "Static", 0, 1)
	knight = createAnimation("assets/Knight_anim/walk.png", "assets/Knight_anim/walk.a", ResolutionLargeur(500/4),ResolutionHauteur(600/4), ResolutionLargeur(250),ResolutionHauteur(700), 0.1) 
	knight2 = createAnimation("assets/Knight_anim/walk.png", "assets/Knight_anim/walk.a", ResolutionLargeur(500/4),ResolutionHauteur(600/4), ResolutionLargeur(1500),ResolutionHauteur(700), 0.1) 
	knightBody = physicalizeWithOffset(knight, 1, 4, 0,false,"Dynamic", "Box",0.28, 0.09)
	knight2Body = physicalizeWithOffset(knight2, 1, 4, 0,false,"Dynamic", "Box",0.28, 0.09)
	local ballSprite1, BallBody1 = createBall1()
	flipSpriteHorizontal(knight2, true)
	flipSpriteHorizontal(knight, false)
	setAngularDamping(knightBody, 1)
	setAngularDamping(knight2Body, 1)
	a =createText(""..NbGoalRed,"assets/Fonts/CHILLER.TTF", ResolutionHauteur(200), 0, 0, 0, 0, 255)
	b =createText(""..NbGoalBlue,"assets/Fonts/CHILLER.TTF", ResolutionHauteur(200), ResolutionLargeur(1770), 0, 255, 0, 0)
	setTimer(lol, 3000,-1)
	local pp2 = ResolutionLargeur(200*GeneratedBumper2())
	local oo2 = ResolutionHauteur(860)
	local ii2 = ResolutionLargeur(30*GeneratedBumper2())
	local uu2 = ResolutionHauteur(10)
	local pp3 = ResolutionLargeur(200*GeneratedBumper())
	local oo3 = ResolutionHauteur(560)
	local oo4 = ResolutionHauteur(260)
	local ii3 = ResolutionLargeur(30*GeneratedBumperLargeur())
	local uu3 = ResolutionHauteur(10)
	local backgroundBody2 = createBody("Static", "Box", 1, 0.1,0,false, pp2, oo2,{ii2,uu2})
	local backgroundBody3 = createBody("Static", "Box", 1, 0.1,0,false, pp3, oo2, {ii3,uu3})
	local backgroundBody4 = createBody("Static", "Box", 1, 0.1,0,false, pp2, oo3, {ii2, uu2})
	local backgroundBody5 = createBody("Static", "Box", 1, 0.1,0,false, pp3, oo3, {ii3, uu3})
	local backgroundBody6 = createBody("Static", "Box", 1, 0.1,0,false, pp2, oo4, {ii2, uu2})
	local backgroundBody7 = createBody("Static", "Box", 1, 0.1,0,false, pp3, oo4, {ii3, uu3})
	local BackGroundSprite2 = createSprite("assets/BackGroundSprite.jpg", ii2*2,uu2*2,pp2*2,oo2*2)
	attachSpriteTo(BackGroundSprite2, backgroundBody2, -0.5, -0.5)
	local BackGroundSprite3 = createSprite("assets/BackGroundSprite.jpg", ii3*2,uu3*2,pp3*2,oo3*2)
	attachSpriteTo(BackGroundSprite3, backgroundBody3, -0.5, -0.5)
	local BackGroundSprite3 = createSprite("assets/BackGroundSprite.jpg", ii3*2,uu3*2,pp3*2,oo3*2)
	attachSpriteTo(BackGroundSprite3, backgroundBody3, -0.5, -0.5)
	local BackGroundSprite4	= createSprite("assets/BackGroundSprite.jpg", ii2*2,uu2*2,pp2*2,oo3*2)
	attachSpriteTo(BackGroundSprite4, backgroundBody4, -0.5, -0.5)
	local BackGroundSprite5	= createSprite("assets/BackGroundSprite.jpg", ii3*2,uu3*2,pp3*2,oo3*2)
	attachSpriteTo(BackGroundSprite5, backgroundBody5, -0.5, -0.5)
	local BackGroundSprite6	= createSprite("assets/BackGroundSprite.jpg", ii2*2,uu2*2,pp2*2,oo4*2)
	attachSpriteTo(BackGroundSprite6, backgroundBody6, -0.5, -0.5)
	local BackGroundSprite7	= createSprite("assets/BackGroundSprite.jpg", ii3*2,uu3*2,pp3*2,oo4*2)
	attachSpriteTo(BackGroundSprite7, backgroundBody7, -0.5, -0.5)
end
AddEventHandler("OnEngineLoad", onGameReady)

function onEngineRender()
	for i, v in pairs(Balls1) do
		if v and v.BallSprite1 and v.BallBody1 and victory == true then
			local x1,y1 = getSpriteSize(v.BallSprite1)
			local x, y = getSpritePosition(v.BallSprite1)
			if (x < 0) then
			
				NbGoalBlue = NbGoalBlue + 1
				setText(b, ""..NbGoalBlue)
				deleteSprite(v.BallSprite1)
				deleteBody(v.BallBody1)
				table.remove(Balls1, i)
			elseif (x > WINDOW_WIDTH + x1) then
				NbGoalRed = NbGoalRed + 1
				setText(a, ""..NbGoalRed)
				deleteBody(v.BallBody1)
				deleteSprite(v.BallSprite1)
				table.remove(Balls1, i)
			end
		end
	end
	for i, v in pairs(Balls2) do
		if v and v.BallSprite2 and v.BallBody2 and victory == true then
			local x1,y1 = getSpriteSize(v.BallSprite2)
			local x, y = getSpritePosition(v.BallSprite2)
			if (x < 0) then
				NbGoalBlue = NbGoalBlue - 1
				setText(b, ""..NbGoalBlue)
				deleteSprite(v.BallSprite2)
				deleteBody(v.BallBody2)
				table.remove(Balls2, i)
			elseif (x > WINDOW_WIDTH + x1) then
				NbGoalRed = NbGoalRed - 1
				setText(a, ""..NbGoalRed)
				deleteBody(v.BallBody2)
				deleteSprite(v.BallSprite2)
				table.remove(Balls2, i)
			end
		end
	end
	for i, v in pairs(Balls3) do
		if v and v.BallSprite3 and v.BallBody3 and victory == true then
			local x1,y1 = getSpriteSize(v.BallSprite3)
			local x, y = getSpritePosition(v.BallSprite3)
			if (x < 0) then
			
				NbGoalBlue = NbGoalBlue + 3
				setText(b, ""..NbGoalBlue)
				deleteSprite(v.BallSprite3)
				deleteBody(v.BallBody3)
				table.remove(Balls3, i)
			elseif (x > WINDOW_WIDTH + x1) then
				NbGoalRed = NbGoalRed + 3
				setText(a, ""..NbGoalRed)
				deleteBody(v.BallBody3)
				deleteSprite(v.BallSprite3)
				table.remove(Balls3, i)
			end
		end
	end
	if NbGoalBlue >= 10 and victory == true then
	victory = false
	local u =createText("Victory !","assets/Fonts/CHILLER.TTF", ResolutionLargeur(255), ResolutionLargeur(700), ResolutionHauteur(400), 255, 0, 0)
	end
	if NbGoalRed >= 10 and victory == true then
	victory = false
	local d =createText("Victory !","assets/Fonts/CHILLER.TTF", ResolutionLargeur(255), ResolutionLargeur(700), ResolutionHauteur(400), 0, 0, 255)
	end
	if AddBumper == 2 then
	AddBumper = 0
	math.randomseed(os.clock()*10000000000000)
	 BUMPERX= math.random(ResolutionLargeur(200), ResolutionLargeur(1600))
	math.floor(BUMPERX)
	BUMPERY= math.random(ResolutionHauteur(200), ResolutionHauteur(750))
	math.floor(BUMPERY)
	local BUMPER = createBody("Static", "Circle", 1, 4, 50,false,BUMPERX, BUMPERY, {ResolutionLargeur(30), 0})
	local BackGroundSpriteBUMPER = createSprite("assets/Bumper.png", 30*2,30*2,BUMPERX*2,BUMPERY*2)
	attachSpriteTo(BackGroundSpriteBUMPER, BUMPER, -0.5, -0.5)
	end
	
end
AddEventHandler("OnEngineRender", onEngineRender)




function OnMouseClick(EventType, MouseButton, PosX, PosY)
	
end
AddEventHandler("OnMouseClick", OnMouseClick)

function OnKeyboardInput(key, state)
if victory == true then
	x,y = getSpritePosition(knight)
	sx, sy = getSpriteSize(knight)
	if (state == 768) then
		isKeyPressed[key] = true
	elseif (state == 769) then
		isKeyPressed[key] = false
	end
	if (isKeyPressed[Z]) then
		setLinearVelocity(knightBody,0, ResolutionHauteur(-60))
	end
	if (isKeyPressed[S]) then
		setLinearVelocity(knightBody,0, ResolutionHauteur(60))
	end
	if (isKeyPressed[D]) then
		setLinearVelocity(knightBody,ResolutionLargeur(100), 0)
		flipSpriteHorizontal(knight, false)
	end
	if (isKeyPressed[Q]) then
		setLinearVelocity(knightBody,ResolutionLargeur(-100), 0)
		flipSpriteHorizontal(knight, true)
	end
		x2,y2 = getSpritePosition(knight2)
	sx2, sy2 = getSpriteSize(knight2)
	if (isKeyPressed[UP]) then
		setLinearVelocity(knight2Body,0, ResolutionHauteur(-60))
	end
	if (isKeyPressed[DOWN]) then
		setLinearVelocity(knight2Body,0, ResolutionHauteur(60))
	end
	if (isKeyPressed[RIGHT]) then
		setLinearVelocity(knight2Body,ResolutionLargeur(100), 0)
		flipSpriteHorizontal(knight2, false)
	end
	if (isKeyPressed[LEFT]) then
		setLinearVelocity(knight2Body,ResolutionLargeur(-100), 0)
		flipSpriteHorizontal(knight2, true)
	end
	end
end
AddEventHandler("OnKeyboardInput", OnKeyboardInput)


function OnMouseMove(PosX, PosY)
	
end
AddEventHandler("OnMouseMove", OnMouseMove)