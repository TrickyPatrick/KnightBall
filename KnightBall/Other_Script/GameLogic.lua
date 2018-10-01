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

local Balls = {}

function lol ()
if NbGoalBlue<10 and NbGoalRed<10 then 
	createBall()
	end
end

function createBall()
	local ballBody = createBody(i, "Circle", 0.001, 0.01, 0.9,false,ResolutionLargeur(960), ResolutionHauteur(500), {ResolutionLargeur(20), 0})
	local ball = createSprite("assets/Balle.png", ResolutionLargeur(45), ResolutionHauteur(45), 0,0)
	attachSpriteTo(ball, ballBody, -0.5, -0.5)
	table.insert(Balls, {BallSprite=ball, BallBody=ballBody})
	return ball, ballBody
end

function onGameReady()
	Background = createSprite("assets/Background.png", WINDOW_WIDTH,WINDOW_HEIGHT,0,0)
	local backgroundBody1 = createBody("Static", "Box", 1, 0.1,0,false, ResolutionLargeur(-1000), ResolutionHauteur(1045), {ResolutionLargeur(5000), ResolutionHauteur(35)}) -- en bas
	local backgroundBody1 = createBody("Static", "Box", 1, 0.1,0,false, ResolutionLargeur(-1000), 0, {ResolutionLargeur(5000), ResolutionHauteur(35)})	-- en haut
	local backgroundBody1 = createBody("Static", "Box", 1, 0.1,0,false, ResolutionLargeur(50), 0, {ResolutionLargeur(100), ResolutionHauteur(600)})	-- à gauche
	local backgroundBody1 = createBody("Static", "Box", 1, 0.1,0,false, ResolutionLargeur(1870), 0, {ResolutionLargeur(100), ResolutionHauteur(600)})	-- à droite
	local backgroundBody1 = createBody("Static", "Box", 1, 0.1,0,false, ResolutionLargeur(1920+707/4+1+55+50), 0, {ResolutionLargeur(1), ResolutionHauteur(1500)})  -- cage droite
	local backgroundBody1 = createBody("Static", "Box", 1, 0.1,0,false, ResolutionLargeur(-300), 0, {ResolutionLargeur(100), ResolutionHauteur(1500)}) -- cage gauche
	local ggg = createBody({type="Dynamic", shape="Polygon"}, {mass=1,friction=1,restitution=0,sensor=false},550, 250,{34,50, 90, 120, -5, 250, 23, 80, 30, 56})
	--local groundPhysics = physicalizeWithOffset(Background, 1, 1, "Static", 0, 1)
	knight = createAnimation("assets/Knight_anim/walk.png", "assets/Knight_anim/walk.a", ResolutionLargeur(587/4),ResolutionHauteur(707/4), ResolutionLargeur(250),ResolutionHauteur(700), 0.1) 
	knight2 = createAnimation("assets/Knight_anim/walk.png", "assets/Knight_anim/walk.a", ResolutionLargeur(587/4),ResolutionHauteur(707/4), ResolutionLargeur(1500),ResolutionHauteur(700), 0.1) 
	knightBody = physicalizeWithOffset(knight, 1, 4, 0,false,"Dynamic", "Box",0.28, 0.09)
	knight2Body = physicalizeWithOffset(knight2, 1, 4, 0,false,"Dynamic", "Box",0.28, 0.09)
	local ballSprite, BallBody = createBall()
	flipSpriteHorizontal(knight2, true)
	flipSpriteHorizontal(knight, false)
	setAngularDamping(knightBody, 1)
	setAngularDamping(knight2Body, 1)
	a =createText(""..NbGoalRed,"assets/Fonts/CHILLER.TTF", ResolutionHauteur(200), 0, 0, 0, 0, 255)
	b =createText(""..NbGoalBlue,"assets/Fonts/CHILLER.TTF", ResolutionHauteur(200), ResolutionLargeur(1830), 0, 255, 0, 0)
	setTimer(lol, 3000,-1)
end
AddEventHandler("OnEngineLoad", onGameReady)

function onEngineRender()
	for i, v in pairs(Balls) do
		if v and v.BallSprite and v.BallBody then
			local x1,y1 = getSpriteSize(v.BallSprite)
			local x, y = getSpritePosition(v.BallSprite)
			if (x < 0) then
			
				NbGoalBlue = NbGoalBlue + 1
				setText(b, ""..NbGoalBlue)
				deleteSprite(v.BallSprite)
				deleteBody(v.BallBody)
				table.remove(Balls, i)
			elseif (x > WINDOW_WIDTH + x1) then
				NbGoalRed = NbGoalRed + 1
				setText(a, ""..NbGoalRed)
				deleteBody(v.BallBody)
				deleteSprite(v.BallSprite)
				table.remove(Balls, i)
			end
		end
	end
	if NbGoalBlue == 10 and victory == true then
	victory = false
	local v =createText("Victory !","assets/Fonts/CHILLER.TTF", ResolutionLargeur(255), ResolutionLargeur(700), ResolutionHauteur(400), 255, 0, 0)
	end
	if NbGoalRed == 10 and victory == true then
	victory = false
	local d =createText("Victory !","assets/Fonts/CHILLER.TTF", ResolutionLargeur(255), ResolutionLargeur(700), ResolutionHauteur(400), 0, 0, 255)
	end
	
	
end
AddEventHandler("OnEngineRender", onEngineRender)




function OnMouseClick(EventType, MouseButton, PosX, PosY)
	
end
AddEventHandler("OnMouseClick", OnMouseClick)

function blockJump()
	isJumpBlocked = false
end

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