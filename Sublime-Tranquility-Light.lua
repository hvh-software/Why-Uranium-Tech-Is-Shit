--[[ 

    Sublime Tranquility Light was leaked from developer.
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

--STL.SU
--recode

--check insecure
if not ffi then
    print('请点击小锁图标打开不安全模式！！！')
    print('请点击小锁图标打开不安全模式！！！')
    print('请点击小锁图标打开不安全模式！！！')
    print(' ')
    print('Turn on insecure scripts！！！')
    print('Turn on insecure scripts！！！')
    print('Turn on insecure scripts！！！')
    gui.notify:add(gui.notification('Fatal Error', 'Turn on insecure scripts', draw.textures['icon_close']))
    return error("Turn on unsafe scripts")
end

----------------------------------------------------------------------
--if you see this,you mom was dead ,fucking dump kid
--if you see this,you mom was dead ,fucking dump kid
--if you see this,you mom was dead ,fucking dump kid
----------------------------------------------------------------------


--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵


print('Sublime Tranquility Light was Loading! Developer: Rwater.'); 
print('███─███─█─────███─█─█'); 
print('█────█──█─────█───█─█');   
print('███──█──█─────███─█─█');  
print('──█──█──█───────█─█─█'); 
print('███──█──███─█─███─███');  
print('Get good Sublime Tranquility Light')



--bool类
local lefthand = false
local add_luaA_bool = false
local Anti_AFK_Start = false
local isDraggingWatermark = false
local air_open_nospread = false
local air_duck_open_nospread = false
local running_open_nosread = false
local slowwalk_open_nospread = false
local stand_open_nospread = false
local duck_open_nospread = false
local near_open_nospread = false

local Anti_aim_group = false

local fade_in = true    
local fade_done = false 

--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--int类
local frame_counter = 0
local speed = 0
local FreezeTime = 20
local Time_in_Ticks = 0
local left_alpha = 0
local right_alpha = 0
local time1 = 0--雪花脚印
local Team_general_dmg = 0
local Team_kill = 0
local Near_Crosshair_Entity_distance = math.huge
local Nearest_player_distance = math.huge
local Nearest_player_wenpon
local view_fov
local alpha = 0
local max_alpha = 255
local fade_speed = 3
local dragOffsetXWatermark, dragOffsetYWatermark = 0, 0

--float
local frame_rate = 0.0

--char
local hitlog_texts = {}
local closest_enemy = nil

--地址和坐标
local Spawn_Position
local prev_lp_pos = nil
local current_x = nil
local current_x1 = nil
local current_x_speed = nil
local current_x_status = nil
local watermarkX, watermarkY = nil, nil
local trail_points = {}
local trail_points1 = {}
local lightning_HitMark = {}
local light_flash = {};
local points = vector(0, 0, 0)
local current_view_pos = vector(0, 0, 0)
local view_angles

--赋值的
local The_Last_Tick_Count = game.global_vars.tick_count


--材质创建
local start_texture = draw.animated_texture("../../csgo/fatality/hutao.gif");
start_texture:create()


--组件
local luaA = gui.ctx:find('lua>elements a');
local luaB = gui.ctx:find('lua>elements b');
local nop_text = gui.label(gui.control_id('Main Titie'), '');

--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵

--checkbox _call for luaA~

--Rage
--Auto NoSpread
local air_auto_nospread = gui.checkbox(gui.control_id('air_auto_nospread'))
local ground_auto_nospread = gui.checkbox(gui.control_id('ground_auto_nospread'));
local auto_nospread_combo = gui.combo_box(gui.control_id('auto_nospread_combo_sel'));
--AA Indicator
local AA_Indicator = gui.checkbox(gui.control_id('AA Indicator'))
--Avoid Backstab
local Avoid_Backstab = gui.checkbox(gui.control_id('Avoid Backstab'))


--visuals
--switchhands
local Switchknifehand = gui.checkbox(gui.control_id('Switchhandknife'))
--WaterMark
local Misc_WaterMark = gui.checkbox(gui.control_id('Misc WaterMark'))
local Crosshair_WaterMark = gui.checkbox(gui.control_id('Crosshair WaterMark'))
--Snow paw and Rainbow Trail
local trail_draw = gui.checkbox(gui.control_id('on_trail_draw'))
local snow_paw = gui.checkbox(gui.control_id('on_snow_draw'))
--lightning HitMark
local lightning_HitMark_checkbox = gui.checkbox(gui.control_id('lightning effects'))
--top rgb line
local top_rgb_line =  gui.checkbox(gui.control_id('top_rgb_line'))
--hit sound
local hitsound = gui.checkbox(gui.control_id('STL_hitsound'))
--moving_cam
local moving_cam =  gui.checkbox(gui.control_id('moving cam'))



--movement
--Player status and speed 用一点神秘套娃
local Player_status = gui.checkbox(gui.control_id('Show Player status'))
local speed_prg = gui.checkbox(gui.control_id('Show Player speed'))
--no fall DMG
local No_Fall_DMG = gui.checkbox(gui.control_id('No Fall DMG'))
--Anti AFK
local Anti_AFK = gui.checkbox(gui.control_id('Anti AFK'))


--chat
--killsay CN|EN|RU
local Open_KillSay = gui.checkbox(gui.control_id('Open Killsay'))
local EN_KillSay = gui.checkbox(gui.control_id('EN Killsay'))
local RU_KillSay = gui.checkbox(gui.control_id('RU Killsay'))
--auto say
local Open_AutoSay = gui.checkbox(gui.control_id('Open Autosay'))
local EN_AutoSay = gui.checkbox(gui.control_id('EN AutoSay'))
local RU_AutoSay = gui.checkbox(gui.control_id('RU AutoSay'))
--round start Say
local round_start_say = gui.checkbox(gui.control_id('on_round_start_say'))
--dead Say
local Dead_say = gui.checkbox(gui.control_id('on_Dead_say'))



--Log and event notify
--hit
local Hit_Log = gui.checkbox(gui.control_id('Hit_Log'));
local Hit_notify = gui.checkbox(gui.control_id('Hit_notify'));
--hurt
local Hurt_Log = gui.checkbox(gui.control_id('Hurt_Log'));
local Hurt_notify = gui.checkbox(gui.control_id('Hurt_notify'));

--vote and team DMG
local vote_event = gui.checkbox(gui.control_id('vote event'));
local Team_DMG_event = gui.checkbox(gui.control_id('Team DMG event'));
--auto dis
local autodis_checkbox = gui.checkbox(gui.control_id("Auto Disconnect when win"))

--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵

--防止过多的变量，丢到函数里搞
local function Add_luaA()
    --row Rage
    local row_Auto_NoSpread = gui.make_control('Ground | Air Auto Nospread', air_auto_nospread);
    row_Auto_NoSpread:add(ground_auto_nospread);

    auto_nospread_combo:add(gui.selectable(gui.control_id('option_Crosshair'), 'Crosshair'));
    auto_nospread_combo:add(gui.selectable(gui.control_id('option_Nearest'), 'Nearest'));

    local row_auto_nospread_combo = gui.make_control('Auto FNS selection', auto_nospread_combo);

    local row_AA_Indicator = gui.make_control('AA Indicator',AA_Indicator);

    local row_Avoid_Backstab = gui.make_control('Avoid Backstab',Avoid_Backstab);

    --row visuals
    local row_Switchknifehand = gui.make_control('Switch knife Hand',Switchknifehand);
    local row_status = gui.make_control('Speed | Player status',Player_status);
    row_status:add(speed_prg)
    local row_WaterMark = gui.make_control('Misc | Crosshair WaterMark',Crosshair_WaterMark);
    row_WaterMark:add(Misc_WaterMark)
    local make_trail = gui.make_control('Snow paw | Rainbow Trail',trail_draw);
    make_trail:add(snow_paw)
    local row_lightning_HitMark_checkbox = gui.make_control('lightning HitMark',lightning_HitMark_checkbox);
    local row_hitsounds = gui.make_control('Hit sound',hitsound);
    local row_moving_cam = gui.make_control('moving cam',moving_cam);
    local row_top_rgb_line = gui.make_control('Top RGB Line',top_rgb_line);

    --row movement
    local row_No_Fall_DMG = gui.make_control('No fall DMG',No_Fall_DMG);
    local row_Anti_AFK = gui.make_control('Anti AFK',Anti_AFK);

    --row chat
    local row_Open_KillSay = gui.make_control('RU | EN | OPEN & CN KillSay',Open_KillSay);
    row_Open_KillSay:add(EN_KillSay)
    row_Open_KillSay:add(RU_KillSay)  
    
    local row_Open_AutoSay = gui.make_control('RU | EN | OPEN & CN AutoSay',Open_AutoSay);
    row_Open_AutoSay:add(EN_AutoSay)
    row_Open_AutoSay:add(RU_AutoSay)

    local row_roundSay = gui.make_control('Round Start Say', round_start_say);

    local row_DeadSay = gui.make_control('Dead Say', Dead_say);

    --row Log and event notify

    local row_Hit_Hurt_notify = gui.make_control('Hurt | Hit Notify', Hit_notify);
    row_Hit_Hurt_notify:add(Hurt_notify);

    local row_crosshair_hit_log = gui.make_control('Crosshair Hit Log', Hit_Log);

    local row_event = gui.make_control('Team Damage | Vote Notify', vote_event);
    row_event:add(Team_DMG_event)

    local row_auto_dis = gui.make_control('Auto disconnect', autodis_checkbox);

--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵

    --add
    luaA:add(gui.label(gui.control_id('Rage Titie'), '---Rage Feature---'))
    luaA:add(row_Auto_NoSpread)
    luaA:add(row_auto_nospread_combo)
    luaA:add(row_AA_Indicator)
    luaA:add(row_Avoid_Backstab)
    luaA:add(nop_text)
    luaA:add(nop_text)
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
    luaA:add(gui.label(gui.control_id('visuals Titie'), '---Visuals Feature---'))
    luaA:add(row_WaterMark)
    luaA:add(row_Switchknifehand)
    luaA:add(make_trail)
    luaA:add(row_lightning_HitMark_checkbox)
    luaA:add(row_hitsounds)
    luaA:add(row_moving_cam)
    luaA:add(row_top_rgb_line)
    luaA:add(nop_text)
    luaA:add(nop_text)

    luaA:add(gui.label(gui.control_id('movement Titie'), '---Movement Feature---'))
    luaA:add(row_status)
    luaA:add(row_No_Fall_DMG)
    luaA:add(row_Anti_AFK)
    luaA:add(nop_text)
    luaA:add(nop_text)

    luaA:add(gui.label(gui.control_id('chat Titie'), '---Chat Feature---'))
    luaA:add(row_Open_KillSay)
    luaA:add(row_Open_AutoSay)
    luaA:add(row_roundSay)
    luaA:add(row_DeadSay)
    luaA:add(nop_text)
    luaA:add(nop_text)

    luaA:add(gui.label(gui.control_id('event Titie'), '---Event & Log Feature---'))
    luaA:add(row_Hit_Hurt_notify)
    luaA:add(row_crosshair_hit_log)
    luaA:add(row_event)
    luaA:add(row_auto_dis)

    luaA:reset()

    local notif = gui.notification(' Sublime Tranquility Light', 'Welcome! '..gui.ctx.user.username .. ' Sama' ,draw.textures['icon_cloud']);

    gui.notify:add(notif);

    -- only run once
    add_luaA_bool = true

end


--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵

--luaB

--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵

local Enable_CustomAA_Open = gui.checkbox(gui.control_id('AA_Main_Checkbox'))
local row_Enable_CustomAA_Open =  gui.make_control('Enable Custom AA',Enable_CustomAA_Open);
luaB:add(row_Enable_CustomAA_Open)

local standAA_text = gui.label(gui.control_id('stand Titie'), '                          Stand Custom AA')
local StandAA_Pitch_Custom = gui.slider(gui.control_id('Stand_Pitch_Custom'), -89, 89, {'%.0fdeg'})
local StandAA_Yaw_Custom = gui.slider(gui.control_id('Stand_Yaw_Custom'), -180, 180, {'%.0fdeg'})
local StandAA_jitter_Custom = gui.slider(gui.control_id('Stand_jitter_Custom'), -180, 180, {'%.0f%%'})
local StandAA_Spinbot_Checkbox = gui.checkbox(gui.control_id('StandAA_Spinbot_Checkbox'))
local StandAA_Spinbot_Speed = gui.slider(gui.control_id('Stand_Spinbot_Speed_slider'), 0, 180, {'%.0f%%'})

-- Walk AA
local WalkAA_text = gui.label(gui.control_id('Walk Titie'), '                        Slow Walk Custom AA')
local WalkAA_Pitch_Custom = gui.slider(gui.control_id('Walk_Pitch_Custom'), -89, 89, {'%.0fdeg'})
local WalkAA_Yaw_Custom = gui.slider(gui.control_id('Walk_Yaw_Custom'), -180, 180, {'%.0fdeg'})
local WalkAA_jitter_Custom = gui.slider(gui.control_id('Walk_jitter_Custom'), -180, 180, {'%.0f%%'})
local WalkAA_Spinbot_Checkbox = gui.checkbox(gui.control_id('WalkAA_Spinbot_Checkbox'))
local WalkAA_Spinbot_Speed = gui.slider(gui.control_id('Walk_Spinbot_Speed_slider'), 0, 180, {'%.0f%%'})

-- Running AA
local RunningAA_text = gui.label(gui.control_id('Running Titie'), '                         Running Custom AA')
local RunningAA_Pitch_Custom = gui.slider(gui.control_id('Running_Pitch_Custom'), -89, 89, {'%.0fdeg'})
local RunningAA_Yaw_Custom = gui.slider(gui.control_id('Running_Yaw_Custom'), -180, 180, {'%.0fdeg'})
local RunningAA_jitter_Custom = gui.slider(gui.control_id('Running_jitter_Custom'), -180, 180, {'%.0f%%'})
local RunningAA_Spinbot_Checkbox = gui.checkbox(gui.control_id('RunningAA_Spinbot_Checkbox'))
local RunningAA_Spinbot_Speed = gui.slider(gui.control_id('Running_Spinbot_Speed_slider'), 0, 180, {'%.0f%%'})

-- Duck AA
local DuckAA_text = gui.label(gui.control_id('Duck Titie'), '                          Duck Custom AA')
local DuckAA_Pitch_Custom = gui.slider(gui.control_id('Duck_Pitch_Custom'), -89, 89, {'%.0fdeg'})
local DuckAA_Yaw_Custom = gui.slider(gui.control_id('Duck_Yaw_Custom'), -180, 180, {'%.0fdeg'})
local DuckAA_jitter_Custom = gui.slider(gui.control_id('Duck_jitter_Custom'), -180, 180, {'%.0f%%'})
local DuckAA_Spinbot_Checkbox = gui.checkbox(gui.control_id('DuckAA_Spinbot_Checkbox'))
local DuckAA_Spinbot_Speed = gui.slider(gui.control_id('Duck_Spinbot_Speed_slider'), 0, 180, {'%.0f%%'})

-- Air AA
local AirAA_text = gui.label(gui.control_id('Air Titie'), '                          Air Custom AA')
local AirAA_Pitch_Custom = gui.slider(gui.control_id('Air_Pitch_Custom'), -89, 89, {'%.0fdeg'})
local AirAA_Yaw_Custom = gui.slider(gui.control_id('Air_Yaw_Custom'), -180, 180, {'%.0fdeg'})
local AirAA_jitter_Custom = gui.slider(gui.control_id('Air_jitter_Custom'), -180, 180, {'%.0f%%'})
local AirAA_Spinbot_Checkbox = gui.checkbox(gui.control_id('AirAA_Spinbot_Checkbox'))
local AirAA_Spinbot_Speed = gui.slider(gui.control_id('Air_Spinbot_Speed_slider'), 0, 180, {'%.0f%%'})

-- Air Duck AA
local Air_DuckAA_text = gui.label(gui.control_id('Air_Duck Titie'), '                      Air Duck Custom AA')
local Air_DuckAA_Pitch_Custom = gui.slider(gui.control_id('Air_Duck_Pitch_Custom'), -89, 89, {'%.0fdeg'})
local Air_DuckAA_Yaw_Custom = gui.slider(gui.control_id('Air_Duck_Yaw_Custom'), -180, 180, {'%.0fdeg'})
local Air_DuckAA_jitter_Custom = gui.slider(gui.control_id('Air_Duck_jitter_Custom'), -180, 180, {'%.0f%%'})
local Air_DuckAA_Spinbot_Checkbox = gui.checkbox(gui.control_id('Air_DuckAA_Spinbot_Checkbox'))
local Air_DuckAA_Spinbot_Speed = gui.slider(gui.control_id('Air_Duck_Spinbot_Speed_slider'), 0, 180, {'%.0f%%'})




local function Anti_aim_row()


    if not Enable_CustomAA_Open:get_value():get() then
        return
    end
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵

    if Anti_aim_group == true then
        return
    end
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵

    -- Stand AA Row
    local row_StandAA_Pitch_Custom = gui.make_control('Pitch', StandAA_Pitch_Custom)
    local row_StandAA_Yaw_Custom = gui.make_control('Yaw', StandAA_Yaw_Custom)
    local row_StandAA_jitter_Custom = gui.make_control('Yaw jitter', StandAA_jitter_Custom)
    local row_StandAA_Spinbot_Checkbox = gui.make_control('Spin', StandAA_Spinbot_Checkbox)
    row_StandAA_Spinbot_Checkbox:add(StandAA_Spinbot_Speed)

    -- Walk AA Row
    local row_WalkAA_Pitch_Custom = gui.make_control('Pitch', WalkAA_Pitch_Custom)
    local row_WalkAA_Yaw_Custom = gui.make_control('Yaw', WalkAA_Yaw_Custom)
    local row_WalkAA_jitter_Custom = gui.make_control('Yaw jitter', WalkAA_jitter_Custom)
    local row_WalkAA_Spinbot_Checkbox = gui.make_control('Spin', WalkAA_Spinbot_Checkbox)
    row_WalkAA_Spinbot_Checkbox:add(WalkAA_Spinbot_Speed)

    -- Running AA Row
    local row_RunningAA_Pitch_Custom = gui.make_control('Pitch', RunningAA_Pitch_Custom)
    local row_RunningAA_Yaw_Custom = gui.make_control('Yaw', RunningAA_Yaw_Custom)
    local row_RunningAA_jitter_Custom = gui.make_control('Yaw jitter', RunningAA_jitter_Custom)
    local row_RunningAA_Spinbot_Checkbox = gui.make_control('Spin', RunningAA_Spinbot_Checkbox)
    row_RunningAA_Spinbot_Checkbox:add(RunningAA_Spinbot_Speed)

    -- Duck AA Row
    local row_DuckAA_Pitch_Custom = gui.make_control('Pitch', DuckAA_Pitch_Custom)
    local row_DuckAA_Yaw_Custom = gui.make_control('Yaw', DuckAA_Yaw_Custom)
    local row_DuckAA_jitter_Custom = gui.make_control('Yaw jitter', DuckAA_jitter_Custom)
    local row_DuckAA_Spinbot_Checkbox = gui.make_control('Spin', DuckAA_Spinbot_Checkbox)
    row_DuckAA_Spinbot_Checkbox:add(DuckAA_Spinbot_Speed)

    -- Air AA Row
    local row_AirAA_Pitch_Custom = gui.make_control('Pitch', AirAA_Pitch_Custom)
    local row_AirAA_Yaw_Custom = gui.make_control('Yaw', AirAA_Yaw_Custom)
    local row_AirAA_jitter_Custom = gui.make_control('Yaw jitter', AirAA_jitter_Custom)
    local row_AirAA_Spinbot_Checkbox = gui.make_control('Spin', AirAA_Spinbot_Checkbox)
    row_AirAA_Spinbot_Checkbox:add(AirAA_Spinbot_Speed)

    -- Air Duck AA Row
    local row_Air_DuckAA_Pitch_Custom = gui.make_control('Pitch', Air_DuckAA_Pitch_Custom)
    local row_Air_DuckAA_Yaw_Custom = gui.make_control('Yaw', Air_DuckAA_Yaw_Custom)
    local row_Air_DuckAA_jitter_Custom = gui.make_control('Yaw jitter', Air_DuckAA_jitter_Custom)
    local row_Air_DuckAA_Spinbot_Checkbox = gui.make_control('Spin', Air_DuckAA_Spinbot_Checkbox)
    row_Air_DuckAA_Spinbot_Checkbox:add(Air_DuckAA_Spinbot_Speed)

    
    luaB:add(standAA_text);
    luaB:add(row_StandAA_Pitch_Custom);
    luaB:add(row_StandAA_Yaw_Custom);
    luaB:add(row_StandAA_jitter_Custom);
    luaB:add(row_StandAA_Spinbot_Checkbox)


    luaB:add(WalkAA_text);
    luaB:add(row_WalkAA_Pitch_Custom);
    luaB:add(row_WalkAA_Yaw_Custom);
    luaB:add(row_WalkAA_jitter_Custom);
    luaB:add(row_WalkAA_Spinbot_Checkbox)


    luaB:add(RunningAA_text);
    luaB:add(row_RunningAA_Pitch_Custom);
    luaB:add(row_RunningAA_Yaw_Custom);
    luaB:add(row_RunningAA_jitter_Custom);
    luaB:add(row_RunningAA_Spinbot_Checkbox)


    luaB:add(DuckAA_text);
    luaB:add(row_DuckAA_Pitch_Custom);
    luaB:add(row_DuckAA_Yaw_Custom);
    luaB:add(row_DuckAA_jitter_Custom);
    luaB:add(row_DuckAA_Spinbot_Checkbox)


    luaB:add(AirAA_text);
    luaB:add(row_AirAA_Pitch_Custom);
    luaB:add(row_AirAA_Yaw_Custom);
    luaB:add(row_AirAA_jitter_Custom);
    luaB:add(row_AirAA_Spinbot_Checkbox)


    luaB:add(Air_DuckAA_text);
    luaB:add(row_Air_DuckAA_Pitch_Custom);
    luaB:add(row_Air_DuckAA_Yaw_Custom);
    luaB:add(row_Air_DuckAA_jitter_Custom);
    luaB:add(row_Air_DuckAA_Spinbot_Checkbox)


    luaB:reset()
    Anti_aim_group = true
    
end




--find 一下需要的ui组件
local misc_slowwalk = gui.ctx:find('misc>movement>slowwalk')
local angles_Left_checkbox = gui.ctx:find('rage>anti-aim>angles>override left');
local angles_Right_checkbox = gui.ctx:find('rage>anti-aim>angles>override right');
local force_nospread = gui.ctx:find('rage>aimbot>general>nospread>settings>force')





--文本
local say_CN = {
    "STL.SU?! why I miss?",
    "you can't kill STL.SU user",
    "STL.SU user are super",
    "you can buy a cheat,but you cant buy a win xD",
    "ez owned by STL.SU? lol",
    "what u do?? dog",
    "1, y u lose? xaxaxaxaxa",
    "legends never die -- STL.SU",
    "你的aa比薯片脆",
    "实在不行你去买个模型吧",
    "你的脑子只适合玩原神?",
    "滚去玩王者荣耀吧窝囊废",
    "你是没有手吗?",
    "你的脑容量比你参群人数还少",
    "银行卡密码都被我骗出来了",
    "农村人滚回去种地",
    "你怎么一骗就出了孩子",
    "你在屏幕前红温的样子被我记录下来了",
    "我杀你只需要一根手指",
    "ez",
    "这就死了吗...我都还没开始发力",
    "我没想到你参数这么垃圾...",
    "杀你只需要一根手指",
    "1，你怎么这么菜...",
    "你在用awc么废物?",
    "easy xD",
    "1,别急",
    "农民你被你爹1了，滚去买个好点的参数吧",
    "你也被脑控了吗",
    "用绿演参是打不中我的",
    "怎么退出训练营",
    "对不起没玩过原神，不理解你的打法",
    "你选错原神启动项了",
    "小孩子不懂事e着玩的",
    "转人工",
    "忘注入了，绿玩杀的",
    "这智商去玩原神吧，那里适合你",
    "嘿，你是在试图击打我身边的空气来窒息我？",
    "Get better get <S T L . S U>",
    "stay with us - STL.SU",
    "STL still on top",
    "1.",
    "[STL.SU] buy or die",
    "我使用的是 STL.SU",
    "◣_◢ S T L ◣_◢",
    "when u miss, cry u dont have STL.SU",
    "被哥哥蒙在鼓里有什么意思呢，蒙在被子里才有趣。",
    "我喜欢你脸红红的样子，更喜欢你气喘吁吁的样子。",
    "我们浪漫点好不好 怎么浪漫点？ 我慢点，你浪点。",
    "我希望压得我喘不过气的不是生活，而是你。",
    "我有71种温柔，洗衣做饭和69。",
    "如果插一晚上不拔出来会怎么样。",
    "日久不一定生情，但情深一定要日久。",
    "初次见面就喜欢你，日久以后更爱上你。​​​",
    "你饿不饿，要不要我下面给你吃。",
    "清晨射在脸上的不一定是阳光。",
    "我最喜欢看见的是你在我身下仰头娇喘的样子。",
    "我什么都干不好，除了你。",
    "玫瑰是我偷的，情书是我抄的，但我想干你是真的。",
    "你笑起来很甜，尝起来很咸。",
    "我心里装的怀里抱的身下压的都是你。",
    "你喜不喜欢浪漫，当然是我浪点，你慢点啊。"
}


local say_EN = { 
    "I'd tell you to shoot yourself, but I bet you'll miss.",
    "You should let your chair play, at least it knows how to support.",
    "The only thing lower than your k/d ratio is your I.Q.",
    "Did you know sharks only kill 5 people each year? Looks like you got some competition.",
    "My knife is well-worn, just like your mother.",
    "Get the bomb, at least you will carry something this game.",
    "Options -> How To Play",
    "My dead dad has better aim than you, it only took him one bullet.",
    "Some babies were dropped on their heads but you were clearly thrown at a wall.",
    "Internet Explorer is faster than your reactions.",
    "I'm surprised you've got the brain power to keep your heart beating.",
    "You're about as useful as pedals on a wheelchair.",
    "You define autism.",
    "The only thing you carry is an extra chromosome.",
    "You don't deserve to play this game. Go back to playing with crayons and shitting yourself.",
    "Yo mama so fat when she plays Overpass, you can shoot her on Mirage.",
    "The only thing you can throw are rounds.",
    "I'm not trash talking, I'm talking to trash.",
    "If you were a CSGO match, your mother would have a 7-day cooldown all the time, because she kept abandoning you.",
    "Choose your excuse: 1.Lags | 2.New mouse | 3.Low FPS | 4.Low team | 5.Hacker | 6.Lucker | 7.Smurf | 8.Hitbox | 9.Tickrate.",
    "Your family tree must be a circle.",
    "Everyone who loves you is wrong.",
    "LISTEN HERE YOU LITTLE FUCKER, WHEN I WAS YOUR AGE, PLUTO WAS A PLANET!",
    "If CS:GO is too hard for you maybe consider a game that requires less skill, like idk.... solitaire?",
    "Oops, I must have chosen easy bots by accident...",
    "I thought I put bots on hard, why are they on easy?",
    "Is your monitor on?",
    "Don't be a loser, buy a rope and hang yourself.",
    "If I were to commit suicide, I would jump from your ego to your elo.",
    "Do you feel special? Please try suicide again... Hopefully you will be successful this time.",
    "I'm not trash talking, I'm talking to trash.",
    "Sell your computer and buy a Wii.",
    "Idk if u know but it's mouse1 to shoot.",
    "How did you change your difficulty settings? My CS:GO is stuck on easy.",
    "You are the reason why people say the csgo community sucks.",
    "The only thing lower than your k/d ratio is your I.Q.",
    "Your aim is so poor that people held a fundraiser for it.",
    "Better buy PC, stop playing at school library.",
    "The only thing more unreliable than you is the condom your dad used.",
    "Calling you a retard is a compliment in comparison to how stupid you actually are.",
    "I didn't know dying was a special ability.",
    "If I jumped from your ego to your intelligence, I'd die of starvation half-way down.",
    "Studies show that aiming gives you better chances of hitting your target.",
    "You should let your chair play, at least it knows how to support.",
    "There are about 37 trillion cells working together in your body right now, and you are disappointing every single one of them.",
    "I'd call you a tool, but that would imply you were useful in at least one way.",
    "You're the human equivalent of a participation award.",
    "I'd love to see things from your perspective, but I don't think I could shove my head that far up my ass.",
    "I'm not trash talking, I'm talking to trash.",
    "Legend has it that the number 0 was first invented after scientists calculated your chance of doing something useful.",
    "You're the type of pd to get 3rd place in a 1v1 match.",
    "I'm not saying I hate you, but I would unplug your life support to charge my phone.",
    "You're an inspiration for birth control.",
    "Does your ass ever get jealous of the amount of shit that comes out of your mouth.",
    "You should turn the game off. Just walk outside and find the nearest tree, then apologize to it for wasting so much oxygen.",
    "I'd tell you to shoot yourself, but I bet you'll miss.",
    "Did you know sharks only kill 5 people each year? Looks like you got some competition.",
    "Some babies were dropped on their heads but you were clearly thrown at a wall.",
    "To which foundation do I need to donate to help you?",
    "I'm sure your body pillow is very proud of you.",
    "Two wrongs don't make a right, take your parents as an example.",
    "I bet the last time you felt a breast was in a KFC bucket.",
    "Maybe God made you a bit too special.",
    "I bet your brain feels as good as new, seeing that you never use it.",
    "It must be difficult for you, exhausting your entire vocabulary in one sentence.",
    "You have some big balls on you. Too bad they belong to the guy fucking you from behind.",
    "If only you could hit an enemy as much as your dad hits you.",
    "I'm surprised that you were able to hit the Install button.",
    "Some people get paid to suck, you do it for free.",
    "I would ask you how old you are but I know you can't count that high.",
    "I'm okay with this team. I work in the city as a garbage collector. I'm used to carrying trash.",
    "You're as dense as a brick, but honestly a less useful one.",
}


local say_RU = {
    "Слава Украине!",
    "Сука блядь",
    "Иди на хуй",
    "Твою мать",
    "Ни на что не годная импотентная сучка Юн сосала мой член",
    "Ебанутый",
    "идиот",
    "Я твой рот ебал на хуй",
    "Я тебя выебу",
    "Мозг`и еб`ать",
    "дурак",
    "простая игра",
    "бездарный",
    "Хуёвый",
    "Еб твою мать",
    "Сукины дети！",
    "ты никчемный",
    "Пошёл на хуй",
    "жопа",
    "Ты ебанутый что ли?",
    "Я тебя въебу на хуй",
    "Ах ты ёбанная блядь",
    "Сукин сын！",
    "Я ебу твою бабу в жобу",
    "Сука ，блять ，что ты там пиздишь?",
    "Ты дура кончиная，блять，сука ебанная",
    "Ах ты ёбанная блять",
    "Урод，хули ты там выёбываешься! пидорас ебучий",
    "Трахать",
    "Я ебу твою мать",
    "Иди на хуй !",
    "твай матель",
    "дурак убогий",
    "Я вставляю свой пенис в твою бесполезную пизду, как флешку",
    "иди на хуй",
    "скотина",
    "ничтожество",
    "Как вы живѐте?",
    "Спешить как голый ебаться",
    "Я буду трахать клитор твоей суки, пока он не станет мясистым"
}


local Dead_CN = {
    "是的孩子 你赢了", "^^_",
    "1,我帮你扣的 你还不配给我扣1",
    "我让你一个头,我怕你玻璃心砸电脑",
    "我在游戏里被你杀死,你妈在现实里被我杀死",
    "打的我好困,先睡会Zzzz", 
    "看你可怜,这个头送你了",
    "据说你爸妈当年也是这么死的",
    "1,你在奇怪我死了为什么扣1 ?因为我帮你扣的",
    "666踩到甲沟炎了",
    "这.....不是终点...."
}








    --这些都是封装的小函数
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
    
    function SecondsToTicks(time)
        return time * 64;
    end


    local function get_line_color(index, total_points)
        local h = (index / total_points) + (game.global_vars.real_time * 0.1) % 1
        return hsv_to_rgb(h, 1, 1, 1)
    end


    local function IsSelectIndex(nBitSets, nIndex)
        return bit.band(nBitSets, bit.lshift(1, nIndex)) > 0
    end
    


local keystate = utils.find_export('user32.dll', 'GetAsyncKeyState')
local GetAsyncKeyState = ffi.cast("int(__stdcall*)(int)", keystate)


local function is_key_pressed(vKey)
    local state = GetAsyncKeyState(vKey)
    return bit.band(state, 0x8000) ~= 0
end



local function get_abs_fps()
    frame_rate = 0.9 * frame_rate + (1.0 - 0.9) * game.global_vars.frame_time
    return math.floor((1.0 / frame_rate) + 0.5)
end

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
end

local function generate_gradient_color(progress, opacity)
    local r, g, b;
    if progress < 0.5 then
        r = math.floor(math.lerp(50, 135, progress / 0.5));
        g = math.floor(math.lerp(100, 180, progress / 0.5));
        b = math.floor(math.lerp(255, 255, progress / 0.5));
    else
        r = math.floor(math.lerp(135, 100, (progress - 0.5) / 0.5));
        g = math.floor(math.lerp(180, 50, (progress - 0.5) / 0.5));
        b = math.floor(math.lerp(255, 226, (progress - 0.5) / 0.5));
    end

    return draw.color(r, g, b, math.floor(opacity * 255));
end



local function vector_add(v1, v2)
return vector(v1.x + v2.x, v1.y + v2.y, v1.z + v2.z)
end


local function vector_sub(v1, v2)
return vector(v1.x - v2.x, v1.y - v2.y, v1.z - v2.z)
end


local function vector_multiply(v, scalar)
return vector(v.x * scalar, v.y * scalar, v.z * scalar)
end


local function vector_normalize(v)
local length = v:length()
if length == 0 then return vector(0, 0, 0) end
return vector(v.x / length, v.y / length, v.z / length)
end


local function normalize_yaw(yaw)
return ((yaw + 180) % 360) - 180
end

local function calculate_target_view(lp_pos, yaw, pitch)
yaw = normalize_yaw(yaw)
pitch = math.clamp(pitch, -80, 80)

if yaw < 0 then
    return vector_add(lp_pos, vector(
        -80 - yaw,    
        pitch * 3.2,  
        15 + pitch    
    ))
elseif yaw > 0 then
    return vector_add(lp_pos, vector(
        -80 + yaw,
        -pitch * 3.2,
        15 + pitch
    ))
else
    return vector_add(lp_pos, vector(
        -80,
        -pitch * 3.2,
        15 + pitch
    ))
end
end


local function precompute_sin_cos(angle)
    return math.cos(angle), math.sin(angle)
end

local function draw_complex_snowflake(center_3d, size)
    local d = draw.surface
    local center_2d = math.world_to_screen(center_3d)
    if not center_2d then return end

    local branches = 6 
    local cos_cache = {}
    local sin_cache = {}

   
    for i = 0, branches - 1 do
        local angle = (i / branches) * math.pi * 2
        
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
            
            d:add_line_multicolor(
                draw.vec2(center_2d.x, center_2d.y),
                draw.vec2(branch_end_2d.x, branch_end_2d.y),
                draw.color(255, 255, 255),    
                draw.color(90, 150, 255),    
                3.0
            )

            
            for j = 1, 2 do
                local sub_angle = angle + (j * 0.3) * (-1) ^ j 
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
                        draw.color(255, 255, 255), 
                        draw.color(90, 150, 255),   
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


--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵

local function precompute_sin_cos(angle)
return math.cos(angle), math.sin(angle)
end


local function text_lerp(v1, v2, t)
    return v1 + (v2 - v1) * t
end

local function text_clamp(value, min, max)
    return math.max(min, math.min(value, max))
end

local function rgba_to_hex(r, g, b, a)
    return string.format("#%02X%02X%02X%02X", r, g, b, a)
end

local function update_x(current, target, speed)
    if not current then return target end 
    return current + (target - current) * speed
end

local function fastlerp(start, vend, time)
    return start + (vend - start) * time
end



--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
local function text_fade_animation(x, y, speed, color1, color2, text, size)
    local d = draw.surface
    d.font = draw.fonts['gui_title']
    local curtime = game.global_vars.real_time
    if not curtime then
        return
    end

    if not text or #text == 0 then
        return
    end

    for i = 1, #text do
        local char = text:sub(i, i)
        if char then
    
            local wave = math.sin(speed * curtime + i / 5) * 0.5 + 0.5

            
            local lerped_r = text_lerp(color1.r, color2.r, wave)
            local lerped_g = text_lerp(color1.g, color2.g, wave)
            local lerped_b = text_lerp(color1.b, color2.b, wave)

            
            lerped_r = math.min(255, math.max(0, lerped_r))
            lerped_g = math.min(255, math.max(0, lerped_g))
            lerped_b = math.min(255, math.max(0, lerped_b))

            d:add_text(draw.vec2(x + i * size + 1, y + 1), char, draw.color(lerped_r * 0.6, lerped_g * 0.6, lerped_b * 0.6, color1.a * 0.7))
            d:add_text(draw.vec2(x + i * size, y), char, draw.color(lerped_r, lerped_g, lerped_b, color1.a))
        end
    end
end



--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
local function glowing_text(x, y, text, speed, scale, color1, color2)
    local d = draw.surface
    d.font = draw.fonts['gui_title'] 
    local time = game.global_vars.real_time
    if not time or not text then return end

    for i = 1, #text do
        local char = text:sub(i, i)
        local char_x = x + (i - 1) * (scale or 20) 
        local char_y = y + math.sin(time * speed + i * 0.2) * 5 

        
        local wave = 0.5 * (1 + math.sin(time * speed + i * 0.2)) 

        
        local lerped_r = color1.r + (color2.r - color1.r) * wave
        local lerped_g = color1.g + (color2.g - color1.g) * wave
        local lerped_b = color1.b + (color2.b - color1.b) * wave
        local lerped_a = color1.a + (color2.a - color1.a) * wave

        
        d:add_text(draw.vec2(char_x + 2, char_y + 2), char, draw.color(lerped_r * 0.5, lerped_g * 0.5, lerped_b * 0.5, lerped_a * 0.5)) --光晕
        d:add_text(draw.vec2(char_x, char_y), char, draw.color(lerped_r, lerped_g, lerped_b, lerped_a))
    end
end






--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵

local function on_player_hurt(event)
    local event_name = event:get_name()
    local lp = entities.get_local_pawn()


    
    if not lp or not game.engine:in_game() then
        return
    end

    if event_name == "map_shutdown" then
        
        hitlog_texts = {}
    end

    if event_name == 'player_hurt' then
        local attacker_name_Hitlog
        local user_name_Hitlog
        local attacker_pos
        local user_pos

        local user_pawn = event:get_pawn_from_id('userid')
        local attacker_pawn = event:get_pawn_from_id('attacker')

        local player_remaining = event:get_int('health')
        local damage_Hitlog = event:get_int("dmg_health")
        local hitgroup_Hitlog = event:get_int("hitgroup")
        local attacker_weapon = event:get_string('weapon')

        local hitgroup_names = {
            [0] = "unknown",
            [1] = "Head",
            [2] = "neck",
            [3] = "stomach",
            [4] = "Left Hand",
            [5] = "Right Hand",
            [6] = "Left Leg",
            [7] = "Right Leg"
        }

        if not attacker_pawn and user_pawn then
            attacker_name_Hitlog = "yourself"
            attacker_pos = user_pawn:get_abs_origin()
        else
            attacker_name_Hitlog = attacker_pawn:get_name()
            attacker_pos = attacker_pawn:get_abs_origin()
        end

        user_name_Hitlog = user_pawn:get_name()
        user_pos = user_pawn:get_abs_origin()

        local distance = calculate_distance(attacker_pos, user_pos) * 0.1
        distance = math.floor(distance)

        if not attacker_weapon then
            attacker_weapon = "world"
        end

        local HitSite = hitgroup_names[hitgroup_Hitlog]

        
        if attacker_pawn == lp then
            local hitlog_text = string.format(
                "%s for %d hp in %s (%d remaining | distance: %dm)",
                user_name_Hitlog, damage_Hitlog, HitSite, player_remaining, distance
            )

            
            table.insert(hitlog_texts, {
                text = hitlog_text,
                remaining = player_remaining, 
                alpha = 50, 
                time = game.global_vars.real_time
            })

            if user_pawn:is_enemy() then
                
                local Hit_message_Hitlog = string.format(
                    "Damage: %d HP | Hit site: %s | Remaining: %d | Distance: %dm",
                    damage_Hitlog, HitSite, player_remaining, distance
                )
                print(Hit_message_Hitlog)
        
                local Hitnotif = gui.notification('Hit Message', Hit_message_Hitlog, draw.textures['icon_rage'])
                if Hit_notify:get_value():get() then
                    gui.notify:add(Hitnotif)
                end

            end




            if not user_pawn:is_enemy() and user_pawn ~= lp then


                Team_general_dmg = Team_general_dmg + damage_Hitlog
                if player_remaining == 0 then
                    Team_kill = Team_kill +1
                end
                local Hurt_message_Hitlog = string.format(
                    "Kill: %d/3 | Damage: %d HP | Remaining: %d | General DMG: %d/300",
                    Team_kill,damage_Hitlog, player_remaining,Team_general_dmg
                )
                local Hurtnotif = gui.notification('Team Damage Warning', Hurt_message_Hitlog, draw.textures['icon_info'])
                if Team_DMG_event:get_value():get() then
                    gui.notify:add(Hurtnotif)
                end
            end


        end

        if user_pawn == lp and player_remaining == 0 and Dead_say:get_value():get() then
            game.engine:client_cmd('say ' .. (Dead_CN[math.random(1, #Dead_CN)]))
        end

        if user_pawn == lp and Hurt_notify:get_value():get() and damage_Hitlog ~= 0 then



            local Hurt_message_Hitlog = string.format(
                "Hurt by: %s | Damage: %d HP | Hit site: %s | Remaining: %d | Distance: %dm",
                attacker_name_Hitlog, damage_Hitlog, HitSite, player_remaining, distance
            )
            local Hurtnotif = gui.notification('Hurt Message', Hurt_message_Hitlog,draw.textures['icon_close'])
            gui.notify:add(Hurtnotif)
        end

        -- 处理击杀
        if attacker_pawn == lp and user_pawn and not user_pawn:is_alive() then
            if Open_KillSay:get_value():get() and not EN_KillSay:get_value():get() and not RU_KillSay:get_value():get() then
                game.engine:client_cmd('say ' .. (say_CN[math.random(1, #say_CN)]))
            end

            if EN_KillSay:get_value():get() then
                game.engine:client_cmd('say ' .. (say_EN[math.random(1, #say_EN)]))
            end

            if RU_KillSay:get_value():get() then
                game.engine:client_cmd('say ' .. (say_RU[math.random(1, #say_RU)]))
            end

            if hitsound:get_value():get() then
                game.engine:client_cmd('play sounds/STL_Hit.vsnd_c');
            end


        end

        if attacker_pawn == lp and user_pawn and not user_pawn:is_alive() and lightning_HitMark_checkbox:get_value():get() then

            local local_pawn = lp;
            local victim_pawn = user_pawn;
            local attacker_pawn = attacker_pawn;
            if attacker_pawn ~= local_pawn or not victim_pawn then
                return;
            end
    
            local victim_position = victim_pawn:get_abs_origin();

            local lightning_path = {};
            for _ = 1, 20 do
                local offset = math.vec3(
                    math.random(-15, 15),
                    math.random(-15, 15),
                    math.random(20, 60)
                );
                table.insert(lightning_path, offset);
            end
    
            table.insert(lightning_HitMark, {
                position = victim_position,
                path = lightning_path,
                time = 1.8,
                opacity = 1.0
            });

            table.insert(light_flash, {
                position = vector(victim_position.x,victim_position.y,victim_position.z + 40),
                size = 30, 
                opacity = 1.0, 
                time = 1.0
            });

            
        end

            
    end
end


--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
local function on_present_queue()
    --!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵

    local w, h = game.engine:get_screen_size()
    local d = draw.surface
    d.font = draw.fonts['gui_semi_bold']
    local r, g, b, a = get_bar_color()

    local lp = entities.get_local_pawn()


    if EN_KillSay:get_value():get() then
        RU_KillSay:set_value(false)
    end

    if RU_KillSay:get_value():get()then
        EN_KillSay:set_value(false)
    end

    if EN_AutoSay:get_value():get() then
        RU_AutoSay:set_value(false)
    end

    if RU_AutoSay:get_value():get()then
        EN_AutoSay:set_value(false)
    end

    if top_rgb_line:get_value():get() then
        d:add_line_multicolor(draw.vec2(0, 3), draw.vec2(w, 3), draw.color(r,g,b,a), draw.color(b,r,g,a), 5.0)
    end

    if not lp then
        return
    end

    if add_luaA_bool == false then
        Add_luaA()
    end

    if not game.engine:in_game() then
        Team_general_dmg = 0
        Team_kill = 0
        frame_counter = 0
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

    frame_counter = frame_counter + 1

    local weapon = lp:get_active_weapon()

    if not weapon then
        return
    end


    local weapon_id
    local weapon_type

    d:add_text(draw.vec2(w/2, 200), Near_Crosshair_Entity_distance, draw.color(255, 255, 255))
    d:add_text(draw.vec2(w/2, 230), closest_enemy, draw.color(255, 255, 255))

    weapon_id = weapon:get_id()
    weapon_type = weapon:get_type()

    --反手持刀 switchhands实现
    if Switchknifehand:get_value():get() then
        if weapon_type == 0 and not lefthand then
            game.engine:client_cmd('switchhands')
            lefthand = true
        end
    
        if weapon_type ~= 0 and lefthand and weapon_id ~= 49 then
            game.engine:client_cmd('switchhands')
            lefthand = false
        end
    end

    
    --!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵

    --反挂机踢出
    if Anti_AFK_Start and not (game.global_vars.tick_count == The_Last_Tick_Count) and Anti_AFK:get_value():get() then
        local lp = entities.get_local_pawn();
        
        if not lp then
            return
        end

        if not (Spawn_Position:dist(lp:get_abs_origin()) < 5) or (Time_in_Ticks >= SecondsToTicks(FreezeTime + 0.1)) then
            game.engine:client_cmd("-right");
            Anti_AFK_Start = false;
            Time_in_Ticks = 0;
            return;
        elseif Time_in_Ticks == SecondsToTicks(FreezeTime) then
            game.engine:client_cmd("+right");
        end

        Time_in_Ticks = Time_in_Ticks + 1;
        The_Last_Tick_Count = game.global_vars.tick_count;
    end


    --自动喊话
    if frame_counter> 4 and Open_AutoSay:get_value():get() and game.engine:in_game() then

        if not EN_AutoSay:get_value():get() and not RU_AutoSay:get_value():get() then
            game.engine:client_cmd('say ' .. (say_CN[math.random(1, #say_CN)]))
        end

        if EN_AutoSay:get_value():get() then
            game.engine:client_cmd('say ' .. (say_EN[math.random(1, #say_EN)]))
        end

        if RU_AutoSay:get_value():get() then
            game.engine:client_cmd('say ' .. (say_RU[math.random(1, #say_RU)]))
        end


        
        frame_counter = 0
    end


    --雪花脚印
    if game.engine:in_game() and snow_paw:get_value():get() then
        local local_player = entities.get_local_pawn()
        if not local_player then return end
    
        local ground_pos = local_player:get_abs_origin()
        local size = 3
        local max_trail_points = 6 
    
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


            --彩虹轨迹
            if game.engine:in_game() and trail_draw:get_value():get() then
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
                            3.2
                        )
                    end
                end
            end

--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
    --人物状态显示
    if Player_status:get_value():get() and game.engine:in_game() then

        local select = ffi.cast("uint64_t**", gui.ctx:find('misc>menu>dpi scale'):get_value():get())[0][0]
        local Player_status_offset_x = 0

        if IsSelectIndex(select, 0) or IsSelectIndex(select, 3) then
            Player_status_offset_x = 0
        end

        if IsSelectIndex(select, 4) then
            Player_status_offset_x = 6
        end

        if not lp.m_bIsScoped:get() then
            if speed ~= 0 and misc_slowwalk:get_value():get() == false and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                d:add_text(draw.vec2(w / 2 - 21 - Player_status_offset_x, h / 2 + 19), "Running", draw.color.black())
                d:add_text(draw.vec2(w / 2 - 22 - Player_status_offset_x, h / 2 + 18), "Running", draw.color(255, 255, 255))
            end
    
    
            if misc_slowwalk:get_value():get() and  speed ~= 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                d:add_text(draw.vec2(w / 2 - 26 - Player_status_offset_x, h / 2 + 19), "Slow Walk", draw.color.black())
                d:add_text(draw.vec2(w / 2 - 27 - Player_status_offset_x, h / 2 + 18), "Slow Walk", draw.color(255, 255, 255))
            end
        
    
            if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                d:add_text(draw.vec2(w / 2 - 17, h / 2 + 19), "In AIR", draw.color.black())
                d:add_text(draw.vec2(w / 2 - 18, h / 2 + 18), "In AIR", draw.color(255, 255, 255))
            end
            
    
            if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ~= 0 then
                d:add_text(draw.vec2(w / 2 - 24 - Player_status_offset_x, h / 2 + 19), "AIR-Duck", draw.color.black())
                d:add_text(draw.vec2(w / 2 - 25 - Player_status_offset_x, h / 2 + 18), "AIR-Duck", draw.color(255, 255, 255))
            end
    
    
            if speed == 0  and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                d:add_text(draw.vec2(w / 2 - 17, h / 2 + 19), "Stand", draw.color.black())
                d:add_text(draw.vec2(w / 2 - 18, h / 2 + 18), "Stand", draw.color(255, 255, 255))
            end
    
    
            if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ~= 0 then
                d:add_text(draw.vec2(w / 2 - 14, h / 2 + 19), "Duck", draw.color.black())
                d:add_text(draw.vec2(w / 2 - 15, h / 2 + 18), "Duck", draw.color(255, 255, 255))
            end

        else
            current_x_status = update_x(current_x_status, w / 2 + 5, 0.1)

            if not current_x_status then
                return
            end

            if speed ~= 0 and misc_slowwalk:get_value():get() == false and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                d:add_text(draw.vec2(current_x_status + 1, h / 2 + 19), "Running", draw.color.black())
                d:add_text(draw.vec2(current_x_status, h / 2 + 18), "Running", draw.color(255, 255, 255))
            end
    
    
            if misc_slowwalk:get_value():get() and  speed ~= 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                d:add_text(draw.vec2(current_x_status + 1, h / 2 + 19), "Slow Walk", draw.color.black())
                d:add_text(draw.vec2(current_x_status, h / 2 + 18), "Slow Walk", draw.color(255, 255, 255))
            end
        
    
            if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                d:add_text(draw.vec2(current_x_status + 1, h / 2 + 19), "In AIR", draw.color.black())
                d:add_text(draw.vec2(current_x_status, h / 2 + 18), "In AIR", draw.color(255, 255, 255))
            end
            
    
            if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ~= 0 then
                d:add_text(draw.vec2(current_x_status + 1, h / 2 + 19), "AIR-Duck", draw.color.black())
                d:add_text(draw.vec2(current_x_status, h / 2 + 18), "AIR-Duck", draw.color(255, 255, 255))
            end
    
    
            if speed == 0  and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                d:add_text(draw.vec2(current_x_status + 1, h / 2 + 19), "Stand", draw.color.black())
                d:add_text(draw.vec2(current_x_status, h / 2 + 18), "Stand", draw.color(255, 255, 255))
            end
    
    
            if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ~= 0 then
                d:add_text(draw.vec2(current_x_status + 1, h / 2 + 19), "Duck", draw.color.black())
                d:add_text(draw.vec2(current_x_status, h / 2 + 18), "Duck", draw.color(255, 255, 255))
            end

        end




    end



    local manual_antiaim = {
        left = 0,
        right = 0
    }

    --藏头指示器
    if AA_Indicator:get_value():get() and game.engine:in_game() then


        local AA_Indicator_distance = (w / 2) / 210 * 12




        if angles_Left_checkbox:get_value():get() then
            
            manual_antiaim.left = update_x(manual_antiaim.left, 1200, 0.01)
            
            left_alpha = math.min(left_alpha + game.global_vars.frame_time * 600, 255)
            
            d:add_triangle_filled(
                draw.vec2(w / 2 - AA_Indicator_distance - manual_antiaim.left, h / 2 + 7),
                draw.vec2(w / 2 - AA_Indicator_distance - manual_antiaim.left - 15, h / 2),
                draw.vec2(w / 2 - AA_Indicator_distance - manual_antiaim.left, h / 2 - 7),
                draw.color(255, 255, 255, left_alpha) 
            )

            d:add_triangle(
                draw.vec2(w / 2 - AA_Indicator_distance - manual_antiaim.left, h / 2 + 7),
                draw.vec2(w / 2 - AA_Indicator_distance - manual_antiaim.left - 15, h / 2),
                draw.vec2(w / 2 - AA_Indicator_distance - manual_antiaim.left, h / 2 - 7),
                draw.color(0, 0, 0,left_alpha),
                1.2,
               draw.outline_mode.inset
            );
        else

            manual_antiaim.left = update_x(manual_antiaim.left, -100, 0.1)
            
            
            left_alpha = math.max(left_alpha - game.global_vars.frame_time * 800, 0) 
            
            d:add_triangle_filled(
                draw.vec2(w / 2 - AA_Indicator_distance - manual_antiaim.left, h / 2 + 7),
                draw.vec2(w / 2 - AA_Indicator_distance - manual_antiaim.left - 15, h / 2),
                draw.vec2(w / 2 - AA_Indicator_distance - manual_antiaim.left, h / 2 - 7),
                draw.color(255, 255, 255, left_alpha)  
            )

            d:add_triangle(
                draw.vec2(w / 2 - AA_Indicator_distance - manual_antiaim.left, h / 2 + 7),
                draw.vec2(w / 2 - AA_Indicator_distance - manual_antiaim.left - 15, h / 2),
                draw.vec2(w / 2 - AA_Indicator_distance - manual_antiaim.left, h / 2 - 7),
                draw.color(0, 0, 0,left_alpha),
                1.2,
               draw.outline_mode.inset
            );
        end

        if angles_Right_checkbox:get_value():get() then

            manual_antiaim.right = update_x(manual_antiaim.right, 1200, 0.01)
            
            right_alpha = math.min(right_alpha + game.global_vars.frame_time * 600, 255)
            
            d:add_triangle_filled(
                draw.vec2(w / 2 + AA_Indicator_distance + manual_antiaim.right, h / 2 + 7),
                draw.vec2(w / 2 + AA_Indicator_distance + manual_antiaim.right + 15, h / 2),
                draw.vec2(w / 2 + AA_Indicator_distance + manual_antiaim.right, h / 2 - 7),
                draw.color(255, 255, 255, right_alpha) 
            )

            d:add_triangle(
                draw.vec2(w / 2 + AA_Indicator_distance + manual_antiaim.right, h / 2 + 7),
                draw.vec2(w / 2 + AA_Indicator_distance + manual_antiaim.right + 15, h / 2),
                draw.vec2(w / 2 + AA_Indicator_distance + manual_antiaim.right, h / 2 - 7),
                draw.color(0, 0, 0,right_alpha),
                1.2,
               draw.outline_mode.inset
            );
        else
            

            manual_antiaim.right = update_x(manual_antiaim.right, -100, 0.1)
            
            
            right_alpha = math.max(right_alpha - game.global_vars.frame_time * 800, 0) 
            
            d:add_triangle_filled(
                draw.vec2(w / 2 + AA_Indicator_distance + manual_antiaim.right, h / 2 + 7),
                draw.vec2(w / 2 + AA_Indicator_distance + manual_antiaim.right + 15, h / 2),
                draw.vec2(w / 2 + AA_Indicator_distance + manual_antiaim.right, h / 2 - 7),
                draw.color(255, 255, 255, right_alpha)  
            )

            d:add_triangle(
                draw.vec2(w / 2 + AA_Indicator_distance + manual_antiaim.right, h / 2 + 7),
                draw.vec2(w / 2 + AA_Indicator_distance + manual_antiaim.right + 15, h / 2),
                draw.vec2(w / 2 + AA_Indicator_distance + manual_antiaim.right, h / 2 - 7),
                draw.color(0, 0, 0,right_alpha),
                1.2,
               draw.outline_mode.inset
            );


        end
    end




--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵

    --速度进度条
    if speed_prg:get_value():get() then
        
        local maxspeed = weapon:get_max_speed()

        if not lp.m_bIsScoped:get() then
            current_x_speed = update_x(current_x_speed, w / 2 + 13, 0.1)
        else
            current_x_speed = update_x(current_x_speed, w / 2 + 43, 0.1)
        end

        local y = h / 2 + 15
        local progress_bar_x = current_x_speed - 40
        local progress_bar_y = y + 20
        local progress_bar_width = 55
        local progress_bar_height = 4

        local fill_width = math.max(0, math.min(speed / maxspeed, 1)) * progress_bar_width

        
        d:add_rect_filled(
            draw.rect(
                progress_bar_x,
                progress_bar_y,
                progress_bar_x + progress_bar_width,
                progress_bar_y + progress_bar_height
            ),
            draw.color.black()
        )

        
        d:add_rect_filled(
            draw.rect(
                progress_bar_x,
                progress_bar_y,
                progress_bar_x + fill_width,
                progress_bar_y + progress_bar_height
            ),
            draw.color(255, 255, 255, 255)
        )

    end


end

--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
local function no_fall_dmg()

    if game.engine:in_game() and No_Fall_DMG:get_value():get() then

        local lp = entities.get_local_pawn()

        if not lp then
            return
        end



        if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 0 and lp.m_flOldFallVelocity:get() > 570 then
            gui.ctx:find('misc>movement>jumpbug'):set_value(true)
        else
            gui.ctx:find('misc>movement>jumpbug'):set_value(false)
        end
    end



end

local function WaterMark()
    local w, h = game.engine:get_screen_size()
    local d = draw.surface
    d.font = draw.fonts['gui_semi_bold']
    local r, g, b, a = get_bar_color()

    local lp = entities.get_local_pawn()

    if not lp then
        return
    end


    --准星下方呼吸水印
    if game.engine:in_game() and Crosshair_WaterMark:get_value():get() then
        local text = "STL.SU"

        if not lp.m_bIsScoped:get() then
            current_x = update_x(current_x, w / 2 - 47, 0.1)
    
        else
            current_x = update_x(current_x, w / 2 - 10, 0.1)
        end

        text_fade_animation(current_x, h / 2 + 45, 3, { r = 170, g = 130, b = 250, a = 255 }, { r = 0, g = 0, b = 0, a = 255 }, text,12)
    end

--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵

-- 添加鼠标拖动逻辑的水印代码
if game.engine:in_game() and Misc_WaterMark:get_value():get() then
    local x = watermarkX or (w - 190)
    local y = watermarkY or 0

    -- DPI 和主题逻辑
    local dpi_select = ffi.cast("uint64_t**", gui.ctx:find('misc>menu>dpi scale'):get_value():get())[0][0]
    local Theme_select = ffi.cast("uint64_t**", gui.ctx:find('misc>menu>theme'):get_value():get())[0][0]
    local watermark_dpi_x = 0
    local rect_dpi_offset_x = 0
    local rect_color_Theme = draw.color(0, 0, 0, 155)
    local line_color_Theme = draw.color(255, 79, 94)

    -- 根据 DPI 和主题选择更新颜色和位置
    if IsSelectIndex(dpi_select, 0) or IsSelectIndex(dpi_select, 3) then
        watermark_dpi_x = 25
        rect_dpi_offset_x = 0
    end

    if IsSelectIndex(dpi_select, 4) then
        watermark_dpi_x = 15
        rect_dpi_offset_x = 65
    end

    if IsSelectIndex(Theme_select, 0) then
        rect_color_Theme = draw.color(25, 21, 52, 205)
        line_color_Theme = draw.color(235, 5, 90)
    end

    if IsSelectIndex(Theme_select, 1) then
        rect_color_Theme = draw.color(0, 0, 0, 155)
        line_color_Theme = draw.color(255, 79, 94)
    end

    if not IsSelectIndex(Theme_select, 0) and not IsSelectIndex(Theme_select, 1) then
        rect_color_Theme = draw.color(11, 11, 11, 155)
        line_color_Theme = draw.color(255, 95, 10)
    end

    local progress_bar_x = x - 410 - rect_dpi_offset_x
    local progress_bar_y = y + 10
    local progress_bar_width = 520 + rect_dpi_offset_x
    local progress_bar_height = 40

    
    local chan = game.engine:get_netchan()
    local lp_ping_ms
    local player_name = gui.ctx.user.username
    if chan and not chan:is_null() then
        local lp_ping = chan:get_latency()
        lp_ping_ms = math.floor(lp_ping * 1000 + 0.5)
    end

    if not lp_ping_ms then
        lp_ping_ms = 0
    end

    -- 添加拖动逻辑
    local cursor = gui.input:cursor()
    local dragEnabled = is_key_pressed(0x01)

    if cursor.x >= progress_bar_x and cursor.x <= progress_bar_x + progress_bar_width and
        cursor.y >= progress_bar_y and cursor.y <= progress_bar_y + progress_bar_height then
        if dragEnabled and not isDraggingWatermark then
            isDraggingWatermark = true
            dragOffsetXWatermark = cursor.x - x
            dragOffsetYWatermark = cursor.y - y
        end
    end

    if isDraggingWatermark then
        if dragEnabled then
            watermarkX = cursor.x - dragOffsetXWatermark
            watermarkY = cursor.y - dragOffsetYWatermark
        else
            isDraggingWatermark = false
        end
    end

    -- 绘制水印背景和文本
    d:add_shadow_rect(
        draw.rect(
            progress_bar_x,
            progress_bar_y,
            progress_bar_x + progress_bar_width,
            progress_bar_y + progress_bar_height
        ), 6, true, 0.25)

    d:add_rect_filled_rounded(
        draw.rect(
            progress_bar_x - 1,
            progress_bar_y - 1,
            progress_bar_x + progress_bar_width + 1,
            progress_bar_y + progress_bar_height + 1
        ),
        draw.color(125, 121, 152, 125),
        3,
        draw.rounding.all
    )

    d:add_rect_filled_rounded(
        draw.rect(
            progress_bar_x,
            progress_bar_y,
            progress_bar_x + progress_bar_width,
            progress_bar_y + progress_bar_height
        ),
        rect_color_Theme,
        2,
        draw.rounding.all
    )

    d:add_line_multicolor(draw.vec2(progress_bar_x - 1, progress_bar_y), draw.vec2(progress_bar_x + progress_bar_width + 1, progress_bar_y), line_color_Theme, line_color_Theme, 3.0)
    glowing_text(60, h / 2 - 200, "STL.SU", 8, 30, { r = 235, g = 5, b = 90, a = 255 }, { r = 98, g = 90, b = 136, a = 255 })

    local WaterMark_Text = "FATALITY  |  " .. player_name .. "  |  " .. tostring(lp_ping_ms) .. " ms  |  " .. get_abs_fps() .. " FPS  |  " .. speed .. " Speed"
    d:add_text(draw.vec2(progress_bar_x + watermark_dpi_x, progress_bar_y + 11), WaterMark_Text, draw.color(0, 0, 0))
    d:add_text(draw.vec2(progress_bar_x + watermark_dpi_x - 1, progress_bar_y + 9), 'FATALITY', draw.color(255, 0, 0))
    d:add_text(draw.vec2(progress_bar_x + watermark_dpi_x + 1, progress_bar_y + 11), 'FATALITY', draw.color(0, 0, 255))
    d:add_text(draw.vec2(progress_bar_x + watermark_dpi_x, progress_bar_y + 10), WaterMark_Text, draw.color(255, 255, 255))
end


end

--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--是否开启anti AFK状态喵
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
local function on_round_start(event)
    local event_name = event:get_name()
    if event_name == 'round_start' then
        
        local lp = entities.get_local_pawn();
        if not lp then
            return
        end
        Spawn_Position = lp:get_abs_origin();
        Anti_AFK_Start = true;

        if round_start_say:get_value():get() then
            game.engine:client_cmd('say "我是狙击手雪鹰，正片开始了"')
        end
    end
end

--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
local function draw_hitlog()
    local screenWidth, screenHeight = game.engine:get_screen_size()
    local Text_X, Text_Y = screenWidth / 2 - 160, screenHeight /2 + 130 
    local d = draw.surface
    d.font = draw.fonts['gui_main']
    local add_y = 0

    if not Hit_Log:get_value():get() then
        return
    end

    
    for i, log in ipairs(hitlog_texts) do
        
        if log.time + 1 > game.global_vars.real_time then
            log.alpha = math.lerp(log.alpha, 255, 0.095) 
        elseif log.time + 3 < game.global_vars.real_time then
            log.alpha = math.lerp(log.alpha, 0, 0.095) 
        end

        
        add_y = add_y + 30 * log.alpha / 255

        
        local hit_color = draw.color(0, 255, 0, log.alpha) 
        d:add_text(draw.vec2(Text_X, Text_Y + add_y), "Hit", hit_color)

        
        local offset = 75 
        local remaining_text = log.text 
        local damage_start, damage_end = string.find(remaining_text, "%d+ hp") 

        if damage_start then
            
            local before_damage = string.sub(remaining_text, 1, damage_start - 1)
            local damage_number = string.sub(remaining_text, damage_start, damage_end)
            local after_damage = string.sub(remaining_text, damage_end + 1)

            
            d:add_text(draw.vec2(Text_X + 28, Text_Y + add_y), before_damage, draw.color(255, 255, 255, log.alpha))

            
            local damage_color = log.remaining == 0 and draw.color(0, 255, 0, log.alpha) or draw.color(255, 0, 0, log.alpha)
            d:add_text(draw.vec2(Text_X + offset + 24, Text_Y + add_y), damage_number, damage_color) 

            
            d:add_text(
                draw.vec2(Text_X + offset + 60, Text_Y + add_y), 
                after_damage,
                draw.color(255, 255, 255, log.alpha)
            )
        else
            
            d:add_text(draw.vec2(Text_X + offset, Text_Y + add_y), remaining_text, draw.color(255, 255, 255, log.alpha))
        end

        
        if log.alpha < 1 or #hitlog_texts > 6 then
            table.remove(hitlog_texts, i)
        end
    end
end

--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
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

        if vote_event:get_value():get() then
            gui.notify:add(votenotif)
        end

    end

    if event_name == 'cs_win_panel_match' and autodis_checkbox:get_value():get() then
        game.engine:client_cmd("disconnect")
    end
end

--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
local function Auto_FNS()
    if game.engine:in_game() and air_auto_nospread:get_value():get() or ground_auto_nospread:get_value():get() then--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
        local lp = entities.get_local_pawn()
        
        if not lp then
            return
        end

        if not lp:is_alive() then
            return
        end


        if speed ~= 0 and misc_slowwalk:get_value():get() == false and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 
        and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 
        and ground_auto_nospread:get_value():get() then
            if not lp:get_active_weapon() then
                return
            end

            if auto_nospread_combo:get_value():get():get_raw() == 1 and Near_Crosshair_Entity_distance > 125 then
                force_nospread:set_value(false)
                running_open_nosread = false
                return
            end

            if auto_nospread_combo:get_value():get():get_raw() == 2 and  Nearest_player_distance > 125 then
                force_nospread:set_value(false)
                running_open_nosread = false
                return
            end


            if lp.m_bIsScoped:get() == true then
                if lp:get_active_weapon():get_id() == 40 and  speed <= 78  then
                    running_open_nosread = true
                    if running_open_nosread == true then
                        force_nospread:set_value(true)
                        return
                    end
                else
                    running_open_nosread = false
                end

                if lp:get_active_weapon():get_id() == 9 and  speed <= 35 then
                    running_open_nosread = true
                    if running_open_nosread == true then
                        force_nospread:set_value(true)
                        return
                    end
                else
                    running_open_nosread = false
                end


            else
            
                if lp:get_active_weapon():get_id() == 1 and speed <= 78 then
                    running_open_nosread = true
                    if running_open_nosread == true then
                        force_nospread:set_value(true)
                        return
                    end
                else
                    running_open_nosread = false
                end
                
           end
        else
            running_open_nosread = false
            if running_open_nosread == false and slowwalk_open_nospread == false and air_open_nospread == false and stand_open_nospread == false and air_duck_open_nospread == false and duck_open_nospread == false and near_open_nospread == false and ground_auto_nospread:get_value():get() then
                force_nospread:set_value(false)
            end

        end


        if speed ~= 0 and misc_slowwalk:get_value():get() and  speed <= 84 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 and ground_auto_nospread:get_value():get() then
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
            if running_open_nosread == false and slowwalk_open_nospread == false and air_open_nospread == false and stand_open_nospread == false and air_duck_open_nospread == false and duck_open_nospread == false and near_open_nospread == false and ground_auto_nospread:get_value():get() then
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
            if running_open_nosread == false and air_open_nospread == false and slowwalk_open_nospread == false and stand_open_nospread == false and air_duck_open_nospread == false and duck_open_nospread == false and near_open_nospread == false and air_auto_nospread:get_value():get() then
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
            if running_open_nosread == false and air_open_nospread == false and slowwalk_open_nospread == false and stand_open_nospread == false and air_duck_open_nospread == false and duck_open_nospread == false and near_open_nospread == false and air_auto_nospread:get_value():get() then
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
            if running_open_nosread == false and air_open_nospread == false and slowwalk_open_nospread == false and stand_open_nospread == false and air_duck_open_nospread == false and duck_open_nospread == false and near_open_nospread == false and ground_auto_nospread:get_value():get() then
                force_nospread:set_value(false)
            end
        end


        if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ~= 0 and ground_auto_nospread:get_value():get() then
            if speed <= 90 and lp.m_bIsScoped:get() == true then
                duck_open_nospread = true
               if duck_open_nospread == true then
                  force_nospread:set_value(true)

                end
            else
                duck_open_nospread = false
            end
        else
            duck_open_nospread = false
            if running_open_nosread == false and air_open_nospread == false and slowwalk_open_nospread == false and stand_open_nospread == false and air_duck_open_nospread == false and duck_open_nospread == false and near_open_nospread == false and ground_auto_nospread:get_value():get() then
                force_nospread:set_value(false)
            end
        end

        if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 and ground_auto_nospread:get_value():get() then
            if Near_Crosshair_Entity_distance < 38 and lp.m_bIsScoped:get() == true then
                near_open_nospread = true
               if near_open_nospread == true then
                  force_nospread:set_value(true)
                end
            else
                near_open_nospread = false
            end
        else
            near_open_nospread = false
            if running_open_nosread == false and air_open_nospread == false and slowwalk_open_nospread == false and stand_open_nospread == false and air_duck_open_nospread == false and duck_open_nospread == false and near_open_nospread == false and ground_auto_nospread:get_value():get() then
                force_nospread:set_value(false)
            end
        end

    end

end

--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
local function draw_Lightning_strike()
    local d = draw.surface;

    for i = #lightning_HitMark, 1, -1 do
        local effect = lightning_HitMark[i];
        if effect ~= nil then
            effect.time = effect.time - game.global_vars.frame_time;
            effect.opacity = effect.opacity - (game.global_vars.frame_time * 1.5);
            if effect.time <= 0 or effect.opacity <= 0 then
                table.remove(lightning_HitMark, i);
            else
                local last_pos = effect.position;
                for j, offset in ipairs(effect.path) do
                    local new_pos = last_pos + offset;
                    local screen_start = math.world_to_screen(last_pos);
                    local screen_end = math.world_to_screen(new_pos);

                    if screen_start and screen_end then
                        local gradient_color = generate_gradient_color(j / #effect.path, effect.opacity);
                        d:add_line(screen_start, screen_end, gradient_color, 4);
                        if math.random() > 0.6 then
                            local branch_offset = math.vec3(math.random(-10, 10), math.random(-10, 10), math.random(-10, 20));
                            local branch_end = new_pos + branch_offset;
                            local branch_screen_start = math.world_to_screen(new_pos);
                            local branch_screen_end = math.world_to_screen(branch_end);
                            if branch_screen_start and branch_screen_end then
                                local branch_color = generate_gradient_color(j / #effect.path, effect.opacity * 0.7);
                                d:add_line(branch_screen_start, branch_screen_end, branch_color, 2);
                            end
                        end
                    end
                    last_pos = new_pos;
                end
            end
        end
    end


    for i = #light_flash, 1, -1 do
        local flash = light_flash[i];
        flash.time = flash.time - game.global_vars.frame_time;
        flash.opacity = flash.opacity - (game.global_vars.frame_time * 5);
        flash.size = flash.size + 30 * game.global_vars.frame_time;
    
        if flash.time <= 0 or flash.opacity <= 0 then
            table.remove(light_flash, i);
        else
            local screen_pos = math.world_to_screen(flash.position);
            if screen_pos then
                local color = draw.color(255, 255, 200, math.floor(flash.opacity * 255));
                draw.surface:add_circle(screen_pos, flash.size, color, true);
            end
        end
    end

end

--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
local function Anti_aim()

    --antiaim的组件
    local gui_pitch = gui.ctx:find('rage>anti-aim>angles>pitch>settings>value');
    local gui_yaw = gui.ctx:find('rage>anti-aim>angles>yaw>settings>amount')
    local gui_yaw_jitter = gui.ctx:find('rage>anti-aim>angles>yaw jitter>settings>amount')
    local gui_spin = gui.ctx:find('rage>anti-aim>angles>spin')
    local gui_spin_speed = gui.ctx:find('rage>anti-aim>angles>spin amount')


    if not game.engine:in_game() then
        return
    end

    local lp = entities.get_local_pawn()
    if not lp or not lp:is_alive() then
        return
    end


    if Avoid_Backstab:get_value():get() then
        if Nearest_player_distance < 12 and Nearest_player_wenpon == 0 then
            gui.ctx:find('rage>anti-aim>angles>anti-aim'):set_value(false)
        else
            gui.ctx:find('rage>anti-aim>angles>anti-aim'):set_value(true)
        end
    end
    

    if not Enable_CustomAA_Open:get_value():get() then
        return
    end

    local flags = lp.m_fFlags:get()
    local is_on_ground = bit.band(flags, bit.lshift(1, 0)) ~= 0
    local is_ducking = bit.band(flags, bit.lshift(1, 1)) ~= 0
    local is_moving = speed ~= 0
    local is_slowwalking = misc_slowwalk:get_value():get()

    -- Running
    if is_moving and not is_slowwalking and is_on_ground and not is_ducking then
        gui_pitch:get_value():set(RunningAA_Pitch_Custom:get_value():get())
        gui_yaw:get_value():set(RunningAA_Yaw_Custom:get_value():get())
        gui_yaw_jitter:get_value():set(RunningAA_jitter_Custom:get_value():get())
        gui_spin:get_value():set(RunningAA_Spinbot_Checkbox:get_value():get())
        gui_spin_speed:get_value():set(RunningAA_Spinbot_Speed:get_value():get())
    end

    -- Slowwalking
    if is_moving and is_slowwalking and is_on_ground and not is_ducking then
        gui_pitch:get_value():set(WalkAA_Pitch_Custom:get_value():get())
        gui_yaw:get_value():set(WalkAA_Yaw_Custom:get_value():get())
        gui_yaw_jitter:get_value():set(WalkAA_jitter_Custom:get_value():get())
        gui_spin:get_value():set(WalkAA_Spinbot_Checkbox:get_value():get())
        gui_spin_speed:get_value():set(WalkAA_Spinbot_Speed:get_value():get())
    end

    -- In air
    if not is_on_ground and not is_ducking then
        gui_pitch:get_value():set(AirAA_Pitch_Custom:get_value():get())
        gui_yaw:get_value():set(AirAA_Yaw_Custom:get_value():get())
        gui_yaw_jitter:get_value():set(AirAA_jitter_Custom:get_value():get())
        gui_spin:get_value():set(AirAA_Spinbot_Checkbox:get_value():get())
        gui_spin_speed:get_value():set(AirAA_Spinbot_Speed:get_value():get())
    end

    -- In air while ducking
    if not is_on_ground and is_ducking then
        gui_pitch:get_value():set(Air_DuckAA_Pitch_Custom:get_value():get())
        gui_yaw:get_value():set(Air_DuckAA_Yaw_Custom:get_value():get())
        gui_yaw_jitter:get_value():set(Air_DuckAA_jitter_Custom:get_value():get())
        gui_spin:get_value():set(Air_DuckAA_Spinbot_Checkbox:get_value():get())
        gui_spin_speed:get_value():set(Air_DuckAA_Spinbot_Speed:get_value():get())
    end

    -- Standing
    if not is_moving and is_on_ground and not is_ducking then
        gui_pitch:get_value():set(StandAA_Pitch_Custom:get_value():get())
        gui_yaw:get_value():set(StandAA_Yaw_Custom:get_value():get())
        gui_yaw_jitter:get_value():set(StandAA_jitter_Custom:get_value():get())
        gui_spin:get_value():set(StandAA_Spinbot_Checkbox:get_value():get())
        gui_spin_speed:get_value():set(StandAA_Spinbot_Speed:get_value():get())
    end

    -- Ducking
    if is_on_ground and is_ducking then
        gui_pitch:get_value():set(DuckAA_Pitch_Custom:get_value():get())
        gui_yaw:get_value():set(DuckAA_Yaw_Custom:get_value():get())
        gui_yaw_jitter:get_value():set(DuckAA_jitter_Custom:get_value():get())
        gui_spin:get_value():set(DuckAA_Spinbot_Checkbox:get_value():get())
        gui_spin_speed:get_value():set(DuckAA_Spinbot_Speed:get_value():get())
    end
end


--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
local function modify_view(setup)
    --!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵

    local min_distance = 50
    local smoothing_factor = 0.1  -- 更改平滑因子以获得平滑效果
    
    if not game.engine:in_game() then
        return
    end

    view_angles = setup.view
    view_fov = setup.fov

    local lp = entities.get_local_pawn()
    if not lp or not gui.ctx:find('visuals>misc>local>thirdperson'):get_value():get() or not moving_cam:get_value():get() or lp:is_alive() == false then
        return
    end

    local lp_pos = lp:get_eye_pos()
    if not lp_pos then
        return
    end
    
    local yaw, pitch = setup.view.y, setup.view.x

    -- 计算目标视角位置
    local target_view_pos = calculate_target_view(lp_pos, yaw, pitch)

    -- 计算目标视角与当前位置的偏移向量
    local offset_vector = vector_sub(target_view_pos, lp_pos)
    local distance = offset_vector:length()

    -- 如果偏移小于最小距离，则根据最小距离调整偏移
    if distance < min_distance then
        offset_vector = vector_multiply(vector_normalize(offset_vector), min_distance)
        target_view_pos = vector_add(lp_pos, offset_vector)
    end

    -- 使用 lerp 插值平滑地过渡到目标位置
    current_view_pos = vector_add(current_view_pos, vector_multiply(vector_sub(target_view_pos, current_view_pos), smoothing_factor))

    -- 更新相机位置
    setup.origin = current_view_pos


end


--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
local function onPresentQueue()
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵

    local min_angle = math.huge  
    local lp = entities.get_local_pawn()



    if not lp or not lp:is_alive() or not view_angles or not view_fov then
        closest_enemy = "null"
        Near_Crosshair_Entity_distance = math.huge
        return
    end

    local screen_width, screen_height = game.engine:get_screen_size()

    
    local angle_per_pixel = view_fov / screen_width

    local pixel_offset = 8
    local offset_angle = pixel_offset * angle_per_pixel

    
    local corrected_view_angles = {
        x = view_angles.x,  
        y = view_angles.y + offset_angle 
    }

    closest_enemy = "null"
    min_angle = math.huge
    Near_Crosshair_Entity_distance = math.huge
    Nearest_player_distance = math.huge
    entities.players:for_each(function(entry)
        if entry and entry.had_dataupdate and entry.entity:is_alive() and entry.entity ~= lp and entry.entity:is_enemy() then
            local attacker_name = entry.entity:get_name()  
            local enemy_pos = entry.entity:get_abs_origin()
            local temp_distance = math.huge

 
            local forward_vector = {
                x = math.cos(corrected_view_angles.y * math.pi / 180) * math.cos(corrected_view_angles.x * math.pi / 180),
                y = math.sin(corrected_view_angles.y * math.pi / 180) * math.cos(corrected_view_angles.x * math.pi / 180),
                z = math.sin(corrected_view_angles.x * math.pi / 180)
            }

            
            local to_enemy = {
                x = enemy_pos.x - lp:get_abs_origin().x,
                y = enemy_pos.y - lp:get_abs_origin().y,
                z = enemy_pos.z - lp:get_abs_origin().z
            }

            
            local dot_product = forward_vector.x * to_enemy.x + forward_vector.y * to_enemy.y + forward_vector.z * to_enemy.z
            local forward_magnitude = math.sqrt(forward_vector.x^2 + forward_vector.y^2 + forward_vector.z^2)
            local enemy_magnitude = math.sqrt(to_enemy.x^2 + to_enemy.y^2 + to_enemy.z^2)

            local cosine_angle = dot_product / (forward_magnitude * enemy_magnitude)
            local angle = math.acos(cosine_angle) * (180 / math.pi)  

            temp_distance = math.sqrt(to_enemy.x^2 + to_enemy.y^2 + to_enemy.z^2) * 0.1
            temp_distance = math.floor(temp_distance)

            if temp_distance < Nearest_player_distance then
                Nearest_player_distance = temp_distance
                Nearest_player_wenpon = entry.entity:get_active_weapon():get_type()
            end

            
            if angle < min_angle then
                min_angle = angle
                closest_enemy = attacker_name
                Near_Crosshair_Entity_distance = math.sqrt(to_enemy.x^2 + to_enemy.y^2 + to_enemy.z^2) * 0.1
                Near_Crosshair_Entity_distance = math.floor(Near_Crosshair_Entity_distance)
            end

        end
    end)
end

--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
local function STL_start_show()--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
    if fade_done then
        return 
    end

    local d = draw.surface
    d.font = draw.fonts['gui_title']
    local engine = game.engine

    local screen_width, screen_height = engine:get_screen_size()

    local w, h = screen_width, screen_height



    local image_width = 800   
    local image_height = 350   
    
    local center_x = screen_width / 2 
    local center_y = screen_height / 2 - 70 
    
    local top_left = draw.vec2(center_x - image_width / 2, center_y - image_height / 2)
    local top_right = draw.vec2(center_x + image_width / 2, center_y - image_height / 2)
    local bottom_right = draw.vec2(center_x + image_width / 2, center_y + image_height / 2)
    local bottom_left = draw.vec2(center_x - image_width / 2, center_y + image_height / 2)
    



    local g = d.g




    d:add_rect_filled(draw.rect(0, 0, screen_width, screen_height), draw.color(0, 0, 0,185));

    local text = "Sublime Tranquility Light"

    current_x1 = update_x(current_x1, w / 2 - 227, 0.1)

    text_fade_animation(current_x1, h / 2 + 145, 3, { r = 170, g = 130, b = 250, a = 255 }, { r = 0, g = 0, b = 0, a = 255 }, text,18)

    glowing_text(current_x1 - 110, h / 2 + 205, text, 8, 30,{ r = 235, g = 5, b = 90, a = 255 },{ r = 255, g = 255, b = 255, a = 255 })

    g:set_texture(start_texture)
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
            g:set_texture(nil)
            fade_done = true  
        end
    end


    d:add_quad_filled(
        top_left, top_right,
        bottom_right, bottom_left,
        draw.color(255, 255, 255, alpha)
    )
end


--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
events.present_queue:add(function()
    on_present_queue()
    no_fall_dmg()--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
    WaterMark()--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
    draw_hitlog()--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
    Auto_FNS()--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
    draw_Lightning_strike()--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
    Anti_aim_row()--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
    Anti_aim()--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
    onPresentQueue()--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
    STL_start_show()--!@#$%^&*()-=_+[]{}|;:',.<>?/`~•✔✖★☆♡☯☢⚛⚠☠☮☣⚡⚓✿☃♻⛔❄⚔✈⛵
end)

mods.events:add_listener('player_death')
mods.events:add_listener('vote_cast')
mods.events:add_listener("cs_win_panel_match")

events.event:add(on_vote_start)
events.event:add(on_player_hurt)--killsay and log
events.event:add(on_round_start)--round start say和antiafk需要的回调
events.override_view:add(modify_view)