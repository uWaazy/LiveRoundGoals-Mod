local m = { version = "\049\046\050" }
local _x1c = "\091\076\105\118\101\082\111\117\110\100\071\111\097\108\115\093"
local ffi = ffi
local bit = bit
local memory = memory
local match = match
local audio = audio
if ffi and not ffi._x07 then
ffi.cdef[[
void* _x01(const char*) __asm__("GetModuleHandleA");
void* _x02(void) __asm__("GetCurrentProcess");
int _x03(void*, const void*, void*, size_t, size_t*) __asm__("ReadProcessMemory");
void* _x04(const char*) __asm__("LoadLibraryA");
void* _x05(void*, const char*) __asm__("GetProcAddress");
short _x06(int vKey) __asm__("GetAsyncKeyState");
]]
ffi._x07 = true
end
local _x08 = {
{ nome = "\067\080\089",   getter = 21719648, guard = "\072\139\005\169\243\036\002\195", owner = 0x3705e10, gmc = 0x36F3DC8, players = 0x36F3FC0, view_rva = 0x1987A20 },
{ nome = "\083\116\101\097\109", getter = 21742928, guard = "\072\139\005\233\124\037\002\195", owner = 0x3714240, gmc = 0x3702208, players = 0x3702400, view_rva = 0x198D3B0 },
}
local _x09 = {
normal = {
date = 0x1642a1c, count = 0xd0bcf4, regs = 0xc12e9c, rounds = 0xd65f64, events = 0xe9ff08,
teams = 0xadf4bc, nteams = 0xd0bcec, maxregs = 300, maxteams = 2400
},
cap = {
date = 0x19115e4, count = 0x4877328, regs = 0x1f09830, rounds = 0x447ed20, events = 0x1f7cf10,
teams = 0x193f170, nteams = 0x4877320, maxregs = 600, maxteams = 2400
},
}
local _x0a = 788
local _x0b = 596
local _x0c = 13000
local _x0d = 0x17c
local _x0e = 30000
local _x0f, _x10, _x11 = 0x30, 0x38, 0x164
local _x12 = 0x5FC
local _x13 = 0x08
local _x14 = 0x170
local _x15 = 0x1332d25
local _x16  = "\064\136\123\031\136\075\028"
local _x17     = "\072\139\116\036\112\072\131\196\048\065\095\065\094\065\093"
local _x18 = {
[0] = "\083\117\112\101\114\105\111\114\032\069\115\113\117\101\114\100\111\032\040\065\098\097\105\120\111\032\100\111\032\080\108\097\099\097\114\041",
[1] = "\083\117\112\101\114\105\111\114\032\068\105\114\101\105\116\111\032\040\065\098\097\105\120\111\032\100\097\032\076\111\103\111\032\084\086\047\080\114\101\109\105\101\114\101\041",
[2] = "\073\110\102\101\114\105\111\114\032\068\105\114\101\105\116\111\032\040\065\099\105\109\097\032\100\111\032\078\111\109\101\032\100\111\032\074\111\103\097\100\111\114\041",
[3] = "\073\110\102\101\114\105\111\114\032\069\115\113\117\101\114\100\111\032\040\065\099\105\109\097\032\100\111\032\078\111\109\101\032\100\111\032\074\111\103\097\100\111\114\041",
}
local _x19 = { [1] = 3, [3] = 2, [2] = 0, [0] = 1 }
local _x1a = {
paulistao = { title = "\080\065\085\076\073\083\084\195\131\079",             bg_top = 0xF2071156, bg_bot = 0xF6040A36, hdr = 0xFF0A176E, accent = 0xFFF3531B, hi = 0xFF00FF87, gif = 0, logo_id = 217 },
br_a      = { title = "\066\082\065\083\073\076\069\073\082\195\131\079\032\083\195\137\082\073\069\032\065",   bg_top = 0xF20B1528, bg_bot = 0xF6060C18, hdr = 0xFF132544, accent = 0xFFF7C600, hi = 0xFF00E676, gif = 0, logo_id = 21  },
br_b      = { title = "\066\082\065\083\073\076\069\073\082\195\131\079\032\083\195\137\082\073\069\032\066",   bg_top = 0xF20C192C, bg_bot = 0xF6070F1A, hdr = 0xFF102A45, accent = 0xFF00B4D8, hi = 0xFF00E676, gif = 1, logo_id = 194 },
br_c      = { title = "\066\082\065\083\073\076\069\073\082\195\131\079\032\083\195\137\082\073\069\032\067",   bg_top = 0xF2101A28, bg_bot = 0xF6080E16, hdr = 0xFF192B40, accent = 0xFF38BDF8, hi = 0xFF22C55E, gif = 1, logo_id = 195 },
br_d      = { title = "\066\082\065\083\073\076\069\073\082\195\131\079\032\083\195\137\082\073\069\032\068",   bg_top = 0xF2101A28, bg_bot = 0xF6080E16, hdr = 0xFF192B40, accent = 0xFF38BDF8, hi = 0xFF22C55E, gif = 1, logo_id = 196 },
cdb       = { title = "\067\079\080\065\032\068\079\032\066\082\065\083\073\076",        bg_top = 0xF2072416, bg_bot = 0xF604140C, hdr = 0xFF0B3823, accent = 0xFFFFD000, hi = 0xFF00FF87, gif = 0, logo_id = 24  },
ne        = { title = "\067\079\080\065\032\068\079\032\078\079\082\068\069\083\084\069",      bg_top = 0xF2101B30, bg_bot = 0xF6080E1A, hdr = 0xFF1A2C4E, accent = 0xFFFF9F1C, hi = 0xFF00E676, gif = 0, logo_id = 198 },
cverde    = { title = "\067\079\080\065\032\086\069\082\068\069",            bg_top = 0xF2082618, bg_bot = 0xF604150D, hdr = 0xFF0E3B26, accent = 0xFF22C55E, hi = 0xFFFFD000, gif = 0, logo_id = 197 },
supercopa = { title = "\083\085\080\069\082\067\079\080\065\032\068\079\032\066\082\065\083\073\076",   bg_top = 0xF2141824, bg_bot = 0xF60A0C14, hdr = 0xFF1F2638, accent = 0xFFF7C600, hi = 0xFF00E676, gif = 0, logo_id = 127 },
est       = { title = "\069\083\084\065\068\085\065\076",              bg_top = 0xF20D1624, bg_bot = 0xF6070C14, hdr = 0xFF16253B, accent = 0xFF00A8FF, hi = 0xFF00E676, gif = 1, logo_id = 0   },
lib       = { title = "\076\073\066\069\082\084\065\068\079\082\069\083",          bg_top = 0xF216130E, bg_bot = 0xF60A0906, hdr = 0xFF262015, accent = 0xFFD4AF37, hi = 0xFFFFD700, gif = 0, logo_id = 5   },
suda      = { title = "\083\085\076\045\065\077\069\082\073\067\065\078\065",         bg_top = 0xF20A1931, bg_bot = 0xF6060E1C, hdr = 0xFF112A52, accent = 0xFF00B4D8, hi = 0xFF38BDF8, gif = 1, logo_id = 8   },
ucl       = { title = "\067\072\065\077\080\073\079\078\083\032\076\069\065\071\085\069",      bg_top = 0xF2081026, bg_bot = 0xF6040814, hdr = 0xFF10204A, accent = 0xFF2563EB, hi = 0xFF38BDF8, gif = 1, logo_id = 2   },
uel       = { title = "\069\085\082\079\080\065\032\076\069\065\071\085\069",         bg_top = 0xF2161210, bg_bot = 0xF60B0908, hdr = 0xFF261A14, accent = 0xFFFF6B00, hi = 0xFFFF9F1C, gif = 0, logo_id = 3   },
wc        = { title = "\067\079\080\065\032\068\079\032\077\085\078\068\079\032\070\073\070\065",    bg_top = 0xF2240A14, bg_bot = 0xF614050B, hdr = 0xFF3B0D1E, accent = 0xFFD4AF37, hi = 0xFFFFE066, gif = 0, logo_id = 27  },
epl       = { title = "\080\082\069\077\073\069\082\032\076\069\065\071\085\069",        bg_top = 0xF21F0A2B, bg_bot = 0xF6110518, hdr = 0xFF37003C, accent = 0xFF00FF87, hi = 0xFF00FF87, gif = 0, logo_id = 9   },
laliga    = { title = "\076\065\076\073\071\065",                bg_top = 0xF21C0F14, bg_bot = 0xF60E080B, hdr = 0xFF2E131D, accent = 0xFFFF4B44, hi = 0xFFFFD166, gif = 0, logo_id = 11  },
seriea    = { title = "\083\069\082\073\069\032\065",               bg_top = 0xF20B1A2E, bg_bot = 0xF6060E1A, hdr = 0xFF11294D, accent = 0xFF009CDE, hi = 0xFF38BDF8, gif = 1, logo_id = 10  },
bundes    = { title = "\066\085\078\068\069\083\076\073\071\065",            bg_top = 0xF21C0C0E, bg_bot = 0xF60E0607, hdr = 0xFF301014, accent = 0xFFD20515, hi = 0xFFFF4D4D, gif = 0, logo_id = 39  },
def       = { title = "\067\065\077\080\069\079\078\065\084\079",            bg_top = 0xF20E1726, bg_bot = 0xF6080D16, hdr = 0xFF132038, accent = 0xFFF7C600, hi = 0xFF00E676, gif = 0, logo_id = 0   },
}
local _x1b = {
[201] = "\065\076\065\071\079\065\078\079",    [202] = "\065\077\065\090\079\078\069\078\083\069",  [203] = "\066\065\073\065\078\195\131\079",      [204] = "\066\082\065\083\073\076\073\069\078\083\069",
[205] = "\067\065\082\073\079\067\195\131\079",    [206] = "\067\065\084\065\082\073\078\069\078\083\069", [207] = "\067\069\065\082\069\078\083\069",     [208] = "\071\065\085\067\072\195\131\079",
[209] = "\071\079\073\065\078\195\131\079",     [210] = "\077\065\082\065\078\072\069\078\083\069",  [211] = "\077\065\084\079\045\071\082\079\083\083\069\078\083\069",[212] = "\077\073\078\069\073\082\195\131\079",
[213] = "\080\065\082\065\069\078\083\069",    [214] = "\080\065\082\065\073\066\065\078\079",   [215] = "\080\065\082\065\078\065\069\078\083\069",   [216] = "\080\069\082\078\065\077\066\085\067\065\078\079",
[217] = "\080\065\085\076\073\083\084\195\131\079",   [218] = "\080\073\065\085\073\069\078\083\069",   [219] = "\080\079\084\073\071\085\065\082",     [220] = "\083\069\082\071\073\080\065\078\079",
[228] = "\080\065\085\076\073\083\084\195\131\079",   [229] = "\080\065\085\076\073\083\084\195\131\079\032\065\050",[230] = "\067\065\084\065\082\073\078\069\078\083\069\032\066",
}
local S = {
sider_dir = "",
base = 0,
build = nil,
L = nil,
dll = nil,
dll_installed = false,
dll_install_tries = 0,
cpk_roots = {},
emblem_cache = {},
comp_logo_cache = {},
team_names = {},
squads_loaded = false,
squads = {},
in_match = false,
match_init_done = false,
current_tid = 0,
current_rid = 0,
current_theme = _x1a.def,
home_id = 0,
away_id = 0,
sim_matches = {},
earlier_matches = {},
timeline = {},
is_league_table = false,
base_table = {},
group_tables = {},
team_rid = {},
base_pos = {},
last_minute = -1,
last_user_hs = 0,
last_user_as = 0,
menu_mode = 0,
saved_parent_menu = 0,
phase_title = "",
f9_was_down = false,
sound_path = "",
frames = 0,
sim_cave = nil,
sim_data = nil,
sim_hooked = false,
debug_log_path = "",
cfg_path = "",
sync_logged = {},
corner = 3,
scale = 0.80,
off_x = 0.0,
off_y = 0.0,
duration = 7.8,
sound_volume = 0.65,
auto_fade = true,
group_filter_mode = 1,
is_multi_group = false,
fade_alpha = 0.25,
ball_in_corner = false,
last_active_slot = nil,
screen_u = -1.0,
screen_v = -1.0,
}
local function _x1d(fmt, ...)
local msg = string.format(fmt, ...)
log(string.format("\037\115\032\037\115", _x1c, msg))
if S.debug_log_path ~= "" then
local f = io.open(S.debug_log_path, "\097")
if f then
f:write(string.format("\091\037\115\093\032\037\115\010", os.date("\037\072\058\037\077\058\037\083"), msg))
f:flush()
f:close()
end
end
end
local function _x1e(fmt, ...)
_x1d(fmt, ...)
end
local function _x1f(s, off)
local b1, b2 = s:byte(off, off + 1)
if not b1 then return 0 end
return b1 + b2 * 256
end
local function _x20(s, off)
local b1, b2, b3, b4 = s:byte(off, off + 3)
if not b1 then return 0 end
return b1 + b2 * 256 + b3 * 65536 + b4 * 16777216
end
local function _x21(s, off)
local v = _x20(s, off)
if v >= 2147483648 then v = v - 4294967296 end
return v
end
local function _x22(s, off)
local lo = _x20(s, off)
local hi = _x20(s, off + 4)
return lo + hi * 4294967296
end
local function _x23(addr, len)
if not addr or addr < 0x10000 then return nil end
local buf = ffi.new("\117\105\110\116\056\095\116\091\063\093", len)
local got = ffi.new("\115\105\122\101\095\116\091\049\093")
if ffi.C._x03(ffi.C._x02(), ffi.cast("\099\111\110\115\116\032\118\111\105\100\042", addr), buf, len, got) == 0 then
return nil
end
local n = tonumber(got[0])
if n < len then return nil end
return ffi.string(buf, len)
end
local function _x24(addr)
local s = _x23(addr, 8)
if not s then return nil end
local v = _x22(s, 1)
if v < 0x10000 or v > 0x7fffffffffff then return nil end
return v
end
local function _x25(raw)
if raw == 4294967295 or raw == 0 then return nil end
local t = math.floor(raw / 16384)
if t > 0 and t < 262144 then return t end
return nil
end
local function _x26()
if not S.dll or not S.dll_installed then return end
S.dll.set_layout(S.corner, S.scale)
if S.dll.set_offsets then
S.dll.set_offsets(S.off_x, S.off_y)
end
end
local function _x27()
if S.cfg_path == "" then return end
local f = io.open(S.cfg_path, "\119")
if not f then return end
f:write(string.format("\099\111\114\110\101\114\061\037\100\010", S.corner))
f:write(string.format("\115\099\097\108\101\061\037\046\050\102\010", S.scale))
f:write(string.format("\111\102\102\095\120\061\037\046\049\102\010", S.off_x))
f:write(string.format("\111\102\102\095\121\061\037\046\049\102\010", S.off_y))
f:write(string.format("\100\117\114\097\116\105\111\110\061\037\046\049\102\010", S.duration))
f:write(string.format("\115\111\117\110\100\095\118\111\108\117\109\101\061\037\046\050\102\010", S.sound_volume))
f:write(string.format("\097\117\116\111\095\102\097\100\101\061\037\100\010", S.auto_fade and 1 or 0))
f:write(string.format("\103\114\111\117\112\095\102\105\108\116\101\114\095\109\111\100\101\061\037\100\010", S.group_filter_mode))
f:close()
end
local function _x28()
if S.cfg_path == "" then return end
local f = io.open(S.cfg_path, "\114")
if not f then return end
for line in f:lines() do
local k, v = line:match("\094\037\115\042\040\091\037\119\095\093\043\041\037\115\042\061\037\115\042\040\091\037\045\037\100\037\046\093\043\041\037\115\042\036")
if k and v then
local num = tonumber(v)
if num then
if k == "\099\111\114\110\101\114" and num >= 0 and num <= 3 then S.corner = math.floor(num)
elseif k == "\115\099\097\108\101" and num >= 0.50 and num <= 1.50 then S.scale = num
elseif k == "\111\102\102\095\120" then S.off_x = num
elseif k == "\111\102\102\095\121" then S.off_y = num
elseif k == "\100\117\114\097\116\105\111\110" and num >= 3.0 and num <= 15.0 then S.duration = num
elseif k == "\115\111\117\110\100\095\118\111\108\117\109\101" and num >= 0.0 and num <= 1.0 then S.sound_volume = num
elseif k == "\097\117\116\111\095\102\097\100\101" then S.auto_fade = (num ~= 0)
elseif k == "\103\114\111\117\112\095\102\105\108\116\101\114\095\109\111\100\101" and num >= 0 and num <= 2 then S.group_filter_mode = math.floor(num)
end
end
end
end
f:close()
end
local function _x29()
S.cpk_roots = {}
local seen = {}
local function add_root(r)
if not r or r == "" then return end
r = r:gsub("\047", "\092"):gsub("\094\037\046\092", S.sider_dir)
if not r:match("\094\037\097\058\092") and not r:match("\094\092\092") then
r = S.sider_dir .. r
end
if r:sub(-1) ~= "\092" then r = r .. "\092" end
local key = r:lower()
if not seen[key] then
seen[key] = true
S.cpk_roots[#S.cpk_roots + 1] = r
end
end
add_root(S.sider_dir .. "\066\077\080\069\083\092\083\101\114\118\105\100\111\114\032\100\101\032\069\109\098\108\101\109\097\115\092")
add_root(S.sider_dir .. "\066\077\080\069\083\092\083\101\114\118\105\100\111\114\032\100\101\032\069\109\098\108\101\109\097\115\092\078\097\116\105\111\110\115\092")
add_root(S.sider_dir .. "\066\077\080\069\083\092\083\101\114\118\105\100\111\114\032\100\101\032\068\097\116\097\098\097\115\101\092")
local ini = io.open(S.sider_dir .. "\115\105\100\101\114\046\105\110\105", "\114")
if ini then
for line in ini:lines() do
local root = line:match("\094\037\115\042\099\112\107\037\046\114\111\111\116\037\115\042\061\037\115\042\034\040\091\094\034\093\043\041\034")
if root then add_root(root) end
end
ini:close()
end
end
local function _x2b(logo_id)
if not logo_id or logo_id <= 0 then return "" end
if S.comp_logo_cache[logo_id] ~= nil then return S.comp_logo_cache[logo_id] end
local suffixes = {
string.format("\099\111\109\109\111\110\092\114\101\110\100\101\114\092\115\121\109\098\111\108\092\101\109\098\108\101\109\076\099\092\101\109\098\095\037\048\052\100\095\119\095\108\046\112\110\103", logo_id),
string.format("\099\111\109\109\111\110\092\114\101\110\100\101\114\092\115\121\109\098\111\108\092\101\109\098\108\101\109\076\099\092\101\109\098\095\037\048\052\100\095\108\046\112\110\103", logo_id),
string.format("\099\111\109\109\111\110\092\114\101\110\100\101\114\092\115\121\109\098\111\108\092\101\109\098\108\101\109\076\099\092\101\109\098\095\037\048\052\100\095\098\095\108\046\112\110\103", logo_id),
string.format("\099\111\109\109\111\110\092\114\101\110\100\101\114\092\115\121\109\098\111\108\092\101\109\098\108\101\109\076\099\092\101\109\098\095\037\048\052\100\095\108\108\046\112\110\103", logo_id),
string.format("\099\111\109\109\111\110\092\114\101\110\100\101\114\092\115\121\109\098\111\108\092\101\109\098\108\101\109\076\099\092\101\109\098\095\037\048\052\100\095\119\095\108\108\046\112\110\103", logo_id),
}
for _, root in ipairs(S.cpk_roots) do
for _, rel in ipairs(suffixes) do
local p = root .. rel
local f = io.open(p, "\114\098")
if f then
f:close()
S.comp_logo_cache[logo_id] = p
return p
end
end
end
S.comp_logo_cache[logo_id] = ""
return ""
end
local function _x2a(tid)
if not tid or tid <= 0 then return "" end
if S.emblem_cache[tid] ~= nil then return S.emblem_cache[tid] end
local suffixes = {
string.format("\099\111\109\109\111\110\092\114\101\110\100\101\114\092\115\121\109\098\111\108\092\102\108\097\103\092\101\095\037\048\054\100\095\114\095\108\046\112\110\103", tid),
string.format("\099\111\109\109\111\110\092\114\101\110\100\101\114\092\115\121\109\098\111\108\092\102\108\097\103\092\101\095\037\048\054\100\095\114\095\108\108\046\112\110\103", tid),
string.format("\099\111\109\109\111\110\092\114\101\110\100\101\114\092\115\121\109\098\111\108\092\102\108\097\103\092\101\095\037\048\054\100\095\114\046\112\110\103", tid),
string.format("\099\111\109\109\111\110\092\114\101\110\100\101\114\092\115\121\109\098\111\108\092\102\108\097\103\092\101\095\037\048\054\100\095\108\046\112\110\103", tid),
string.format("\099\111\109\109\111\110\092\114\101\110\100\101\114\092\115\121\109\098\111\108\092\102\108\097\103\092\101\095\037\048\054\100\095\108\108\046\112\110\103", tid),
string.format("\099\111\109\109\111\110\092\114\101\110\100\101\114\092\115\121\109\098\111\108\092\102\108\097\103\092\101\095\037\048\054\100\046\112\110\103", tid),
string.format("\099\111\109\109\111\110\092\114\101\110\100\101\114\092\115\121\109\098\111\108\092\102\108\097\103\092\101\095\037\048\054\100\095\114\095\119\095\108\046\112\110\103", tid),
string.format("\099\111\109\109\111\110\092\114\101\110\100\101\114\092\115\121\109\098\111\108\092\102\108\097\103\092\101\095\037\048\054\100\095\114\095\119\095\108\108\046\112\110\103", tid),
string.format("\099\111\109\109\111\110\092\114\101\110\100\101\114\092\115\121\109\098\111\108\092\102\108\097\103\092\101\095\037\048\054\100\095\114\095\119\046\112\110\103", tid),
string.format("\099\111\109\109\111\110\092\114\101\110\100\101\114\092\115\121\109\098\111\108\092\102\108\097\103\092\101\095\037\048\054\100\095\114\095\098\095\108\046\112\110\103", tid),
}
for _, root in ipairs(S.cpk_roots) do
for _, rel in ipairs(suffixes) do
local p = root .. rel
local f = io.open(p, "\114\098")
if f then
f:close()
S.emblem_cache[tid] = p
return p
end
end
end
S.emblem_cache[tid] = ""
return ""
end
local function _x2c(tid, rid)
local id = tid or 0
local r = rid or 0
if id == 217 or id == 228 or id == 229 or r == 217 or r == 228 or r == 229 then
return _x1a.paulistao
end
if id == 29 or id == 2077 or r == 29 then return _x1a.br_a end
if id == 163 or id == 68 or r == 68 then return _x1a.br_b end
if id == 67 or id == 54 or id == 199 or id == 1223 or id == 2247 or r == 67 or r == 199 then return _x1a.br_c end
if id == 120 or id == 165 or (id >= 1144 and id <= 16504 and (id % 1024) == 120) or (r % 1024) == 120 then return _x1a.br_d end
if id == 31 or id == 1055 or r == 31 or id == 24 then return _x1a.cdb end
if id == 164 or id == 238 or (id >= 1188 and id <= 4260 and (id % 1024) == 164) or (r % 1024) == 164 then return _x1a.ne end
if id == 127 or id == 239 or (r % 1024) == 127 then return _x1a.cverde end
if id == 132 or r == 132 then return _x1a.supercopa end
if id == 27 or id == 34 or id == 35 or id == 64 or r == 27 or r == 34 or r == 64 then return _x1a.wc end
local est_id = _x1b[id] and id or (_x1b[r] and r or nil)
if est_id then
return {
title = _x1b[est_id],
bg_top = _x1a.est.bg_top, bg_bot = _x1a.est.bg_bot, hdr = _x1a.est.hdr,
accent = _x1a.est.accent, hi = _x1a.est.hi, gif = _x1a.est.gif, logo_id = est_id
}
end
if (id >= 201 and id <= 235) or (r >= 201 and r <= 235) then
local lid = (id >= 201 and id <= 235) and id or r
return {
title = "\069\083\084\065\068\085\065\076",
bg_top = _x1a.est.bg_top, bg_bot = _x1a.est.bg_bot, hdr = _x1a.est.hdr,
accent = _x1a.est.accent, hi = _x1a.est.hi, gif = _x1a.est.gif, logo_id = lid
}
end
if id == 8 or id == 9 or id == 10 or r == 9 or r == 10 or (r > 9 and (r % 1024) == 9) then return _x1a.lib end
if id == 15 or id == 16 or r == 15 or r == 16 or (r > 15 and (r % 1024) == 15) then return _x1a.suda end
if id == 2 or id == 3 or id == 4 or r == 2 or r == 3 or r == 4 or (id > 1024 and (id % 1024) == 2) or (id > 1024 and (id % 1024) == 3) then return _x1a.ucl end
if id == 5 or id == 6 or id == 7 or r == 5 or r == 6 or (id > 1024 and (id % 1024) == 5) then return _x1a.uel end
if id == 17 or id == 23 or id == 79 or id == 83 then return _x1a.epl end
if id == 19 or id == 25 or id == 80 or id == 84 then return _x1a.laliga end
if id == 18 or id == 24 or id == 82 or id == 85 then return _x1a.seriea end
if id == 20 or id == 26 or id == 50 then return _x1a.bundes end
return _x1a.def
end
local function _x2d(th)
S.current_theme = th
if S.dll and S.dll_installed then
S.dll.set_theme(th.title, th.bg_top, th.bg_bot, th.hdr, th.accent, th.hi)
if S.dll.set_comp_assets then
local logo_path = _x2b(th.logo_id or S.current_tid or S.current_rid)
S.dll.set_comp_assets(logo_path, th.gif or 0)
end
end
end
local function clean_team_display_name(nm)
if not nm then return "" end
local s = nm:gsub("\037\115\042\037\040\037\115\042\037\117\037\117\037\115\042\037\041\037\115\042\036", ""):gsub("\094\037\040\037\115\042\037\117\037\117\037\117\037\115\042\037\041\037\115\042", "")
return s ~= "" and s or nm
end
local function _x2e()
local is_fl = (ffi.C._x01("\070\076\095\050\048\050\055\046\101\120\101") ~= nil)
or (ffi.C._x01("\070\076\095\050\048\050\054\046\101\120\101") ~= nil)
or (ffi.C._x01("\070\076\095\050\048\050\053\046\101\120\101") ~= nil)
local sd_low = (S.sider_dir or ""):lower()
local is_gogosz = sd_low:find("\103\111\103\111\115\122", 1, true) ~= nil
local is_marfut = sd_low:find("\109\097\114\102\117\116", 1, true) ~= nil
for _, root in ipairs(S.cpk_roots) do
local rlow = root:lower()
if rlow:find("\103\111\103\111\115\122", 1, true) then
is_gogosz = true
elseif rlow:find("\109\097\114\102\117\116", 1, true) then
is_marfut = true
end
end
local is_gogosz_world = false
if is_gogosz then
local wf = io.open(S.sider_dir .. "\109\111\100\117\108\101\115\092\117\099\108\095\115\099\104\101\100\117\108\101\095\112\114\111\098\101\046\108\117\097", "\114\098")
if wf then
wf:close()
is_gogosz_world = true
end
end
local candidates_txt = is_fl and {
S.sider_dir .. "\109\111\100\117\108\101\115\092\076\105\118\101\082\111\117\110\100\071\111\097\108\115\092\116\101\097\109\115\095\102\108\050\055\046\116\120\116",
S.sider_dir .. "\109\111\100\117\108\101\115\092\076\105\118\101\082\111\117\110\100\071\111\097\108\115\092\116\101\097\109\115\046\116\120\116",
} or (is_marfut and {
S.sider_dir .. "\109\111\100\117\108\101\115\092\076\105\118\101\082\111\117\110\100\071\111\097\108\115\092\116\101\097\109\115\095\109\097\114\102\117\116\095\119\111\114\108\100\046\116\120\116",
S.sider_dir .. "\109\111\100\117\108\101\115\092\076\105\118\101\082\111\117\110\100\071\111\097\108\115\092\116\101\097\109\115\046\116\120\116",
} or (is_gogosz_world and {
S.sider_dir .. "\109\111\100\117\108\101\115\092\076\105\118\101\082\111\117\110\100\071\111\097\108\115\092\116\101\097\109\115\095\103\111\103\111\115\122\095\119\111\114\108\100\046\116\120\116",
S.sider_dir .. "\109\111\100\117\108\101\115\092\076\105\118\101\082\111\117\110\100\071\111\097\108\115\092\116\101\097\109\115\095\103\111\103\111\115\122\095\099\111\110\109\101\098\111\108\046\116\120\116",
S.sider_dir .. "\109\111\100\117\108\101\115\092\076\105\118\101\082\111\117\110\100\071\111\097\108\115\092\116\101\097\109\115\046\116\120\116",
} or (is_gogosz and {
S.sider_dir .. "\109\111\100\117\108\101\115\092\076\105\118\101\082\111\117\110\100\071\111\097\108\115\092\116\101\097\109\115\095\103\111\103\111\115\122\095\099\111\110\109\101\098\111\108\046\116\120\116",
S.sider_dir .. "\109\111\100\117\108\101\115\092\076\105\118\101\082\111\117\110\100\071\111\097\108\115\092\116\101\097\109\115\046\116\120\116",
} or {
S.sider_dir .. "\109\111\100\117\108\101\115\092\076\105\118\101\082\111\117\110\100\071\111\097\108\115\092\116\101\097\109\115\046\116\120\116",
S.sider_dir .. "\109\111\100\117\108\101\115\092\103\111\108\095\114\111\100\097\100\097\092\116\101\097\109\115\046\116\120\116",
})))
for _, txt_path in ipairs(candidates_txt) do
local tf = io.open(txt_path, "\114")
if tf then
local loaded = 0
for line in tf:lines() do
line = line:gsub("\094\239\187\191", ""):gsub("\013\036", "")
if not line:match("\094\037\115\042\091\035\059\093") then
local id_s, nm = line:match("\094\037\115\042\040\037\100\043\041\037\115\042\091\061\044\009\093\037\115\042\040\046\043\041\037\115\042\036")
if not id_s then
id_s, nm = line:match("\094\037\115\042\040\037\100\043\041\037\115\043\040\046\043\041\037\115\042\036")
end
if id_s and nm then
nm = nm:gsub("\094\034\040\046\045\041\034\036", "\037\049"):gsub("\094\037\115\043", ""):gsub("\037\115\043\036", "")
local tid = tonumber(id_s)
if tid and tid > 0 and nm ~= "" then
S.team_names[tid] = clean_team_display_name(nm)
loaded = loaded + 1
end
end
end
end
tf:close()
if loaded > 0 then
_x1e("\067\097\114\114\101\103\097\100\111\115\032\037\100\032\110\111\109\101\115\032\100\101\032\099\108\117\098\101\115\032\100\101\032\037\115", loaded, txt_path)
break
end
end
end
for _, root in ipairs(S.cpk_roots) do
local path = root .. "\099\111\109\109\111\110\092\101\116\099\092\112\101\115\100\098\092\084\101\097\109\046\098\105\110"
local f = io.open(path, "\114\098")
if f then
local data = f:read("\042\097")
f:close()
if data and #data >= _x12 and data:sub(4, 8) ~= "\087\069\083\089\083" then
local count = math.floor(#data / _x12)
for i = 0, count - 1 do
local off = i * _x12 + 1
local tid = _x20(data, off + _x13)
if tid > 0 and tid < 262144 and not S.team_names[tid] then
local raw = data:sub(off + _x14, off + _x14 + 63)
local nm = raw:match("\094\040\091\094\037\122\093\043\041")
if nm and nm ~= "" then
S.team_names[tid] = clean_team_display_name(nm)
end
end
end
end
end
end
local map_candidates = {
S.sider_dir .. "\099\111\110\116\101\110\116\092\107\105\116\045\115\101\114\118\101\114\092\109\097\112\046\116\120\116",
S.sider_dir .. "\099\111\110\116\101\110\116\092\107\105\116\115\092\109\097\112\046\116\120\116",
}
for _, mp in ipairs(map_candidates) do
local mf = io.open(mp, "\114")
if mf then
local added = 0
for line in mf:lines() do
local id_s, raw_nm = line:match("\094\037\115\042\040\037\100\043\041\037\115\042\044\037\115\042\034\063\040\091\094\034\013\010\093\043\041\034\063")
if id_s and raw_nm then
local tid = tonumber(id_s)
if tid and tid > 0 and not S.team_names[tid] then
local nm = raw_nm:match("\091\094\092\047\093\043\036") or raw_nm
nm = nm:gsub("\094\037\115\043", ""):gsub("\037\115\043\036", "")
if nm ~= "" then
S.team_names[tid] = clean_team_display_name(nm)
added = added + 1
end
end
end
end
mf:close()
if added > 0 then
_x1e("\067\097\114\114\101\103\097\100\111\115\032\037\100\032\110\111\109\101\115\032\101\120\116\114\097\115\032\100\101\032\037\115", added, mp)
end
end
end
end
local function _x2f(st)
if not st or not S.L then return end
local nt_b = _x23(st + S.L.nteams, 4)
local nt = nt_b and _x20(nt_b, 1) or 0
if nt <= 0 then return end
local max_scan = math.min(nt, math.max(S.L.maxteams or 2400, 3200))
local TEAM_REC_SIZE = 0x690
local CHUNK_TEAMS = 300
local ram_added = 0
for start_idx = 0, max_scan - 1, CHUNK_TEAMS do
local n_read = math.min(CHUNK_TEAMS, max_scan - start_idx)
local chunk = _x23(st + S.L.teams + start_idx * TEAM_REC_SIZE, n_read * TEAM_REC_SIZE)
if not chunk then break end
local count = math.floor(#chunk / TEAM_REC_SIZE)
for i = 0, count - 1 do
local base_off = i * TEAM_REC_SIZE + 1
local raw_id = _x20(chunk, base_off + 8)
local tid = _x25(raw_id) or (raw_id > 0 and raw_id < 262144 and raw_id or nil)
if tid then
local raw_nm = chunk:sub(base_off + 0x13c, base_off + 0x13c + 69)
local nm = raw_nm:match("\094\040\091\094\037\122\093\043\041")
if nm and #nm >= 2 then
local clean = clean_team_display_name(nm)
if S.team_names[tid] ~= clean then
S.team_names[tid] = clean
ram_added = ram_added + 1
end
end
end
end
end
if ram_added > 0 then
_x1e("\078\111\109\101\115\032\101\120\116\114\097\115\032\114\101\115\111\108\118\105\100\111\115\032\100\097\032\082\065\077\032\100\097\032\099\097\114\114\101\105\114\097\032\040\037\100\047\037\100\032\115\108\111\116\115\041\058\032\043\037\100\032\099\108\117\098\101\115", max_scan, nt, ram_added)
end
end
local function _x30(tid)
return S.team_names[tid] or ("\084\105\109\101\032" .. tostring(tid))
end
local function _x31()
if not S.build or S.base == 0 then return nil end
local site = S.base + S.build.getter
local ins = _x23(site, 7)
if not ins then return nil end
local disp = _x21(ins, 4)
local global_ptr = site + 7 + disp
local owner = _x24(global_ptr)
if not owner then return nil end
return _x24(owner + 0x48)
end
local function read_ball_screen_uv()
if not S.build or S.base == 0 then return nil, nil end
local gmc = _x24(S.base + S.build.gmc)
if not gmc then return nil, nil end
local ball_ptr = _x24(gmc + 0x40)
if not ball_ptr then return nil, nil end
local slot_s = _x23(ball_ptr + 0x290C, 8)
if slot_s then
local h_slot = _x20(slot_s, 1)
local t_slot = _x20(slot_s, 5)
if h_slot <= 21 then S.last_active_slot = h_slot
elseif t_slot <= 21 then S.last_active_slot = t_slot end
end
local wx, wy, wz
if S.last_active_slot and S.last_active_slot <= 21 then
local pl = _x24(S.base + S.build.players + 8 * S.last_active_slot)
local ac = pl and _x24(pl + 0x7E8)
local hum = ac and _x24(ac + 8)
local arr = hum and _x24(hum + 0x10)
local cp = arr and _x24(arr + 8 * 6)
if cp then
local c_s = _x23(cp + 0x3C, 12)
if c_s then
local px = memory.unpack("\102", c_s:sub(1, 4))
local py = memory.unpack("\102", c_s:sub(5, 8))
local pz = memory.unpack("\102", c_s:sub(9, 12))
if px and pz and px == px and pz == pz and math.abs(px) <= 65.0 and math.abs(pz) <= 45.0 then
wx, wy, wz = px, py or 0.5, pz
end
end
end
end
if not wx then
local b_s = _x23(ball_ptr + 0x2954, 12)
if b_s then
local bx = memory.unpack("\102", b_s:sub(1, 4))
local by = memory.unpack("\102", b_s:sub(5, 8))
local bz = memory.unpack("\102", b_s:sub(9, 12))
if bx and bz and bx == bx and bz == bz and math.abs(bx) <= 65.0 and math.abs(bz) <= 45.0 then
wx, wy, wz = bx, by or 0.2, bz
end
end
end
if not wx then return nil, nil end
local view_site = S.base + S.build.view_rva
local hook_hdr = _x23(view_site, 14)
if hook_hdr and hook_hdr:sub(1, 6) == "\255\037\000\000\000\000" then
local cam_cave = _x22(hook_hdr, 7)
local cam_data = cam_cave + 0x100
local cam_s = _x23(cam_data + 0x40, 0x28)
if cam_s then
local ex = memory.unpack("\102", cam_s:sub(1, 4))
local ey = memory.unpack("\102", cam_s:sub(5, 8))
local ez = memory.unpack("\102", cam_s:sub(9, 12))
local tx = memory.unpack("\102", cam_s:sub(13, 16))
local ty = memory.unpack("\102", cam_s:sub(17, 20))
local tz = memory.unpack("\102", cam_s:sub(21, 24))
local fov = memory.unpack("\102", cam_s:sub(37, 40))
if ex and ez and tx and tz and fov and fov > 0.01 and fov < 2.5 then
local fx, fy, fz = tx - ex, ty - ey, tz - ez
local flen = math.sqrt(fx * fx + fy * fy + fz * fz)
if flen > 0.001 then
fx, fy, fz = fx / flen, fy / flen, fz / flen
local rx, rz = -fz, fx
local rlen = math.sqrt(rx * rx + rz * rz)
if rlen > 0.001 then
rx, rz = rx / rlen, rz / rlen
local ux = -rz * fy
local uy = rz * fx - rx * fz
local uz = rx * fy
local vx, vy, vz = wx - ex, wy - ey, wz - ez
local depth = vx * fx + vy * fy + vz * fz
if depth > 1.0 then
local cam_x = vx * rx + vz * rz
local cam_y = vx * ux + vy * uy + vz * uz
local tan_half = math.tan(fov * 0.5)
local ndc_x = cam_x / (depth * tan_half * (16.0 / 9.0))
local ndc_y = cam_y / (depth * tan_half)
local u = 0.5 + 0.5 * ndc_x
local v = 0.5 - 0.5 * ndc_y
return u, v
end
end
end
end
end
end
return nil, nil
end
local function _x32()
if not S.dll or not S.dll_installed or not S.dll.set_occlusion then return end
if not S.auto_fade or not S.in_match then
S.ball_in_corner = false
S.dll.set_occlusion(1.0)
return
end
local u, v = read_ball_screen_uv()
if not u or not v then
return
end
S.screen_u, S.screen_v = u, v
local was_in = S.ball_in_corner
local in_zone = false
if S.corner == 3 then
if not was_in then
in_zone = (u >= -0.02 and u <= 0.30 and v >= 0.68 and v <= 0.93)
else
in_zone = (u >= -0.05 and u <= 0.35 and v >= 0.63 and v <= 0.96)
end
elseif S.corner == 1 then
if not was_in then
in_zone = (u >= 0.70 and u <= 1.02 and v >= 0.08 and v <= 0.30)
else
in_zone = (u >= 0.65 and u <= 1.05 and v >= 0.04 and v <= 0.35)
end
elseif S.corner == 2 then
if not was_in then
in_zone = (u >= 0.70 and u <= 1.02 and v >= 0.68 and v <= 0.93)
else
in_zone = (u >= 0.65 and u <= 1.05 and v >= 0.63 and v <= 0.96)
end
elseif S.corner == 0 then
if not was_in then
in_zone = (u >= -0.02 and u <= 0.30 and v >= 0.08 and v <= 0.30)
else
in_zone = (u >= -0.05 and u <= 0.35 and v >= 0.04 and v <= 0.35)
end
end
local now = os.clock()
if in_zone then
S.ball_in_corner = true
S.fade_hold_until = now + 0.8
elseif was_in and S.fade_hold_until and now < S.fade_hold_until then
S.ball_in_corner = true
else
S.ball_in_corner = false
end
S.dll.set_occlusion(S.ball_in_corner and S.fade_alpha or 1.0)
end
local function _x33()
if not S.build or S.base == 0 then return end
local owner = _x24(S.base + S.build.owner)
local blk = owner and _x24(owner + 0x48) or _x31()
if not blk then return end
local squads = {}
local CHUNK_PLAYERS = 2000
local chunk_bytes = CHUNK_PLAYERS * _x0d
local done = false
for base_idx = 0, _x0e - 1, CHUNK_PLAYERS do
local chunk = _x23(blk + base_idx * _x0d, chunk_bytes)
if not chunk then break end
for j = 0, CHUNK_PLAYERS - 1 do
local base_off = j * _x0d + 1
local pid = _x20(chunk, base_off + _x0f)
if pid == 0 then done = true; break end
local club_raw = _x20(chunk, base_off + _x11)
local tid = _x25(club_raw)
if tid then
local raw_nm = chunk:sub(base_off + _x10, base_off + _x10 + 47)
local nm = raw_nm:match("\094\040\091\094\037\122\093\043\041")
if nm and nm ~= "" then
local list = squads[tid]
if not list then list = {}; squads[tid] = list end
list[#list + 1] = nm
end
end
end
if done then break end
end
S.squads = squads
S.squads_loaded = true
end
local function _x34(tid)
local list = S.squads[tid]
if not list or #list == 0 then
return "\074\111\103\097\100\111\114\032" .. tostring(math.random(7, 11))
end
local n = #list
if n >= 11 then
local start_idx = math.min(6, n - 3)
local end_idx = math.min(n, 20)
if math.random(1, 100) <= 82 then
return list[math.random(start_idx, end_idx)]
else
return list[math.random(3, end_idx)]
end
elseif n > 3 then
return list[math.random(2, n)]
end
return list[math.random(1, n)]
end
local function _x35()
if S.sound_volume <= 0.005 then return end
if audio and S.sound_path ~= "" then
local snd = audio.new(S.sound_path)
if snd then
snd:set_volume(S.sound_volume)
snd:play()
end
end
end
local function _x36(tbl)
local list = {}
for tid, r in pairs(tbl) do
list[#list + 1] = { id = tid, pts = r.pts, vit = r.vit, sg = r.sg, gp = r.gp }
end
table.sort(list, function(a, b)
if a.pts ~= b.pts then return a.pts > b.pts end
if a.vit ~= b.vit then return a.vit > b.vit end
if a.sg ~= b.sg then return a.sg > b.sg end
if a.gp ~= b.gp then return a.gp > b.gp end
return a.id < b.id
end)
local pos_map = {}
for idx, item in ipairs(list) do
pos_map[item.id] = idx
end
return pos_map
end
local function _x37(tbl, h, a, gh, ga)
if not h or not a or not tbl[h] or not tbl[a] then return end
local rh, ra = tbl[h], tbl[a]
rh.gp = rh.gp + gh
rh.sg = rh.sg + (gh - ga)
ra.gp = ra.gp + ga
ra.sg = ra.sg + (ga - gh)
if gh > ga then
rh.pts = rh.pts + 3
rh.vit = rh.vit + 1
elseif gh < ga then
ra.pts = ra.pts + 3
ra.vit = ra.vit + 1
else
rh.pts = rh.pts + 1
ra.pts = ra.pts + 1
end
end
local function _x38(user_hs, user_as, use_final)
if not S.is_league_table then return nil end
local has_groups = false
for _ in pairs(S.group_tables) do has_groups = true; break end
if not has_groups then
local live_tbl = {}
for tid, r in pairs(S.base_table) do
live_tbl[tid] = { pts = r.pts, vit = r.vit, sg = r.sg, gp = r.gp }
end
if S.home_id > 0 and S.away_id > 0 and live_tbl[S.home_id] and live_tbl[S.away_id] then
_x37(live_tbl, S.home_id, S.away_id, user_hs or 0, user_as or 0)
end
for _, sm in ipairs(S.sim_matches) do
if live_tbl[sm.h] and live_tbl[sm.a] then
local hs = use_final and (sm.final_hs or 0) or (sm.hs or 0)
local as = use_final and (sm.final_as or 0) or (sm.as or 0)
_x37(live_tbl, sm.h, sm.a, hs, as)
end
end
return _x36(live_tbl)
end
local combined_pos = {}
for rid, gtbl in pairs(S.group_tables) do
local live_tbl = {}
for tid, r in pairs(gtbl) do
live_tbl[tid] = { pts = r.pts, vit = r.vit, sg = r.sg, gp = r.gp }
end
if S.home_id > 0 and S.away_id > 0 and live_tbl[S.home_id] and live_tbl[S.away_id] then
_x37(live_tbl, S.home_id, S.away_id, user_hs or 0, user_as or 0)
end
for _, sm in ipairs(S.sim_matches) do
if live_tbl[sm.h] and live_tbl[sm.a] then
local hs = use_final and (sm.final_hs or 0) or (sm.hs or 0)
local as = use_final and (sm.final_as or 0) or (sm.as or 0)
_x37(live_tbl, sm.h, sm.a, hs, as)
end
end
local gpos = _x36(live_tbl)
for tid, p in pairs(gpos) do
combined_pos[tid] = p
end
end
return combined_pos
end
local function _x39(h_id, a_id, user_hs, user_as, use_final)
if not S.is_league_table or not S.base_pos[h_id] or not S.base_pos[a_id] then
return 0, 0, 0, 0
end
local live_pos = _x38(user_hs, user_as, use_final)
if not live_pos then return 0, 0, 0, 0 end
local hp = live_pos[h_id] or 0
local ap = live_pos[a_id] or 0
local hd = (hp > 0 and S.base_pos[h_id]) and (S.base_pos[h_id] - hp) or 0
local ad = (ap > 0 and S.base_pos[a_id]) and (S.base_pos[a_id] - ap) or 0
return hp, ap, hd, ad
end
local function _x3a(menu_mode)
if not S.dll or not S.dll_installed or not S.dll.set_round_match or not S.dll.clear_round_matches then return end
S.dll.clear_round_matches()
if S.home_id <= 0 or S.away_id <= 0 then return end
local is_fulltime = (menu_mode == 5)
local is_halftime = (menu_mode == 3)
local cur_min = math.max(1, S.last_minute > 0 and S.last_minute or 1)
if is_halftime or is_fulltime then
local cap_min = is_fulltime and 120 or 45
for _, g in ipairs(S.timeline) do
if not g.fired and g.minute <= cap_min then
g.fired = true
local sm = S.sim_matches[g.match_idx]
if sm then
if g.side == 0 then sm.hs = sm.hs + 1 else sm.as = sm.as + 1 end
end
end
end
end
local live_pos = _x38(S.last_user_hs, S.last_user_as, is_fulltime)
local function get_pd(tid)
if not S.is_league_table or not live_pos or not S.base_pos[tid] then return 0, 0 end
local p = live_pos[tid] or 0
local d = (p > 0) and (S.base_pos[tid] - p) or 0
return p, d
end
local user_status = string.format("\083\085\065\032\080\065\082\084\073\068\065\032\226\128\162\032\037\100\039", cur_min)
if is_fulltime then user_status = "\083\085\065\032\080\065\082\084\073\068\065\032\226\128\162\032\070\073\077"
elseif is_halftime then user_status = "\083\085\065\032\080\065\082\084\073\068\065\032\226\128\162\032\073\078\084" end
local uhp, uhd = get_pd(S.home_id)
local uap, uad = get_pd(S.away_id)
S.dll.set_round_match(
0,
_x30(S.home_id), _x30(S.away_id),
_x2a(S.home_id), _x2a(S.away_id),
"", "",
user_status,
S.last_user_hs, S.last_user_as,
uhp, uap, uhd, uad,
1
)
local panel_slot = 0
for idx, sm in ipairs(S.sim_matches) do
local show_in_panel = true
if S.is_multi_group and S.group_filter_mode == 2 and not sm.same_group then
show_in_panel = false
end
if show_in_panel then
panel_slot = panel_slot + 1
local hs = is_fulltime and sm.final_hs or sm.hs
local as = is_fulltime and sm.final_as or sm.as
local h_list, a_list = {}, {}
for _, g in ipairs(S.timeline) do
if g.match_idx == idx and (g.fired or is_fulltime) then
local entry = string.format("\037\115\032\037\100\039", g.scorer, g.minute)
if g.side == 0 then h_list[#h_list + 1] = entry
else a_list[#a_list + 1] = entry end
end
end
local h_scorers = table.concat(h_list, "\044\032")
local a_scorers = table.concat(a_list, "\044\032")
local st_str = string.format("\037\100\039\032\065\079\032\086\073\086\079", cur_min)
if is_fulltime then st_str = "\070\073\077\032\068\069\032\074\079\071\079"
elseif is_halftime then st_str = "\073\078\084\069\082\086\065\076\079" end
local hp, hd = get_pd(sm.h)
local ap, ad = get_pd(sm.a)
S.dll.set_round_match(
panel_slot,
_x30(sm.h), _x30(sm.a),
_x2a(sm.h), _x2a(sm.a),
h_scorers, a_scorers,
st_str,
hs, as,
hp, ap, hd, ad,
0
)
end
end
end
local function _x3b(mode, title, auto_open_tab)
S.menu_mode = mode
S.phase_title = title or ""
if not S.dll or not S.dll_installed or not S.dll.set_round_menu_state then return end
if mode > 0 then
_x3a(mode)
end
S.dll.set_round_menu_state(mode, S.phase_title, auto_open_tab or 0)
end
local function _x3c(comp_name, h_id, a_id, h_score, a_score, side, scorer, minute, h_pos, a_pos, h_delta, a_delta)
if not S.dll or not S.dll_installed then return end
local h_name = _x30(h_id)
local a_name = _x30(a_id)
local h_emb = _x2a(h_id)
local a_emb = _x2a(a_id)
local min_str = string.format("\037\100\039", minute)
if S.dll.push_goal_ex then
S.dll.push_goal_ex(comp_name, h_name, a_name, scorer, min_str, h_emb, a_emb,
h_score, a_score, side, h_pos or 0, a_pos or 0, h_delta or 0, a_delta or 0, S.duration)
else
S.dll.push_goal(comp_name, h_name, a_name, scorer, min_str, h_emb, a_emb, h_score, a_score, side, S.duration)
end
_x35()
end
local function _x3d(v)
return string.char(v % 256, math.floor(v / 256) % 256)
end
local function _x3e(v)
return string.char(
v % 256,
math.floor(v / 256) % 256,
math.floor(v / 65536) % 256,
math.floor(v / 16777216) % 256
)
end
local function _x3f(v)
local lo = v % 4294967296
local hi = math.floor(v / 4294967296)
return _x3e(lo) .. _x3e(hi)
end
local function _x40()
if S.sim_hooked then return true end
if S.base == 0 then return false end
local site = S.base + _x15
if memory.read(site - #_x16, #_x16) ~= _x16 then
local found = memory.search_process(_x16 .. _x17)
if not found then
_x1e("\065\115\115\105\110\097\116\117\114\097\032\100\101\032\115\105\109\117\108\097\099\097\111\032\100\097\032\073\065\032\110\097\111\032\101\110\099\111\110\116\114\097\100\097\032\110\111\032\069\088\069")
return false
end
site = tonumber(ffi.cast("\117\105\110\116\112\116\114\095\116", found)) + #_x16
end
local cur = memory.read(site, 15)
if cur:sub(1, 6) == "\255\037\000\000\000\000" then
local cave = _x22(cur, 7)
S.sim_cave = cave
S.sim_data = cave + 0x80
S.sim_hooked = true
_x1e("\072\111\111\107\032\100\101\032\115\105\110\099\114\111\110\105\122\097\099\097\111\032\100\097\032\073\065\032\114\101\117\116\105\108\105\122\097\100\111\032\101\109\032\037\120\032\040\099\097\118\101\032\037\120\041", site, cave)
return true
end
if cur ~= _x17 then
_x1e("\066\121\116\101\115\032\105\110\101\115\112\101\114\097\100\111\115\032\101\109\032\037\120\059\032\104\111\111\107\032\100\101\032\115\105\110\099\114\111\110\105\122\097\099\097\111\032\110\097\111\032\105\110\115\116\097\108\097\100\111", site)
return false
end
local cave = tonumber(ffi.cast("\117\105\110\116\112\116\114\095\116", memory.allocate_codecave(0x200)))
local data = cave + 0x80
memory.write(data, string.rep("\000", 0x90))
local code =
"\080\081\082" ..
"\072\184" .. _x3f(data) ..
"\139\008" ..
"\133\201" ..
"\116\039" ..
"\015\183\019" ..
"\072\131\192\008" ..
"\102\057\016" ..
"\117\019" ..
"\015\182\072\002" ..
"\136\075\028" ..
"\015\182\072\003" ..
"\136\075\031" ..
"\255\064\004" ..
"\235\008" ..
"\072\131\192\008" ..
"\255\201" ..
"\117\224" ..
"\090\089\088" ..
_x17 ..
"\255\037\000\000\000\000" .. _x3f(site + 15)
memory.write(cave, code)
memory.write(site, "\255\037\000\000\000\000" .. _x3f(cave) .. "\144")
S.sim_cave = cave
S.sim_data = data
S.sim_hooked = true
_x1e("\072\111\111\107\032\100\101\032\115\105\110\099\114\111\110\105\122\097\099\097\111\032\100\097\032\073\065\032\105\110\115\116\097\108\097\100\111\032\101\109\032\037\120\032\045\062\032\099\097\118\101\032\037\120", site, cave)
return true
end
local function _x41()
if not S.sim_hooked or not S.sim_data then return end
local all_sync = {}
for _, sm in ipairs(S.sim_matches) do
all_sync[#all_sync + 1] = sm
end
for _, em in ipairs(S.earlier_matches) do
if #all_sync < 16 then
all_sync[#all_sync + 1] = em
end
end
local n = math.min(#all_sync, 16)
local entries = {}
for i = 1, n do
local sm = all_sync[i]
entries[i] = _x3d(sm.eid) .. string.char(sm.final_hs % 256, sm.final_as % 256) .. _x3e(0)
end
memory.write(S.sim_data, _x3e(n) .. _x3e(0) .. table.concat(entries))
end
local function _x42()
S.base_pos = {}
for rid, gtbl in pairs(S.group_tables) do
local gpos = _x36(gtbl)
for tid, p in pairs(gpos) do
S.base_pos[tid] = p
S.base_table[tid] = gtbl[tid]
end
end
end
local function _x43(st, all_ev, my_rid, user_modo, today_mes, today_dia)
S.is_league_table = false
S.base_table = {}
S.group_tables = {}
S.team_rid = {}
S.base_pos = {}
if user_modo == 0 or user_modo == 1 then return end
local base_rid = my_rid % 1024
local parent = {}
local function uf_find(x)
local r = x
while parent[r] and parent[r] ~= r do r = parent[r] end
local curr = x
while curr ~= r do
local nxt = parent[curr]
parent[curr] = r
curr = nxt
end
return r
end
local function uf_union(a, b)
if not parent[a] then parent[a] = a end
if not parent[b] then parent[b] = b end
local ra, rb = uf_find(a), uf_find(b)
if ra ~= rb then
if ra < rb then parent[rb] = ra else parent[ra] = rb end
end
end
local comp_events = {}
for ei = 0, _x0c - 1 do
local off = ei * _x0b + 1
if _x1f(all_ev, off) == ei then
local pk = _x20(all_ev, off + 4)
local rid = pk % 65536
if rid == my_rid or (base_rid > 0 and (rid % 1024) == base_rid) then
local h = _x25(_x20(all_ev, off + 20))
local a = _x25(_x20(all_ev, off + 24))
if h and a then
uf_union(h, a)
local jogada = (math.floor(pk / 1073741824) % 2) == 1
local mes = all_ev:byte(off + 10)
local dia = all_ev:byte(off + 11)
local gh = all_ev:byte(off + 28)
local ga = all_ev:byte(off + 31)
comp_events[#comp_events + 1] = {
rid = rid, h = h, a = a, jogada = jogada, mes = mes, dia = dia, gh = gh, ga = ga
}
end
end
end
end
for tid, _ in pairs(parent) do
local root = uf_find(tid)
if not S.group_tables[root] then S.group_tables[root] = {} end
S.group_tables[root][tid] = { pts = 0, vit = 0, sg = 0, gp = 0 }
S.team_rid[tid] = root
end
local my_root = (S.home_id > 0 and parent[S.home_id]) and uf_find(S.home_id) or nil
local played_matches = 0
local total_my_group_matches = 0
for _, ev in ipairs(comp_events) do
local root = uf_find(ev.h)
local gtbl = S.group_tables[root]
if root == my_root then total_my_group_matches = total_my_group_matches + 1 end
if gtbl and ev.jogada and not (ev.mes == today_mes and ev.dia == today_dia) then
if ev.gh and ev.ga and ev.gh < 50 and ev.ga < 50 then
_x37(gtbl, ev.h, ev.a, ev.gh, ev.ga)
if root == my_root then played_matches = played_matches + 1 end
end
end
end
local my_gtbl = (my_root and S.group_tables[my_root]) or {}
local num_clubs = 0
for _ in pairs(my_gtbl) do num_clubs = num_clubs + 1 end
local num_groups = 0
for _ in pairs(S.group_tables) do num_groups = num_groups + 1 end
S.is_multi_group = (num_groups > 1 and num_clubs >= 3 and num_clubs <= 8)
if num_clubs >= 4 and total_my_group_matches >= num_clubs then
S.is_league_table = true
_x42()
_x1d("\091\083\084\065\078\068\073\078\071\083\093\032\084\097\098\101\108\097\032\100\101\032\112\111\110\116\111\115\032\099\111\114\114\105\100\111\115\047\103\114\117\112\111\115\032\097\116\105\118\097\032\112\097\114\097\032\114\105\100\061\037\100\032\040\037\100\032\099\108\117\098\101\115\032\110\111\032\103\114\117\112\111\047\108\105\103\097\044\032\037\100\032\103\114\117\112\111\115\044\032\037\100\032\106\111\103\111\115\032\110\111\032\103\114\117\112\111\044\032\037\100\032\106\097\032\106\111\103\097\100\111\115\041",
my_rid, num_clubs, num_groups, total_my_group_matches, played_matches)
else
S.group_tables = {}
S.is_multi_group = false
_x1d("\091\083\084\065\078\068\073\078\071\083\093\032\070\097\115\101\032\109\097\116\097\045\109\097\116\097\032\100\101\116\101\099\116\097\100\097\032\112\097\114\097\032\114\105\100\061\037\100\032\040\099\108\117\098\101\115\061\037\100\044\032\106\111\103\111\115\061\037\100\041\032\045\032\112\111\115\105\099\097\111\032\111\099\117\108\116\097",
my_rid, num_clubs, total_my_group_matches)
end
end
local function _x44(label_tag, my_rid, my_dia, my_mes)
_x33()
for idx, sm in ipairs(S.sim_matches) do
local r = math.random(1, 100)
local total_goals = 0
if r <= 12 then total_goals = 0
elseif r <= 36 then total_goals = 1
elseif r <= 68 then total_goals = 2
elseif r <= 88 then total_goals = 3
elseif r <= 97 then total_goals = 4
else total_goals = 5 end
for _ = 1, total_goals do
local min = math.random(2, 88)
local side = (math.random(1, 100) <= 55) and 0 or 1
if side == 0 then sm.final_hs = sm.final_hs + 1 else sm.final_as = sm.final_as + 1 end
local tid = (side == 0) and sm.h or sm.a
S.timeline[#S.timeline + 1] = {
match_idx = idx,
minute = min,
side = side,
scorer = _x34(tid),
fired = false,
}
end
if sm.no_draw and sm.final_hs == sm.final_as then
local side = (math.random(1, 100) <= 55) and 0 or 1
if side == 0 then sm.final_hs = sm.final_hs + 1 else sm.final_as = sm.final_as + 1 end
local tid = (side == 0) and sm.h or sm.a
S.timeline[#S.timeline + 1] = {
match_idx = idx,
minute = math.random(75, 88),
side = side,
scorer = _x34(tid),
fired = false,
}
end
_x1d("\091\083\073\077\095\077\065\084\067\072\032\035\037\100\093\032\101\105\100\061\037\100\032\124\032\037\115\032\040\037\100\044\032\112\111\115\095\105\110\105\061\037\115\041\032\037\100\032\120\032\037\100\032\037\115\032\040\037\100\044\032\112\111\115\095\105\110\105\061\037\115\041\032\124\032\101\109\098\095\104\061\037\115\032\124\032\101\109\098\095\097\061\037\115",
idx, sm.eid,
_x30(sm.h), sm.h, tostring(S.base_pos[sm.h] or "\045"),
sm.final_hs, sm.final_as,
_x30(sm.a), sm.a, tostring(S.base_pos[sm.a] or "\045"),
_x2a(sm.h) ~= "" and "\079\075" or "\077\073\083\083\073\078\071",
_x2a(sm.a) ~= "" and "\079\075" or "\077\073\083\083\073\078\071")
end
table.sort(S.timeline, function(x, y) return x.minute < y.minute end)
for k, g in ipairs(S.timeline) do
local sm = S.sim_matches[g.match_idx]
_x1d("\032\032\091\071\079\076\095\065\071\069\078\068\065\068\079\032\035\037\100\093\032\037\100\039\032\045\062\032\037\115\032\120\032\037\115\032\040\108\097\100\111\061\037\115\044\032\097\117\116\111\114\061\037\115\041",
k, g.minute, _x30(sm.h), _x30(sm.a), g.side == 0 and "\077\065\078\068\065\078\084\069" or "\086\073\083\073\084\065\078\084\069", g.scorer)
end
_x41()
_x3a(0)
_x1d("\091\037\115\093\032\082\111\100\097\100\097\032\112\114\111\110\116\097\032\040\114\105\100\061\037\100\044\032\037\048\050\100\047\037\048\050\100\041\058\032\037\100\032\106\111\103\111\115\032\115\105\109\117\108\116\097\110\101\111\115\044\032\037\100\032\103\111\108\115\032\097\103\101\110\100\097\100\111\115\032\040\099\111\100\101\099\097\118\101\032\048\120\037\120\041",
label_tag, my_rid, my_dia, my_mes, #S.sim_matches, #S.timeline, S.sim_data or 0)
end
local function _x45()
local tid = S.current_tid > 0 and S.current_tid or 29
S.current_rid = tid
local th = _x2c(tid, tid)
if th == _x1a.def then
if (S.home_id >= 1200 and S.home_id <= 2600) or S.home_id == 137 or S.home_id == 274 then
th = _x1a.br_a
else
th = _x1a.ucl
end
end
_x2d(th)
local pool_br = { 1248, 137, 1255, 1247, 1246, 1254, 1249, 1250, 1252, 274, 1245, 2453, 1256, 1251, 1244, 1253 }
local pool_eu = { 109, 108, 127, 101, 103, 102, 100, 120, 121, 119, 114, 125, 128, 112 }
local use_br = (th == _x1a.br_a or th == _x1a.br_b or th == _x1a.br_c or th == _x1a.br_d or th == _x1a.paulistao or th == _x1a.cdb or th == _x1a.lib or th == _x1a.suda)
local src_pool = use_br and pool_br or pool_eu
local filtered = {}
local used = {}
if S.home_id > 0 then used[S.home_id] = true end
if S.away_id > 0 then used[S.away_id] = true end
for _, cid in ipairs(src_pool) do
if not used[cid] and S.team_names[cid] then
used[cid] = true
filtered[#filtered + 1] = cid
end
end
if #filtered < 12 then
for cid, _ in pairs(S.team_names) do
if not used[cid] and cid > 50 and cid < 5000 then
used[cid] = true
filtered[#filtered + 1] = cid
if #filtered >= 16 then break end
end
end
end
S.is_league_table = true
S.base_table = {}
S.group_tables = {}
S.team_rid = {}
S.base_pos = {}
local all_teams = {}
if S.home_id > 0 then all_teams[#all_teams + 1] = S.home_id end
if S.away_id > 0 then all_teams[#all_teams + 1] = S.away_id end
for _, cid in ipairs(filtered) do all_teams[#all_teams + 1] = cid end
for idx, cid in ipairs(all_teams) do
local pts = math.max(3, 28 - idx)
local w = math.floor(pts / 3)
local gd = math.max(-6, 12 - idx)
S.base_table[cid] = { pts = pts, vit = w, sg = gd, gp = w * 2 + 3 }
end
S.base_pos = _x36(S.base_table)
local n_pairs = math.min(5, math.floor(#filtered / 2))
for i = 1, n_pairs do
local h = filtered[(i - 1) * 2 + 1]
local a = filtered[(i - 1) * 2 + 2]
if h and a then
S.sim_matches[#S.sim_matches + 1] = {
eid = 9000 + i, h = h, a = a, hs = 0, as = 0,
final_hs = 0, final_as = 0, no_draw = false,
}
end
end
if #S.sim_matches > 0 then
_x44("\065\077\073\083\084\079\083\079\095\068\069\077\079", S.current_rid, 1, 1)
end
end
local function _x46(no_draw)
local function pick_g()
local r = math.random(1, 100)
if r <= 32 then return 0
elseif r <= 68 then return 1
elseif r <= 90 then return 2
else return 3 end
end
local hs, as = pick_g(), pick_g()
if no_draw and hs == as then
if math.random(1, 100) <= 55 then hs = hs + 1 else as = as + 1 end
end
return hs, as
end
local function _x47(st)
S.sim_matches = {}
S.earlier_matches = {}
S.timeline = {}
S.sync_logged = {}
if S.sim_hooked and S.sim_data then
memory.write(S.sim_data, _x3e(0))
end
if not st or not S.L then
_x1d("\091\083\067\065\078\093\032\115\116\032\105\110\100\105\115\112\111\110\105\118\101\108\032\040\115\116\061\037\115\041\032\045\062\032\097\116\105\118\097\110\100\111\032\114\111\100\097\100\097\032\115\105\109\117\108\097\100\097\032\112\097\114\097\032\065\109\105\115\116\111\115\111\047\069\120\105\098\105\099\097\111", tostring(st))
_x45()
return
end
_x2f(st)
local cur_ano, cur_mes, cur_dia = 0, 0, 0
local dbytes = _x23(st + S.L.date + 8, 4)
if dbytes then
cur_ano = _x1f(dbytes, 1)
cur_mes = dbytes:byte(3)
cur_dia = dbytes:byte(4)
end
_x1d("\091\083\067\065\078\093\032\067\097\114\114\101\105\114\097\032\115\116\061\048\120\037\120\032\124\032\068\097\116\097\032\097\116\117\097\108\061\037\048\050\100\047\037\048\050\100\047\037\048\052\100\032\124\032\080\097\114\116\105\100\097\032\117\115\117\097\114\105\111\058\032\037\115\032\040\037\100\041\032\120\032\037\115\032\040\037\100\041\032\124\032\116\105\100\061\037\100",
st, cur_dia, cur_mes, cur_ano, _x30(S.home_id), S.home_id, _x30(S.away_id), S.away_id, S.current_tid)
if cur_ano == 0 and cur_mes == 0 and cur_dia == 0 then
_x1d("\091\083\067\065\078\093\032\083\101\109\032\099\097\114\114\101\105\114\097\032\097\116\105\118\097\032\110\097\032\082\065\077\032\040\100\097\116\097\032\048\048\047\048\048\047\048\048\048\048\041\032\045\062\032\097\116\105\118\097\110\100\111\032\114\111\100\097\100\097\032\115\105\109\117\108\097\100\097\032\112\097\114\097\032\065\109\105\115\116\111\115\111\047\069\120\105\098\105\099\097\111")
_x45()
return
end
local ev_base = st + S.L.events
local my_eid, my_rid, my_mes, my_dia, my_modo, my_tod
local fallback_eid, fallback_rid, fallback_mes, fallback_dia, fallback_modo, fallback_tod
local candidates = {}
local all_ev = _x23(ev_base, _x0c * _x0b)
if not all_ev then
_x1d("\091\083\067\065\078\093\032\069\082\082\079\058\032\078\097\111\032\102\111\105\032\112\111\115\115\105\118\101\108\032\108\101\114\032\097\032\116\097\098\101\108\097\032\101\118\101\110\116\115\032\101\109\032\048\120\037\120\032\045\062\032\102\097\108\108\098\097\099\107\032\097\109\105\115\116\111\115\111", ev_base)
_x45()
return
end
for ei = 0, _x0c - 1 do
local off = ei * _x0b + 1
local id_chk = _x1f(all_ev, off)
if id_chk == ei then
local pk = _x20(all_ev, off + 4)
local rid = pk % 65536
local jogada = (math.floor(pk / 1073741824) % 2) == 1
local modo = math.floor(pk / 268435456) % 4
local mes = all_ev:byte(off + 10)
local dia = all_ev:byte(off + 11)
local tod = all_ev:byte(off + 16)
local h = _x25(_x20(all_ev, off + 20))
local a = _x25(_x20(all_ev, off + 24))
if h and a and not jogada then
if h == S.home_id and a == S.away_id then
if cur_mes > 0 and mes == cur_mes and dia == cur_dia then
my_eid, my_rid, my_mes, my_dia, my_modo, my_tod = ei, rid, mes, dia, modo, tod
elseif not fallback_rid then
fallback_eid, fallback_rid, fallback_mes, fallback_dia, fallback_modo, fallback_tod = ei, rid, mes, dia, modo, tod
end
elseif (h == S.away_id and a == S.home_id) and not fallback_rid then
fallback_eid, fallback_rid, fallback_mes, fallback_dia, fallback_modo, fallback_tod = ei, rid, mes, dia, modo, tod
end
candidates[#candidates + 1] = { eid = ei, rid = rid, mes = mes, dia = dia, tod = tod, h = h, a = a, modo = modo }
end
end
end
if not my_rid and fallback_rid then
my_eid, my_rid, my_mes, my_dia, my_modo, my_tod = fallback_eid, fallback_rid, fallback_mes, fallback_dia, fallback_modo, fallback_tod
end
if not my_rid then
if cur_mes > 0 and cur_dia > 0 and S.current_tid > 0 then
my_eid, my_rid, my_mes, my_dia, my_modo, my_tod = -1, S.current_tid, cur_mes, cur_dia, 2, 0
_x1d("\091\083\067\065\078\093\032\080\097\114\116\105\100\097\032\100\111\032\117\115\117\097\114\105\111\032\110\097\111\032\097\099\104\097\100\097\032\100\105\114\101\116\097\109\101\110\116\101\032\101\109\032\101\118\101\110\116\115\059\032\117\115\097\110\100\111\032\100\097\116\097\032\100\097\032\099\097\114\114\101\105\114\097\032\037\048\050\100\047\037\048\050\100\032\101\032\116\105\100\061\037\100",
my_dia, my_mes, my_rid)
else
_x1d("\091\083\067\065\078\093\032\080\097\114\116\105\100\097\032\097\116\117\097\108\032\040\037\100\032\120\032\037\100\041\032\102\111\114\097\032\100\111\032\099\097\108\101\110\100\097\114\105\111\032\100\097\032\099\097\114\114\101\105\114\097\032\045\062\032\097\116\105\118\097\110\100\111\032\114\111\100\097\100\097\032\115\105\109\117\108\097\100\097\032\112\097\114\097\032\065\109\105\115\116\111\115\111", S.home_id, S.away_id)
_x45()
return
end
else
_x1d("\091\083\067\065\078\093\032\080\097\114\116\105\100\097\032\100\111\032\117\115\117\097\114\105\111\032\101\110\099\111\110\116\114\097\100\097\032\101\109\032\101\118\101\110\116\115\058\032\101\105\100\061\037\100\044\032\114\105\100\061\037\100\044\032\100\097\116\097\061\037\048\050\100\047\037\048\050\100\044\032\109\111\100\111\061\037\100\044\032\116\111\100\061\037\115",
my_eid, my_rid, my_dia, my_mes, my_modo or 2, tostring(my_tod))
end
S.current_rid = my_rid
local th = _x2c(S.current_tid, my_rid)
_x2d(th)
_x43(st, all_ev, my_rid, my_modo or 2, my_mes, my_dia)
local base_rid = my_rid % 1024
local round_all = {}
local has_diff_tod = false
for _, c in ipairs(candidates) do
if c.eid ~= my_eid and c.mes == my_mes and c.dia == my_dia and (c.rid == my_rid or (c.rid % 1024) == base_rid) then
round_all[#round_all + 1] = c
if my_tod and c.tod ~= my_tod then has_diff_tod = true end
end
end
local earlier_list = {}
local unplayed_list = {}
local my_root = S.team_rid[S.home_id]
local is_multi_group = S.is_multi_group
if has_diff_tod and my_tod then
for _, c in ipairs(round_all) do
c.same_group = (is_multi_group and my_root ~= nil and S.team_rid[c.h] == my_root) or false
if c.same_group then
unplayed_list[#unplayed_list + 1] = c
elseif c.tod < my_tod then
earlier_list[#earlier_list + 1] = c
else
unplayed_list[#unplayed_list + 1] = c
end
end
else
for _, c in ipairs(round_all) do
c.same_group = (is_multi_group and my_root ~= nil and S.team_rid[c.h] == my_root) or false
if c.same_group then
unplayed_list[#unplayed_list + 1] = c
elseif my_eid > 0 and c.eid < my_eid then
earlier_list[#earlier_list + 1] = c
else
unplayed_list[#unplayed_list + 1] = c
end
end
if #earlier_list == 0 and #unplayed_list >= 8 then
local n_early = math.floor(#unplayed_list / 2)
local new_unplayed = {}
for idx, c in ipairs(unplayed_list) do
if (not c.same_group) and #earlier_list < n_early then
earlier_list[#earlier_list + 1] = c
else
new_unplayed[#new_unplayed + 1] = c
end
end
unplayed_list = new_unplayed
elseif #unplayed_list < 3 and #earlier_list > 0 then
while #unplayed_list < math.min(4, #round_all) and #earlier_list > 0 do
local moved = table.remove(earlier_list)
table.insert(unplayed_list, 1, moved)
end
end
table.sort(unplayed_list, function(a, b)
if a.same_group ~= b.same_group then return a.same_group end
return a.eid < b.eid
end)
while #unplayed_list > 7 do
local moved = table.remove(unplayed_list)
earlier_list[#earlier_list + 1] = moved
end
end
for _, c in ipairs(earlier_list) do
local no_draw = (not S.is_league_table) and (c.modo == 2)
local ehs, eas = _x46(no_draw)
S.earlier_matches[#S.earlier_matches + 1] = {
eid = c.eid, h = c.h, a = c.a, final_hs = ehs, final_as = eas
}
local g_root = S.team_rid[c.h]
if S.is_league_table and g_root and S.group_tables[g_root] then
_x37(S.group_tables[g_root], c.h, c.a, ehs, eas)
end
_x1d("\091\074\079\071\079\095\065\078\084\069\082\073\079\082\095\082\079\068\065\068\065\093\032\101\105\100\061\037\100\032\124\032\037\115\032\037\100\032\120\032\037\100\032\037\115\032\040\106\097\032\101\110\099\101\114\114\097\100\111\032\109\097\105\115\032\099\101\100\111\032\110\097\032\114\111\100\097\100\097\032\045\062\032\115\111\109\097\100\111\032\110\097\032\099\108\097\115\115\105\102\105\099\097\099\097\111\041",
c.eid, _x30(c.h), ehs, eas, _x30(c.a))
end
if #earlier_list > 0 and S.is_league_table then
_x42()
end
for _, c in ipairs(unplayed_list) do
S.sim_matches[#S.sim_matches + 1] = {
eid = c.eid, h = c.h, a = c.a, hs = 0, as = 0,
final_hs = 0, final_as = 0,
no_draw = (not S.is_league_table) and (c.modo == 2),
same_group = c.same_group and true or false,
}
end
if #S.sim_matches == 0 then
_x1d("\091\083\067\065\078\093\032\078\101\110\104\117\109\032\111\117\116\114\111\032\106\111\103\111\032\115\105\109\117\108\116\097\110\101\111\032\101\110\099\111\110\116\114\097\100\111\032\110\097\032\100\097\116\097\032\037\048\050\100\047\037\048\050\100\032\040\114\105\100\061\037\100\041", my_dia, my_mes, my_rid)
return
end
_x44("\083\067\065\078", my_rid, my_dia, my_mes)
end
local function _x48()
if S.dll then return true end
local dir = S.sider_dir .. "\109\111\100\117\108\101\115\092\076\105\118\101\082\111\117\110\100\071\111\097\108\115"
local h = ffi.C._x04(dir .. "\092\076\105\118\101\082\111\117\110\100\071\111\097\108\115\046\100\108\108")
if h == nil then
_x1e("\070\097\108\104\097\032\097\111\032\099\097\114\114\101\103\097\114\032\037\115\092\076\105\118\101\082\111\117\110\100\071\111\097\108\115\046\100\108\108", dir)
return false
end
local function fn(name, ct)
local p = ffi.C._x05(h, name)
return p ~= nil and ffi.cast(ct, p) or nil
end
local unlock = fn("\095\108\114\103\095\048\048", "\105\110\116\032\040\042\041\040\117\105\110\116\051\050\095\116\044\032\117\105\110\116\051\050\095\116\044\032\099\111\110\115\116\032\099\104\097\114\032\042\041")
local c_hi = 0x1A549EE8 + 0x3AE0B7DA
local c_lo = 0x21115320 + 0x33515322
if not unlock or unlock(c_hi, c_lo, S.sider_dir) ~= 1 then
_x1e("\070\097\108\104\097\032\110\097\032\118\101\114\105\102\105\099\097\099\097\111\032\100\101\032\105\110\116\101\103\114\105\100\097\100\101\032\110\097\116\105\118\097\032\100\101\032\076\105\118\101\082\111\117\110\100\071\111\097\108\115\046\100\108\108")
return false
end
local install = fn("\095\108\114\103\095\048\049", "\105\110\116\032\040\042\041\040\099\111\110\115\116\032\099\104\097\114\032\042\041")
local set_theme = fn("\095\108\114\103\095\048\050", "\118\111\105\100\032\040\042\041\040\099\111\110\115\116\032\099\104\097\114\032\042\044\032\117\105\110\116\051\050\095\116\044\032\117\105\110\116\051\050\095\116\044\032\117\105\110\116\051\050\095\116\044\032\117\105\110\116\051\050\095\116\044\032\117\105\110\116\051\050\095\116\041")
local set_comp_assets = fn("\095\108\114\103\095\048\051", "\118\111\105\100\032\040\042\041\040\099\111\110\115\116\032\099\104\097\114\032\042\044\032\105\110\116\041")
local set_layout = fn("\095\108\114\103\095\048\052", "\118\111\105\100\032\040\042\041\040\105\110\116\044\032\102\108\111\097\116\041")
local set_offsets = fn("\095\108\114\103\095\048\053", "\118\111\105\100\032\040\042\041\040\102\108\111\097\116\044\032\102\108\111\097\116\041")
local set_occlusion = fn("\095\108\114\103\095\048\054", "\118\111\105\100\032\040\042\041\040\102\108\111\097\116\041")
local push_goal_ex = fn("\095\108\114\103\095\048\055", "\118\111\105\100\032\040\042\041\040\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\105\110\116\044\032\105\110\116\044\032\105\110\116\044\032\105\110\116\044\032\105\110\116\044\032\105\110\116\044\032\105\110\116\044\032\100\111\117\098\108\101\041")
local push_goal = fn("\095\108\114\103\095\048\056", "\118\111\105\100\032\040\042\041\040\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\105\110\116\044\032\105\110\116\044\032\105\110\116\044\032\100\111\117\098\108\101\041")
local clear_round_matches = fn("\095\108\114\103\095\048\057", "\118\111\105\100\032\040\042\041\040\118\111\105\100\041")
local set_round_match = fn("\095\108\114\103\095\049\048", "\118\111\105\100\032\040\042\041\040\105\110\116\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\105\110\116\044\032\105\110\116\044\032\105\110\116\044\032\105\110\116\044\032\105\110\116\044\032\105\110\116\044\032\105\110\116\041")
local set_round_menu_state = fn("\095\108\114\103\095\049\049", "\118\111\105\100\032\040\042\041\040\105\110\116\044\032\099\111\110\115\116\032\099\104\097\114\032\042\044\032\105\110\116\041")
local round_step_tab = fn("\095\108\114\103\095\049\050", "\118\111\105\100\032\040\042\041\040\105\110\116\041")
local clear = fn("\095\108\114\103\095\049\051", "\118\111\105\100\032\040\042\041\040\118\111\105\100\041")
local get_overlay = fn("\095\108\114\103\095\049\052", "\099\111\110\115\116\032\099\104\097\114\032\042\040\042\041\040\105\110\116\044\032\105\110\116\044\032\105\110\116\044\032\105\110\116\044\032\105\110\116\044\032\102\108\111\097\116\044\032\102\108\111\097\116\044\032\102\108\111\097\116\044\032\102\108\111\097\116\044\032\105\110\116\044\032\105\110\116\044\032\102\108\111\097\116\044\032\102\108\111\097\116\044\032\105\110\116\044\032\102\108\111\097\116\041")
if not (install and set_theme and set_layout and push_goal and clear and get_overlay) then
_x1e("\069\120\112\111\114\116\115\032\097\117\115\101\110\116\101\115\032\101\109\032\076\105\118\101\082\111\117\110\100\071\111\097\108\115\046\100\108\108")
return false
end
S.dll = {
install = install, set_theme = set_theme, set_comp_assets = set_comp_assets,
set_layout = set_layout, set_offsets = set_offsets, set_occlusion = set_occlusion,
push_goal = push_goal, push_goal_ex = push_goal_ex,
clear_round_matches = clear_round_matches, set_round_match = set_round_match,
set_round_menu_state = set_round_menu_state, round_step_tab = round_step_tab,
clear = clear, get_overlay = get_overlay, dir = dir,
}
return true
end
function m.set_teams(ctx, home, away)
S.home_id = home or ctx.home_team or 0
S.away_id = away or ctx.away_team or 0
S.current_tid = ctx.tournament_id or 0
S.in_match = true
S.match_init_done = false
S.last_minute = -1
S.last_user_hs = 0
S.last_user_as = 0
S.menu_mode = 0
S.saved_parent_menu = 0
_x1d("\091\083\069\084\095\084\069\065\077\083\093\032\037\115\032\040\037\100\041\032\120\032\037\115\032\040\037\100\041\032\124\032\116\111\117\114\110\097\109\101\110\116\095\105\100\061\037\115",
_x30(S.home_id), S.home_id, _x30(S.away_id), S.away_id, tostring(S.current_tid))
if S.dll and S.dll_installed then
S.dll.clear()
_x2d(_x2c(S.current_tid, 0))
end
end
function m.after_set_conditions(ctx)
S.current_tid = ctx.tournament_id or S.current_tid
S.home_id = (S.home_id > 0) and S.home_id or (ctx.home_team or 0)
S.away_id = (S.away_id > 0) and S.away_id or (ctx.away_team or 0)
_x1d("\091\065\070\084\069\082\095\083\069\084\095\067\079\078\068\073\084\073\079\078\083\093\032\116\105\100\061\037\115\032\124\032\104\111\109\101\061\037\100\032\124\032\097\119\097\121\061\037\100", tostring(S.current_tid), S.home_id, S.away_id)
if S.dll and S.dll_installed then
_x2d(_x2c(S.current_tid, S.current_rid))
end
if not S.match_init_done and S.home_id > 0 and S.away_id > 0 then
local st = _x31()
S.match_init_done = true
_x47(st)
end
end
local function _x49(filename)
if not S.in_match or #S.sim_matches == 0 or type(filename) ~= "\115\116\114\105\110\103" then return end
local fn = filename:gsub("\047", "\092"):lower()
if not fn:find("\094\099\111\109\109\111\110\092\115\099\114\105\112\116\092\102\108\111\119\092") or not fn:find("\037\046\106\115\111\110\036") then return end
local cur_min = math.max(1, S.last_minute > 0 and S.last_minute or 1)
if fn == "\099\111\109\109\111\110\092\115\099\114\105\112\116\092\102\108\111\119\092\109\097\116\099\104\092\109\097\116\099\104\112\097\117\115\101\046\106\115\111\110" then
local title = string.format("\074\079\071\079\083\032\068\065\032\082\079\068\065\068\065\032\065\079\032\086\073\086\079\032\226\128\162\032\037\100\039", cur_min)
S.saved_parent_menu = 1
_x3b(1, title, 0)
_x1d("\091\077\069\078\085\095\082\079\068\065\068\065\093\032\077\101\110\117\032\100\101\032\080\097\117\115\097\032\100\101\116\101\099\116\097\100\111\032\040\037\115\041\032\045\062\032\066\097\114\114\097\032\105\110\102\101\114\105\111\114\032\097\116\105\118\097\032\040\037\100\039\041", fn, cur_min)
return
end
if fn == "\099\111\109\109\111\110\092\115\099\114\105\112\116\092\102\108\111\119\092\109\097\116\099\104\092\109\097\116\099\104\112\114\101\112\097\117\115\101\046\106\115\111\110"
or fn == "\099\111\109\109\111\110\092\115\099\114\105\112\116\092\102\108\111\119\092\109\097\116\099\104\092\109\097\116\099\104\112\114\101\104\097\108\102\116\105\109\101\046\106\115\111\110"
or fn == "\099\111\109\109\111\110\092\115\099\114\105\112\116\092\102\108\111\119\092\109\097\116\099\104\092\109\097\116\099\104\115\116\097\116\115\104\097\108\102\046\106\115\111\110"
or fn == "\099\111\109\109\111\110\092\115\099\114\105\112\116\092\102\108\111\119\092\109\097\116\099\104\092\109\097\116\099\104\115\116\097\116\115\114\101\115\117\108\116\046\106\115\111\110"
or fn == "\099\111\109\109\111\110\092\115\099\114\105\112\116\092\102\108\111\119\092\109\097\116\099\104\092\109\097\116\099\104\112\114\101\114\101\115\117\108\116\046\106\115\111\110" then
_x3b(0, "", 0)
_x1d("\091\077\069\078\085\095\082\079\068\065\068\065\093\032\084\101\108\097\032\105\110\116\101\114\109\101\100\105\097\114\105\097\032\040\037\115\041\032\045\062\032\111\118\101\114\108\097\121\032\111\099\117\108\116\111\032\040\115\111\032\097\112\097\114\101\099\101\032\110\111\032\109\101\110\117\032\115\101\103\117\105\110\116\101\041", fn)
return
end
if fn == "\099\111\109\109\111\110\092\115\099\114\105\112\116\092\102\108\111\119\092\109\097\116\099\104\092\109\097\116\099\104\104\097\108\102\116\105\109\101\046\106\115\111\110" then
local title = "\074\079\071\079\083\032\068\065\032\082\079\068\065\068\065\032\226\128\162\032\073\078\084\069\082\086\065\076\079\032\040\052\053\039\041"
S.saved_parent_menu = 3
_x3b(3, title, 0)
_x1d("\091\077\069\078\085\095\082\079\068\065\068\065\093\032\077\101\110\117\032\100\101\032\073\110\116\101\114\118\097\108\111\032\100\101\116\101\099\116\097\100\111\032\040\037\115\041\032\045\062\032\066\097\114\114\097\032\105\110\102\101\114\105\111\114\032\097\116\105\118\097\032\040\100\101\115\097\116\105\118\097\100\111\032\112\111\114\032\112\097\100\114\097\111\041", fn)
return
end
if fn == "\099\111\109\109\111\110\092\115\099\114\105\112\116\092\102\108\111\119\092\109\097\116\099\104\092\109\097\116\099\104\114\101\115\117\108\116\046\106\115\111\110" then
local title = "\082\069\083\085\076\084\065\068\079\083\032\070\073\078\065\073\083\032\068\065\032\082\079\068\065\068\065\032\226\128\162\032\070\073\077\032\068\069\032\074\079\071\079"
S.saved_parent_menu = 5
_x3b(5, title, 0)
_x1d("\091\077\069\078\085\095\082\079\068\065\068\065\093\032\077\101\110\117\032\100\101\032\082\101\115\117\108\116\097\100\111\032\070\105\110\097\108\032\100\101\116\101\099\116\097\100\111\032\040\037\115\041\032\045\062\032\066\097\114\114\097\032\105\110\102\101\114\105\111\114\032\097\116\105\118\097\032\040\100\101\115\097\116\105\118\097\100\111\032\112\111\114\032\112\097\100\114\097\111\041", fn)
return
end
if fn:find("\109\097\116\099\104\109\101\110\117\115\117\098\114\101\116\117\114\110\037\046\106\115\111\110\036") or fn:find("\109\097\116\099\104\109\101\110\117\101\110\100\037\046\106\115\111\110\036") then
if S.saved_parent_menu > 0 then
_x3b(S.saved_parent_menu, S.phase_title, 0)
_x1d("\091\077\069\078\085\095\082\079\068\065\068\065\093\032\082\101\116\111\114\110\111\032\100\101\032\115\117\098\045\109\101\110\117\032\040\037\115\041\032\045\062\032\114\101\115\116\097\117\114\097\110\100\111\032\109\101\110\117\032\037\100", fn, S.saved_parent_menu)
end
return
end
if fn == "\099\111\109\109\111\110\092\115\099\114\105\112\116\092\102\108\111\119\092\109\097\116\099\104\092\109\097\116\099\104\112\111\115\116\112\097\117\115\101\046\106\115\111\110"
or fn == "\099\111\109\109\111\110\092\115\099\114\105\112\116\092\102\108\111\119\092\109\097\116\099\104\092\109\097\116\099\104\112\111\115\116\104\097\108\102\116\105\109\101\046\106\115\111\110"
or fn == "\099\111\109\109\111\110\092\115\099\114\105\112\116\092\102\108\111\119\092\109\097\116\099\104\092\109\097\116\099\104\105\100\108\101\046\106\115\111\110"
or fn == "\099\111\109\109\111\110\092\115\099\114\105\112\116\092\102\108\111\119\092\109\097\116\099\104\092\109\097\116\099\104\115\101\116\117\112\046\106\115\111\110"
or fn == "\099\111\109\109\111\110\092\115\099\114\105\112\116\092\102\108\111\119\092\109\097\116\099\104\092\109\097\116\099\104\101\110\100\046\106\115\111\110"
or fn:find("\094\099\111\109\109\111\110\092\115\099\114\105\112\116\092\102\108\111\119\092\099\111\109\109\111\110\092\099\109\110\117\112\100\097\116\101\112\111\115\116\109\097\116\099\104") then
S.saved_parent_menu = 0
if S.menu_mode ~= 0 then
_x3b(0, "", 0)
_x1d("\091\077\069\078\085\095\082\079\068\065\068\065\093\032\082\101\116\111\114\110\111\032\097\111\032\106\111\103\111\032\047\032\115\097\105\100\097\032\100\097\032\112\097\114\116\105\100\097\032\040\037\115\041\032\045\062\032\112\097\105\110\101\108\032\102\101\099\104\097\100\111", fn)
end
return
end
if S.menu_mode > 0 then
S.saved_parent_menu = S.menu_mode
_x3b(0, S.phase_title, 0)
_x1d("\091\077\069\078\085\095\082\079\068\065\068\065\093\032\083\117\098\045\109\101\110\117\032\097\098\101\114\116\111\032\040\037\115\041\032\045\062\032\112\097\105\110\101\108\032\114\101\099\111\108\104\105\100\111", fn)
end
end
function m.make_key(ctx, filename)
_x49(filename)
end
function m.data_ready(ctx, filename)
_x49(filename)
end
function m.overlay_on(ctx)
if not S.dll or not S.dll.get_overlay then return "" end
local ptr = S.dll.get_overlay(
S.dll_installed and 1 or 0,
#S.sim_matches,
S.is_league_table and 1 or 0,
S.is_multi_group and 1 or 0,
S.corner,
S.off_x, S.off_y,
S.scale, S.duration,
S.auto_fade and 1 or 0,
S.ball_in_corner and 1 or 0,
S.screen_u, S.screen_v,
S.group_filter_mode,
S.sound_volume
)
if ptr == nil then return "" end
return ffi.string(ptr)
end
function m.key_down(ctx, vkey)
if vkey == 0x34 then
S.sound_volume = math.max(0.0, math.floor((S.sound_volume - 0.10) * 100 + 0.5) / 100)
_x27()
elseif vkey == 0x35 then
S.sound_volume = math.min(1.0, math.floor((S.sound_volume + 0.10) * 100 + 0.5) / 100)
_x27()
elseif vkey == 0x36 then
if S.group_filter_mode == 1 then
S.group_filter_mode = 2
elseif S.group_filter_mode == 2 then
S.group_filter_mode = 0
else
S.group_filter_mode = 1
end
if S.menu_mode > 0 then
_x3a(S.menu_mode)
end
_x27()
elseif vkey == 0x37 then
S.corner = _x19[S.corner] or 1
S.off_x, S.off_y = 0.0, 0.0
_x26()
_x27()
elseif vkey == 0x38 then
S.scale = math.max(0.60, S.scale - 0.05)
_x26()
_x27()
elseif vkey == 0x39 then
S.scale = math.min(1.20, S.scale + 0.05)
_x26()
_x27()
elseif vkey == 0x30 then
S.auto_fade = not S.auto_fade
_x32()
_x27()
elseif vkey == 0x21 then
local dir = (S.corner == 2 or S.corner == 3) and 10.0 or -10.0
S.off_y = S.off_y + dir
_x26()
_x27()
elseif vkey == 0x22 then
local dir = (S.corner == 2 or S.corner == 3) and -10.0 or 10.0
S.off_y = S.off_y + dir
_x26()
_x27()
elseif vkey == 0xBD then
S.off_x = S.off_x - 10.0
_x26()
_x27()
elseif vkey == 0xBB then
S.off_x = S.off_x + 10.0
_x26()
_x27()
elseif vkey == 0x08 then
S.corner = 3
S.scale = 0.80
S.off_x, S.off_y = 0.0, 0.0
S.duration = 7.8
S.sound_volume = 0.65
S.auto_fade = true
S.group_filter_mode = 1
_x26()
_x32()
if S.menu_mode > 0 then
_x3a(S.menu_mode)
end
_x27()
end
end
function m.gamepad_input(ctx, inputs)
if S.menu_mode <= 0 or #S.sim_matches == 0 then return end
if not S.dll or not S.dll_installed or not S.dll.round_step_tab then return end
if inputs["\082\083"] == 1 then
S.dll.round_step_tab(1)
_x1d("\091\077\069\078\085\095\073\078\080\085\084\093\032\082\051\032\097\099\105\111\110\097\100\111\032\045\062\032\097\118\097\110\099\097\114\032\097\098\097")
elseif inputs["\076\083"] == 1 then
S.dll.round_step_tab(-1)
_x1d("\091\077\069\078\085\095\073\078\080\085\084\093\032\076\051\032\097\099\105\111\110\097\100\111\032\045\062\032\118\111\108\116\097\114\032\097\098\097")
elseif inputs["\089"] == 1 or inputs["\098\097\099\107"] == 1 then
S.dll.round_step_tab(99)
end
end
local function _x4a()
if not S.sim_hooked or not S.sim_data or #S.sim_matches == 0 then return end
local n = math.min(#S.sim_matches, 16)
local raw = _x23(S.sim_data + 8, n * 8)
if not raw then return end
for i = 1, n do
local off = (i - 1) * 8 + 1
local synced = _x20(raw, off + 4)
if synced > 0 and not S.sync_logged[i] then
S.sync_logged[i] = true
local sm = S.sim_matches[i]
_x1d("\091\065\073\095\083\089\078\067\095\079\075\093\032\074\111\103\111\032\035\037\100\032\040\101\105\100\061\037\100\041\058\032\037\115\032\037\100\032\120\032\037\100\032\037\115\032\103\114\097\118\097\100\111\032\110\097\032\116\097\098\101\108\097\032\100\097\032\077\097\115\116\101\114\032\076\101\097\103\117\101\032\040\104\105\116\115\061\037\100\041",
i, sm.eid, _x30(sm.h), sm.final_hs, sm.final_as, _x30(sm.a), synced)
end
end
end
local function _x4b(ctx)
local s = ctx and ctx.pes_gc_entry_sync
if not s or not s.score or type(s.score.owner) ~= "\110\117\109\098\101\114" or s.score.owner < 0x10000 then
return false
end
local st_b = _x23(s.score.owner + 8, 4)
if not st_b then return false end
local st = _x20(st_b, 1)
return (st == 2 or st == 3)
end
local function _x4c(ctx)
S.frames = S.frames + 1
if S.dll and not S.dll_installed and S.frames >= 180 and (S.frames % 60) == 0 and S.dll_install_tries < 30 then
S.dll_install_tries = S.dll_install_tries + 1
if S.dll.install(S.dll.dir) == 1 then
S.dll_installed = true
_x26()
_x2d(S.current_theme)
_x1d("\091\068\051\068\049\049\093\032\072\111\111\107\032\068\051\068\049\049\032\105\110\115\116\097\108\097\100\111\032\099\111\109\032\115\117\099\101\115\115\111\032\110\111\032\102\114\097\109\101\032\037\100\032\040\099\097\110\116\111\061\037\100\044\032\101\115\099\097\108\097\061\037\046\050\102\041", S.frames, S.corner, S.scale)
else
_x1d("\091\068\051\068\049\049\093\032\084\101\110\116\097\116\105\118\097\032\037\100\032\100\101\032\105\110\115\116\097\108\097\114\032\104\111\111\107\032\068\051\068\049\049\032\102\097\108\104\111\117", S.dll_install_tries)
end
end
if (S.frames % 60) == 0 then
_x4a()
end
if (S.frames % 6) == 0 then
_x32()
end
if S.menu_mode > 0 and _x4b(ctx) then
S.saved_parent_menu = 0
_x3b(0, "", 0)
end
local f9 = (bit.band(ffi.C._x06(0x78), 0x8000) ~= 0)
if f9 and not S.f9_was_down and S.dll_installed then
local h_id = S.home_id > 0 and S.home_id or (ctx.home_team or 1255)
local a_id = S.away_id > 0 and S.away_id or (ctx.away_team or 1254)
local sc = _x34(h_id)
local hp, ap, hd, ad = 3, 7, 2, -1
if #S.sim_matches > 0 then
local sm = S.sim_matches[1]
h_id, a_id = sm.h, sm.a
sc = _x34(h_id)
hp, ap, hd, ad = _x39(h_id, a_id, S.last_user_hs, S.last_user_as, false)
end
_x1d("\091\084\069\083\084\095\070\057\093\032\068\105\115\112\097\114\097\110\100\111\032\099\097\114\100\032\100\101\032\116\101\115\116\101\058\032\037\115\032\040\037\100\194\186\044\032\037\043\100\041\032\120\032\037\115\032\040\037\100\194\186\044\032\037\043\100\041\032\124\032\097\117\116\111\114\058\032\037\115",
_x30(h_id), hp, hd, _x30(a_id), ap, ad, sc)
_x3c(S.current_theme.title, h_id, a_id, 2, 1, 0, sc,
math.max(12, S.last_minute > 0 and S.last_minute or 64), hp, ap, hd, ad)
end
S.f9_was_down = f9
if ctx.home_team and ctx.home_team > 0 and S.home_id == 0 then
S.home_id = ctx.home_team
S.away_id = ctx.away_team or 0
S.current_tid = ctx.tournament_id or S.current_tid
end
local st_match = match and match.stats and match.stats()
if not st_match or not st_match.period or st_match.period < 1 then return end
S.in_match = true
if not S.match_init_done and (st_match.clock_minutes or 0) >= 0 then
S.match_init_done = true
local st = _x31()
_x47(st)
end
local user_hs = tonumber(st_match.home_score) or 0
local user_as = tonumber(st_match.away_score) or 0
if user_hs ~= S.last_user_hs or user_as ~= S.last_user_as then
S.last_user_hs = user_hs
S.last_user_as = user_as
if S.menu_mode > 0 then
_x3a(S.menu_mode)
end
end
local cur_min = math.floor(st_match.clock_minutes or -1)
if cur_min > S.last_minute and cur_min <= 125 then
S.last_minute = cur_min
if (cur_min % 15) == 0 or cur_min == 1 or cur_min == 45 or cur_min == 90 then
_x1d("\091\067\076\079\067\075\093\032\080\097\114\116\105\100\097\032\110\111\032\109\105\110\117\116\111\032\037\100\039\032\040\112\101\114\105\111\100\111\061\037\100\041", cur_min, st_match.period or 0)
end
local changed = false
for _, g in ipairs(S.timeline) do
if not g.fired and g.minute <= cur_min then
g.fired = true
changed = true
local sm = S.sim_matches[g.match_idx]
if sm then
if g.side == 0 then sm.hs = sm.hs + 1 else sm.as = sm.as + 1 end
local hp, ap, hd, ad = _x39(sm.h, sm.a, user_hs, user_as, false)
local should_notify_overlay = true
if S.is_multi_group and S.group_filter_mode >= 1 and not sm.same_group then
should_notify_overlay = false
end
if should_notify_overlay then
_x1d("\091\071\079\076\095\078\065\095\082\079\068\065\068\065\093\032\037\100\039\032\124\032\037\115\032\040\037\100\194\186\032\037\043\100\041\032\037\100\032\120\032\037\100\032\037\115\032\040\037\100\194\186\032\037\043\100\041\032\124\032\071\111\108\032\100\101\058\032\037\115\032\040\110\111\116\105\102\105\099\097\100\111\032\110\111\032\111\118\101\114\108\097\121\041",
g.minute, _x30(sm.h), hp, hd, sm.hs, sm.as, _x30(sm.a), ap, ad, g.scorer)
_x3c(S.current_theme.title, sm.h, sm.a, sm.hs, sm.as, g.side, g.scorer, g.minute, hp, ap, hd, ad)
else
_x1d("\091\071\079\076\095\079\085\084\082\079\095\071\082\085\080\079\095\083\073\076\069\078\067\073\079\083\079\093\032\037\100\039\032\124\032\037\115\032\040\037\100\194\186\032\037\043\100\041\032\037\100\032\120\032\037\100\032\037\115\032\040\037\100\194\186\032\037\043\100\041\032\124\032\071\111\108\032\100\101\058\032\037\115\032\040\111\099\117\108\116\111\032\110\111\032\111\118\101\114\108\097\121\032\112\101\108\111\032\102\105\108\116\114\111\032\100\101\032\103\114\117\112\111\041",
g.minute, _x30(sm.h), hp, hd, sm.hs, sm.as, _x30(sm.a), ap, ad, g.scorer)
end
end
end
end
if changed and S.menu_mode > 0 then
_x3a(S.menu_mode)
end
end
end
function m.context_reset(ctx)
_x4a()
_x1d("\091\067\079\078\084\069\088\084\095\082\069\083\069\084\093\032\070\105\109\032\100\101\032\099\111\110\116\101\120\116\111\032\100\097\032\112\097\114\116\105\100\097")
S.in_match = false
S.match_init_done = false
S.last_minute = -1
S.last_user_hs = 0
S.last_user_as = 0
S.menu_mode = 0
S.saved_parent_menu = 0
S.ball_in_corner = false
if S.dll and S.dll_installed then
S.dll.clear()
if S.dll.set_occlusion then S.dll.set_occlusion(1.0) end
end
end
function m.init(ctx)
S.sider_dir = ctx.sider_dir or ""
S.debug_log_path = S.sider_dir .. "\109\111\100\117\108\101\115\092\076\105\118\101\082\111\117\110\100\071\111\097\108\115\092\108\105\118\101\095\100\101\098\117\103\046\108\111\103"
S.cfg_path = S.sider_dir .. "\109\111\100\117\108\101\115\092\076\105\118\101\082\111\117\110\100\071\111\097\108\115\092\099\111\110\102\105\103\046\105\110\105"
local lf = io.open(S.debug_log_path, "\119")
if lf then
lf:write(string.format("\061\061\061\032\076\105\118\101\082\111\117\110\100\071\111\097\108\115\032\118\049\046\050\032\076\105\118\101\032\068\101\098\117\103\032\105\110\105\099\105\097\100\111\032\101\109\032\037\115\032\061\061\061\010", os.date("\037\089\045\037\109\045\037\100\032\037\072\058\037\077\058\037\083")))
lf:close()
end
_x28()
_x29()
S.base = tonumber(ffi.cast("\117\105\110\116\112\116\114\095\116", ffi.C._x01(nil)))
for _, b in ipairs(_x08) do
if _x23(S.base + b.getter, #b.guard) == b.guard then
S.build = b
break
end
end
if not S.build then
_x1e("\066\117\105\108\100\032\100\111\032\069\088\069\032\110\097\111\032\114\101\099\111\110\104\101\099\105\100\111\032\040\101\115\112\101\114\097\100\111\032\083\116\101\097\109\032\049\046\048\055\046\048\050\032\111\117\032\067\080\089\032\049\046\049\046\048\041")
else
local probe1 = _x23(0x140aede84, 4)
local probe2 = _x23(0x140aed7b4, 4)
local is_cap = (probe1 and _x20(probe1, 1) == 0x19115e4) or (probe2 and _x20(probe2, 1) == 0x19115e4)
S.L = is_cap and _x09.cap or _x09.normal
_x1e("\066\117\105\108\100\032\037\115\032\100\101\116\101\099\116\097\100\111\032\040\108\097\121\111\117\116\032\037\115\041", S.build.nome, is_cap and "\099\097\112" or "\110\111\114\109\097\108")
end
math.randomseed(os.time())
_x2e()
local wav = S.sider_dir .. "\109\111\100\117\108\101\115\092\076\105\118\101\082\111\117\110\100\071\111\097\108\115\092\103\111\108\046\119\097\118"
local wf = io.open(wav, "\114\098")
if wf then wf:close(); S.sound_path = wav end
_x48()
_x40()
ctx.register("\115\101\116\095\116\101\097\109\115", m.set_teams)
ctx.register("\097\102\116\101\114\095\115\101\116\095\099\111\110\100\105\116\105\111\110\115", m.after_set_conditions)
ctx.register("\108\105\118\101\099\112\107\095\109\097\107\101\095\107\101\121", m.make_key)
ctx.register("\108\105\118\101\099\112\107\095\100\097\116\097\095\114\101\097\100\121", m.data_ready)
ctx.register("\099\111\110\116\101\120\116\095\114\101\115\101\116", m.context_reset)
ctx.register("\111\118\101\114\108\097\121\095\111\110", m.overlay_on)
ctx.register("\107\101\121\095\100\111\119\110", m.key_down)
ctx.register("\103\097\109\101\112\097\100\095\105\110\112\117\116", m.gamepad_input)
ctx.register("\100\105\115\112\108\097\121\095\102\114\097\109\101", _x4c)
end
return m
