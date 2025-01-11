--[[ 

    Uranium-Tech was leaked from developer.
    It's not a dump. ^ ^

    ⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️警告⚠️
    
    长期接触此代码可能会对人体健康和环境造成严重威胁。
    此代码可能导致细胞结构破坏，使人体免疫力下降，甚至诱发基因变异，引发癌症等致命疾病。
    另外，此代码对生态系统的破坏也极为深远，污染土壤和水源，危及动植物生存与繁衍，使大片地区在长期内无法再次安全使用。
    受此代码影响的人群往往会承受身体和心理层面的双重创伤，该代码也可能经食物链积聚到体内，对下一代造成潜在的健康威胁。
    面对该代码可能造成的威胁，我们必须加强安全监管，并持续完善应急预案，以降低该代码对人类与地球的伤害。
    同时时刻警惕该代码的潜在风险，并强化宣传教育，让公众充分了解防护知识，掌握必要的自救手段。
    惟有强化监管与国际合作，才能降低该代码造成的事故发生几率，留洁净家园。

--]]

local frame_rate = 0.0
local speed = 0
local nospread_seed = 0
local Team_general_dmg = 0
local Team_kill = 0

local air_open_nospread = false
local air_duck_open_nospread = false
local running_open_nosread = false
local slowwalk_open_nospread = false
local stand_open_nospread = false
local duck_open_nospread = false

local trail_points1 = {}


local time1 = 0
local trail_points = {}
local points = vector(0, 0, 0)


local alpha = 0            
local fade_in = true        
local max_alpha = 255     
local fade_speed = 1    
local fade_done = false 




function SecondsToTicks(time)
    return time * 64;
end

local Default_FreezeTime = 20; -- You can change the delay if you want
local Should_Start = false;
local Time_in_Ticks = 0;
local Last_Tick_Count = game.global_vars.tick_count;
local Spawn_Position;


local waypoints = {}

local waypoint_font = draw.font("msyh.ttf", 12, draw.font_flags.outline)


-- array containing all impacts.
local impacts = { };

-- array containing all hitmarkers.
local hitmarkers = { };

-- colors
local black = draw.color(0, 0, 0);
local accent = draw.color(248, 255, 1);
local accent1 = draw.color(180, 189, 175);
local white = draw.color(255, 255, 255);

-- hitmarker lengths.
local hitmarker_thickness = 1;
local hitmarker_length = 10;
local hitmarker_spacing = 4;
local hitmarker_lengths = {
    { -hitmarker_length, -hitmarker_length },
    {  hitmarker_length, -hitmarker_length },
    { -hitmarker_length,  hitmarker_length },
    {  hitmarker_length,  hitmarker_length }
};

--killsay
local EN_KillSay = gui.checkbox(gui.control_id('EN_KillSay'));

local CN_KillSay = gui.checkbox(gui.control_id('CN_KillSay'));
local rowA = gui.make_control('KillSay CN | OPEN [Lua API]', EN_KillSay); -- container
rowA:add(CN_KillSay);
local groupA = gui.ctx:find('visuals>local>misc');
groupA:add(rowA);




local Hit_Log = gui.checkbox(gui.control_id('Hit_Log'));

local Hurt_Log = gui.checkbox(gui.control_id('Hurt_Log'));
local rowB = gui.make_control('Hurt | Hit Log [Lua API]', Hit_Log); -- container
rowB:add(Hurt_Log);
local groupB = gui.ctx:find('misc>hud');
groupB:add(rowB);



local Crosshair_WaterMark = gui.checkbox(gui.control_id('Crosshair WaterMark'))

local Main_WaterMark = gui.checkbox(gui.control_id('Main_WaterMark'))
local Main_WaterMark2 = gui.checkbox(gui.control_id('Main_WaterMark2'))
local rowC = gui.make_control('Main_Glass  | Main_FA | Cross', Crosshair_WaterMark); -- container
rowC:add(Main_WaterMark);
rowC:add(Main_WaterMark2)

local groupC = gui.ctx:find('misc>windows');
groupC:add(rowC);



local air_auto_nospread = gui.checkbox(gui.control_id('air_auto_nospread'))
local ground_auto_nospread = gui.checkbox(gui.control_id('ground_auto_nospread'));
local rowD = gui.make_control('Ground | Air Auto Nospread', air_auto_nospread); -- container
rowD:add(ground_auto_nospread);
local groupD = gui.ctx:find('rage>aimbot>general');
groupD:add(rowD);


local trail_draw = gui.checkbox(gui.control_id('on_trail_draw'))
local snow_paw = gui.checkbox(gui.control_id('on_snow_draw'))

local make_trail = gui.make_control('Snow paw | Rainbow Trail',trail_draw);
make_trail:add(snow_paw)
local trail_draw_group = gui.ctx:find('misc>indicators')
trail_draw_group:add(make_trail)





local add_waypoint_cb   = gui.checkbox(gui.control_id("visuals>world>environment"))

local Override_Warning = gui.checkbox(gui.control_id('Override Warning'))
-- local Enable_KillSay = gui.checkbox(gui.control_id('bKillSay'))
-- local language = gui.checkbox(gui.control_id('LanugageCheckbox'))
local Lefthandknife = gui.checkbox(gui.control_id('visuals>local>misc>Lefthandknife'))
local checkbox11 = gui.checkbox(gui.control_id('world hitmark'));
local round_start_say = gui.checkbox(gui.control_id('on_round_start_say'))
local Player_status = gui.checkbox(gui.control_id('Show_Player_status'))



local WallBang  = gui.make_control("de_Mirage WallBang [Lua API]", add_waypoint_cb)
-- local bm_KillSay = gui.make_control("KillSay [Lua API]", Enable_KillSay)
-- local decideLanguage = gui.make_control('Toggle Killsay Chinese Mode[Lua API]', language)
local Warning = gui.make_control('Show Override Warning [Lua API]', Override_Warning)
local LeftHand = gui.make_control('Left Hand Knife [Lua API]', Lefthandknife)
local control = gui.make_control('World Hitmarkers [Lua API]', checkbox11);
local roundSay = gui.make_control('Round Start Say [Lua API]', round_start_say);
local status = gui.make_control('Player status [Lua API]',Player_status);


local groupA = gui.ctx:find("visuals>world>environment")
-- local b_KillSay_group = gui.ctx:find("misc>hit effects")
-- local Togglelaguage = gui.ctx:find('misc>extra')
local Override_Warning_group = gui.ctx:find('rage>anti-aim>angles')
local Left_hand_knife_group = gui.ctx:find('visuals>local>model')
local group = gui.ctx:find('misc>hit effects');
local round_start_say_group = gui.ctx:find('misc>extra')
local Player_status_group = gui.ctx:find('misc>movement')




groupA:add(WallBang)
-- b_KillSay_group:add(bm_KillSay)
-- Togglelaguage:add(decideLanguage)
Override_Warning_group:add(Warning)
Left_hand_knife_group:add(LeftHand)
group:add(control)
round_start_say_group:add(roundSay)
Player_status_group:add(status)




local notif = gui.notification('Welcome!', 'Get good Get Uranium-235',draw.textures['player_texture']);

gui.notify:add(notif);


local angles_Left = gui.ctx:find('rage>anti-aim>angles>override left');
local angles_Right = gui.ctx:find('rage>anti-aim>angles>override right');
local misc_slowwalk = gui.ctx:find('misc>movement>slowwalk')
local force_nospread = gui.ctx:find('rage>aimbot>general>nospread>settings>force')

local username = gui.ctx.user.username


local predefined_waypoints = {
    -- de_mirage
    { label = "Waypoint 1" , pos = vector(703.59, -1603.12, -262.88), map ="de_mirage"},
        { label = "Waypoint 2" , pos = vector(-1039.57, -327.51, -367.97), map ="de_mirage"},
        { label = "Waypoint 3" , pos = vector(605.47, -1718.96, -258.09), map ="de_mirage"},
        { label = "Waypoint 4" , pos = vector(-1005.98, -2480.60, -167.97), map ="de_mirage"},
        { label = "Waypoint 5" , pos = vector(576.92, -1717.41, -259.04), map ="de_mirage"},
        { label = "Waypoint 6" , pos = vector(12.23, -2093.41, -39.97), map ="de_mirage"},
        { label = "Waypoint 7" , pos = vector(509.55, -1665.90, -263.97), map ="de_mirage"},
        { label = "Waypoint 8" , pos = vector(459.30, -2343.78, -39.97), map ="de_mirage"},
        { label = "Waypoint 9" , pos = vector(444.76, -1710.55, -234.35), map ="de_mirage"},
        { label = "Waypoint 10" , pos = vector(1039.96, -1909.43, -71.97), map ="de_mirage"},
        { label = "Waypoint 11" , pos = vector(430.87, -1523.46, -227.40), map ="de_mirage"},
        { label = "Waypoint 12" , pos = vector(-675.45, -780.14, -262.05), map ="de_mirage"},
        { label = "Waypoint 13" , pos = vector(487.58, -1601.25, -255.76), map ="de_mirage"},
        { label = "Waypoint 14" , pos = vector(527.97, -534.74, -155.97), map ="de_mirage"},
        { label = "Waypoint 15" , pos = vector(-647.06, -778.04, -261.97), map ="de_mirage"},
        { label = "Waypoint 16" , pos = vector(419.38, -1522.17, -221.65), map ="de_mirage"},
        { label = "Waypoint 17" , pos = vector(-628.49, -778.79, -261.97), map ="de_mirage"},
        { label = "Waypoint 18" , pos = vector(-142.97, -1418.03, -72.18), map ="de_mirage"},
        { label = "Waypoint 19" , pos = vector(-611.44, -767.45, -261.97), map ="de_mirage"},
        { label = "Waypoint 20" , pos = vector(-297.20, -1529.68, -167.97), map ="de_mirage"},
        { label = "Waypoint 21" , pos = vector(-600.88, -739.22, -262.38), map ="de_mirage"},
        { label = "Waypoint 22" , pos = vector(-391.37, -2031.91, -179.97), map ="de_mirage"},
        { label = "Waypoint 23" , pos = vector(-152.51, -934.70, -167.55), map ="de_mirage"},
        { label = "Waypoint 24" , pos = vector(-704.82, -814.35, -263.97), map ="de_mirage"},
        { label = "Waypoint 25" , pos = vector(-710.23, -812.21, -263.97), map ="de_mirage"},
        { label = "Waypoint 26" , pos = vector(-1374.63, -987.34, -167.97), map ="de_mirage"},
        { label = "Waypoint 27" , pos = vector(-999.98, -307.89, -367.97), map ="de_mirage"},
        { label = "Waypoint 28" , pos = vector(684.14, -1625.90, -262.55), map ="de_mirage"},
        { label = "Waypoint 29" , pos = vector(-1070.30, -2468.48, -167.97), map ="de_mirage"},
        { label = "Waypoint 30" , pos = vector(691.76, -1642.52, -258.56), map ="de_mirage"},
        { label = "Waypoint 31" , pos = vector(-1711.97, -1023.42, -203.92), map ="de_mirage"},
        { label = "Waypoint 32" , pos = vector(11.61, -607.98, -189.97), map ="de_mirage"},
        { label = "Waypoint 33" , pos = vector(-1671.04, 564.31, -167.97), map ="de_mirage"},
        { label = "Waypoint 34" , pos = vector(-1133.83, -786.66, -167.97), map ="de_mirage"},
        { label = "Waypoint 35" , pos = vector(-1567.95, 526.26, -167.97), map ="de_mirage"},
        { label = "Waypoint 36" , pos = vector(-1567.95, 526.26, -167.97), map ="de_mirage"},
        { label = "Waypoint 37" , pos = vector(-1054.21, 731.78, -79.97), map ="de_mirage"},
        { label = "Waypoint 38" , pos = vector(-1571.11, 525.77, -167.97), map ="de_mirage"},
        { label = "Waypoint 39" , pos = vector(-1449.30, 252.92, -166.97), map ="de_mirage"},
        { label = "Waypoint 40" , pos = vector(-1504.24, 750.58, -47.97), map ="de_mirage"},
        { label = "Waypoint 41" , pos = vector(-1633.51, 115.84, -168.39), map ="de_mirage"},
        { label = "Waypoint 42" , pos = vector(-752.04, -61.73, -161.07), map ="de_mirage"},
        { label = "Waypoint 43" , pos = vector(20.35, -2122.48, -39.97), map ="de_mirage"},
        { label = "Waypoint 44" , pos = vector(667.86, -1601.04, -263.97), map ="de_mirage"},
        { label = "Waypoint 45" , pos = vector(151.97, -2071.96, -39.97), map ="de_mirage"},
        { label = "Waypoint 46" , pos = vector(208.15, -1437.61, -175.97), map ="de_mirage"},
        { label = "Waypoint 47" , pos = vector(15.97, -1740.47, -167.97), map ="de_mirage"},
        { label = "Waypoint 48" , pos = vector(947.48, -2273.43, -39.97), map ="de_mirage"},
        { label = "Waypoint 49" , pos = vector(-129.66, -2412.97, -163.97), map ="de_mirage"},
        { label = "Waypoint 50" , pos = vector(468.79, -2337.59, -39.97), map ="de_mirage"},
        { label = "Waypoint 51" , pos = vector(735.97, -2390.94, 10.63), map ="de_mirage"},
        { label = "Waypoint 52" , pos = vector(-282.84, -2399.04, -163.97), map ="de_mirage"},
        { label = "Waypoint 53" , pos = vector(1179.10, -1479.96, -167.97), map ="de_mirage"},
        { label = "Waypoint 54" , pos = vector(878.89, -2009.50, -71.97), map ="de_mirage"},
        { label = "Waypoint 55" , pos = vector(-552.23, -1310.53, -163.97), map ="de_mirage"},
        { label = "Waypoint 56" , pos = vector(-453.46, -1798.52, -175.77), map ="de_mirage"},
        { label = "Waypoint 57" , pos = vector(-1504.52, -1420.02, -259.97), map ="de_mirage"},
        { label = "Waypoint 58" , pos = vector(-327.19, -2037.79, -175.18), map ="de_mirage"},
        { label = "Waypoint 59" , pos = vector(-1525.03, -1474.21, -259.97), map ="de_mirage"},
        { label = "Waypoint 60" , pos = vector(-494.80, -702.30, -267.72), map ="de_mirage"},
        { label = "Waypoint 61" , pos = vector(-1504.39, -1440.34, -259.97), map ="de_mirage"},
        { label = "Waypoint 62" , pos = vector(-1156.04, -1248.18, -167.97), map ="de_mirage"},
        { label = "Waypoint 63" , pos = vector(-1556.84, -950.87, -191.93), map ="de_mirage"},
        { label = "Waypoint 64" , pos = vector(-1041.40, -300.32, -367.97), map ="de_mirage"},
        { label = "Waypoint 65" , pos = vector(-1041.40, -300.32, -367.97), map ="de_mirage"},
        { label = "Waypoint 66" , pos = vector(-1572.53, -1607.21, -263.62), map ="de_mirage"},
        { label = "Waypoint 67" , pos = vector(-1961.60, -472.47, -167.97), map ="de_mirage"},
        { label = "Waypoint 68" , pos = vector(-1006.52, -321.76, -367.97), map ="de_mirage"},
        { label = "Waypoint 70" , pos = vector(-436.49, 662.30, -79.64), map ="de_mirage"},
        { label = "Waypoint 71" , pos = vector(-1073.82, 297.22, -159.97), map ="de_mirage"},
        { label = "Waypoint 72" , pos = vector(-1012.98, 546.72, -79.97), map ="de_mirage"},
        { label = "Waypoint 73" , pos = vector(-1839.26, 241.86, -162.15), map ="de_mirage"},
        { label = "Waypoint 74" , pos = vector(-982.12, 327.82, -367.97), map ="de_mirage"},
        { label = "Waypoint 75" , pos = vector(-913.93, 112.04, -170.46), map ="de_mirage"},
        { label = "Waypoint 76" , pos = vector(-1011.93, -163.11, -348.30), map ="de_mirage"},
        { label = "Waypoint 77" , pos = vector(-2004.44, 682.37, -46.56), map ="de_mirage"},
        { label = "Waypoint 78" , pos = vector(-1044.00, -333.05, -357.70), map ="de_mirage"},
        { label = "Waypoint 79" , pos = vector(-1038.34, 360.31, -367.97), map ="de_mirage"},
        { label = "Waypoint 80" , pos = vector(-1932.83, -356.13, -167.97), map ="de_mirage"},
        { label = "Waypoint 81" , pos = vector(-969.88, -378.17, -346.88), map ="de_mirage"},
        { label = "Waypoint 82" , pos = vector(187.10, 841.37, -135.97), map ="de_mirage"},
        { label = "Waypoint 83" , pos = vector(-1017.47, -456.40, -307.77), map ="de_mirage"},
        { label = "Waypoint 84" , pos = vector(-969.66, 240.66, -171.39), map ="de_mirage"},
        { label = "Waypoint 85" , pos = vector(-710.95, -821.33, -263.97), map ="de_mirage"},
        { label = "Waypoint 86" , pos = vector(-1255.57, -1440.03, -158.01), map ="de_mirage"},
        { label = "Waypoint 87" , pos = vector(-1093.68, -653.70, -89.13), map ="de_mirage"},
        { label = "Waypoint 88" , pos = vector(-1842.44, 697.21, 15.87), map ="de_mirage"},

    -- de_else: idk, vá adicionando

}


local messagesENG = {
    "【Uranium-235】I'd tell you to shoot yourself, but I bet you'll miss.",
    
    "【Uranium-235】You should let your chair play, at least it knows how to support.",
    
    "【Uranium-235】The only thing lower than your k/d ratio is your I.Q.",
    
    "【Uranium-235】Did you know sharks only kill 5 people each year? Looks like you got some competition.",
    
    "【Uranium-235】My knife is well-worn, just like your mother.",
    
    "【Uranium-235】Get the bomb, at least you will carry something this game.",
    
    "【Uranium-235】Options -> How To Play",
    
    "【Uranium-235】My dead dad has better aim than you, it only took him one bullet.",
    
    "【Uranium-235】Some babies were dropped on their heads but you were clearly thrown at a wall.",
    
    "【Uranium-235】Internet Explorer is faster than your reactions.",
    
    "【Uranium-235】I'm surprised you've got the brain power to keep your heart beating.",
    
    "【Uranium-235】You're about as useful as pedals on a wheelchair.",
    
    "【Uranium-235】You define autism.",
    
    "【Uranium-235】The only thing you carry is an extra chromosome.",
    
    "【Uranium-235】You don't deserve to play this game. Go back to playing with crayons and shitting yourself.",
    
    "【Uranium-235】Yo mama so fat when she plays Overpass, you can shoot her on Mirage.",
    
    "【Uranium-235】The only thing you can throw are rounds.",
    
    "【Uranium-235】I'm not trash talking, I'm talking to trash.",
    
    "【Uranium-235】If you were a CSGO match, your mother would have a 7-day cooldown all the time, because she kept abandoning you.",
    
    "【Uranium-235】Choose your excuse: 1.Lags | 2.New mouse | 3.Low FPS | 4.Low team | 5.Hacker | 6.Lucker | 7.Smurf | 8.Hitbox | 9.Tickrate.",
    
    "【Uranium-235】Your family tree must be a circle.",
    
    "【Uranium-235】Everyone who loves you is wrong.",
    
    "【Uranium-235】LISTEN HERE YOU LITTLE FUCKER, WHEN I WAS YOUR AGE, PLUTO WAS A PLANET!",
    
    "【Uranium-235】Oops, I must have chosen easy bots by accident...",
    
    "【Uranium-235】I thought I put bots on hard, why are they on easy?",
    
    "【Uranium-235】Is your monitor on?",
    
    "【Uranium-235】Don't be a loser, buy a rope and hang yourself.",
    
    "【Uranium-235】If I were to commit suicide, I would jump from your ego to your elo.",
    
    "【Uranium-235】Do you feel special? Please try suicide again... Hopefully you will be successful this time.",
    
    "【Uranium-235】I'm not trash talking, I'm talking to trash.",
    
    "【Uranium-235】Sell your computer and buy a Wii.",
    
    "【Uranium-235】Idk if u know but it's mouse1 to shoot.",
    
    "【Uranium-235】How did you change your difficulty settings? My CS:GO is stuck on easy.",
    
    "【Uranium-235】You are the reason why people say the csgo community sucks.",
    
    "【Uranium-235】The only thing lower than your k/d ratio is your I.Q.",
    
    "【Uranium-235】Your aim is so poor that people held a fundraiser for it.",
    
    "【Uranium-235】Better buy PC, stop playing at school library.",
    
    "【Uranium-235】The only thing more unreliable than you is the condom your dad used.",
    
    "【Uranium-235】Calling you a retard is a compliment in comparison to how stupid you actually are.",
    
    "【Uranium-235】I didn't know dying was a special ability.",
    
    "【Uranium-235】If I jumped from your ego to your intelligence, I'd die of starvation half-way down.",
    
    "【Uranium-235】Studies show that aiming gives you better chances of hitting your target.",
    
    "【Uranium-235】You should let your chair play, at least it knows how to support.",
    
    "【Uranium-235】There are about 37 trillion cells working together in your body right now, and you are disappointing every single one of them.",
    
    "【Uranium-235】I'd call you a tool, but that would imply you were useful in at least one way.",
    
    "【Uranium-235】You're the human equivalent of a participation award.",
    
    "【Uranium-235】I'd love to see things from your perspective, but I don't think I could shove my head that far up my ass.",
    
    "【Uranium-235】I'm not trash talking, I'm talking to trash.",
    
    "【Uranium-235】Legend has it that the number 0 was first invented after scientists calculated your chance of doing something useful.",
    
    "【Uranium-235】You're the type of player to get 3rd place in a 1v1 match.",
    
    "【Uranium-235】I'm not saying I hate you, but I would unplug your life support to charge my phone.",
    
    "【Uranium-235】You're an inspiration for birth control.",
    
    "【Uranium-235】Does your ass ever get jealous of the amount of shit that comes out of your mouth.",
    
    "【Uranium-235】You should turn the game off. Just walk outside and find the nearest tree, then apologize to it for wasting so much oxygen.",
    
    "【Uranium-235】I'd tell you to shoot yourself, but I bet you'll miss.",
    
    "【Uranium-235】Did you know sharks only kill 5 people each year? Looks like you got some competition.",
    
    "【Uranium-235】Some babies were dropped on their heads but you were clearly thrown at a wall.",
    
    "【Uranium-235】To which foundation do I need to donate to help you?",
    
    "【Uranium-235】I'm sure your body pillow is very proud of you.",
    
    "【Uranium-235】Two wrongs don't make a right, take your parents as an example.",
    
    "【Uranium-235】I bet the last time you felt a breast was in a KFC bucket.",
    
    "【Uranium-235】Maybe God made you a bit too special.",
    
    "【Uranium-235】I bet your brain feels as good as new, seeing that you never use it.",
    
    "【Uranium-235】You have some big balls on you. Too bad they belong to the guy fucking you from behind.",
    
    "【Uranium-235】If only you could hit an enemy as much as your dad hits you.",
    
    "【Uranium-235】I'm surprised that you were able to hit the Install button.",
    
    "【Uranium-235】Some people get paid to suck, you do it for free.",
    
    "【Uranium-235】I would ask you how old you are but I know you can't count that high.",
    
    "【Uranium-235】I'm okay with this team. I work in the city as a garbage collector. I'm used to carrying trash.",
    
    "【Uranium-235】You're as dense as a brick, but honestly a less useful one.",
    }
    
    local messagesRU = {
        "【Uranium-235】你的aa比薯片脆",
        "【Uranium-235】实在不行你去买个模型吧",
        "【Uranium-235】你的脑子只适合玩原神?",
        "【Uranium-235】滚去玩王者荣耀吧窝囊废",
        "【Uranium-235】你是没有手吗?",
        "【Uranium-235】你的脑容量比你参群人数还少",
        "【Uranium-235】银行卡密码都被我骗出来了",
        "【Uranium-235】农村人滚回去种地",
        "【Uranium-235】你怎么一骗就出了孩子",
        "【Uranium-235】你在屏幕前红温的样子被我记录下来了",
        "【Uranium-235】我杀你只需要一根手指",
        "【Uranium-235】ez",
        "【Uranium-235】这就死了吗...我都还没开始发力",
        "【Uranium-235】我没想到你参数这么垃圾...",
        "【Uranium-235】杀你只需要一根手指",
        "【Uranium-235】1",
        "【Uranium-235】1，你怎么这么菜...",
        "【Uranium-235】你在用awc么废物?",
        "【Uranium-235】easy xD",
        "【Uranium-235】1,别急",
        "【Uranium-235】农民你被你爹1了，滚去买个好点的参数吧",
        "【Uranium-235】你也被脑控了吗",
        "【Uranium-235】被哥哥蒙在鼓里有什么意思呢，蒙在被子里才有趣。",
        "【Uranium-235】我喜欢你脸红红的样子，更喜欢你气喘吁吁的样子。",
        "【Uranium-235】我们浪漫点好不好 怎么浪漫点？ 我慢点，你浪点。",
        "【Uranium-235】我希望压得我喘不过气的不是生活，而是你。",
        "【Uranium-235】我有71种温柔，洗衣做饭和69。",
        "【Uranium-235】如果插一晚上不拔出来会怎么样。",
        "【Uranium-235】日久不一定生情，但情深一定要日久。",
        "【Uranium-235】初次见面就喜欢你，日久以后更爱上你。​​​",
        "【Uranium-235】你饿不饿，要不要我下面给你吃。",
        "【Uranium-235】清晨射在脸上的不一定是阳光。",
        "【Uranium-235】我最喜欢看见的是你在我身下仰头娇喘的样子。",
        "【Uranium-235】我什么都干不好，除了你。",
        "【Uranium-235】玫瑰是我偷的，情书是我抄的，但我想干你是真的。",
        "【Uranium-235】你笑起来很甜，尝起来很咸。",
        "【Uranium-235】我心里装的怀里抱的身下压的都是你。",
        "【Uranium-235】你喜不喜欢浪漫，当然是我浪点，你慢点啊。"
    }
    
      
    local function get_abs_fps()
        frame_rate = 0.9 * frame_rate + (1.0 - 0.9) * game.global_vars.frame_time
        return math.floor((1.0 / frame_rate) + 0.5)
    end
    

    -- 定义一个函数来计算两个 vec3 的距离
   local function calculate_distance(vec1, vec2)
     local dx = vec2.x - vec1.x
     local dy = vec2.y - vec1.y
     local dz = vec2.z - vec1.z
     return math.sqrt(dx * dx + dy * dy + dz * dz)
   end


   local function rotate_vector(vectors, angle)
    local cos_angle = math.cos(angle)
    local sin_angle = math.sin(angle)
    return vector(
        vectors.x * cos_angle - vectors.y * sin_angle,
        vectors.x * sin_angle + vectors.y * cos_angle,
        vectors.z
    )

local function precompute_sin_cos(angle)
    return math.cos(angle), math.sin(angle)
end

local function draw_complex_snowflake(center_3d, size)
    local d = draw.surface
    local center_2d = math.world_to_screen(center_3d)
    if not center_2d then return end

    local branches = 6 -- 雪花主枝数量
    local cos_cache = {}
    local sin_cache = {}

    -- 将雪花的每个枝干的角度提前计算好并缓存
    for i = 0, branches - 1 do
        local angle = (i / branches) * math.pi * 2
        -- 缓存计算结果
        if not cos_cache[angle] then
            cos_cache[angle], sin_cache[angle] = precompute_sin_cos(angle)
        end

        local branch_end_x = cos_cache[angle] * size
        local branch_end_y = sin_cache[angle] * size

        local branch_end_3d = vector(
            center_3d.x + branch_end_x,
            center_3d.y + branch_end_y,
            center_3d.z
        )
        local branch_end_2d = math.world_to_screen(branch_end_3d)

        if branch_end_2d then
            -- 主枝：渐变从白色到柔和的蓝色
            d:add_line_multicolor(
                draw.vec2(center_2d.x, center_2d.y),
                draw.vec2(branch_end_2d.x, branch_end_2d.y),
                draw.color(255, 255, 255),    -- 起始颜色：白色
                draw.color(90, 150, 255),    -- 结束颜色：柔和的蓝色
                3.0
            )

            -- 每个主枝的分枝：渐变从白色到柔和的蓝色
            for j = 1, 2 do
                local sub_angle = angle + (j * 0.3) * (-1) ^ j -- 左右分枝
                if not cos_cache[sub_angle] then
                    cos_cache[sub_angle], sin_cache[sub_angle] = precompute_sin_cos(sub_angle)
                end

                local sub_branch_x = cos_cache[sub_angle] * (size * 0.5)
                local sub_branch_y = sin_cache[sub_angle] * (size * 0.5)

                local sub_branch_3d = vector(
                    branch_end_3d.x + sub_branch_x,
                    branch_end_3d.y + sub_branch_y,
                    branch_end_3d.z
                )
                local sub_branch_2d = math.world_to_screen(sub_branch_3d)

                if sub_branch_2d then
                    d:add_line_multicolor(
                        draw.vec2(branch_end_2d.x, branch_end_2d.y),
                        draw.vec2(sub_branch_2d.x, sub_branch_2d.y),
                        draw.color(255, 255, 255),    -- 起始颜色：白色
                        draw.color(90, 150, 255),    -- 结束颜色：柔和的蓝色
                        2.3
                    )
                end
            end
        end
    end
end



local function draw_paw(ground_pos, size, rotation_angle)
    draw_complex_snowflake(ground_pos, size)

    local paw_offsets = {
        vector(-size * 0.6, -size * 0.65, 0),
        vector(0, -size * 0.9, 0),
        vector(size * 0.6, -size * 0.65, 0),
        vector(-size * 0.45, size * 0.25, 0),
        vector(size * 0.45, size * 0.25, 0)
    }

    for _, offset in ipairs(paw_offsets) do
        local rotated_offset = rotate_vector(offset, rotation_angle)
        local paw_center_3d = vector(
            ground_pos.x + rotated_offset.x,
            ground_pos.y + rotated_offset.y,
            ground_pos.z
        )
        draw_complex_snowflake(paw_center_3d, size * 0.5)
    end
end
                    
local function start_on_present_queue()
    if fade_done then
        return 
    end

    local d = draw.surface
    d.font = draw.fonts['gui_title']
    local engine = game.engine

    local screen_width, screen_height = engine:get_screen_size()

    local image_size = 250

    local center_x = screen_width / 2
    local center_y = screen_height / 2 - 70 

    local top_left = draw.vec2(center_x - image_size / 2, center_y - image_size / 2)
    local top_right = draw.vec2(center_x + image_size / 2, center_y - image_size / 2)
    local bottom_right = draw.vec2(center_x + image_size / 2, center_y + image_size / 2)
    local bottom_left = draw.vec2(center_x - image_size / 2, center_y + image_size / 2)

    local texture = draw.textures["player_texture"]

    local g = d.g


    d:add_rect_filled(draw.rect(0, 0, screen_width, screen_height), draw.color(0, 0, 0,185));

    d:add_text(draw.vec2(screen_width / 2 - 59, screen_height / 2 + 109), 'Uranium - 235', draw.color(255, 0, 0,alpha));
    d:add_text(draw.vec2(screen_width / 2 - 57, screen_height / 2 + 111), 'Uranium - 235', draw.color(0, 0, 255,alpha));
    d:add_text(draw.vec2(screen_width / 2 - 58, screen_height / 2 + 110), 'Uranium - 235', draw.color(255, 255, 255,alpha));




    g:set_texture(texture)
    g.mode = draw.render_mode.normal 

    if fade_in then
        alpha = alpha + fade_speed
        if alpha >= max_alpha then
            alpha = max_alpha
            fade_in = false  
        end
    else
        alpha = alpha - fade_speed
        if alpha <= 0 then
            alpha = 0
            fade_done = true  
        end
    end



    d:add_quad_filled(
        top_left, top_right,
        bottom_right, bottom_left,
        draw.color(255, 255, 255, alpha)
    )
end






    
    local function on_world_hitmark()
        -- instance of d.
        local d = draw.surface
    
        -- set d font.
        d.font = draw.fonts['gui_title']
    
        -- instance of command.
        local command = d.g
    
        -- enable d anti-aliasing.
        command.anti_alias = true
    
        -- handle impacts.
        for i = 1, #impacts do
            local impact = impacts[i]
    
            -- ensure impact is not null.
            if impact ~= nil then
                impact.time = impact.time - game.global_vars.frame_time
    
                -- impact expired, remove it.
                if impact.time <= 0 then
                    table.remove(impacts, i)
                end
            end
        end
    
        -- handle hitmarkers.
        for i = 1, #hitmarkers do
            local hitmarker = hitmarkers[i]
    
            -- ensure hitmarker is not null.
            if hitmarker ~= nil then
                hitmarker.progress = math.clamp(hitmarker.progress + game.global_vars.frame_time, 0.0, 1.0)
    
                -- the damage has been fully shown, start fading out the hitmarker.
                if hitmarker.progress >= 1.0 then
                    hitmarker.opacity = hitmarker.opacity - (game.global_vars.frame_time * 2.0)
    
                    -- hitmarker fully faded out, remove it.
                    if hitmarker.opacity <= 0.0 then
                        table.remove(hitmarkers, i)
                        goto continue
                    end
                end
    
                -- convert hitmarker world position to screen position.
                local screen = math.world_to_screen(hitmarker.position)
    
                -- text alignment.
                local alignment = draw.text_params.with_h(draw.text_alignment.center)
    
                -- text content & text offset.
                local content = string.format('%.0f', hitmarker.damage * hitmarker.progress)
                local offset = 25
    
                -- render text (shadow).
                local shadow_color = black:a(hitmarker.opacity)
                d:add_text(math.vec2(screen.x + hitmarker.random_offset_x + 1, screen.y + hitmarker.random_offset_y + 1), content, shadow_color, alignment)
    
                -- render text.
                local text_color

                if hitmarker.damage >= 100 or hitmarker.Remaining == 0 then
                    text_color = accent:a(hitmarker.opacity)
                else
                    text_color = accent1:a(hitmarker.opacity)
                end

                d:add_text(math.vec2(screen.x + hitmarker.random_offset_x, screen.y + hitmarker.random_offset_y), content, text_color, alignment)

    
             local hitmarker_color = white:a(hitmarker.opacity)
                for _, length in ipairs(hitmarker_lengths) do
                    local start_pos = math.vec2(screen.x + length[1], screen.y + length[2])
                    local end_pos = math.vec2(
                        screen.x + length[1] + (length[1] > 0 and -hitmarker_spacing or hitmarker_spacing),
                        screen.y + length[2] + (length[2] > 0 and -hitmarker_spacing or hitmarker_spacing)
                    )
                    d:add_line(start_pos, end_pos, hitmarker_color, hitmarker_thickness)
                end
            end
    
            ::continue::
        end
    end
    

  
    
    local hsv_to_rgb = function(b,c,d,e)local f,g,h;local i=math.floor(b*6)local j=b*6-i;local k=d*(1-c)local l=d*(1-j*c)local m=d*(1-(1-j)*c)i=i%6;if i==0 then f,g,h=d,m,k elseif i==1 then f,g,h=l,d,k elseif i==2 then f,g,h=k,d,m elseif i==3 then f,g,h=k,l,d elseif i==4 then f,g,h=m,k,d elseif i==5 then f,g,h=d,k,l end;return f*255,g*255,h*255,e*255 end
 


    local get_bar_color = function()
        local r, g, b, a = 255, 0, 0, 255
    
        
        local palette = 100
        local rgb_split_ratio = 0.9
    

        local h = game.global_vars.real_time * (20 / 100)
    
        r, g, b = hsv_to_rgb(h % 1, 1, 1, 1)
    
        r, g, b = 
            math.min(r * rgb_split_ratio, 255),
            math.min(g * rgb_split_ratio, 255), 
            math.min(b * rgb_split_ratio, 255)
    
        return r, g, b, a
    end
    


    local function get_line_color(index, total_points)
        local h = (index / total_points) + (game.global_vars.real_time * 0.1) % 1
        return hsv_to_rgb(h, 1, 1, 1)
    end


    local prev_lp_pos = nil 

    local function on_present_queue()
        local w, h = game.engine:get_screen_size()
        local d = draw.surface
        d.font = draw.fonts['gui_semi_bold']
    
        local cur_time = game.global_vars.cur_time
        local cur_time_int = math.floor(cur_time)
        local lp
        local ip_ads

        if game.engine:in_game() then
            lp = entities.get_local_pawn()

            if not lp then
                return
            end
        

            local lp_pos = lp:get_abs_origin()
        
            if not prev_lp_pos then
                prev_lp_pos = lp_pos
            end
        
            local dx = lp_pos.x - prev_lp_pos.x
            local dy = lp_pos.y - prev_lp_pos.y
            local dz = lp_pos.z - prev_lp_pos.z
        
            local distance = math.sqrt(dx * dx + dy * dy + dz * dz)
            speed = distance / game.global_vars.frame_time
        
      
            speed = math.floor(speed)
        
            prev_lp_pos = lp_pos
    
        end


    
        if cur_time_int > last_output_time then
            local minutes = math.floor(cur_time_int / 60)
            last_output_time = cur_time_int
        end


        if game.engine:in_game() == false then
            nospread_seed = 0
            Team_general_dmg = 0
            Team_kill = 0
        end

        local chan = game.engine:get_netchan();
        if chan and not chan:is_null() then
            ip_ads = chan:get_address()
        else
            ip_ads = "Local Server"
        end

        if Main_WaterMark:get_value():get() then
            Main_WaterMark2:set_value(false)
        end
    
        if Main_WaterMark2:get_value():get() then
            Main_WaterMark:set_value(false)
        end


        if Crosshair_WaterMark:get_value():get() and game.engine:in_game() then
            local text = "^Uranium - 235^"

            for i = 1, #text do
                local hue = (i / #text) * 360
                local r = math.sin(hue / 360 * 2 * math.pi) * 0.5 + 0.5
                local g = math.sin((hue / 360 + 0.33) * 2 * math.pi) * 0.5 + 0.5
                local b = math.sin((hue / 360 + 0.66) * 2 * math.pi) * 0.5 + 0.5
                local color = draw.color(math.floor(r*255), math.floor(g * 255), math.floor(b * 255), 255)
                local spacing = 11
                if text:sub(i, i) == "U" then
                    spacing = 10
                end
    
                d:add_text(draw.vec2(w / 2 - 72 + (i - 1) * spacing, h / 2 + 38), text:sub(i, i), color)
            end
        end

        local leftcolor
        local rightcolor
    
        if Override_Warning:get_value():get() and game.engine:in_game() then

            if angles_Left:get_value():get() then
                leftcolor = draw.color(0, 255, 255)
            else
                leftcolor = draw.color(255, 255, 255)
            end

            if angles_Right:get_value():get() then
                rightcolor = draw.color(0, 255, 255)
            else
                rightcolor = draw.color(255, 255, 255)
            end

            d:add_triangle_filled(
                draw.vec2(w / 2 - 60, h/2 + 15), draw.vec2(w / 2 - 80, h/2 + 5),
                draw.vec2(w / 2 - 60, h/2 - 5), leftcolor
            )
    
            d:add_triangle_filled(
                draw.vec2(w / 2 + 60, h/2 + 15), draw.vec2(w / 2 + 80, h/2 + 5),
                draw.vec2(w / 2 + 60, h/2 - 5), rightcolor
            )
        end
    
        if Main_WaterMark2:get_value():get() and game.engine:in_game() then
            lp = entities.get_local_pawn()
        
            local chan = game.engine:get_netchan()
            local lp_ping_ms
            if chan and not chan:is_null() then
                local lp_ping = chan:get_latency()
                -- 四舍五入
                lp_ping_ms = math.floor(lp_ping * 1000 + 0.5)
            end
            local cur_time = game.global_vars.cur_time
            local cur_time_int = math.floor(cur_time)
            local minutes = math.floor(cur_time_int / 60)
        
            local WaterMark_Text = "FATALITY | " .. username .. " | Matching: " .. minutes .. " min | " ..game.global_vars.map_name .. " | IP: "..ip_ads.." | ".. tostring(lp_ping_ms) .. " ms | " .. get_abs_fps() .. " FPS | " .. speed .. " Speed"
        
            -- 获取屏幕宽度和高度
            local screen_width, screen_height = game.engine:get_screen_size()
        
            -- 估算文本宽度和高度
            local text_width = #WaterMark_Text * 6.5 -- 假设每字符宽度为 
            local text_height = 14 -- 假设字体高度为 14
        
            -- 设置背景和其他元素的位置和大小
            local padding = 10
            local margin_top = 5
            local margin_left = screen_width - text_width - (2 * padding) - 10
        
            local rect_x = margin_left
            local rect_y = margin_top
            local rect_width = text_width + (2 * padding)
            local rect_height = text_height + (2 * padding)
        
            local custom_color = draw.color(255, 255, 255)
            local r, g, b, a = get_bar_color()
        
            -- 背景矩形
            d:add_rect_filled(
                draw.rect(rect_x, rect_y, rect_x + rect_width, rect_y + rect_height),
                draw.color(0, 0, 0, 100)
            )
        
            -- 渐变灯带
            d:add_rect_filled_multicolor(
                draw.rect(rect_x, rect_y + rect_height - 5, rect_x + rect_width, rect_y + rect_height), {
                    draw.color(math.floor(r), math.floor(g), math.floor(b)),
                    draw.color(math.floor(r * 0.97), math.floor(g * 0.97), math.floor(b * 0.97)),
                    draw.color(math.floor(r * 0.94), math.floor(g * 0.94), math.floor(b * 0.94)),
                    draw.color(math.floor(r * 0.91), math.floor(g * 0.91), math.floor(b * 0.91)),
                }
            )
        
            -- 发光效果
            d:add_glow(
                draw.rect(rect_x, rect_y, rect_x + rect_width, rect_y + rect_height),
                4,
                draw.color(0, 0, 0)
            )
        
            -- 文本
            d:add_text(
                draw.vec2(rect_x + padding, rect_y + padding),
                WaterMark_Text,
                custom_color
            )
        end


        if Main_WaterMark:get_value():get() and game.engine:in_game() then
            
            lp = entities.get_local_pawn()


            local chan = game.engine:get_netchan()
            local lp_ping_ms
            if chan and not chan:is_null() then
                local lp_ping = chan:get_latency()
                -- 四舍五入
                lp_ping_ms = math.floor(lp_ping * 1000 + 0.5)
            end
            local cur_time = game.global_vars.cur_time
            local cur_time_int = math.floor(cur_time)
            local minutes = math.floor(cur_time_int / 60)

            local WaterMark_Text = "FATALITY | " .. username .. " | Matching: " .. minutes .. " min | " .. tostring(lp_ping_ms) .. " ms | " .. get_abs_fps() .. " FPS | " .. speed .. " Speed"
    
            -- 假设的字体和文本尺寸
            local char_width = 6.5 -- 假设每个字符宽度为 6.5 像素
            local font_height = 14 -- 假设字体高度为 14 像素
            local text_width = #WaterMark_Text * char_width
            local text_height = font_height
    
            -- 计算文本起始位置
            local text_x = w - text_width - 80 -- 起始x位置
            local text_y = 30 -- 起始y位置
            local text_y_min = text_y + text_height + 20 -- 最低位置y
    
            -- 文本末尾的x位置
            local text_x_end = text_x + text_width
    
            local r, g, b, a = get_bar_color()
    
            --阴影矩形
             d:add_shadow_rect(
                 draw.rect(text_x - 30, text_y - 15, text_x_end + 30, text_y_min- 10), 6, true, 0.25);
    
            -- 背景矩形的坐标和尺寸
            d:add_rect_filled_rounded(
                draw.rect(text_x - 31, text_y - 16, text_x_end + 31, text_y_min - 9),
                draw.color(100, 75, 95),
                4,
                draw.rounding.all
            )
    
            -- 渐变矩形
            d:add_rect_filled_rounded_multicolor(
                draw.rect(text_x - 30, text_y - 15, text_x_end + 30, text_y_min- 10), {
                    draw.color(33, 24, 46),
                    draw.color(62, 35, 50),
                    draw.color(62, 35, 50),
                    draw.color(33, 24, 46)
                },
                4,
                draw.rounding.all
            )
    
            -- 渐变灯带
            d:add_rect_filled_multicolor(
                draw.rect(text_x - 27, text_y_min - 11, text_x_end + 27, text_y_min - 9), {
                    draw.color(math.floor(r), math.floor(g), math.floor(b)),
                    draw.color(math.floor(r * 0.97), math.floor(g * 0.97), math.floor(b * 0.97)),
                    draw.color(math.floor(r * 0.94), math.floor(g * 0.94), math.floor(b * 0.94)),
                    draw.color(math.floor(r * 0.91), math.floor(g * 0.91), math.floor(b * 0.91)),
                }
            )
    
    
    
            -- 文本居中绘制
            d:add_text(
                draw.vec2(text_x, text_y),
                WaterMark_Text,
                draw.color(255, 255, 255)
            )

        end

        if snow_paw:get_value():get() and game.engine:in_game() then
            local local_player = entities.get_local_pawn()
            if not local_player then return end
        
            local d = draw.surface
            local ground_pos = local_player:get_abs_origin()
            local size = 3 -- 雪花大小
            local max_trail_points = 6 -- 最大脚印数量
        
            if game.global_vars.real_time - time1 >= 0.2 and
               bit.band(local_player.m_fFlags:get(), bit.lshift(1, 0)) == 1 then
                time1 = game.global_vars.real_time
                if ground_pos:dist_sqr(points) > 30 then
                    points = ground_pos
                    if #trail_points >= max_trail_points then
                        table.remove(trail_points, 1)
                    end
                    table.insert(trail_points, ground_pos)
                end
            end
        
            -- 批量绘制多个路径点
            for i = 1, #trail_points - 1 do
                local world_point1 = trail_points[i]
                local world_point2 = trail_points[i + 1]
        
                local screen_pos1 = math.world_to_screen(world_point1)
                local screen_pos2 = math.world_to_screen(world_point2)
        
                if screen_pos1 and screen_pos2 then
                    local direction = vector(
                        world_point2.x - world_point1.x,
                        world_point2.y - world_point1.y,
                        0
                    )
                    local rotation_angle = math.atan2(direction.y, direction.x)
                    draw_paw(world_point2, size, rotation_angle)
                end
            end
        end


        



        
        if Player_status:get_value():get() and game.engine:in_game() then

            if speed ~= 0 and misc_slowwalk:get_value():get() == false and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                d:add_text(draw.vec2(w / 2 - 21, h / 2 + 19), "Running", black)
                d:add_text(draw.vec2(w / 2 - 22, h / 2 + 18), "Running", draw.color(255, 255, 255))
            end

            if misc_slowwalk:get_value():get() and  speed ~= 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                d:add_text(draw.vec2(w / 2 - 24, h / 2 + 19), "Slow Walk", black)
                d:add_text(draw.vec2(w / 2 - 25, h / 2 + 18), "Slow Walk", draw.color(255, 255, 255))
            end
        

            if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                d:add_text(draw.vec2(w / 2 - 17, h / 2 + 19), "In AIR", black)
                d:add_text(draw.vec2(w / 2 - 18, h / 2 + 18), "In AIR", draw.color(255, 255, 255))
            end
            
            if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ~= 0 then
                d:add_text(draw.vec2(w / 2 - 24, h / 2 + 19), "AIR-Duck", black)
                d:add_text(draw.vec2(w / 2 - 25, h / 2 + 18), "AIR-Duck", draw.color(255, 255, 255))
            end

    
            if speed == 0  and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                d:add_text(draw.vec2(w / 2 - 17, h / 2 + 19), "Stand", black)
                d:add_text(draw.vec2(w / 2 - 18, h / 2 + 18), "Stand", draw.color(255, 255, 255))
            end


            if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ~= 0 then
                d:add_text(draw.vec2(w / 2 - 14, h / 2 + 19), "Duck", black)
                d:add_text(draw.vec2(w / 2 - 15, h / 2 + 18), "Duck", draw.color(255, 255, 255))
            end

        end






        if game.engine:in_game() and air_auto_nospread:get_value():get() or ground_auto_nospread:get_value():get() then

            if not lp then
                return
            end


            if speed ~= 0 and misc_slowwalk:get_value():get() == false and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 
            and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 
            and ground_auto_nospread:get_value():get() then
                if lp.m_bIsScoped:get() == true and speed <= 80 and lp:get_active_weapon():get_id() == 40 then
                    running_open_nosread = true
                    if running_open_nosread == true then
                        force_nospread:set_value(true)
                    end

                else
                    running_open_nosread = false
               end
            else
                running_open_nosread = false
                if running_open_nosread == false and slowwalk_open_nospread == false and air_open_nospread == false and stand_open_nospread == false and air_duck_open_nospread == false and duck_open_nospread == false and ground_auto_nospread:get_value():get() then
                    force_nospread:set_value(false)
                end

            end


            if speed ~= 0 and misc_slowwalk:get_value():get() and  speed ~= 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 and ground_auto_nospread:get_value():get() then
                if lp.m_bIsScoped:get() == true and speed <= 84 then
                    slowwalk_open_nospread = true
                    if slowwalk_open_nospread == true then
                        force_nospread:set_value(true)
                        
                    end
                else
                    slowwalk_open_nospread = false
                end
            else
                slowwalk_open_nospread = false
                if running_open_nosread == false and slowwalk_open_nospread == false and air_open_nospread == false and stand_open_nospread == false and air_duck_open_nospread == false and duck_open_nospread == false and ground_auto_nospread:get_value():get() then
                    force_nospread:set_value(false)
                end
            end
        

            if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 and air_auto_nospread:get_value():get() then
                air_open_nospread = true
                if air_open_nospread == true then
                    force_nospread:set_value(true)

                end
            else
                air_open_nospread = false
                if running_open_nosread == false and air_open_nospread == false and slowwalk_open_nospread == false and stand_open_nospread == false and air_duck_open_nospread == false and duck_open_nospread == false and air_auto_nospread:get_value():get() then
                    force_nospread:set_value(false)
                end
            end
            
            if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ~= 0 and air_auto_nospread:get_value():get() then
                air_duck_open_nospread = true
                if air_duck_open_nospread == true then
                    force_nospread:set_value(true)

                end
            else
                air_duck_open_nospread = false
                if running_open_nosread == false and air_open_nospread == false and slowwalk_open_nospread == false and stand_open_nospread == false and air_duck_open_nospread == false and duck_open_nospread == false and air_auto_nospread:get_value():get() then
                    force_nospread:set_value(false)
                end
            end

    
            if speed == 0  and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 and ground_auto_nospread:get_value():get() then
                if lp.m_bIsScoped:get() == true then
                    stand_open_nospread = true
                    if stand_open_nospread == true then
                        force_nospread:set_value(true)
                        
                    end
                else
                    stand_open_nospread = false
                end
            else
                stand_open_nospread = false
                if running_open_nosread == false and air_open_nospread == false and slowwalk_open_nospread == false and stand_open_nospread == false and air_duck_open_nospread == false and duck_open_nospread == false and ground_auto_nospread:get_value():get() then
                    force_nospread:set_value(false)
                end
            end


            if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ~= 0 and ground_auto_nospread:get_value():get() then
                if speed <= 100 and lp.m_bIsScoped:get() == true then
                    duck_open_nospread = true
                   if duck_open_nospread == true then
                      force_nospread:set_value(true)

                    end
                else
                    duck_open_nospread = false
                end
            else
                duck_open_nospread = false
                if running_open_nosread == false and air_open_nospread == false and slowwalk_open_nospread == false and stand_open_nospread == false and air_duck_open_nospread == false and duck_open_nospread == false and ground_auto_nospread:get_value():get() then
                    force_nospread:set_value(false)
                end
            end

        end

    

        if game.engine:in_game() and trail_draw:get_value():get() then
            local lp = entities.get_local_pawn()
            local abs_org = lp:get_abs_origin()
    
            table.insert(trail_points1, abs_org)
    
            if #trail_points1 > 92 then
                table.remove(trail_points1, 1)
            end
    
            for i = 1, #trail_points1 - 1 do
                local world_point1 = trail_points1[i]
                local world_point2 = trail_points1[i + 1]
    
                local screen_pos1 = math.world_to_screen(world_point1)
                local screen_pos2 = math.world_to_screen(world_point2)
    
                if screen_pos1 and screen_pos2 then
                    local r, g, b = get_line_color(i, #trail_points1)
    
                    d:add_line(
                        screen_pos1,
                        screen_pos2,
                        draw.color(math.floor(r), math.floor(g), math.floor(b), 255),
                        3.0
                    )
                end
            end
        end

    
        if Lefthandknife:get_value():get() and game.engine:in_game() then
            local lp = entities.get_local_pawn()
            local weapon = lp:get_active_weapon()

            local weapon_id
            local weapon_type
    
            if weapon then
                weapon_id = weapon:get_id()
                weapon_type = weapon:get_type()
            end
    
            if weapon_type == 0 and lefthand == false then
                game.engine:client_cmd('switchhands')
                lefthand = true
            end
    
            if weapon_type ~= 0 and lefthand == true and weapon_id ~= 49 then
                game.engine:client_cmd('switchhands')
                lefthand = false
            end
        end



        if Should_Start and not (game.global_vars.tick_count == Last_Tick_Count) and  game.engine:in_game() then
            local Lp = entities.get_local_pawn();
            
            if not Lp then
                return
            end
    
            if not (Spawn_Position:dist(Lp:get_abs_origin()) < 5) or (Time_in_Ticks >= SecondsToTicks(Default_FreezeTime + 0.1)) then
                game.engine:client_cmd("-left");
                Should_Start = false;
                Time_in_Ticks = 0;
                return;
            elseif Time_in_Ticks == SecondsToTicks(Default_FreezeTime) then
                game.engine:client_cmd("+left");
            end
    
            Time_in_Ticks = Time_in_Ticks + 1;
            Last_Tick_Count = game.global_vars.tick_count;
        end


    end
    
      

    local function onEvent(event)
        local IsScoped = false


        local name = event:get_name()
        if name == "map_shutdown" then
            trail_points = {}
            time1 = 0
            points = vector(0, 0, 0)
        end

    
        -- Player Death Event Handling
        if event:get_name() == "player_death" and EN_KillSay:get_value():get() then
            local attacker = event:get_pawn_from_id("attacker")
            if attacker and attacker:get_name() == entities.get_local_pawn():get_name() then
                if CN_KillSay:get_value():get() then
                    game.engine:client_cmd('say ' .. (messagesRU[math.random(1, #messagesRU)]))
                    return
                else
                    game.engine:client_cmd('say ' .. (messagesENG[math.random(1, #messagesENG)]))
                    return
                end
            end
        end
    

        -- Player Hurt Event Handling
        if name == 'player_hurt' and game.engine:in_game() then
            local attacker_name_Hitlog
            local attacker_pos
    
            local local_pawn = entities.get_local_pawn()
            local user_pawn = event:get_pawn_from_id('userid')
            local attacker_pawn = event:get_pawn_from_id('attacker')
    
            if not attacker_pawn and user_pawn then
                attacker_name_Hitlog = "yourself"
                attacker_pos = user_pawn:get_abs_origin()
            else
                attacker_name_Hitlog = attacker_pawn:get_name()
                attacker_pos = attacker_pawn:get_abs_origin()
            end
    
            local weapon_Hitlog = event:get_string("weapon")                  
            local victim_pawn_Hitlog = event:get_pawn_from_id('userid')
    
            local victim_name_Hitlog = victim_pawn_Hitlog:get_name()
    
            local damage_Hitlog = event:get_int("dmg_health")
            local victim_hp_Hitlog = event:get_int("health")
            local hitgroup_Hitlog = event:get_int("hitgroup")


            local hitgroup_names = {
                [0] = "unknown",
                [1] = "Head",
                [2] = "neck",
                [3] = "Spine",
                [4] = "Left Hand",
                [5] = "Right Hand",
                [6] = "Left Leg",
                [7] = "Right Leg"
            }
    
            local hit_location_Hitlog = hitgroup_names[hitgroup_Hitlog] or "unknown"
    
            local user_pos = user_pawn:get_abs_origin()
    
            local distance = calculate_distance(attacker_pos, user_pos) * 0.1
            distance = math.floor(distance)
    
            -- Display Hurt Notification
            if user_pawn == local_pawn and Hurt_Log:get_value():get() then
                local Hurt_message_Hitlog = string.format(
                    "Hurt by: %s | Damage: %d HP | Hit site: %s | Remaining: %d | Distance: %dm",
                    attacker_name_Hitlog, damage_Hitlog, hit_location_Hitlog, victim_hp_Hitlog, distance
                )
                local Hurtnotif = gui.notification('Hurt Message', Hurt_message_Hitlog,draw.textures['icon_close'])
                gui.notify:add(Hurtnotif)
            end

    
            -- Return if not the local player or if attacker is not the local player
            if user_pawn == local_pawn or attacker_pawn ~= local_pawn then
                return
            end
    

            if not user_pawn:is_enemy() then
                Team_general_dmg = Team_general_dmg + damage_Hitlog
                if victim_hp_Hitlog == 0 then
                    Team_kill = Team_kill +1
                end
                local Hurt_message_Hitlog = string.format(
                    "Kill: %d/3 | Damage: %d HP | Remaining: %d | General DMG: %d/300",
                    Team_kill,damage_Hitlog, victim_hp_Hitlog,Team_general_dmg
                )
                local Hurtnotif = gui.notification('Team Damage Warning', Hurt_message_Hitlog, draw.textures['icon_info'])
                gui.notify:add(Hurtnotif)
            end
    
            -- Hit Notification
            if user_pawn:is_enemy() then
                local Hit_message_Hitlog = string.format(
                    "Damage: %d HP | Hit site: %s | Remaining: %d | Distance: %dm",
                    damage_Hitlog, hit_location_Hitlog, victim_hp_Hitlog, distance
                )
        
                local Hitnotif = gui.notification('Hit Message', Hit_message_Hitlog, draw.textures['icon_rage'])
        
                if Hit_Log:get_value():get(�o�e�                    gui.notify:add(Hitnotif)
                end
            end
           
        
            if not checkbox11:get_value():get() then
                return
            end

            local user_pawn_origin = user_pawn:get_abs_origin()
            
            -- get the closest impact from the entities origin.
            local best_distance = math.huge
            local best_impact = nil
            
            for i = 1, #impacts do
                local impact = impacts[i]
                local distance = impact.position:dist_sqr(user_pawn_origin)
                if distance < best_distance then
                    best_distance = distance
                    best_impact = impact
                end
            end
            
            -- no impact was found, just exit.
            if best_impact == nil then
                return
            end
            
            table.insert(hitmarkers, {
                -- opacity of the rendered hitmarker.
                opacity = 1,
                
                -- progress of the animated damage number.
                progress = 0,
                
                -- position of chosen impact.
                position = best_impact.position,
                
                -- amount of damage we did.
                damage = event:get_int('dmg_health'),

                Remaining = victim_hp_Hitlog,

                random_offset_x = math.random(-60, 60),

                random_offset_y = math.random(-65, -5)

                

            })
            
            -- all good, clear impacts and go next.
            impacts = {}
        end
        
        -- handle 'bullet_impact' event.
        if name == 'bullet_impact' and checkbox11:get_value():get() then
            local local_pawn = entities.get_local_pawn()
            local user_pawn = event:get_pawn_from_id('userid')
            
            -- ensure we're the user of said impact.
            if user_pawn ~= local_pawn then
                return
            end
            
            table.insert(impacts, {
                -- amount of time we keep track of this impact for.
                time = 1.5,
                
                -- position of the impact.
                position = math.vec3(
                    event:get_float('x'),
                    event:get_float('y'),
                    event:get_float('z')
                )
            })
        
        end
    end
    
    
    
    
    -- 回合开始发言
    local function on_round_start(event)
        local event_name1 = event:get_name()
    
        if event_name1 == 'round_start' and round_start_say:get_value():get() then
            game.engine:client_cmd('say "我是狙击手血鹰，正片开始了"')
        end

        if event_name1 == 'round_start' and game.engine:in_game() then
            
            local Lp = entities.get_local_pawn();
            if not Lp then
                return
            end
            Spawn_Position = Lp:get_abs_origin();
            Should_Start = true;
        end
    end



    local function on_vote_start(event)
        local event_name = event:get_name()
        
        if event_name == 'vote_cast' then
            local vote_option = event:get_int('vote_option')
            local team = event:get_int('team')
            local user_pawn = event:get_pawn_from_id('userid')
            if not user_pawn then
                return
            end
            local user_name = user_pawn:get_name()
            local yes_or_no = "null"
            local team_name = "null"
            if vote_option == 0 then
                yes_or_no = "Yes"
            else
                yes_or_no = "No"
            end


            if team == 2 then
                team_name = "T"
            else
                team_name = "CT"
            end

            local vote_message = string.format(
                "Team: %s | Vote to: %s | name: %s",
                team_name,yes_or_no,user_name
            )
            local votenotif = gui.notification('Vote Event!', vote_message, draw.textures['gui_icon_bug'])
            gui.notify:add(votenotif)

        end
    end






    --注意下面是wallbang的src


local function add_predefined_waypoints()
    for _, waypoint in ipairs(predefined_waypoints) do
        table.insert(waypoints, waypoint)
    end
end

add_predefined_waypoints()


local function get_current_map()
    return game.global_vars.map_name 
end


local function get_local_pawn()
    local local_pawn = entities.get_local_pawn() 
    return local_pawn
end


local function add_waypoint(pawn)
    if not pawn then return end

    local origin = pawn:get_abs_origin()
    local current_map = get_current_map()
    local event_name = "Event from " .. pawn:get_name()

    table.insert(waypoints, { pos = origin, label = event_name, map = current_map })


end


local function on_entity_event(event)
    local entity = event:get_controller()
    if entity and entity:is_alive() then
        add_waypoint(entity)
    end
end

mods.events:add_listener("player_add_waypoint", on_entity_event) 

local function on_draw() 
    if #waypoints == 0 then return end

    local d = draw.surface
    d.font = waypoint_font
    
    local local_pawn = get_local_pawn() 
    if not local_pawn then return end

    local current_map = get_current_map() 

    --！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！

    local draw_radius = 1500  --这个是在多少距离内可见

    --！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！

    local local_position = local_pawn:get_abs_origin()

    for i = 1, #waypoints do
        local waypoint = waypoints[i]
        local screen_pos = math.world_to_screen(waypoint.pos)

        if screen_pos 
           and waypoint.map == current_map 
           and local_position:dist(waypoint.pos) < draw_radius 
           and add_waypoint_cb:get_value():get()
        then
    
            local color = draw.color(255, 0, 0, 255)

            if local_position:dist(waypoint.pos) < 50 then
                color = draw.color(0, 255, 0, 255)
            end

            if i % 2 == 1 then
 
                d:add_circle_filled(screen_pos, 10, color)
                d:add_circle(
                    screen_pos, 
                    12, 
                    draw.color(255, 255, 0, 100)
                )
            else

                local prev_waypoint = waypoints[i - 1]
                if prev_waypoint 
                   and local_position:dist(prev_waypoint.pos) < 50 
                then

                    d:add_circle_filled(screen_pos, 10, draw.color(0, 255, 0, 255))
                else

                    d:add_circle(screen_pos, 10, draw.color(255, 255, 255, 255))
                end
            end


            if i % 2 == 0 then
                local prev_odd_index = i - 1
                if prev_odd_index >= 1 then
                    local prev_waypoint = waypoints[prev_odd_index]

                    if local_position:dist(prev_waypoint.pos) < 50 
                       or local_position:dist(waypoint.pos) < 50 
                    then
                        local prev_screen_pos = math.world_to_screen(prev_waypoint.pos)
                        if prev_screen_pos then
                            d:add_line(prev_screen_pos, screen_pos, draw.color(255, 255, 255, 150))
                        end
                    end
                end
            end

            d:add_text(draw.vec2(screen_pos.x, screen_pos.y - 15), waypoint.label, draw.color.white())
        end
    end
end








--------------------------------------------------------------------------------
-- REGISTRO DE CALLBACKS
--------------------------------------------------------------------------------
events.present_queue:add(function()--绘制类回调
    start_on_present_queue()
    on_present_queue()--水印的
    on_draw()--wallbang的
    on_world_hitmark()
end)

mods.events:add_listener('player_death')--这个是注册监听死亡事件（因为fa默认不监听）
mods.events:add_listener('vote_started')
mods.events:add_listener('vote_failed')
mods.events:add_listener('vote_passed')
mods.events:add_listener('vote_changed')
mods.events:add_listener('vote_cast_yes')
mods.events:add_listener('vote_cast_no')
mods.events:add_listener('vote_cast')
mods.events:add_listener('start_vote')
mods.events:add_listener('vote_ended')
mods.events:add_listener('vote_options')

events.event:add(onEvent)--这个是击杀喊话主回调
events.event:add(on_vote_start)
events.event:add(on_round_start)--这个是开局喊话回调