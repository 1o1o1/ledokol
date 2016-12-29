---------------------------------------------------------------------
--[[ license agreement >>
---------------------------------------------------------------------

Copyright � 2007-2017 RoLex

Ledokol is free software; You can redistribute it
and modify it under the terms of the GNU General
Public License as published by the Free Software
Foundation, either version 3 of the license, or at
your option any later version.

Ledokol is distributed in the hope that it will be
useful, but without any warranty, without even the
implied warranty of merchantability or fitness for
a particular purpose. See the GNU General Public
License for more details.

Please see http://www.gnu.org/licenses/ for a copy
of the GNU General Public License.

---------------------------------------------------------------------
]]-- license agreement <<
---------------------------------------------------------------------

---------------------------------------------------------------------
--[[ script information >>
---------------------------------------------------------------------

Author: RoLex
Email: webmaster@feardc.net
License: GNU General Public License
Website: http://ledo.feardc.net/
Support hub: dchub://hub.verlihub.net:7777/
Description:

Ledokol stands for Russian word - icebreaker. In this case it's the
biggest multifunctional security and entertainment Lua script with
over seventy different features for Verlihub.

---------------------------------------------------------------------
]]-- script information <<
---------------------------------------------------------------------

---------------------------------------------------------------------
--[[ special thanks to >>
---------------------------------------------------------------------

Neolo, Uhlik, Astronomik, LadyStardust, Seth, Molotov, burek,
Hungarista, Stefani, Aethra, netcelli, TheBoss, Maximum, BulleT,
Doxtur, chaos, sphinx, Zorro, W1ZaRd, S0RiN, MaxFox, Krzychu,
@tlantide, Ettore Atalan, Trumpy, Modswat, KCAHDEP, mauron, DiegoZ,
Mank, Nickel, Lord_Zero, Meka][Meka, Ger, PetterOSS, Marcel, PPK,
madkid, Aeolide, Jaguar, Toecutter, SCALOl�z, FlylinkDC, Men_VAf,
Tzaca, JOE�

---------------------------------------------------------------------
]]-- special thanks to <<
---------------------------------------------------------------------

---------------------------------------------------------------------
-- global storage variables and tables >>
---------------------------------------------------------------------

ver_ledo = "2.9.2" -- ledokol version
bld_ledo = "28" -- build number

---------------------------------------------------------------------
-- default custom settings table >>
---------------------------------------------------------------------

table_sets = {
	mincommandclass = 4,
	minusrcommandclass = 0,
	commandstopm = 1,
	scanbelowclass = 3,
	thirdacttime = "1d",
	sixthactaddr = "nemesis.te-home.net",
	seventhacttime = "",
	ninthactrepmsg = "Sorry. I won't be spamming this hub again.",
	enableantispam = 0,
	antispamdebug = 0,
	antibelowclass = 3,
	allowspamtoops = 0,
	checkcmdspam = 0,
	antikreason = "Spam detected: *",
	antimessage = "Your message wasn't sent due to spam detection. Please contact the hub administration if you disagree with this decision.",
	enablesearfilt = 0,
	sefiblockdel = 1,
	sefireason = "Forbidden search request detected: *",
	searfiltmsg = "Your search request is forbidden and therefore discarded: *",
	avsearchint = 30,
	avfilediff = 256,
	avfilecount = 30,
	avuserfree = 180,
	avfeedverb = 2,
	avsendtodb = 1,
	avdbloadint = 0,
	avrandrequest = 1,
	avsearservaddr = "",
	avsearservport = 4112,
	avdetaction = 0,
	avkicktext = "Virus spreaders are not welcome here _ban_30d",
	classnotianti = 3,
	classnotiex = 3,
	classnotisefi = 3,
	classnotiav = 3,
	classnotimich = 3,
	classnotiflood = 3,
	classnotigagip = 3,
	classnotilowupreg = 3,
	classnotilowupsear = 3,
	classnotilowupchat = 3,
	classnoticom = 10,
	classnotisay = 5,
	classnotirepl = 3,
	classnotikick = 3,
	classnotiban = 3,
	classnotireg = 4,
	classnoticonfig = 10,
	classnotiredir = 4,
	classnotibadctm = 11,
	classnotiunk = 3,
	classnotioff = 3,
	classnotiledoact = 10,
	classnotiprotoflood = 3,
	classnotiauth = 3,
	classnotiwelcome = 3,
	classnotibotpm = 3,
	classnotihardban = 3,
	classnotiipwatch = 5,
	classnotiblist = 3,
	classnoticust = 0,
	classnotipeakuc = 0,
	classnotipeakts = 0,
	micheck = 1,
	micallall = 0,
	michnick = 1,
	michdesc = 0,
	michtag = 0,
	michconn = 0,
	michemail = 0,
	michshare = 0,
	michip = 0,
	michcc = 0,
	michdns = 0,
	michsup = 0,
	michver = 0,
	michfakenum = 0,
	michfakediv = 0,
	michclone = 0,
	michsameip = 0,
	minickmessage = "Forbidden nick detected: *",
	midescmessage = "Forbidden description detected: *",
	mitagmessage = "Forbidden tag detected: *",
	miconnmessage = "Forbidden connection type detected: *",
	miemailmessage = "Forbidden email detected: *",
	misharemessage = "Forbidden share size detected: *",
	miipmessage = "Forbidden IP address detected: *",
	miccmessage = "Forbidden country code detected: *",
	midnsmessage = "Forbidden DNS detected: *",
	misupmessage = "Forbidden client supports detected: *",
	mivermessage = "Forbidden NMDC version detected: *",
	mifakemessage = "Fake share detected: *",
	miclonemessage = "Clone of yourself detected: *",
	misameipmessage = "Connection from same IP detected: *",
	mitbantime = "3h",
	miclonekicktime = "",
	kickunkusers = 0,
	unkbeforelogin = 0,
	unktbantime = "3h",
	unkkickreason = "Unknown protocol command detected from your client: *",
	authrunning = 0,
	authmessage = "Your IP doesn't match the authorization IP set for your nick.",
	regnewpubenable = 0,
	regnewpubmsgreg = "Please say hello to our new member: <nick>",
	regnewpubmsgvip = "Please say hello to our new VIP: <nick>",
	regnewpubmsgop = "Please say hello to our new operator: <nick>",
	regnewpubmsgcheef = "Please say hello to our new cheef: <nick>",
	regnewpubmsgadmin = "Please say hello to our new administrator: <nick>",
	regnewpubmsgmaster = "Please say hello to our new master: <nick>",
	regkickaction = 1,
	chatuptime = 0,
	chatuptimeact = 0,
	regmechatcnt = 0,
	regmeuptime = 0,
	searchuptime = 0,
	searuptimeact = 0,
	showuseruptime = 0,
	custnickclass = 3,
	custlistclass = 0,
	custmaxlen = 64,
	savecustnicks = 1,
	opkeyclass = 11,
	opkeyself = 11,
	opkeyshare = 0,
	enablevipkick = 0,
	votekickclass = 11,
	votekickcount = 5,
	reluseclass = 0,
	relmodclass = 3,
	welcomeclass = 3,
	offmsgclass = 3,
	mchistclass = 0,
	sayclass = 5,
	clearclass = 3,
	chatrunning = 0,
	ccroomrunning = 0,
	ccroomautocls = 3,
	ccroommancls = 3,
	roomusernotify = 1,
	chathistlimit = 0,
	chathistbotmsg = 1,
	chathistipclass = 11,
	ccroomstyle = "#" .. string.char (160) .. "<cc>",
	remrunning = 0,
	trigrunning = 0,
	replrunning = 0,
	replprotect = 0,
	resprunning = 0,
	respdelay = 3,
	respskiplast = 0,
	newsclass = 0,
	newsautolines = 0,
	newsdeflines = 25,
	chatrankclass = 11,
	sharerankclass = 11,
	shareranmin = 500,
	oprankclass = 11,
	searrankclass = 11,
	wordrankclass = 11,
	wordranmin = 5,
	wordranmax = 25,
	ranklimit = 25,
	ccstatsclass = 0,
	savecchistory = 0,
	histlimit = 0,
	histbotmsg = 1,
	histautolines = 0,
	ophistautolines = 0,
	histautolinemax = 256,
	histautonewlinedel = 1,
	histdeflines = 100,
	histshowipclass = 11,
	autoupdcheck = 24,
	addspecialver = 0,
	addledobot = 1,
	ledobotnick = "#" .. string.char (160) .. "Ledokol",
	ledobotmail = "",
	ledobotsize = -1,
	useextrafeed = 0,
	extrafeednick = "#" .. string.char (160) .. "Feed",
	timebotint = 0,
	timebotnick = "#" .. string.char (160) .. "%d/%m" .. string.char (160) .. "%H:%M",
	fasttimebot = 0,
	srvtimediff = 0,
	longdateformat = "%Y-%m-%d",
	dateformat = "%d/%m",
	timeformat = "%H:%M",
	shrtuptimefmt = "%s:%s:%s:%s:%s",
	rolltopicint = 0,
	rolltopicspace = 5,
	showtopicowner = 1,
	chatantiflood = 0,
	chatfloodallcount = 10,
	chatfloodallint = 10,
	chatfloodonecount = 10,
	chatfloodoneint = 120,
	chatfloodcount = 5,
	chatfloodint = 5,
	chatfloodaction = 1,
	chatfloodcmdgag = 0,
	protofloodctmcnt = 0,
	protofloodctmint = 10,
	protofloodctmact = 0,
	ipconantiflint = 0,
	enablehardban = 0,
	useblacklist = 0,
	--hublistpingint = 0,
	--hubpingtimeout = 1,
	enableuserlog = 0,
	ulogautoclean = 30,
	logallmyinfos = 0,
	enableipwatch = 0,
	chatcodeon = 0,
	chatcodeflag = 0,
	codemaxclass = 2,
	codelength = 4,
	codecharlist = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz123456789",
	codecharsep = "",
	codetext = "Please specify chat security code: <code>",
	pmminclass = 0,
	ctmminclass = 0,
	ctmmsginterval = 300,
	ctmblockmsg = "You aren't allowed to connect to other users.",
	chatmodeclass = 3,
	funrandomchat = 0,
	enablecmdlog = 0,
	useripsupport = 0,
	useripinchat = 0,
	statscollint = 0,
	userrecmsg = "New user record since <shortdate>: <old> -> <new>",
	sharerecmsg = "New share record since <shortdate>: <old> -> <new>",
	instusermenu = 0,
	instrcmenu = 0,
	usermenuname = ".:: Ledokol menu",
	tolowcharcase = 0,
	translitmode = 0,
	langfileprefix = ""
}

---------------------------------------------------------------------
-- default custom settings table <<
---------------------------------------------------------------------

---------------------------------------------------------------------
-- private settings table >>
---------------------------------------------------------------------

table_othsets = {
	ledobottag = "<Ledokol V:" .. ver_ledo .. "." .. bld_ledo .. ",M:A,H:0/0/1,S:0>",
	ledobotdesc = "Security and entertainment bot",
	timebotdesc = "Ledokol time bot",
	updserv = "http://ledo.feardc.net/",
	updservdev = "http://ledo.feardc.net/dev/",
	updservlang = "http://ledo.feardc.net/lang/",
	vazhub = "dchub://hub.verlihub.net:7777/",
	tmpfile = "ledokol.data",
	headfile = "ledokol.head",
	verfile = "ledokol.ver",
	luafile = "ledokol.lua",
	langfilefmt = "ledo_%s.lang",
	seenurl = "http://www.te-home.net/?do=hublist&action=seen",
	avdbsendurl = "http://www.te-home.net/avdb.php?do=send",
	avdbloadurl = "http://www.te-home.net/avdb.php?do=load",
	avdbfindurl = "http://www.te-home.net/avdb.php?do=find",
	cfgdir = "",
	feednick = "",
	sendfrom = "",
	botnick = "",
	opchatnick = "",
	optrig = "",
	ustrig = "",
	topicowner = nil,
	topicvalue = nil,
	logdeflines = 100,
	avlastseartick = os.time (),
	avlastloadtick = 0,
	avlastloadtime = 0,
	avloadvercount = 0,
	avloaddelcount = 0,
	avnextitem = 1,
	avrandstr = "",
	chflallcount = 0,
	chflalltime = os.time (),
	chflonenick = "",
	chflonecount = 0,
	chflonetime = os.time (),
	lastupdcheck = 0,
	remseconds = os.time (),
	timebotseconds = os.time (),
	rolltopicsecs = os.time (),
	rolltopiclen = 1,
	--hubpingmins = os.time (),
	statscollmins = os.time (),
	ulogcleanmins = 0,
	collgarb = os.time (),
	uptime = os.time (),
	lasttimenick = nil,
	ver_lua = nil,
	ver_luaplug = nil,
	ver_sql = nil,
	ver_curl = nil,
	--ver_iconv = nil,
	ver_sock = nil,
	mod_sock = nil,
	--mod_http = nil,
	--ver_ltn12 = nil,
	--mod_ltn12 = nil,
	serv_udp = nil,
	langver = "EN",
	locked = false,
	restart = false
}

table_refu = {
	GetUserCC = false,
	GetUserCity = false,
	--GetIPCN = false,
	GetIPCC = false,
	GetUserGeoIP = false,
	GetHostGeoIP = false,
	GetLuaBots = false,
	GetUpTime = false,
	GetTopic = false,
	SetTopic = false,
	GetUserVersion = false,
	GetUserSupports = false,
	GetUserHubURL = false,
	SendToActiveClass = false,
	SendToPassiveClass = false,
	InUserSupports = false
}

---------------------------------------------------------------------
-- private settings table <<
---------------------------------------------------------------------

---------------------------------------------------------------------
-- ledokol sql tables >>
---------------------------------------------------------------------

tbl_sql = {
	conf = "lua_ledo_conf",
	anti = "lua_ledo_anti",
	antiex = "lua_ledo_antiex",
	sefi = "lua_ledo_sefi",
	sefiex = "lua_ledo_sefiex",
	minick = "lua_ledo_minick",
	midesc = "lua_ledo_midesc",
	mitag = "lua_ledo_mitag",
	miconn = "lua_ledo_miconn",
	miemail = "lua_ledo_miemail",
	mishare = "lua_ledo_mishare",
	miip = "lua_ledo_miip",
	micc = "lua_ledo_micc",
	midns = "lua_ledo_midns",
	misup = "lua_ledo_misup",
	miver = "lua_ledo_miver",
	miex = "lua_ledo_miex",
	wm = "lua_ledo_wm",
	cust = "lua_ledo_cust",
	chat = "lua_ledo_chat",
	acre = "lua_ledo_acre",
	rem = "lua_ledo_rem",
	trig = "lua_ledo_trig",
	news = "lua_ledo_news",
	chatrepl = "lua_ledo_chatrepl",
	replex = "lua_ledo_replex",
	mcresp = "lua_ledo_mcresp",
	respex = "lua_ledo_respex",
	auth = "lua_ledo_auth",
	rel = "lua_ledo_rel",
	chran = "lua_ledo_chran",
	opran = "lua_ledo_opran",
	shran = "lua_ledo_shran",
	srran = "lua_ledo_srran",
	wdran = "lua_ledo_wdran",
	ranex = "lua_ledo_ranex",
	ccstat = "lua_ledo_ccstat",
	off = "lua_ledo_off",
	mchist = "lua_ledo_mchist",
	ophist = "lua_ledo_ophist",
	crhist = "lua_ledo_crhist",
	ledocmd = "lua_ledo_ledocmd",
	cmd = "lua_ledo_cmd",
	cmdex = "lua_ledo_cmdex",
	ulog = "lua_ledo_ulog",
	clog = "lua_ledo_clog",
	hubs = "lua_ledo_hubs",
	prot = "lua_ledo_prot",
	stat = "lua_ledo_stat",
	nopm = "lua_ledo_nopm",
	hban = "lua_ledo_hban",
	ipwa = "lua_ledo_ipwa",
	ipgag = "lua_ledo_ipgag",
	ccgag = "lua_ledo_ccgag",
	rcmenu = "lua_ledo_rcmenu"
}

---------------------------------------------------------------------
-- ledokol sql tables <<
---------------------------------------------------------------------

---------------------------------------------------------------------
-- ledokol commands table >>
---------------------------------------------------------------------

table_cmnds = {
	antiadd = "antiadd",
	antidel = "antidel",
	antilist = "antilist",
	antiexadd = "antiexadd",
	antiexdel = "antiexdel",
	antiexlist = "antiexlist",
	sefiadd = "sefiadd",
	sefidel = "sefidel",
	sefilist = "sefilist",
	sefiexadd = "sefiexadd",
	sefiexdel = "sefiexdel",
	sefiexlist = "sefiexlist",
	sefibllist = "sefibllist",
	sefibldel = "sefibldel",
	myinfadd = "myinfadd",
	myinfdel = "myinfdel",
	myinflist = "myinflist",
	protadd = "protadd",
	protdel = "protdel",
	protlist = "protlist",
	authadd = "authadd",
	authmod = "authmod",
	authdel = "authdel",
	authlist = "authlist",
	offlist = "offlist",
	offdel = "offdel",
	offclean = "offclean",
	offmsg = "offmsg",
	showtopic = "showtopic",
	repladd = "repladd",
	repldel = "repldel",
	repllist = "repllist",
	replexadd = "replexadd",
	replexdel = "replexdel",
	replexlist = "replexlist",
	respadd = "respadd",
	respdel = "respdel",
	resplist = "resplist",
	respexadd = "respexadd",
	respexdel = "respexdel",
	respexlist = "respexlist",
	remadd = "remadd",
	remdel = "remdel",
	remlist = "remlist",
	remshow = "remshow",
	trigadd = "trigadd",
	trigdel = "trigdel",
	triglist = "triglist",
	nopmadd = "nopmadd",
	nopmdel = "nopmdel",
	nopmlist = "nopmlist",
	rcmenuadd = "rcmenuadd",
	rcmenudel = "rcmenudel",
	rcmenulist = "rcmenulist",
	rcmenuord = "rcmenuord",
	rcmenuoff = "rcmenuoff",
	ipwatadd = "ipwatadd",
	ipwatdel = "ipwatdel",
	ipwatlist = "ipwatlist",
	hban = "hban",
	hunban = "hunban",
	hbans = "hbans",
	newsadd = "newsadd",
	newsdel = "newsdel",
	hubnews = "hubnews",
	reladd = "reladd",
	reldel = "reldel",
	rellist = "rellist",
	relfind = "relfind",
	histdel = "histdel",
	histclean = "histclean",
	ophistory = "ophistory",
	history = "history",
	myhistory = "myhistory",
	regname = "regname",
	reglist = "reglist",
	regfind = "regfind",
	regstats = "regstats",
	readlog = "readlog",
	avstats = "avstats",
	avdetforce = "avdetforce",
	avdbfind = "avdbfind",
	cmndset = "cmndset",
	cmndshow = "cmndshow",
	cmndreset = "cmndreset",
	cmndadd = "cmndadd",
	cmnddel = "cmnddel",
	cmndlist = "cmndlist",
	cmndexadd = "cmndexadd",
	cmndexdel = "cmndexdel",
	cmndexlist = "cmndexlist",
	clear = "clear",
	say = "say",
	mode = "mode",
	calculate = "calculate",
	lretoplain = "lretoplain",
	mychatrank = "mychatrank",
	mysharerank = "mysharerank",
	myoprank = "myoprank",
	chatranks = "chatranks",
	shareranks = "shareranks",
	opranks = "opranks",
	searranks = "searranks",
	wordranks = "wordranks",
	cclive = "cclive",
	citylive = "citylive",
	cchist = "cchist",
	ranexadd = "ranexadd",
	ranexdel = "ranexdel",
	ranexlist = "ranexlist",
	randel = "randel",
	ranclean = "ranclean",
	oldclean = "oldclean",
	nick = "nick",
	realnick = "realnick",
	custlist = "custlist",
	rename = "rename",
	custdel = "custdel",
	chatadd = "chatadd",
	chatdel = "chatdel",
	chatlist = "chatlist",
	acreadd = "acreadd",
	acredel = "acredel",
	acrelist = "acrelist",
	wmforce = "wmforce",
	wmlist = "wmlist",
	wmdel = "wmdel",
	wmset = "wmset",
	wmshow = "wmshow",
	userinfo = "userinfo",
	ipinfo = "ipinfo",
	ulog = "ulog",
	seen = "seen",
	clog = "clog",
	dropip = "dropip",
	votekick = "votekick",
	votekickdel = "votekickdel",
	votekicklist = "votekicklist",
	gagipadd = "gagipadd",
	gagipdel = "gagipdel",
	gagiplist = "gagiplist",
	gagccadd = "gagccadd",
	gagccdel = "gagccdel",
	gagcclist = "gagcclist",
	hubadd = "hubadd",
	hubdel = "hubdel",
	showhubs = "showhubs",
	ledohelp = "ledohelp",
	ledostats = "ledostats",
	ledover = "ledover",
	ledoconf = "ledoconf",
	ledoset = "ledoset",
	ledokoluninstallisconfirmed = "ledokoluninstallisconfirmed",
	ledosql = "ledosql",
	ledoshell = "ledoshell",
	chatenter = "enter",
	chatleave = "leave",
	chatusers = "users",
	chathist = "history",
	chathelp = "help"
}

---------------------------------------------------------------------
-- ledokol commands table <<
---------------------------------------------------------------------

---------------------------------------------------------------------
-- translit table >>
---------------------------------------------------------------------

tbl_cyrlet = {
	{cyr = 224, lat = "a"},
	{cyr = 192, lat = "A", low = 224},
	{cyr = 225, lat = "b"},
	{cyr = 193, lat = "B", low = 225},
	{cyr = 226, lat = "v"},
	{cyr = 194, lat = "V", low = 226},
	{cyr = 227, lat = "g"},
	{cyr = 195, lat = "G", low = 227},
	{cyr = 228, lat = "d"},
	{cyr = 196, lat = "D", low = 228},
	{cyr = 229, lat = "e"},
	{cyr = 197, lat = "E", low = 229},
	{cyr = 184, lat = "e"},
	{cyr = 168, lat = "E", low = 184},
	{cyr = 230, lat = "zh"},
	{cyr = 198, lat = "Zh", low = 230},
	{cyr = 231, lat = "z"},
	{cyr = 199, lat = "Z", low = 231},
	{cyr = 232, lat = "i"},
	{cyr = 200, lat = "I", low = 232},
	{cyr = 233, lat = "y"},
	{cyr = 201, lat = "Y", low = 233},
	{cyr = 234, lat = "k"},
	{cyr = 202, lat = "K", low = 234},
	{cyr = 235, lat = "l"},
	{cyr = 203, lat = "L", low = 235},
	{cyr = 236, lat = "m"},
	{cyr = 204, lat = "M", low = 236},
	{cyr = 237, lat = "n"},
	{cyr = 205, lat = "N", low = 237},
	{cyr = 238, lat = "o"},
	{cyr = 206, lat = "O", low = 238},
	{cyr = 239, lat = "p"},
	{cyr = 207, lat = "P", low = 239},
	{cyr = 240, lat = "r"},
	{cyr = 208, lat = "R", low = 240},
	{cyr = 241, lat = "s"},
	{cyr = 209, lat = "S", low = 241},
	{cyr = 242, lat = "t"},
	{cyr = 210, lat = "T", low = 242},
	{cyr = 243, lat = "u"},
	{cyr = 211, lat = "U", low = 243},
	{cyr = 244, lat = "f"},
	{cyr = 212, lat = "F", low = 244},
	{cyr = 245, lat = "h"},
	{cyr = 213, lat = "H", low = 245},
	{cyr = 246, lat = "ts"},
	{cyr = 214, lat = "Ts", low = 246},
	{cyr = 247, lat = "ch"},
	{cyr = 215, lat = "Ch", low = 247},
	{cyr = 248, lat = "sh"},
	{cyr = 216, lat = "Sh", low = 248},
	{cyr = 249, lat = "sh'"},
	{cyr = 217, lat = "Sh'", low = 249},
	{cyr = 250, lat = "'"},
	{cyr = 218, lat = "'", low = 250},
	{cyr = 251, lat = "y"},
	{cyr = 219, lat = "Y", low = 251},
	{cyr = 252, lat = "'"},
	{cyr = 220, lat = "'", low = 252},
	{cyr = 253, lat = "e"},
	{cyr = 221, lat = "E", low = 253},
	{cyr = 254, lat = "yu"},
	{cyr = 222, lat = "Yu", low = 254},
	{cyr = 255, lat = "ya"},
	{cyr = 223, lat = "Ya", low = 255}
}

---------------------------------------------------------------------
-- translit table <<
---------------------------------------------------------------------

---------------------------------------------------------------------
-- country names by code table >>
---------------------------------------------------------------------

cc_names = {
	L1 = "Local Network",
	P1 = "Private Network",
	A1 = "Anonymous Proxy",
	A2 = "Satellite Provider",
	O1 = "Other Country",
	SU = "Soviet Union",
	EU = "European Union",
	AD = "Andorra",
	AE = "United Arab Emirates",
	AF = "Afghanistan",
	AG = "Antigua and Barbuda",
	AI = "Anguilla",
	AL = "Albania",
	AM = "Armenia",
	AO = "Angola",
	AP = "Asia/Pacific Region",
	AQ = "Antarctica",
	AR = "Argentina",
	AS = "American Samoa",
	AT = "Austria",
	AU = "Australia",
	AW = "Aruba",
	AX = "Aland Islands",
	AZ = "Azerbaijan",
	BA = "Bosnia and Herzegovina",
	BB = "Barbados",
	BD = "Bangladesh",
	BE = "Belgium",
	BF = "Burkina Faso",
	BG = "Bulgaria",
	BH = "Bahrain",
	BI = "Burundi",
	BJ = "Benin",
	BL = "Saint Bartelemey",
	BM = "Bermuda",
	BN = "Brunei Darussalam",
	BO = "Bolivia",
	BQ = "Bonaire, Saint Eustatius and Saba",
	BR = "Brazil",
	BS = "Bahamas",
	BT = "Bhutan",
	BV = "Bouvet Island",
	BW = "Botswana",
	BY = "Belarus",
	BZ = "Belize",
	CA = "Canada",
	CC = "Cocos (Keeling) Islands",
	CD = "Congo, The Democratic Republic of the",
	CF = "Central African Republic",
	CG = "Congo",
	CH = "Switzerland",
	CI = "Cote d'Ivoire",
	CK = "Cook Islands",
	CL = "Chile",
	CM = "Cameroon",
	CN = "China",
	CO = "Colombia",
	CR = "Costa Rica",
	CU = "Cuba",
	CV = "Cape Verde",
	CW = "Curacao",
	CX = "Christmas Island",
	CY = "Cyprus",
	CZ = "Czech Republic",
	DE = "Germany",
	DJ = "Djibouti",
	DK = "Denmark",
	DM = "Dominica",
	DO = "Dominican Republic",
	DZ = "Algeria",
	EC = "Ecuador",
	EE = "Estonia",
	EG = "Egypt",
	EH = "Western Sahara",
	ER = "Eritrea",
	ES = "Spain",
	ET = "Ethiopia",
	EU = "Europe",
	FI = "Finland",
	FJ = "Fiji",
	FK = "Falkland Islands (Malvinas)",
	FM = "Micronesia, Federated States of",
	FO = "Faroe Islands",
	FR = "France",
	GA = "Gabon",
	GB = "United Kingdom",
	GD = "Grenada",
	GE = "Georgia",
	GF = "French Guiana",
	GG = "Guernsey",
	GH = "Ghana",
	GI = "Gibraltar",
	GL = "Greenland",
	GM = "Gambia",
	GN = "Guinea",
	GP = "Guadeloupe",
	GQ = "Equatorial Guinea",
	GR = "Greece",
	GS = "South Georgia and the South Sandwich Islands",
	GT = "Guatemala",
	GU = "Guam",
	GW = "Guinea-Bissau",
	GY = "Guyana",
	HK = "Hong Kong",
	HM = "Heard Island and McDonald Islands",
	HN = "Honduras",
	HR = "Croatia",
	HT = "Haiti",
	HU = "Hungary",
	ID = "Indonesia",
	IE = "Ireland",
	IL = "Israel",
	IM = "Isle of Man",
	IN = "India",
	IO = "British Indian Ocean Territory",
	IQ = "Iraq",
	IR = "Iran, Islamic Republic of",
	IS = "Iceland",
	IT = "Italy",
	JE = "Jersey",
	JM = "Jamaica",
	JO = "Jordan",
	JP = "Japan",
	KE = "Kenya",
	KG = "Kyrgyzstan",
	KH = "Cambodia",
	KI = "Kiribati",
	KM = "Comoros",
	KN = "Saint Kitts and Nevis",
	KP = "Korea, Democratic People's Republic of",
	KR = "Korea, Republic of",
	KW = "Kuwait",
	KY = "Cayman Islands",
	KZ = "Kazakhstan",
	LA = "Lao People's Democratic Republic",
	LB = "Lebanon",
	LC = "Saint Lucia",
	LI = "Liechtenstein",
	LK = "Sri Lanka",
	LR = "Liberia",
	LS = "Lesotho",
	LT = "Lithuania",
	LU = "Luxembourg",
	LV = "Latvia",
	LY = "Libyan Arab Jamahiriya",
	MA = "Morocco",
	MC = "Monaco",
	MD = "Moldova, Republic of",
	ME = "Montenegro",
	MF = "Saint Martin",
	MG = "Madagascar",
	MH = "Marshall Islands",
	MK = "Macedonia",
	ML = "Mali",
	MM = "Myanmar",
	MN = "Mongolia",
	MO = "Macao",
	MP = "Northern Mariana Islands",
	MQ = "Martinique",
	MR = "Mauritania",
	MS = "Montserrat",
	MT = "Malta",
	MU = "Mauritius",
	MV = "Maldives",
	MW = "Malawi",
	MX = "Mexico",
	MY = "Malaysia",
	MZ = "Mozambique",
	NA = "Namibia",
	NC = "New Caledonia",
	NE = "Niger",
	NF = "Norfolk Island",
	NG = "Nigeria",
	NI = "Nicaragua",
	NL = "Netherlands",
	NO = "Norway",
	NP = "Nepal",
	NR = "Nauru",
	NU = "Niue",
	NZ = "New Zealand",
	OM = "Oman",
	PA = "Panama",
	PE = "Peru",
	PF = "French Polynesia",
	PG = "Papua New Guinea",
	PH = "Philippines",
	PK = "Pakistan",
	PL = "Poland",
	PM = "Saint Pierre and Miquelon",
	PN = "Pitcairn",
	PR = "Puerto Rico",
	PS = "Palestinian Territory",
	PT = "Portugal",
	PW = "Palau",
	PY = "Paraguay",
	QA = "Qatar",
	RE = "Reunion",
	RO = "Romania",
	RS = "Serbia",
	RU = "Russian Federation",
	RW = "Rwanda",
	SA = "Saudi Arabia",
	SB = "Solomon Islands",
	SC = "Seychelles",
	SD = "Sudan",
	SE = "Sweden",
	SG = "Singapore",
	SH = "Saint Helena",
	SI = "Slovenia",
	SJ = "Svalbard and Jan Mayen",
	SK = "Slovakia",
	SL = "Sierra Leone",
	SM = "San Marino",
	SN = "Senegal",
	SO = "Somalia",
	SR = "Suriname",
	SS = "South Sudan",
	ST = "Sao Tome and Principe",
	SV = "El Salvador",
	SX = "Sint Maarten",
	SY = "Syrian Arab Republic",
	SZ = "Swaziland",
	TC = "Turks and Caicos Islands",
	TD = "Chad",
	TF = "French Southern Territories",
	TG = "Togo",
	TH = "Thailand",
	TJ = "Tajikistan",
	TK = "Tokelau",
	TL = "Timor-Leste",
	TM = "Turkmenistan",
	TN = "Tunisia",
	TO = "Tonga",
	TR = "Turkey",
	TT = "Trinidad and Tobago",
	TV = "Tuvalu",
	TW = "Taiwan",
	TZ = "Tanzania, United Republic of",
	UA = "Ukraine",
	UG = "Uganda",
	UM = "United States Minor Outlying Islands",
	US = "United States",
	UY = "Uruguay",
	UZ = "Uzbekistan",
	VA = "Holy See (Vatican City State)",
	VC = "Saint Vincent and the Grenadines",
	VE = "Venezuela",
	VG = "Virgin Islands, British",
	VI = "Virgin Islands, U.S.",
	VN = "Vietnam",
	VU = "Vanuatu",
	WF = "Wallis and Futuna",
	WS = "Samoa",
	YE = "Yemen",
	YT = "Mayotte",
	ZA = "South Africa",
	ZM = "Zambia",
	ZW = "Zimbabwe"
}

---------------------------------------------------------------------
-- country names by code table <<
---------------------------------------------------------------------

table_lang = {}
table_resp = {}
table_lars = {}
table_rcnn = {}
table_faau = {}
table_code = {}
table_room = {}
table_chat = {}
table_mode = {}
table_igag = {}
table_voki = {}
table_flod = {addr = {}, nick = {}}
table_opks = {}
table_usup = {}
table_cust = {}
table_ctmb = {}
table_regm = {}
table_blst = {}
table_prfl = {ctm = {}}
table_avlo = {}
table_avus = {}
table_avse = {}
table_avbl = {}
table_avss = {}
table_sefi = {}

table_avfi = {
	string.char (100, 111, 119, 110, 108, 111, 97, 100),
	string.char (102, 114, 101, 101),
	string.char (100, 114, 105, 118, 101, 114),
	string.char (49, 48, 48, 32, 98, 101, 115, 116),
	string.char (116, 111, 112, 32, 49, 48, 48),
	string.char (116, 111, 112, 32, 103, 105, 114, 108),
	string.char (49, 56, 32, 103, 105, 114, 108),
	string.char (115, 101, 120, 121, 32, 103, 105, 114, 108),
	string.char (116, 111, 112, 32, 119, 97, 108, 108, 112, 97, 112, 101, 114),
	string.char (115, 101, 120, 121, 32, 119, 97, 108, 108, 112, 97, 112, 101, 114),
	string.char (97, 110, 116, 105, 32, 118, 105, 114, 117, 115),
	string.char (48, 100, 97, 121),
	string.char (97, 112, 112, 108, 101),
	string.char (109, 105, 99, 114, 111, 115, 111, 102, 116),
	string.char (110, 101, 114, 111),
	string.char (116, 111, 111, 108, 115),
	string.char (119, 105, 110, 100, 111, 119, 115),
	string.char (111, 102, 102, 105, 99, 101),
	string.char (97, 100, 111, 98, 101),
	string.char (103, 111, 111, 103, 108, 101),
	string.char (97, 110, 100, 114, 111, 105, 100),
	string.char (99, 114, 97, 99, 107),
	string.char (112, 97, 116, 99, 104),
	string.char (107, 101, 121, 103, 101, 110),
	string.char (115, 101, 114, 105, 97, 108),
	string.char (116, 114, 111, 106, 97, 110),
	string.char (116, 111, 114, 114, 101, 110, 116),
	string.char (97, 100, 118, 97, 110, 99, 101, 100),
	string.char (97, 104, 101, 97, 100),
	string.char (99, 111, 108, 108, 101, 99, 116, 105, 111, 110),
	string.char (119, 97, 108, 108, 112, 97, 112, 101, 114),
	string.char (112, 111, 114, 110),
	string.char (112, 116, 115, 99),
	string.char (112, 116, 104, 99),
	string.char (112, 114, 101, 116, 101, 101, 110),
	string.char (108, 111, 108, 105, 116, 97),
	string.char (115, 101, 120),
	string.char (105, 109, 103, 95, 32, 46, 106, 112, 103),
	string.char (48, 49, 32, 46, 109, 112, 51)
}

table_avex = {
	string.char (46, 101, 120, 101),
	string.char (46, 122, 105, 112),
	string.char (46, 114, 97, 114)
}

cache_prot = {}

---------------------------------------------------------------------
-- global storage variables and tables <<
---------------------------------------------------------------------

---------------------------------------------------------------------
-- backward compatibility >>
---------------------------------------------------------------------

if not VH.SendToUser then
	VH.SendToUser = VH.SendDataToUser
end

if not VH.SendToClass then
	VH.SendToClass = VH.SendDataToAll
end

if not VH.Disconnect then
	VH.Disconnect = VH.CloseConnection
end

if not VH.RegBot then
	VH.RegBot = VH.AddRobot
end

if not VH.UnRegBot then
	VH.UnRegBot = VH.DelRobot
end

if not VH.GetLuaBots then
	VH.GetLuaBots = VH.GetBots
end

function _tostring (val) -- lua 5.3 fix
	if type (val) == "number" then
		return string.format ("%d", val)
	end

	return tostring (val)
end

---------------------------------------------------------------------
-- backward compatibility <<
---------------------------------------------------------------------

---------------------------------------------------------------------
-- verlihub event functions >>
---------------------------------------------------------------------

function Main (file)
	table_othsets.locked = loadcomponents ()

	if table_othsets.locked then
		return 1
	end

	-- set up operator and user triggers

	local optrig = getconfig ("cmd_start_op")
	table_othsets.optrig = "["

	for pos = 1, # optrig do
		table_othsets.optrig = table_othsets.optrig .. "%" .. optrig:sub (pos, pos)
	end

	table_othsets.optrig = table_othsets.optrig .. "]"

	local ustrig = getconfig ("cmd_start_user")
	table_othsets.ustrig = "["

	for pos = 1, # ustrig do
		table_othsets.ustrig = table_othsets.ustrig .. "%" .. ustrig:sub (pos, pos)
	end

	table_othsets.ustrig = table_othsets.ustrig .. "]"

	-- update tables according to old version number

	local old = true
	local _, rows = VH:SQLQuery ("select `count` from `" .. tbl_sql.stat .. "` where `type` = 'ver_ledo'")

	if rows > 0 then
		local _, ver = VH:SQLFetch (0)

		if ver and type (ver) == "string" and # ver == 5 then
			local a, b, c = ver:match ("^(%d)%.(%d)%.(%d)$")

			if a and b and c then
				ver = tonumber (a .. b .. c)

				if ver and ver > 274 then -- new style since 2.7.5
					if ver <= 275 then
						VH:SQLQuery ("create table if not exists `" .. tbl_sql.misup .. "` (`supports` varchar(255) not null primary key, `time` varchar(10) null, `occurred` bigint(20) unsigned not null default 0, `note` varchar(255) null) engine = myisam default character set utf8 collate utf8_unicode_ci")
						VH:SQLQuery ("create table if not exists `" .. tbl_sql.miver .. "` (`version` varchar(255) not null primary key, `time` varchar(10) null, `occurred` bigint(20) unsigned not null default 0, `note` varchar(255) null) engine = myisam default character set utf8 collate utf8_unicode_ci")

						VH:SQLQuery ("alter table `" .. tbl_sql.anti .. "` change column `action` `action` tinyint(2) unsigned not null default 0")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('useripsupport', '" .. repsqlchars (table_sets.useripsupport) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('histautonewlinedel', '" .. repsqlchars (table_sets.histautonewlinedel) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('unkbeforelogin', '" .. repsqlchars (table_sets.unkbeforelogin) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('michsup', '" .. repsqlchars (table_sets.michsup) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('michver', '" .. repsqlchars (table_sets.michver) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('misupmessage', '" .. repsqlchars (table_sets.misupmessage) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('mivermessage', '" .. repsqlchars (table_sets.mivermessage) .. "')")
					end

					if ver <= 276 then
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('dropip', '" .. repsqlchars (table_cmnds.dropip) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('citylive', '" .. repsqlchars (table_cmnds.citylive) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('ipinfo', '" .. repsqlchars (table_cmnds.ipinfo) .. "')")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('mchistclass', '" .. repsqlchars (table_sets.mchistclass) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('classnotirepl', '" .. repsqlchars (table_sets.classnotirepl) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('miclonekicktime', '" .. repsqlchars (table_sets.miclonekicktime) .. "')")
					end

					if ver <= 277 then
						VH:SQLQuery ("create table if not exists `" .. tbl_sql.rcmenu .. "` (`id` bigint(20) unsigned not null auto_increment primary key, `menu` varchar(255) not null, `command` varchar(255) not null, `type` tinyint(3) unsigned not null default 1, `cont` tinyint(2) unsigned not null default 3, `order` smallint(5) unsigned not null default 0, `minclass` tinyint(2) unsigned not null default 0, `maxclass` tinyint(2) unsigned not null default 10) engine = myisam default character set utf8 collate utf8_unicode_ci")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('antibelowclass', '" .. repsqlchars (table_sets.antibelowclass) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('longdateformat', '" .. repsqlchars (table_sets.longdateformat) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('instrcmenu', '" .. repsqlchars (table_sets.instrcmenu) .. "')")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('rcmenuadd', '" .. repsqlchars (table_cmnds.rcmenuadd) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('rcmenudel', '" .. repsqlchars (table_cmnds.rcmenudel) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('rcmenulist', '" .. repsqlchars (table_cmnds.rcmenulist) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('rcmenuord', '" .. repsqlchars (table_cmnds.rcmenuord) .. "')")
					end

					if ver <= 278 then
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('votekick', '" .. repsqlchars (table_cmnds.votekick) .. "')")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('votekickclass', '" .. repsqlchars (table_sets.votekickclass) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('votekickcount', '" .. repsqlchars (table_sets.votekickcount) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('protofloodctmact', '" .. repsqlchars (table_sets.protofloodctmact) .. "')")
					end

					if ver <= 279 then
						VH:SQLQuery ("alter table `lua_ledo_mcrepl` rename to `" .. tbl_sql.chatrepl .. "`")
						VH:SQLQuery ("alter table `" .. tbl_sql.chatrepl .. "` add column `flags` tinyint(1) unsigned not null default 1 after `maxclass`")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('chatfloodallcount', '" .. repsqlchars (table_sets.chatfloodallcount) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('chatfloodallint', '" .. repsqlchars (table_sets.chatfloodallint) .. "')")
					end

					if ver <= 280 then
						VH:SQLQuery ("create table if not exists `" .. tbl_sql.ccgag .. "` (`item` varchar(255) not null primary key, `flag` tinyint(1) unsigned not null default 0) engine = myisam default character set utf8 collate utf8_unicode_ci")
						VH:SQLQuery ("create table if not exists `" .. tbl_sql.trig .. "` (`id` varchar(255) not null primary key, `content` text not null, `minclass` tinyint(2) unsigned not null default 0, `maxclass` tinyint(2) unsigned not null default 10) engine = myisam default character set utf8 collate utf8_unicode_ci")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('avstats', '" .. repsqlchars (table_cmnds.avstats) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('votekickdel', '" .. repsqlchars (table_cmnds.votekickdel) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('votekicklist', '" .. repsqlchars (table_cmnds.votekicklist) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('trigadd', '" .. repsqlchars (table_cmnds.trigadd) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('trigdel', '" .. repsqlchars (table_cmnds.trigdel) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('triglist', '" .. repsqlchars (table_cmnds.triglist) .. "')")
						VH:SQLQuery ("update `" .. tbl_sql.ledocmd .. "` set `original` = 'oldclean', `new` = '" .. repsqlchars (table_cmnds.oldclean) .. "' where `original` = 'cleanup'")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('avsearchint', '" .. repsqlchars (table_sets.avsearchint) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('avfilediff', '" .. repsqlchars (table_sets.avfilediff) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('avfilecount', '" .. repsqlchars (table_sets.avfilecount) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('avuserfree', '" .. repsqlchars (table_sets.avuserfree) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('avfeedverb', '" .. repsqlchars (table_sets.avfeedverb) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('avsendtodb', '" .. repsqlchars (table_sets.avsendtodb) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('avdbloadint', '" .. repsqlchars (table_sets.avdbloadint) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('avkicktext', '" .. repsqlchars (table_sets.avkicktext) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('classnotiav', '" .. repsqlchars (table_sets.classnotiav) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('trigrunning', '" .. repsqlchars (table_sets.trigrunning) .. "')")
					end

					if ver <= 281 then
						VH:SQLQuery ("update `" .. tbl_sql.conf .. "` set `value` = 'Forbidden country code detected: *' where `variable` = 'miccmessage' and `value` = 'Forbidden CC detected: *'")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('avdetaction', '" .. repsqlchars (table_sets.avdetaction) .. "')")
					end

					if ver <= 282 then
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('avdetforce', '" .. repsqlchars (table_cmnds.avdetforce) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('avdbfind', '" .. repsqlchars (table_cmnds.avdbfind) .. "')")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('avrandrequest', '" .. repsqlchars (table_sets.avrandrequest) .. "')")
					end

					if ver <= 283 then
						VH:SQLQuery ("create table if not exists `" .. tbl_sql.acre .. "` (`id` bigint(20) unsigned not null auto_increment primary key, `cc` varchar(2) not null, `nick` varchar(255) not null) engine = myisam default character set utf8 collate utf8_unicode_ci")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('avsearservaddr', '" .. repsqlchars (table_sets.avsearservaddr) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('avsearservport', '" .. repsqlchars (table_sets.avsearservport) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('chatcodeflag', '" .. repsqlchars (table_sets.chatcodeflag) .. "')")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('acreadd', '" .. repsqlchars (table_cmnds.acreadd) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('acredel', '" .. repsqlchars (table_cmnds.acredel) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('acrelist', '" .. repsqlchars (table_cmnds.acrelist) .. "')")
					end

					if ver <= 284 then
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('regnewpubenable', '" .. repsqlchars (table_sets.regnewpubenable) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('regnewpubmsgreg', '" .. repsqlchars (table_sets.regnewpubmsgreg) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('regnewpubmsgvip', '" .. repsqlchars (table_sets.regnewpubmsgvip) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('regnewpubmsgop', '" .. repsqlchars (table_sets.regnewpubmsgop) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('regnewpubmsgcheef', '" .. repsqlchars (table_sets.regnewpubmsgcheef) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('regnewpubmsgadmin', '" .. repsqlchars (table_sets.regnewpubmsgadmin) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('regnewpubmsgmaster', '" .. repsqlchars (table_sets.regnewpubmsgmaster) .. "')")
					end

					if ver <= 285 then
						VH:SQLQuery ("alter table `" .. tbl_sql.minick .. "` add column `note` varchar(255) null after `occurred`")
						VH:SQLQuery ("alter table `" .. tbl_sql.midesc .. "` add column `note` varchar(255) null after `occurred`")
						VH:SQLQuery ("alter table `" .. tbl_sql.mitag .. "` add column `note` varchar(255) null after `occurred`")
						VH:SQLQuery ("alter table `" .. tbl_sql.miconn .. "` add column `note` varchar(255) null after `occurred`")
						VH:SQLQuery ("alter table `" .. tbl_sql.miemail .. "` add column `note` varchar(255) null after `occurred`")
						VH:SQLQuery ("alter table `" .. tbl_sql.mishare .. "` add column `note` varchar(255) null after `occurred`")
						VH:SQLQuery ("alter table `" .. tbl_sql.miip .. "` add column `note` varchar(255) null after `occurred`")
						VH:SQLQuery ("alter table `" .. tbl_sql.micc .. "` add column `note` varchar(255) null after `occurred`")
						VH:SQLQuery ("alter table `" .. tbl_sql.midns .. "` add column `note` varchar(255) null after `occurred`")
						VH:SQLQuery ("alter table `" .. tbl_sql.misup .. "` add column `note` varchar(255) null after `occurred`")
						VH:SQLQuery ("alter table `" .. tbl_sql.miver .. "` add column `note` varchar(255) null after `occurred`")
						VH:SQLQuery ("alter table `" .. tbl_sql.miex .. "` add column `note` varchar(255) null after `occurred`")
						VH:SQLQuery ("alter table `" .. tbl_sql.minick .. "` change column `time` `time` varchar(10) null")
						VH:SQLQuery ("alter table `" .. tbl_sql.midesc .. "` change column `time` `time` varchar(10) null")
						VH:SQLQuery ("alter table `" .. tbl_sql.mitag .. "` change column `time` `time` varchar(10) null")
						VH:SQLQuery ("alter table `" .. tbl_sql.miconn .. "` change column `time` `time` varchar(10) null")
						VH:SQLQuery ("alter table `" .. tbl_sql.miemail .. "` change column `time` `time` varchar(10) null")
						VH:SQLQuery ("alter table `" .. tbl_sql.mishare .. "` change column `time` `time` varchar(10) null")
						VH:SQLQuery ("alter table `" .. tbl_sql.miip .. "` change column `time` `time` varchar(10) null")
						VH:SQLQuery ("alter table `" .. tbl_sql.micc .. "` change column `time` `time` varchar(10) null")
						VH:SQLQuery ("alter table `" .. tbl_sql.midns .. "` change column `time` `time` varchar(10) null")
						VH:SQLQuery ("alter table `" .. tbl_sql.misup .. "` change column `time` `time` varchar(10) null")
						VH:SQLQuery ("alter table `" .. tbl_sql.miver .. "` change column `time` `time` varchar(10) null")
						VH:SQLQuery ("alter table `" .. tbl_sql.mchist .. "` add column `ip` varchar(15) null after `nick`")
						VH:SQLQuery ("alter table `" .. tbl_sql.ccgag .. "` change column `cc` `item` varchar(255) not null")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('lretoplain', '" .. repsqlchars (table_cmnds.lretoplain) .. "')")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('histshowipclass', '" .. repsqlchars (table_sets.histshowipclass) .. "')")
					end

					if ver <= 286 then
						VH:SQLQuery ("create table if not exists `" .. tbl_sql.crhist .. "` (`id` bigint(20) unsigned not null auto_increment primary key, `room` varchar(255) not null, `realnick` varchar(255) not null, `nick` varchar(255) not null, `ip` varchar(15) null, `date` bigint(20) unsigned not null, `message` text not null) engine = myisam default character set utf8 collate utf8_unicode_ci")

						VH:SQLQuery ("alter table `" .. tbl_sql.news .. "` change column `date` `date` bigint(20) unsigned not null")
						VH:SQLQuery ("alter table `" .. tbl_sql.rel .. "` change column `date` `date` bigint(20) unsigned not null")
						VH:SQLQuery ("alter table `" .. tbl_sql.off .. "` change column `date` `date` bigint(20) unsigned not null")
						VH:SQLQuery ("alter table `" .. tbl_sql.mchist .. "` change column `date` `date` bigint(20) unsigned not null")
						VH:SQLQuery ("alter table `" .. tbl_sql.ophist .. "` change column `date` `date` bigint(20) unsigned not null")
						VH:SQLQuery ("alter table `" .. tbl_sql.ulog .. "` change column `time` `time` bigint(20) unsigned not null")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('antispamdebug', '" .. repsqlchars (table_sets.antispamdebug) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('chathistlimit', '" .. repsqlchars (table_sets.chathistlimit) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('chathistbotmsg', '" .. repsqlchars (table_sets.chathistbotmsg) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('chathistipclass', '" .. repsqlchars (table_sets.chathistipclass) .. "')")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('histdel', '" .. repsqlchars (table_cmnds.histdel) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('chathist', '" .. repsqlchars (table_cmnds.chathist) .. "')")
					end

					if ver <= 287 then
						VH:SQLQuery ("create table if not exists `" .. tbl_sql.ulog .. "` (`id` bigint(20) unsigned not null auto_increment primary key, `time` bigint(20) unsigned not null, `nick` varchar(255) not null, `ip` varchar(15) not null, `cc` varchar(2) null, `desc` varchar(255) null, `tag` varchar(255) null, `conn` varchar(255) null, `email` varchar(255) null, `share` bigint(20) unsigned not null default 0) engine = myisam default character set utf8 collate utf8_unicode_ci")

						VH:SQLQuery ("alter table `" .. tbl_sql.ulog .. "` add column `cc` varchar(2) null after `ip`")
						VH:SQLQuery ("alter table `" .. tbl_sql.ulog .. "` change column `desc` `desc` varchar(255) null")
						VH:SQLQuery ("alter table `" .. tbl_sql.ulog .. "` change column `tag` `tag` varchar(255) null")
						VH:SQLQuery ("alter table `" .. tbl_sql.ulog .. "` change column `conn` `conn` varchar(255) null")
						VH:SQLQuery ("alter table `" .. tbl_sql.ulog .. "` change column `email` `email` varchar(255) null")
						VH:SQLQuery ("alter table `" .. tbl_sql.ulog .. "` change column `share` `share` bigint(20) unsigned not null default 0")
					end

					if ver <= 288 then
						VH:SQLQuery ("alter table `" .. tbl_sql.rcmenu .. "` add column `off` tinyint(1) unsigned not null default 0 after `maxclass`")
						VH:SQLQuery ("alter table `" .. tbl_sql.ophist .. "` add column `class` tinyint(2) unsigned not null default 10 after `message`")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('replprotect', '" .. repsqlchars (table_sets.replprotect) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('custlistclass', '" .. repsqlchars (table_sets.custlistclass) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('reluseclass', '" .. repsqlchars (table_sets.reluseclass) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('chatfloodonecount', '" .. repsqlchars (table_sets.chatfloodonecount) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('chatfloodoneint', '" .. repsqlchars (table_sets.chatfloodoneint) .. "')")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('rcmenuoff', '" .. repsqlchars (table_cmnds.rcmenuoff) .. "')")
					end

					if ver <= 289 then
						VH:SQLQuery ("alter table `" .. tbl_sql.replex .. "` add column `type` tinyint(1) not null default 0 after `exception`")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('sefiblockdel', '" .. repsqlchars (table_sets.sefiblockdel) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('chatuptime', '" .. repsqlchars (table_sets.chatuptime) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('chatuptimeact', '" .. repsqlchars (table_sets.chatuptimeact) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('classnotilowupreg', '" .. repsqlchars (table_sets.classnotilowupreg) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('classnotilowupsear', '" .. repsqlchars (table_sets.classnotilowupsear) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('classnotilowupchat', '" .. repsqlchars (table_sets.classnotilowupchat) .. "')")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('sefibllist', '" .. repsqlchars (table_cmnds.sefibllist) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('sefibldel', '" .. repsqlchars (table_cmnds.sefibldel) .. "')")
					end

					if ver <= 290 then
						VH:SQLQuery ("alter table `" .. tbl_sql.wm .. "` change column `in` `in` text null default null")
						VH:SQLQuery ("alter table `" .. tbl_sql.wm .. "` change column `out` `out` text null default null")

						VH:SQLQuery ("update `" .. tbl_sql.wm .. "` set `in` = null where `in` = ''")
						VH:SQLQuery ("update `" .. tbl_sql.wm .. "` set `out` = null where `out` = ''")

						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('respskiplast', '" .. repsqlchars (table_sets.respskiplast) .. "')")
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('histdeflines', '" .. repsqlchars (table_sets.histdeflines) .. "')")
					end

					if ver <= 291 then
						VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('newsdeflines', '" .. repsqlchars (table_sets.newsdeflines) .. "')")
					end

					if ver <= 292 then
						-- todo
					end

					-- and so on, todo: dont forget to update this list on every release

					old = false -- update version
					local tm = os.time () + table_sets.srvtimediff
					VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('ver_ledo', " .. _tostring (tm) .. ", '" .. ver_ledo .. "') on duplicate key update `time` = " .. _tostring (tm) .. ", `count` = '" .. ver_ledo .. "'")
				end
			end
		end
	end

	if old then -- old style or fresh install
		renametables ()
		createtables ()
		altertables ()
		createsettings ()
	end

	loadsettings ()
	loadcachelists ()
	loadlangfile (nil, nil)

	table_othsets.botnick = getconfig ("hub_security")
	table_othsets.opchatnick = getconfig ("opchat_name")

	if table_sets.addledobot == 1 then
		addhubrobot (table_sets.ledobotnick, table_othsets.ledobotdesc .. table_othsets.ledobottag, 2, table_sets.ledobotmail, getownsize (true, table_sets.ledobotsize))

		if table_sets.useextrafeed == 1 then
			table_othsets.feednick = table_sets.extrafeednick
		else
			table_othsets.feednick = table_sets.ledobotnick
		end

		table_othsets.sendfrom = table_sets.ledobotnick
	else
		if table_sets.useextrafeed == 1 then
			table_othsets.feednick = table_sets.extrafeednick
		else
			table_othsets.feednick = table_othsets.opchatnick
		end

		table_othsets.sendfrom = table_othsets.botnick
	end

	if table_sets.chatrunning == 1 then
		installchatrooms ()
	end

	if table_sets.timebotint > 0 then
		installtimebot ()
	end

	--if table_othsets.mod_sock and (table_sets.hublistpingint > 0) then -- hublist pinger
		--hublistping ()
	--end

	local ulim = getulimit () -- ulimit warning

	if ulim then
		local umax = getconfig ("max_users")

		if ulim < umax then
			VH:SendToClass ("<" .. table_othsets.sendfrom .. "> " .. gettext ("Warning: %s"):format (gettext ("Open files limit set to %d is smaller than maximum users configuration which is %d. You can correct this by setting %s to %d or higher and restarting the hub."):format (ulim, umax, "ulimit -n", umax)) .. "|", 5, 10)
		end
	end

	if table_sets.addspecialver == 1 then -- special version
		VH:SetConfig ((VH.ConfName or "config"), "hub_version_special", gettext ("Powered by %s"):format ("Ledokol " .. ver_ledo .. "." .. bld_ledo))
	end

	if table_sets.avsearchint > 0 then -- antivirus search
		if table_sets.avsearservaddr ~= "" then -- server
			avsearservstart ()
		end

		loadavstr ()
	end

	math.randomseed (os.time ()) -- randomize
	return 1
end

----- ---- --- -- -

function UnLoad ()
	if table_othsets.locked then
		return 1
	end

	if table_sets.avsearchint > 0 and table_sets.avsearservaddr ~= "" then -- antivirus search server
		avsearservstop ()
	end

	if table_othsets.restart then
		return 1
	end

	resetcustnicks ()

	if table_sets.chatrunning == 1 then
		uninstallchatrooms ()
	end

	if table_sets.ccroomrunning == 1 then
		uninstallccrooms ()
	end

	if table_sets.timebotint > 0 and table_othsets.lasttimenick then
		if table_sets.fasttimebot == 1 then
			VH:SendToClass ("$Quit " .. table_othsets.lasttimenick .. "|", 0, 10)
		else
			delhubrobot (table_othsets.lasttimenick)
		end
	end

	if table_sets.addledobot == 1 then
		delhubrobot (table_sets.ledobotnick)
	end

	return 1
end

----- ---- --- -- -

function VH_OnUnLoad (code)
	table_othsets.restart = true
	return 1
end

----- ---- --- -- -

function VH_OnNewConn (addr)
	if table_othsets.locked then
		return 1
	end

	if table_sets.enablehardban == 1 and checkhban (addr) then -- hard ban
		return 0
	end

	if table_sets.useblacklist == 1 and checkblacklist (addr) then -- blacklist
		return 0
	end

	return 1
end

----- ---- --- -- -

function VH_OnCloseConn (addr, nick)
	--if table_othsets.locked or table_othsets.restart then
		--return 1
	--end

	return 1
end

----- ---- --- -- -

function VH_OnSetConfig (nick, conf, var, val_new, val_old, val_type)
	local cls = getclass (nick)
	sethubconf (nick, cls, var, val_new)
	opsnotify (table_sets.classnoticonfig, gettext ("%s with class %d changed configuration variable %s.%s: %s => %s"):format (nick, cls, conf, var, val_old, val_new))
	oprankaccept (nick, cls)
	return 1
end

----- ---- --- -- -

function VH_OnOperatorCommand (nick, data)
	if table_othsets.locked then
		return 1
	end

	local ucl = getclass (nick)

	if ucl < 3 then
		return 0
	end

	if checkcmd (nick, ucl, data) == 0 then -- command permissions
		return 0
	end

	savecmdlog (nick, ucl, data, true) -- command logger

	----- ---- --- -- -

	if data:match ("^" .. table_othsets.optrig .. "kick%s+%S+%s*.*$") then
		if table_sets.classnotikick == 11 then
			donotifycmd (nick, data, 0, ucl)
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.chatadd .. " %S+ .* %d+ %d+ %S+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			addchatroom (nick, data:sub (# table_cmnds.chatadd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.chatdel .. " %S+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			delchatroom (nick, data:sub (# table_cmnds.chatdel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.chatlist .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			listchatroom (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.acreadd .. " [%a][%a%d] [^ ]+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			addacre (nick, data:sub (# table_cmnds.acreadd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.acredel .. " %d+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			delacre (nick, data:sub (# table_cmnds.acredel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.acrelist .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			listacre (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.remadd .. " %S+ .+ %d+ %d+ %d %d+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
addreminder (nick, data:sub (# table_cmnds.remadd + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.remdel .. " %S+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
delreminder (nick, data:sub (# table_cmnds.remdel + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.remlist .. "$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
listreminder (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.remshow .. " %S+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
showreminder (nick, data:sub (# table_cmnds.remshow + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.trigadd .. " %S+ \".+\" %d+ %d+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			addtrigger (nick, data:sub (# table_cmnds.trigadd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.trigdel .. " %S+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			deltrigger (nick, data:sub (# table_cmnds.trigdel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.triglist .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			listtrigger (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.nopmadd .. " %S+ %d %d+ .+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			addnopm (nick, data:sub (# table_cmnds.nopmadd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.nopmdel .. " %S+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			delnopm (nick, data:sub (# table_cmnds.nopmdel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.nopmlist .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			listnopm (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.rcmenuadd .. " \".+\" \".*\" %d+ %d+ %d+ %d+ %d+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			addrcmenu (nick, data:sub (# table_cmnds.rcmenuadd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.rcmenudel .. " %d+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			delrcmenu (nick, data:sub (# table_cmnds.rcmenudel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.rcmenulist .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			listrcmenu (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.rcmenuord .. " %d+ %d+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			ordrcmenu (nick, data:sub (# table_cmnds.rcmenuord + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.rcmenuoff .. " %d+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			offrcmenu (nick, data:sub (# table_cmnds.rcmenuoff + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ipwatadd .. " %S+ \".+\" %d$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			addipwat (nick, data:sub (# table_cmnds.ipwatadd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ipwatdel .. " %S+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			delipwat (nick, data:sub (# table_cmnds.ipwatdel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ipwatlist .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			listipwat (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.hban .. " .+ \".+\"$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			addhban (nick, data:sub (# table_cmnds.hban + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.hunban .. " %S+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			delhban (nick, data:sub (# table_cmnds.hunban + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.hbans .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			listhban (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.newsadd .. " .+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
addnews (nick, data:sub (# table_cmnds.newsadd + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.newsdel .. " .+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
delnews (nick, data:sub (# table_cmnds.newsdel + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.reladd .. " \".+\" \".+\"$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.reladd .. " \".+\" \".+\" %S+$") then
		if ucl >= table_sets.relmodclass then
			donotifycmd (nick, data, 0, ucl)
			addrelease (nick, data:sub (# table_cmnds.reladd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.reldel .. " %S+ .+$") then
		if ucl >= table_sets.relmodclass then
			donotifycmd (nick, data, 0, ucl)
			delrelease (nick, data:sub (# table_cmnds.reldel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.relfind .. " .+$") then
		if ucl >= table_sets.reluseclass then
			donotifycmd (nick, data, 0, ucl)
			findrelease (nick, data:sub (# table_cmnds.relfind + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.rellist .. " %S+ %d+$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.rellist .. " %S+ %d+ .+$") then
		if ucl >= table_sets.reluseclass then
			donotifycmd (nick, data, 0, ucl)
			listrelease (nick, data:sub (# table_cmnds.rellist + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.respadd .. " \".+\" \".+\" %d+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			addresponder (nick, data:sub (# table_cmnds.respadd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.respdel .. " %d+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			delresponder (nick, data:sub (# table_cmnds.respdel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.resplist .. "$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.resplist .. " .+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			listresponder (nick, data:sub (# table_cmnds.resplist + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.respexadd .. " %S+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			addrespex (nick, data:sub (# table_cmnds.respexadd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.respexdel .. " %S+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			delrespex (nick, data:sub (# table_cmnds.respexdel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.respexlist .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			listrespex (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.repladd .. " \".+\" \".+\" %d+$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.repladd .. " \".+\" \".+\" %d+ %d$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			addreplacer (nick, data:sub (# table_cmnds.repladd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.repldel .. " %d+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			delreplacer (nick, data:sub (# table_cmnds.repldel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.repllist .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			listreplacer (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.replexadd .. " .+ %d$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			addreplex (nick, data:sub (# table_cmnds.replexadd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.replexdel .. " .*$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			delreplex (nick, data:sub (# table_cmnds.replexdel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.replexlist .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			listreplex (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.antiadd .. " .+ %d %d+ %d$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			addantientry (nick, data:sub (# table_cmnds.antiadd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.antidel .. " .+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
delantientry (nick, data:sub (# table_cmnds.antidel + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.antilist .. "$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
listantientry (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.antiexadd .. " .+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			addexentry (nick, data:sub (# table_cmnds.antiexadd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.antiexdel .. " .+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
delexentry (nick, data:sub (# table_cmnds.antiexdel + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.antiexlist .. "$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
listexentry (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.sefiadd .. " .+ %d %d+ %d$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			addsefientry (nick, data:sub (# table_cmnds.sefiadd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.sefidel .. " .+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			delsefientry (nick, data:sub (# table_cmnds.sefidel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.sefilist .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			listsefientry (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.sefiexadd .. " .+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			addsefiexentry (nick, data:sub (# table_cmnds.sefiexadd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.sefiexdel .. " .+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			delsefiexentry (nick, data:sub (# table_cmnds.sefiexdel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.sefiexlist .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			listsefiexentry (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.sefibllist .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			listsefiblocks (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.sefibldel .. " [^ ]+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			delsefiblock (nick, data:sub (# table_cmnds.sefibldel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.cmndset .. " %S+ %S+$") then
if ucl >= table_sets.mincommandclass then
setledocmd (nick, ucl, data:sub (# table_cmnds.cmndset + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.cmndreset .. "$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
resetledocmd (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.cmndshow .. "$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
showledocmd (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.cmndadd .. " .+ %d+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
addcmdentry (nick, data:sub (# table_cmnds.cmndadd + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.cmnddel .. " .+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
delcmdentry (nick, data:sub (# table_cmnds.cmnddel + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.cmndlist .. "$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
listcmdentry (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.cmndexadd .. " .+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
addcmdexentry (nick, data:sub (# table_cmnds.cmndexadd + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.cmndexdel .. " .+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
delcmdexentry (nick, data:sub (# table_cmnds.cmndexdel + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.cmndexlist .. "$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
listcmdexentry (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.authadd .. " %S+ .+$") then
	if ucl >= table_sets.mincommandclass then
		donotifycmd (nick, data, 0, ucl)
		addauthentry (nick, data:sub (# table_cmnds.authadd + 3))
	else
		commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
	end

	return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.authmod .. " %d+ .+$") then
	if ucl >= table_sets.mincommandclass then
		donotifycmd (nick, data, 0, ucl)
		modauthentry (nick, data:sub (# table_cmnds.authmod + 3))
	else
		commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
	end

	return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.authdel .. " %d+$") then
	if ucl >= table_sets.mincommandclass then
		donotifycmd (nick, data, 0, ucl)
		delauthentry (nick, data:sub (# table_cmnds.authdel + 3))
	else
		commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
	end

	return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.authlist .. "$") then
	if ucl >= table_sets.mincommandclass then
		donotifycmd (nick, data, 0, ucl)
		listauthentry (nick)
	else
		commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
	end

	return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.wmforce .. " %S+ %S+ .+$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.wmforce .. " %S+ %S+$") then
if ucl >= table_sets.mincommandclass then
if table_sets.classnotiwelcome == 11 then
donotifycmd (nick, data, 0, ucl)
end

forcewelcome (nick, data:sub (# table_cmnds.wmforce + 3), ucl)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.wmlist .. "$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
listwelcome (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.myhistory .. " %d+$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.myhistory .. "$") then
		if ucl >= table_sets.mchistclass and table_sets.histlimit > 0 then
			donotifycmd (nick, data, 0, ucl)
			sendownhistory (nick, ucl, data:sub (# table_cmnds.myhistory + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.history .. " %d+$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.history .. "$") then
		if ucl >= table_sets.mchistclass and table_sets.histlimit > 0 then
			donotifycmd (nick, data, 0, ucl)
			sendmchistory (nick, ucl, data:sub (# table_cmnds.history + 3), false)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.hubnews .. " %d+$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.hubnews .. "$") then
		if ucl >= table_sets.newsclass then
			donotifycmd (nick, data, 0, ucl)
			sendnews (nick, data:sub (# table_cmnds.hubnews + 3), false)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.calculate .. " %S+ %S %S+$") then
if ucl >= table_sets.minusrcommandclass then
donotifycmd (nick, data, 0, ucl)
calculate (nick, data:sub (# table_cmnds.calculate + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.lretoplain .. " .+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			lretoplain (nick, data:sub (# table_cmnds.lretoplain + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.showtopic .. "$") then
if ucl >= table_sets.minusrcommandclass then
donotifycmd (nick, data, 0, ucl)
sendtopic (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.offmsg .. " %S+ .+$") then
if ucl >= table_sets.offmsgclass then
sendoffmsg (nick, data:sub (# table_cmnds.offmsg + 3), ucl)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.custlist .. "$") then
		if table_sets.custnickclass < 11 and ucl >= table_sets.custlistclass then
			donotifycmd (nick, data, 0, ucl)
			listcustnick (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.realnick .. " [^ ]+$") then
		if table_sets.custnickclass < 11 and ucl >= table_sets.custlistclass then
			donotifycmd (nick, data, 0, ucl)
			getrealnick (nick, data:sub (# table_cmnds.realnick + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.nick .. "$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.nick .. " .+$") then
		if ucl >= table_sets.custnickclass then
			setcustnick (nick, data:sub (# table_cmnds.nick + 3), ucl)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.wmshow .. "$") then
if ucl >= table_sets.welcomeclass then
donotifycmd (nick, data, 0, ucl)
showwelcome (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.wmset .. " %S+ .+$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.wmset .. " %S+$") then
if ucl >= table_sets.welcomeclass then
if table_sets.classnotiwelcome == 11 then
donotifycmd (nick, data, 0, ucl)
end

setwelcome (nick, data:sub (# table_cmnds.wmset + 3), ucl)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.wordranks .. "$") then
if ucl >= table_sets.wordrankclass then
donotifycmd (nick, data, 0, ucl)
wordranksendall (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.searranks .. "$") then
	if ucl >= table_sets.searrankclass then
		donotifycmd (nick, data, 0, ucl)
		searranksendall (nick)
	else
		commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
	end

	return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.cclive .. "$") then
if ucl >= table_sets.ccstatsclass then
donotifycmd (nick, data, 0, ucl)
sendlivecc (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.citylive .. " [%a%d]+$") then
		if ucl >= table_sets.ccstatsclass then
			donotifycmd (nick, data, 0, ucl)
			sendlivecity (nick, data:sub (# table_cmnds.citylive + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

	return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.cchist .. "$") then
if table_sets.savecchistory == 1 and ucl >= table_sets.ccstatsclass then
donotifycmd (nick, data, 0, ucl)
sendhistcc (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.opranks .. "$") then
if ucl >= table_sets.oprankclass then
donotifycmd (nick, data, 0, ucl)
opranksendall (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.shareranks .. "$") then
if ucl >= table_sets.sharerankclass then
donotifycmd (nick, data, 0, ucl)
shareranksendall (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.chatranks .. "$") then
if ucl >= table_sets.chatrankclass then
donotifycmd (nick, data, 0, ucl)
chatranksendall (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.mysharerank .. "$") then
if ucl >= table_sets.sharerankclass then
donotifycmd (nick, data, 0, ucl)
shareranksendown (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.mychatrank .. "$") then
if ucl >= table_sets.chatrankclass then
donotifycmd (nick, data, 0, ucl)
chatranksendown (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ulog .. " %S+ .+ %d+$") then
		if ucl >= table_sets.mincommandclass and table_sets.enableuserlog == 1 then
			donotifycmd (nick, data, 0, ucl)
			showuserlog (nick, data:sub (# table_cmnds.ulog + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.clog .. " %d+$") then
	if ucl >= table_sets.mincommandclass and table_sets.enablecmdlog > 0 then
		donotifycmd (nick, data, 0, ucl)
		showcmdlog (nick, ucl, data:sub (# table_cmnds.clog + 3))
	else
		commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
	end

	return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.userinfo .. " %S+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			showuserinfo (nick, data:sub (# table_cmnds.userinfo + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ipinfo .. " %d+%.%d+%.%d+%.%d+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			showipinfo (nick, data:sub (# table_cmnds.ipinfo + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.seen .. " [^ ]+$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.seen .. " [^ ]+ .+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			seenlookup (nick, data:sub (# table_cmnds.seen + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.dropip .. " %d+%.%d+%.%d+%.%d+$") then
		if ucl >= table_sets.mincommandclass then
			dropip (nick, data:sub (# table_cmnds.dropip + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.gagipadd .. " %S+ %d$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			gagipadd (nick, data:sub (# table_cmnds.gagipadd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.gagipdel .. " %S+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			gagipdel (nick, data:sub (# table_cmnds.gagipdel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.gagiplist .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			gagiplist (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.gagccadd .. " .+ %d$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			gagccadd (nick, data:sub (# table_cmnds.gagccadd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.gagccdel .. " .+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			gagccdel (nick, data:sub (# table_cmnds.gagccdel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.gagcclist .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			gagcclist (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.wmdel .. " %S+$") then
if ucl >= table_sets.mincommandclass then
if table_sets.classnotiwelcome == 11 then
donotifycmd (nick, data, 0, ucl)
end

delwelcome (nick, data:sub (# table_cmnds.wmdel + 3), ucl)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.hubadd .. " %S+ \".+\" \".*\"$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
hublistadd (nick, data:sub (# table_cmnds.hubadd + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.hubdel .. " %S+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
hublistdel (nick, data:sub (# table_cmnds.hubdel + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.showhubs .. "$") then
if ucl >= table_sets.minusrcommandclass then
donotifycmd (nick, data, 0, ucl)
hublistshow (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.regname .. " %S+ %S+$") then
if ucl >= table_sets.mincommandclass then
	if getconfig ("use_reglist_cache") == 1 then -- reglist cache is on
		commandanswer (nick, gettext ("In order to use this feature you must turn off registered users list cache. Do it by setting hub configuration variable %s to %d and restarting the hub. Please note: Turning cache off is not recommended with large list of registered users."):format ("use_reglist_cache", 0))
	else
		if table_sets.classnotireg == 11 then
			donotifycmd (nick, data, 0, ucl)
		end

		namereg (nick, data:sub (# table_cmnds.regname + 3), ucl)
	end

else
	commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.reglist .. " %d+ %d+x%d+$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.reglist .. " %-%d %d+x%d+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			sendreglist (nick, data:sub (# table_cmnds.reglist + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.regfind .. " [^ ]+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			findreglist (nick, data:sub (# table_cmnds.regfind + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

	return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.regstats .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			statsreglist (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.readlog .. " %S+ %d+$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.readlog .. " %S+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			logsread (nick, data:sub (# table_cmnds.readlog + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.avstats .. "$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.avstats .. " [^ ]+$") then
		if ucl >= table_sets.mincommandclass and table_sets.avsearchint > 0 then
			donotifycmd (nick, data, 0, ucl)
			showavstats (nick, data:sub (# table_cmnds.avstats + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.avdetforce .. " [^ ]+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			avdetforce (nick, data:sub (# table_cmnds.avdetforce + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.avdbfind .. " %S+ .+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			avdbfinditems (nick, data:sub (# table_cmnds.avdbfind + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.randel .. " %S+ %S+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
delrank (nick, data:sub (# table_cmnds.randel + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ranexadd .. " %S+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
addrankex (nick, data:sub (# table_cmnds.ranexadd + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ranexdel .. " %S+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
delrankex (nick, data:sub (# table_cmnds.ranexdel + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ranexlist .. "$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
listrankex (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ranclean .. " %S+ %d+$") then
if ucl >= table_sets.mincommandclass then
if table_sets.classnotiledoact == 11 then
donotifycmd (nick, data, 0, ucl)
end

cleanupranks (nick, data:sub (# table_cmnds.ranclean + 3), ucl)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.myoprank .. "$") then
if ucl >= table_sets.oprankclass then
donotifycmd (nick, data, 0, ucl)
opranksendown (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.say .. " %S* .*$") then
if ucl >= table_sets.sayclass then
if table_sets.classnotisay == 11 then
donotifycmd (nick, data, 0, ucl)
end

sendsay (nick, data:sub (# table_cmnds.say + 3), ucl)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.clear .. "$") then
		if ucl >= table_sets.clearclass then
			donotifycmd (nick, data, 0, ucl)
			VH:SendToClass ("<" .. table_othsets.sendfrom .. "> " .. string.rep ("\r\n", 100) .. " ~ " .. gettext ("Chat cleanup performed by %s"):format (nick) .. " ~\r\n|", 0, 10)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.mode .. " .+ %S+$") then
	if ucl >= table_sets.chatmodeclass then
		donotifycmd (nick, data, 0, ucl)
		setmode (nick, data:sub (# table_cmnds.mode + 3))
	else
		commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
	end

	return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.mode .. " %S+$") then
	if ucl >= table_sets.chatmodeclass then
		donotifycmd (nick, data, 0, ucl)
		setmode (nick, reppatchars (tolow (nick)) .. " " .. data:sub (# table_cmnds.mode + 3))
	else
		commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
	end

	return 0

----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.votekick .. " %S+$") then
		if ucl >= table_sets.votekickclass then
			-- donotifycmd (nick, data, 0, ucl)
			votekickuser (nick, data:sub (# table_cmnds.votekick + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.votekickdel .. " %S+$") then
		if table_sets.votekickclass < 11 and ucl >= table_sets.mincommandclass then
			-- donotifycmd (nick, data, 0, ucl)
			votekickdel (nick, data:sub (# table_cmnds.votekickdel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.votekicklist .. "$") then
		if table_sets.votekickclass < 11 and ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			votekicklist (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.mode .. "$") then
	if ucl >= table_sets.chatmodeclass then
		donotifycmd (nick, data, 0, ucl)
		listmodes (nick)
	else
		commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
	end

	return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ledohelp .. "$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
sendhelp (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ledostats .. "$") then
	if ucl >= table_sets.mincommandclass then
		donotifycmd (nick, data, 0, ucl)
		sendstats (nick)
	else
		commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
	end

	return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ledover .. "$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			updatescript (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ledover .. " force$") then
		if ucl >= 10 then
			donotifycmd (nick, data, 0, ucl)
			updatescriptforce (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ledover .. " dev$") then
		if ucl >= 10 then
			donotifycmd (nick, data, 0, ucl)
			updatescriptdev (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ledokoluninstallisconfirmed .. "$") then

		-- dont use it unless you know what it does, you can fuck up all ledokol tables in one step
		-- this action completely deletes all ledokol tables and files, and locks the script

		if ucl == 10 then
			table_othsets.locked = true -- lock the script
			donotifycmd (nick, data, 10, ucl)

			if table_sets.avsearchint > 0 and table_sets.avsearservaddr ~= "" then -- antivirus search server
				avsearservstop ()
			end

			if table_sets.chatrunning == 1 then
				uninstallchatrooms ()
			end

			if table_sets.ccroomrunning == 1 then
				uninstallccrooms ()
			end

			if table_sets.timebotint > 0 and table_othsets.lasttimenick then
				if table_sets.fasttimebot == 1 then
					VH:SendToClass ("$Quit " .. table_othsets.lasttimenick .. "|", 0, 10)
				else
					delhubrobot (table_othsets.lasttimenick)
				end

				table_othsets.lasttimenick = nil
			end

			if table_sets.addledobot == 1 then
				delhubrobot (table_sets.ledobotnick)
			end

			if table_sets.addspecialver == 1 then
				VH:SetConfig ((VH.ConfName or "config"), "hub_version_special", "")
			end

			droptables () -- drop all tables
			local file = io.open (table_othsets.cfgdir .. "scripts/" .. table_othsets.luafile, "r") -- open script file

			if file then
				file:close ()
				os.remove (table_othsets.cfgdir .. "scripts/" .. table_othsets.luafile) -- delete script file

				if table_sets.langfileprefix ~= "" then -- delete language files
					os.remove (table_othsets.cfgdir .. "scripts/" .. table_othsets.langfilefmt:format (table_sets.langfileprefix))
				end

				commandanswer (nick, gettext ("%s tables are now deleted and script is locked."):format ("Ledokol") .. " " .. gettext ("Please unload the script to finish.") .. " " .. gettext ("Good luck.")) -- finish
			else
				commandanswer (nick, gettext ("%s tables are now deleted and script is locked."):format ("Ledokol") .. " " .. gettext ("Please unload the script and remove it from scripts directory.") .. " " .. gettext ("Good luck.")) -- finish
			end
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ledoset .. " %S+ .*$") then
if ucl >= table_sets.mincommandclass then
if table_sets.classnoticonfig == 11 then
donotifycmd (nick, data, 0, ucl)
end

setledoconf (nick, ucl, data:sub (# table_cmnds.ledoset + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ledoconf .. "$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
showledoconf (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ledosql .. " .+$") then

-- dont use it unless you know what it does, you can fuck up your hub database in one step
-- executes any text written after the command as mysql query
-- quotes and backslash characters in your query must be escaped with \ (not mysql syntax itself)

	if getledoconf ("allow_sql") == 1 and ucl == 10 then
		donotifycmd (nick, data, 10, ucl)
		local _, rows = VH:SQLQuery (repnmdcinchars (data:sub (# table_cmnds.ledosql + 3)))

		if rows > 0 then
			local anentry = ""

			for x = 0, rows - 1 do
				local res = { VH:SQLFetch (x) }
				anentry = anentry .. " " .. prezero (# rows, (x + 1)) .. "."

				for k, v in pairs (res) do
					if k > 1 then
						anentry = anentry .. "\t" .. repnmdcoutchars (v or "NULL")
					end
				end

				anentry = anentry .. "\r\n"
			end

			commandanswer (nick, gettext ("Query results") .. ":\r\n\r\n" .. anentry)
		else
			commandanswer (nick, gettext ("Query executed but didn't return any results."))
		end
	else
		commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
	end

	return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ledoshell .. " .+$") then

-- dont use it unless you know what it does, you can fuck up your operating system in one step
-- executes any text written after the command as system shell command

	if getledoconf ("allow_shell") == 1 and ucl == 10 then
		donotifycmd (nick, data, 10, ucl)
		local res, err = os.execute (repnmdcinchars (data:sub (# table_cmnds.ledoshell + 3)) .. " > \"" .. table_othsets.cfgdir .. table_othsets.tmpfile .. "\" 2>&1")

		if res then
			local f = io.open (table_othsets.cfgdir .. table_othsets.tmpfile, "r")
			local o = ""

			if f then
				o = f:read ("*all")
				f:close ()
				os.remove (table_othsets.cfgdir .. table_othsets.tmpfile) -- delete temporary file
			end

			if f and o and (# o > 0) then
				commandanswer (nick, gettext ("Returned output") .. ":\r\n\r\n" .. repnmdcoutchars (o))
			else
				commandanswer (nick, gettext ("Executed shell command didn't return any output."))
			end

			commandanswer (nick, gettext ("Returned status code: %s"):format (res))
		else
			commandanswer (nick, gettext ("Executed shell command didn't return any status code: %s"):format (repnmdcoutchars (err or gettext ("No error message specified."))))
		end

	else
		commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
	end

	return 0

----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.oldclean .. " %S+ %d+$") then
		if ucl >= table_sets.mincommandclass then
			if table_sets.classnotiledoact == 11 then
				donotifycmd (nick, data, 0, ucl)
			end

			cleanuptable (nick, data:sub (# table_cmnds.oldclean + 3), ucl)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.oldclean .. " %S+ %* %d+$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.oldclean .. " %S+ %* %-%d$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.oldclean .. " %S+ %d+ %d+$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.oldclean .. " %S+ %d+ %-%d$") then
		if ucl >= table_sets.mincommandclass then
			if table_sets.classnotiledoact == 11 then
				donotifycmd (nick, data, 0, ucl)
			end

			altcleanuptable (nick, data:sub (# table_cmnds.oldclean + 3), ucl)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.myinfadd .. " [^ ]+ .+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			addmyinfoentry (nick, data:sub (# table_cmnds.myinfadd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.myinfdel .. " [^ ]+ .+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			delmyinfoentry (nick, data:sub (# table_cmnds.myinfdel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.myinflist .. " [^ ]+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			listmyinfoentry (nick, data:sub (# table_cmnds.myinflist + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.protadd .. " .+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
addprotentry (nick, data:sub (# table_cmnds.protadd + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.protdel .. " .+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
delprotentry (nick, data:sub (# table_cmnds.protdel + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.protlist .. "$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
listprotentry (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.custdel .. " %S+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			opdelcustnick (nick, data:sub (# table_cmnds.custdel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.rename .. " %S+ .+$") then
		if ucl >= table_sets.mincommandclass then
			donotifycmd (nick, data, 0, ucl)
			opforcecustnick (nick, data:sub (# table_cmnds.rename + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.offlist .. "$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
listoffline (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.offdel .. " .+$") then
if ucl >= table_sets.mincommandclass then
donotifycmd (nick, data, 0, ucl)
deloffline (nick, data:sub (# table_cmnds.offdel + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.offclean .. "$") then
if ucl >= table_sets.mincommandclass then
if table_sets.classnotiledoact == 11 then
donotifycmd (nick, data, 0, ucl)
end

cleanoffline (nick, ucl)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.histdel .. " .+$") then
		if ucl >= table_sets.mincommandclass then
			if table_sets.classnotiledoact == 11 then
				donotifycmd (nick, data, 0, ucl)
			end

			deletehistory (nick, data:sub (# table_cmnds.histdel + 3), ucl)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.histclean .. "$") then
		if ucl >= table_sets.mincommandclass then
			if table_sets.classnotiledoact == 11 then
				donotifycmd (nick, data, 0, ucl)
			end

			cleanhistory (nick, 0, false, ucl)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. table_cmnds.ophistory .. " %d+$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.ophistory .. "$") then
		if ucl >= 3 and table_sets.histlimit > 0 then
			donotifycmd (nick, data, 0, ucl)
			sendophistory (nick, ucl, data:sub (# table_cmnds.ophistory + 3), false, false)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. "topic$") or data:match ("^" .. table_othsets.optrig .. "hubtopic$") then
	savetopic (nil, nil, ucl)

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. "topic .+$") then
	local tpc = data:sub (# "topic" + 3)

	if tpc:find ("&#124;") then
		commandanswer (nick, gettext ("Your topic contains forbidden characters which can't be used for security reason: %s"):format ("&#124;"))
		return 0
	else
		savetopic (nick, tpc, ucl)
	end

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. "hubtopic .+$") then
	local tpc = data:sub (# "hubtopic" + 3)

	if tpc:find ("&#124;") then
		commandanswer (nick, gettext ("Your topic contains forbidden characters which can't be used for security reason: %s"):format ("&#124;"))
		return 0
	else
		savetopic (nick, tpc, ucl)
	end

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. "topic $") or data:match ("^" .. table_othsets.optrig .. "hubtopic $") then
	if ucl >= getconfig ("topic_mod_class") then
		commandanswer (nick, gettext ("Why would you want to set empty topic?"))
		return 0
	end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "rn") then
		if table_sets.classnotireg == 11 then
			donotifycmd (nick, data, 0, ucl)
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "rnew") then
		if table_sets.classnotireg == 11 then
			donotifycmd (nick, data, 0, ucl)
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "regnew") then
		if table_sets.classnotireg == 11 then
			donotifycmd (nick, data, 0, ucl)
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "regn") then
		if table_sets.classnotireg == 11 then
			donotifycmd (nick, data, 0, ucl)
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "rdel") then
		if table_sets.classnotireg == 11 then
			donotifycmd (nick, data, 0, ucl)
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "rdelete") then
		if table_sets.classnotireg == 11 then
			donotifycmd (nick, data, 0, ucl)
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "regdel") then
		if table_sets.classnotireg == 11 then
			donotifycmd (nick, data, 0, ucl)
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "regdelete") then
		if table_sets.classnotireg == 11 then
			donotifycmd (nick, data, 0, ucl)
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "rclass") then
		if table_sets.classnotireg == 11 then
			donotifycmd (nick, data, 0, ucl)
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "regclass") then
		if table_sets.classnotireg == 11 then
			donotifycmd (nick, data, 0, ucl)
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "ban") then
		if table_sets.classnotiban == 11 then
			donotifycmd (nick, data, 0, ucl)
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "unban") then
		if table_sets.classnotiban == 11 then
			donotifycmd (nick, data, 0, ucl)
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "set%s+%[%S+%]%s+%S+%s+.*$") then
		if ucl >= 5 then
			if not VH_OnSetConfig then
				donotifyextconfig (nick, data:sub (# "set" + 3), ucl)
			end

			if table_sets.classnoticonfig == 11 then
				donotifycmd (nick, data, 0, ucl)
			end
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "=%s+%[%S+%]%s+%S+%s+.*$") then
		if ucl >= 5 then
			if not VH_OnSetConfig then
				donotifyextconfig (nick, data:sub (# "=" + 3), ucl)
			end

			if table_sets.classnoticonfig == 11 then
				donotifycmd (nick, data, 0, ucl)
			end
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "set%s+%S+%s+.*$") then
		if ucl >= 5 then
			if not VH_OnSetConfig then
				local var, val = data:sub (# "set" + 3):match ("^%s*(%S+)%s+(.*)$")
				val = val:match ("^%s*(%S+)%s*$") -- truncate spaces
				val = val or ""
				sethubconf (nick, ucl, var, val)
				donotifyconfig (nick, var .. " " .. val, ucl)
			end

			if table_sets.classnoticonfig == 11 then
				donotifycmd (nick, data, 0, ucl)
			end
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "=%s+%S+%s+.*$") then
		if ucl >= 5 then
			if not VH_OnSetConfig then
				local var, val = data:sub (# "=" + 3):match ("^%s*(%S+)%s+(.*)$")
				val = val:match ("^%s*(%S+)%s*$") -- truncate spaces
				val = val or ""
				sethubconf (nick, ucl, var, val)
				donotifyconfig (nick, var .. " " .. val, ucl)
			end

			if table_sets.classnoticonfig == 11 then
				donotifycmd (nick, data, 0, ucl)
			end
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "restart$") or data:match ("^" .. table_othsets.optrig .. "quit$") or data:match ("^" .. table_othsets.optrig .. "core_dump$") then
		if ucl == 10 then
			donotifycmd (nick, data, 0, ucl)
			table_othsets.restart = true
		--else
			--commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
			--return 0
		end

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. "luaload .*$") or data:match ("^" .. table_othsets.optrig .. "luaunload .*$") or data:match ("^" .. table_othsets.optrig .. "luareload .*$") then
	if ucl >= getconfig ("plugin_mod_class") then -- use plugin permission for lua scripts too
		donotifycmd (nick, data, 0, ucl)
	else
		commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		return 0
	end

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. "lualist.*$") or data:match ("^" .. table_othsets.optrig .. "luainfo.*$") or data:match ("^" .. table_othsets.optrig .. "luaversion.*$") then
	donotifycmd (nick, data, 0, ucl)

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. "offplug .*$") or data:match ("^" .. table_othsets.optrig .. "onplug .*$") or data:match ("^" .. table_othsets.optrig .. "replug .*$") or data:match ("^" .. table_othsets.optrig .. "modplug .*$") or data:match ("^" .. table_othsets.optrig .. "addplug .*$") or data:match ("^" .. table_othsets.optrig .. "delplug .*$") then
	if ucl >= getconfig ("plugin_mod_class") then -- check the permissions
		donotifycmd (nick, data, 0, ucl)
	end

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.optrig .. "lstplug.*$") then
	donotifycmd (nick, data, 0, ucl)

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "me$") then
		return VH_OnUserCommand (nick, data)

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.optrig .. "me ") then
		return VH_OnUserCommand (nick, data)

	else -- unknown command
		donotifycmd (nick, data, 0, ucl)
	end

	return 1
end

----- ---- --- -- -

function VH_OnUserCommand (nick, data)
	if table_othsets.locked then
		return 1
	end

	local ucl = getclass (nick)

	if ucl < 0 and not data:match ("^" .. table_othsets.ustrig .. "report .+$") then
		return 0
	end

	if getconfig ("disable_usr_cmds") ~= 0 then
		return 1
	end

	if checkcmd (nick, ucl, data) == 0 then -- command permissions
		return 0
	end

	local ip = getip (nick)

	if table_sets.chatfloodcmdgag == 1 then -- check ip gag
		if gagipcheck (nick, ip, ucl, nil, data) then
			return 0
		end

		if gagccheck (nick, ip, ucl, nil, data) then
			return 0
		end
	end

	if table_sets.checkcmdspam == 1 and antiscan (nick, ucl, data, 1, nil, nil) == 0 then -- check command spam
		return 0
	end

	savecmdlog (nick, ucl, data, false) -- command logger

	-- kick command for vips

	if data:match ("^" .. table_othsets.ustrig .. "kick%s+(%S+)%s*(.*)$") and table_sets.enablevipkick == 1 and ucl == 2 then
		local _, _, usr, rsn = data:find ("^" .. table_othsets.ustrig .. "kick%s+(%S+)%s*(.*)$")

		if getstatus (usr) == 1 then
			local ucls = getclass (usr)

			if ucls < 2 then -- only users with lower class
				local uip = getip (usr)

				if not isprotected (usr, uip) then
					if rsn == "" then
						rsn = gettext ("No reason specified")
					end

					commandanswer (nick, gettext ("%s with IP %s and class %d kicked: <%s> %s"):format (usr, uip .. tryipcc (uip, usr), ucls, nick, rsn))
					VH:KickUser (nick, usr, rsn) -- kick using vips nick
				else -- protected
					commandanswer (nick, gettext ("User you're trying to kick or redirect is protected: %s"):format (usr))
				end
			else
				commandanswer (nick, gettext ("You can't kick user whose class is higher or equals your own: %s"):format (usr))
			end
		else -- not in list
			commandanswer (nick, gettext ("User not in list: %s"):format (usr))
		end

		return 0
	end

	-- process +me command

	if data:match ("^" .. table_othsets.ustrig .. "me .*$") then
		if getconfig ("disable_me_cmd") ~= 0 then
			return 1
		end

		local msg = data:sub (# "me" + 3)
		local prot = isprotected (nick, ip)

		if not prot then -- protection
			if table_sets.chatuptime > 0 and table_sets.showuseruptime == 1 and ucl < table_sets.scanbelowclass and table_usup [nick] then -- chat uptime
				local dif = os.time () - table_usup [nick]

				if dif < table_sets.chatuptime then
					opsnotify (table_sets.classnotilowupchat, gettext ("Low chat uptime of %d seconds from %s with IP %s and class %d in command: %s"):format (dif, nick, ip .. tryipcc (ip, nick), ucl, "+me " .. msg))

					if table_sets.chatuptimeact == 0 then -- message
						maintouser (nick, gettext ("Please wait another %d seconds before using public chat."):format (table_sets.chatuptime - dif))
					elseif table_sets.chatuptimeact == 1 then -- drop
						opsnotify (table_sets.classnotilowupchat, gettext ("User dropped: %s"):format (nick))
						VH:Disconnect (nick)
					--elseif table_sets.chatuptimeact == 2 then -- silent
						-- nothing to do
					elseif table_sets.chatuptimeact == 3 then -- message to self
						opsnotify (table_sets.classnotilowupchat, gettext ("User received own message: %s"):format (nick))
						VH:SendToUser ("** " .. nick .. " " .. msg .. "|", nick)
					end

					return 0
				end
			end

			if table_sets.chatcodeon > 0 and (table_sets.chatcodeflag == 0 or table_sets.chatcodeflag == 1) and ucl <= table_sets.codemaxclass then -- chatcode
				if not table_code [nick] then
					local vcode, code = genchatcode ()

					table_code [nick] = {
						["vcode"] = vcode,
						["code"] = code,
						["lock"] = true
					}

					local txt = table_sets.codetext:gsub ("<code>", reprexpchars (vcode))
					maintouser (nick, txt)
					return 0
				elseif table_code [nick]["lock"] then
					local rcode = table_code [nick]["code"]

					if table_sets.chatcodeon == 2 then -- accept lower case
						rcode = rcode:lower ()
					end

					if msg == rcode or msg == table_code [nick]["code"] then
						table_code [nick]["lock"] = false
						maintouser (nick, gettext ("Code accepted."))
					else
						local txt = table_sets.codetext:gsub ("<code>", reprexpchars (table_code [nick]["vcode"]))
						maintouser (nick, txt)
					end

					return 0
				end
			end

			if detchatflood (nick, ucl, ip, msg, nil) then -- flood detection
				return 0
			end

			if table_sets.chatfloodcmdgag == 0 then -- ip gag, dont check twice
				if gagipcheck (nick, ip, ucl, nil, msg) then
					return 0
				end

				if gagccheck (nick, ip, ucl, nil, msg) then
					return 0
				end
			end

			if table_sets.checkcmdspam == 0 and antiscan (nick, ucl, msg, 1, nil, nil) == 0 then -- antispam, dont check twice
				return 0
			end
		elseif table_sets.chatantiflood == 1 then -- update last chat nick
			table_othsets.chflonenick = nick
		end

		local fakenick = nick

		if table_sets.funrandomchat == 1 then
			fakenick = getrandomnick ()

			if table_sets.custnickclass < 11 then
				fakenick = getcustnick (fakenick) or fakenick -- use custom nick
			end
		elseif table_sets.custnickclass < 11 then
			fakenick = getcustnick (nick) or nick
		end

		local cvdat = msg
		local retval = 1

		if table_sets.translitmode > 0 then -- convert translit
			cvdat = convtranslit (cvdat, table_sets.translitmode)

			if msg ~= cvdat then -- only when modified
				if antiscan (nick, ucl, cvdat, 1, nil, nil) == 0 then -- spam detection after translit conversion
					return 0
				end

				retval = 0
			end
		end

		if table_sets.tolowcharcase == 1 and ucl < 3 then -- convert char case
			cvdat = convcaps (cvdat, true)

			if msg ~= cvdat then -- only when modified
				retval = 0
			end
		end

		cvdat = modusrmode (nick, ip, cvdat) -- chat mode

		if table_sets.replrunning == 1 and (table_sets.replprotect == 0 or not prot) then -- replacer
			local norepl = cvdat
			cvdat = replchatmsg (nick, ip, ucl, cvdat, 1)

			if norepl ~= cvdat then
				opsnotify (table_sets.classnotirepl, gettext ("Message replaced for user with IP %s and class %d in MC: <%s> %s"):format (ip .. tryipcc (ip, nick), ucl, nick, "+me " .. msg))
			end
		end

		if msg ~= cvdat then
			retval = 0 -- only when modified
		end

		if table_sets.useripinchat > 0 then -- ip in chat
			local pfx = ""

			if table_sets.useripinchat == 2 and table_refu.GetUserCC then
				local cc = getcc (nick)

				if not cc or cc == "--" then
					cc = "??"
				end

				pfx = "[ " .. ip .. " &#124; " .. cc .. " ]"
			else
				pfx = "[ " .. ip .. " ]"
			end

			VH:SendToClass ("** " .. fakenick .. " " .. cvdat .. "|", 0, 2)
			VH:SendToClass (pfx .. " ** " .. fakenick .. " " .. cvdat .. "|", 3, 10)
			retval = 0
		elseif retval == 0 or fakenick ~= nick then -- no ip, only when modified
			VH:SendToClass ("** " .. fakenick .. " " .. cvdat .. "|", 0, 10)
			retval = 0
		end

		addmchistoryline (fakenick, nick, getconfig ("cmd_start_user"):sub (1, 1) .. "me " .. cvdat)
		replyresponder (fakenick, ucl, cvdat)
		chatrankaccept (nick, ucl)
		wordrankaccept (nick, ucl, cvdat)
		return retval

	elseif data:match ("^" .. table_othsets.ustrig .. "me$") then
		if getconfig ("disable_me_cmd") ~= 0 then
			return 1
		end

		if not isprotected (nick, ip) then -- protection
			if table_sets.chatuptime > 0 and table_sets.showuseruptime == 1 and ucl < table_sets.scanbelowclass and table_usup [nick] then -- chat uptime
				local dif = os.time () - table_usup [nick]

				if dif < table_sets.chatuptime then
					opsnotify (table_sets.classnotilowupchat, gettext ("Low chat uptime of %d seconds from %s with IP %s and class %d in command: %s"):format (dif, nick, ip .. tryipcc (ip, nick), ucl, "+me"))

					if table_sets.chatuptimeact == 0 then -- message
						maintouser (nick, gettext ("Please wait another %d seconds before using public chat."):format (table_sets.chatuptime - dif))
					elseif table_sets.chatuptimeact == 1 then -- drop
						opsnotify (table_sets.classnotilowupchat, gettext ("User dropped: %s"):format (nick))
						VH:Disconnect (nick)
					--elseif table_sets.chatuptimeact == 2 then -- silent
						-- nothing to do
					elseif table_sets.chatuptimeact == 3 then -- message to self
						opsnotify (table_sets.classnotilowupchat, gettext ("User received own message: %s"):format (nick))
						VH:SendToUser ("** " .. nick .. "|", nick)
					end

					return 0
				end
			end

			if table_sets.chatcodeon > 0 and (table_sets.chatcodeflag == 0 or table_sets.chatcodeflag == 1) and ucl <= table_sets.codemaxclass then -- chatcode
				if not table_code [nick] then
					local vcode, code = genchatcode ()

					table_code [nick] = {
						["vcode"] = vcode,
						["code"] = code,
						["lock"] = true
					}

					local txt = table_sets.codetext:gsub ("<code>", reprexpchars (vcode))
					maintouser (nick, txt)
					return 0
				elseif table_code [nick]["lock"] then
					local txt = table_sets.codetext:gsub ("<code>", reprexpchars (table_code [nick]["vcode"]))
					maintouser (nick, txt)
					return 0
				end
			end

			if detchatflood (nick, ucl, ip, data, nil) then -- flood detection
				return 0
			end

			if table_sets.chatfloodcmdgag == 0 then -- ip gag, dont check twice
				if gagipcheck (nick, ip, ucl, nil, data) then
					return 0
				end

				if gagccheck (nick, ip, ucl, nil, data) then
					return 0
				end
			end
		elseif table_sets.chatantiflood == 1 then -- update last chat nick
			table_othsets.chflonenick = nick
		end

		local fakenick = nick

		if table_sets.funrandomchat == 1 then
			fakenick = getrandomnick ()

			if table_sets.custnickclass < 11 then
				fakenick = getcustnick (fakenick) or fakenick -- use custom nick
			end
		elseif table_sets.custnickclass < 11 then
			fakenick = getcustnick (nick) or nick
		end

		local retval = 1

		if table_sets.useripinchat > 0 then -- ip in chat
			local pfx = ""

			if table_sets.useripinchat == 2 and table_refu.GetUserCC then
				local cc = getcc (nick)

				if not cc or cc == "--" then
					cc = "??"
				end

				pfx = "[ " .. ip .. " &#124; " .. cc .. " ]"
			else
				pfx = "[ " .. ip .. " ]"
			end

			VH:SendToClass ("** " .. fakenick .. "|", 0, 2)
			VH:SendToClass (pfx .. " ** " .. fakenick .. "|", 3, 10)
			retval = 0
		elseif fakenick ~= nick then -- no ip, only when modified
			VH:SendToClass ("** " .. fakenick .. "|", 0, 10)
			retval = 0
		end

		addmchistoryline (fakenick, nick, data)
		chatrankaccept (nick, ucl)
		return retval
	end

	-- process other commands

	if data:match ("^" .. table_othsets.ustrig .. "report .+$") then -- report antispam
		if table_sets.checkcmdspam == 0 then -- dont check twice
			local cfg = getconfig ("disable_report_cmd")

			if cfg and cfg ~= 0 then
				return 1
			end

			local msg = data:sub (# "report" + 3)

			if table_sets.chatuptime > 0 and table_sets.showuseruptime == 1 and ucl < table_sets.scanbelowclass and table_usup [nick] then -- chat uptime
				local dif = os.time () - table_usup [nick]

				if dif < table_sets.chatuptime then
					opsnotify (table_sets.classnotilowupchat, gettext ("Low chat uptime of %d seconds from %s with IP %s and class %d in command: %s"):format (dif, nick, ip .. tryipcc (ip, nick), ucl, "+report " .. msg))

					if table_sets.chatuptimeact == 0 then -- message
						maintouser (nick, gettext ("Please wait another %d seconds before using public chat."):format (table_sets.chatuptime - dif))
					elseif table_sets.chatuptimeact == 1 then -- drop
						opsnotify (table_sets.classnotilowupchat, gettext ("User dropped: %s"):format (nick))
						VH:Disconnect (nick)
					--elseif table_sets.chatuptimeact == 2 then -- silent
						-- nothing to do
					elseif table_sets.chatuptimeact == 3 then -- message to self
						opsnotify (table_sets.classnotilowupchat, gettext ("User received own message: %s"):format (nick))
						maintouser (nick, gettext ("Thank you, your report has been accepted."))
					end

					return 0
				end
			end

			if table_sets.allowspamtoops == 1 or isprotected (nick, getip (nick)) then
				return 1
			end

			return antiscan (nick, ucl, msg, 4, nil, nil)
		end

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.votekick .. " %S+$") then
		if ucl >= table_sets.votekickclass then
			-- donotifycmd (nick, data, 0, ucl)
			votekickuser (nick, data:sub (# table_cmnds.votekick + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.showtopic .. "$") then
if ucl >= table_sets.minusrcommandclass then
donotifycmd (nick, data, 0, ucl)
sendtopic (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.mychatrank .. "$") then
if ucl >= table_sets.chatrankclass then
donotifycmd (nick, data, 0, ucl)
chatranksendown (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.mysharerank .. "$") then
if ucl >= table_sets.sharerankclass then
donotifycmd (nick, data, 0, ucl)
shareranksendown (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.chatranks .. "$") then
if ucl >= table_sets.chatrankclass then
donotifycmd (nick, data, 0, ucl)
chatranksendall (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.shareranks .. "$") then
if ucl >= table_sets.sharerankclass then
donotifycmd (nick, data, 0, ucl)
shareranksendall (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.opranks .. "$") then
if ucl >= table_sets.oprankclass then
donotifycmd (nick, data, 0, ucl)
opranksendall (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.wordranks .. "$") then
if ucl >= table_sets.wordrankclass then
donotifycmd (nick, data, 0, ucl)
wordranksendall (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.searranks .. "$") then
	if ucl >= table_sets.searrankclass then
		donotifycmd (nick, data, 0, ucl)
		searranksendall (nick)
	else
		commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
	end

	return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.cclive .. "$") then
if ucl >= table_sets.ccstatsclass then
donotifycmd (nick, data, 0, ucl)
sendlivecc (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.citylive .. " [%a%d]+$") then
		if ucl >= table_sets.ccstatsclass then
			donotifycmd (nick, data, 0, ucl)
			sendlivecity (nick, data:sub (# table_cmnds.citylive + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

	return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.cchist .. "$") then
if table_sets.savecchistory == 1 and ucl >= table_sets.ccstatsclass then
donotifycmd (nick, data, 0, ucl)
sendhistcc (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.showhubs .. "$") then
if ucl >= table_sets.minusrcommandclass then
donotifycmd (nick, data, 0, ucl)
hublistshow (nick)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.offmsg .. " %S+ .+$") then
if ucl >= table_sets.offmsgclass then
sendoffmsg (nick, data:sub (# table_cmnds.offmsg + 3), ucl)
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.hubnews .. " %d+$") or data:match ("^" .. table_othsets.ustrig .. table_cmnds.hubnews .. "$") then
		if ucl >= table_sets.newsclass then
			donotifycmd (nick, data, 0, ucl)
			sendnews (nick, data:sub (# table_cmnds.hubnews + 3), false)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.calculate .. " %S+ %S %S+$") then
if ucl >= table_sets.minusrcommandclass then
donotifycmd (nick, data, 0, ucl)
calculate (nick, data:sub (# table_cmnds.calculate + 3))
else
commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
end

return 0

----- ---- --- -- -

elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.mode .. " %S+$") then
	if ucl >= table_sets.chatmodeclass then
		donotifycmd (nick, data, 0, ucl)
		setmode (nick, reppatchars (tolow (nick)) .. " " .. data:sub (# table_cmnds.mode + 3))
	else
		commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
	end

	return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.rellist .. " %S+ %d+$") or data:match ("^" .. table_othsets.ustrig .. table_cmnds.rellist .. " %S+ %d+ .+$") then
		if ucl >= table_sets.reluseclass then
			donotifycmd (nick, data, 0, ucl)
			listrelease (nick, data:sub (# table_cmnds.rellist + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.relfind .. " .+$") then
		if ucl >= table_sets.reluseclass then
			donotifycmd (nick, data, 0, ucl)
			findrelease (nick, data:sub (# table_cmnds.relfind + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.reladd .. " \".+\" \".+\"$") or data:match ("^" .. table_othsets.ustrig .. table_cmnds.reladd .. " \".+\" \".+\" %S+$") then
		if ucl >= table_sets.relmodclass then
			donotifycmd (nick, data, 0, ucl)
			addrelease (nick, data:sub (# table_cmnds.reladd + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.reldel .. " %S+ .+$") then
		if ucl >= table_sets.relmodclass then
			donotifycmd (nick, data, 0, ucl)
			delrelease (nick, data:sub (# table_cmnds.reldel + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.history .. " %d+$") or data:match ("^" .. table_othsets.ustrig .. table_cmnds.history .. "$") then
		if ucl >= table_sets.mchistclass and table_sets.histlimit > 0 then
			donotifycmd (nick, data, 0, ucl)
			sendmchistory (nick, ucl, data:sub (# table_cmnds.history + 3), false)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.myhistory .. " %d+$") or data:match ("^" .. table_othsets.ustrig .. table_cmnds.myhistory .. "$") then
		if ucl >= table_sets.mchistclass and table_sets.histlimit > 0 then
			donotifycmd (nick, data, 0, ucl)
			sendownhistory (nick, ucl, data:sub (# table_cmnds.myhistory + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.nick .. "$") or data:match ("^" .. table_othsets.ustrig .. table_cmnds.nick .. " .+$") then
		if ucl >= table_sets.custnickclass then
			setcustnick (nick, data:sub (# table_cmnds.nick + 3), ucl)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.realnick .. " [^ ]+$") then
		if table_sets.custnickclass < 11 and ucl >= table_sets.custlistclass then
			donotifycmd (nick, data, 0, ucl)
			getrealnick (nick, data:sub (# table_cmnds.realnick + 3))
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.custlist .. "$") then
		if table_sets.custnickclass < 11 and ucl >= table_sets.custlistclass then
			donotifycmd (nick, data, 0, ucl)
			listcustnick (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

	----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.wmset .. " %S+ .+$") or data:match ("^" .. table_othsets.ustrig .. table_cmnds.wmset .. " %S+$") then
		if ucl >= table_sets.welcomeclass then
			if table_sets.classnotiwelcome == 11 then
				donotifycmd (nick, data, 0, ucl)
			end

			setwelcome (nick, data:sub (# table_cmnds.wmset + 3), ucl)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.ustrig .. table_cmnds.wmshow .. "$") then
		if ucl >= table_sets.welcomeclass then
			donotifycmd (nick, data, 0, ucl)
			showwelcome (nick)
		else
			commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
		end

		return 0

----- ---- --- -- -

	elseif data:match ("^" .. table_othsets.ustrig .. "regme$") or data:match ("^" .. table_othsets.ustrig .. "regme%s+.*$") then
		return checkregmecmd (nick, ucl, ip)

----- ---- --- -- -

	else -- unknown command
		donotifycmd (nick, data, 0, ucl)
	end

	return 1
end

----- ---- --- -- -

function VH_OnHubCommand (nick, data, op, pm)
	if table_othsets.locked then
		return 1
	end

	if checktrigger (nick, data, pm) then
		return 0
	end

	return 1
end

----- ---- --- -- -

function VH_OnParsedMsgBotINFO (nick, data)
	if table_othsets.locked then
		return 1
	end

	if (table_sets.avsearchint > 0 or table_sets.avdbloadint > 0) and table_sets.avdetaction == 0 then
		VH:SendToUser ("$NoReport|", nick) -- ask pinger to not send +report
	end

	return 1
end

----- ---- --- -- -

function VH_OnParsedMsgMyINFO (nick, data)
	if table_othsets.locked then
		return 1
	end

	local _, addr, cc, desc, tag, conn, mail, size, hasinfo, gotaddr, gotcc = 0, "", "", "", "", "", "", 0, false, false, false

	if table_sets.enableuserlog == 1 and table_sets.logallmyinfos == 1 then -- user logger
		--if not gotaddr then
			addr, gotaddr = getip (nick), true
		--end

		if table_refu.GetUserCC then -- and not gotcc
			cc, gotcc = getcc (nick), true
		end

		desc, tag, conn, _, mail, size = parsemyinfo (nil, data)
		hasinfo = true
		VH:SQLQuery ("insert into `" .. tbl_sql.ulog .. "` (`time`, `nick`, `ip`, `cc`, `desc`, `tag`, `conn`, `email`, `share`) values (" .. _tostring (os.time () + table_sets.srvtimediff) .. ", '" .. repsqlchars (nick) .. "', '" .. repsqlchars (addr) .. "', " .. sqlemptnull (cc, true) .. ", " .. sqlemptnull (desc) .. ", " .. sqlemptnull (tag) .. ", " .. sqlemptnull (conn) .. ", " .. sqlemptnull (mail) .. ", " .. repsqlchars (size) .. ")")
	end

	if table_sets.micheck == 0 or table_sets.micallall == 0 then
		return 1
	end

	local cls = getclass (nick)

	if cls == -1 or cls >= table_sets.scanbelowclass then -- dont check pingers but check unknown class -2
		return 1
	end

	if not gotaddr then
		addr, gotaddr = getip (nick), true
	end

	if isprotected (nick, addr) then -- skip all checks
		return 1
	end

	if not hasinfo then -- prepare
		desc, tag, conn, _, mail, size = parsemyinfo (nil, data)
	end

	if checkdesc (nick, desc, cls, addr) == 1 then
		return 0
	end

	if checktag (nick, tag, cls, addr) == 1 then
		return 0
	end

	if checkconn (nick, conn, cls, addr) == 1 then
		return 0
	end

	if checkemail (nick, mail, cls, addr) == 1 then
		return 0
	end

	if checkshare (nick, size, cls, addr) == 1 then
		return 0
	end

	if checkfake (nick, size, cls, addr) == 1 then
		return 0
	end

	if checkclone (nick, size, addr, cls) == 1 then
		return 0
	end

	return 1
end

----- ---- --- -- -

function VH_OnUserLogin (nick, uip)
	if table_othsets.locked then
		return 1
	end

	local mistr, ip, cc, desc, tag, conn, email, size, prot, hasip, hascc, hasinfo, hasprot, hasmistr, _ = "", "", "", "", "", "", "", 0, false, false, false, false, false, false, 0

	if table_sets.enableipwatch == 1 then -- ip watch
		mistr, hasmistr = getmyinfo (nick), true
		ip, hasip = (uip or getip (nick)), true
		checkipwat (nick, ip, mistr) -- dont return 0, its a login sequence
	end

	if table_sets.enableuserlog == 1 then -- user logger
		if not hasip then
			ip, hasip = (uip or getip (nick)), true
		end

		if table_refu.GetUserCC then -- and not hascc
			cc, hascc = getcc (nick), true
		end

		if not hasmistr then
			mistr, hasmistr = getmyinfo (nick), true
		end

		desc, tag, conn, _, email, size = parsemyinfo (nil, mistr)
		hasinfo = true
		VH:SQLQuery ("insert into `" .. tbl_sql.ulog .. "` (`time`, `nick`, `ip`, `cc`, `desc`, `tag`, `conn`, `email`, `share`) values (" .. _tostring (os.time () + table_sets.srvtimediff) .. ", '" .. repsqlchars (nick) .. "', '" .. repsqlchars (ip) .. "', " .. sqlemptnull (cc, true) .. ", " .. sqlemptnull (desc) .. ", " .. sqlemptnull (tag) .. ", " .. sqlemptnull (conn) .. ", " .. sqlemptnull (email) .. ", " .. repsqlchars (size) .. ")")
	end

	local cls = getclass (nick)

	if cls < 0 then -- dont check pingers
		return 1
	end

	if table_sets.ipconantiflint > 0 and cls < table_sets.scanbelowclass then -- ip connect antiflood
		if not hasip then
			ip, hasip = (uip or getip (nick)), true
		end

		prot, hasprot = isprotected (nick, ip), true

		if not prot then -- protection
			if table_rcnn [ip] then
				local dif = os.difftime (os.time (), table_rcnn [ip])

				if dif >= table_sets.ipconantiflint then
					table_rcnn [ip] = nil -- delete
				else
					maintouser (nick, gettext ("Connections from your IP aren't allowed for another %d seconds."):format (table_sets.ipconantiflint - dif))

					if cls >= table_sets.welcomeclass then -- dont send logout message
						table_faau [nick] = 1
					end

					VH:Disconnect (nick) -- drop user
					return 0
				end
			else -- add
				table_rcnn [ip] = os.time ()
			end
		end
	end

	if table_sets.avdbloadint > 0 and cls < table_sets.scanbelowclass then -- antivirus load
		if not hasprot then
			prot, hasprot = isprotected (nick, ip), true
		end

		if not prot then
			if not hasip then
				ip, hasip = (uip or getip (nick)), true
			end

			if not hasinfo then
				if not hasmistr then
					mistr, hasmistr = getmyinfo (nick), true
				end

				desc, tag, conn, _, email, size = parsemyinfo (nil, mistr)
				hasinfo = true
			end

			if size > 0 then
				for _, data in pairs (table_avlo) do
					if (nick == data ["nick"] and ip == data ["addr"]) or (nick == data ["nick"] and size == data ["size"]) or (ip == data ["addr"] and size == data ["size"]) then -- nick + ip, nick + share, ip + share
						opsnotify (table_sets.classnotiav, gettext ("Infected user logged in with IP %s and share %s: %s"):format (ip .. tryipcc (ip, nick), makesize (size), nick))
						avdbreport (nick, ip, size, true) -- antivirus database

						if table_sets.avdetaction == 0 then
							table_avbl [nick] = true
							opsnotify (table_sets.classnotiav, gettext ("Connection requests to following user will be blocked: %s"):format (nick))
						else
							if cls >= table_sets.welcomeclass then -- dont send logout message
								table_faau [nick] = 1
							end

							VH:KickUser (table_othsets.sendfrom, nick, table_sets.avkicktext)
							return 0
						end

						break
					end
				end
			end
		end
	end

	if table_sets.authrunning == 1 then -- ip authorization
		if not hasip then
			ip, hasip = (uip or getip (nick)), true
		end

		if authcheck (nick, cls, ip) then
			if cls >= table_sets.welcomeclass then -- dont send logout message
				table_faau [nick] = 1
			end

			return 0
		end
	end

	if table_sets.micheck == 1 and cls < table_sets.scanbelowclass then -- myinfo check
		if not hasip then
			ip, hasip = (uip or getip (nick)), true
		end

		if not hasprot then
			prot = isprotected (nick, ip)
		end

		if not prot then -- protection
			if not hasinfo then
				if not hasmistr then
					mistr, hasmistr = getmyinfo (nick), true
				end

				desc, tag, conn, _, email, size = parsemyinfo (nil, mistr)
				hasinfo = true
			end

			if checknick (nick, cls, ip) == 1 then
				return 0
			end

			if checkdesc (nick, desc, cls, ip) == 1 then
				return 0
			end

			if checktag (nick, tag, cls, ip) == 1 then
				return 0
			end

			if checkconn (nick, conn, cls, ip) == 1 then
				return 0
			end

			if checkemail (nick, email, cls, ip) == 1 then
				return 0
			end

			if checkshare (nick, size, cls, ip) == 1 then
				return 0
			end

			if checkip (nick, ip, cls) == 1 then
				return 0
			end

			if checkcc (nick, cls) then
				return 0
			end

			if checkdns (nick, cls, ip) then
				return 0
			end

			if checksup (nick, cls, ip) then
				return 0
			end

			if checkver (nick, cls, ip) then
				return 0
			end

			if checkfake (nick, size, cls, ip) == 1 then
				return 0
			end

			if checkclone (nick, size, ip, cls) == 1 then
				return 0
			end

			if checksameip (nick, ip, cls) == 1 then
				return 0
			end
		end
	end

	if table_sets.showuseruptime == 1 then -- user uptime
		table_usup [nick] = os.time ()
	end

	if table_refu.GetUserCC and table_sets.savecchistory == 1 and table_sets.ccstatsclass < 11 then -- cc statistics
		if not isbot (nick) then -- callback used for bots too
			if not hascc then
				cc, hascc = getcc (nick), true
			end

			if cc then
				local repcc = repsqlchars (cc)
				VH:SQLQuery ("insert into `" .. tbl_sql.ccstat .. "` (`nick`, `cc`) values ('" .. repsqlchars (nick) .. "', '" .. repcc .. "') on duplicate key update `cc` = '" .. repcc .. "'")
			end
		end
	end

	if not hasinfo then
		if not hasmistr then
			mistr, hasmistr = getmyinfo (nick), true
		end

		size = parsemyinfoshare (mistr)
	end

	sharerankaccept (nick, size, cls)
	resetrealnick (nick) -- reset custom nick when used by real user

	if cls >= table_sets.newsclass and table_sets.newsautolines > 0 then -- hub news
		sendnews (nick, table_sets.newsautolines, true)
	end

	if table_sets.histlimit > 0 then
		if cls >= table_sets.mchistclass and table_sets.histautolines > 0 then -- mc history
			sendmchistory (nick, cls, table_sets.histautolines, true)
		end

		if cls >= 3 and table_sets.ophistautolines > 0 then -- op history
			sendophistory (nick, cls, table_sets.ophistautolines, true, false)
		end
	end

	if not hasip then
		ip, hasip = (uip or getip (nick)), true
	end

	sendwelcomein (nick, cls)
	autosendoffmsg (nick, cls, ip)
	addccroommember (nick, cls)
	addccroomacre (nick, cls)

	if cls < 3 then -- operator keys
		if cls >= table_sets.opkeyclass then
			table_opks [nick] = 1 -- class
		elseif table_sets.opkeyshare > 0 and size >= (table_sets.opkeyshare * 1073741824) then
			table_opks [nick] = 2 -- share
		elseif cls >= table_sets.opkeyself then -- self
			VH:SendToUser ("$OpList " .. nick .. "$$|", nick)
		end
	end

	if table_sets.opkeyclass < 11 or table_sets.opkeyshare > 0 then
		local list = ""

		for k, _ in pairs (table_opks) do
			list = list .. k .. "$$"
		end

		if list ~= "" then
			VH:SendToClass ("$OpList " .. list .. "|", 0, 10)
		end
	end

	installusermenu (nick)
	sendrcmenu (nick, cls)
	return 1
end

----- ---- --- -- -

function VH_OnUserLogout (nick, uip)
	if table_othsets.locked or table_othsets.restart then
		return 1
	end

	local cls = getclass (nick)

	if (table_sets.avdbloadint > 0 or table_sets.avsearchint > 0) and table_sets.avdetaction == 0 then
		table_avbl [nick] = nil
	end

	if table_sets.showuseruptime == 1 then -- user uptime
		table_usup [nick] = nil
	end

	if table_sets.regmechatcnt > 0 then -- regme limit
		table_regm [nick] = nil
	end

	if table_faau [nick] then -- dont send logout message
		table_faau [nick] = nil
	else
		sendwelcomeout (nick, cls)
	end

	if table_sets.chatcodeon > 0 then -- chatcode
		table_code [nick] = nil
	end

	if table_sets.savecustnicks == 0 then -- only if not saving
		delcustnick (nick, cls, true)
	end

	if table_sets.ipconantiflint > 0 and cls < table_sets.scanbelowclass then -- ip connect antiflood
		local ip = getip (nick)

		if not isprotected (nick, ip) and (not table_rcnn [ip] or os.difftime (os.time (), table_rcnn [ip]) >= table_sets.ipconantiflint) then
			table_rcnn [ip] = os.time () -- set delay
		end
	end

	delccroommember (nick)

	if table_sets.protofloodctmcnt > 0 then -- ctm flood
		table_prfl.ctm [nick] = nil
	end

	if table_sets.ctmminclass > cls then -- ctm block
		table_ctmb [nick] = nil
	end

	if cls >= table_sets.opkeyclass or table_sets.opkeyshare > 0 then -- operator keys
		table_opks [nick] = nil
	end

	if table_sets.votekickclass < 11 then -- vote kicks
		table_voki [nick] = nil
	end

	if table_sets.enablesearfilt == 1 and table_sets.sefiblockdel == 1 then -- search filter
		table_sefi [nick] = nil
	end

	return 1
end

----- ---- --- -- -

function VH_OnParsedMsgSearch (nick, data)
	if table_othsets.locked then
		return 1
	end

	local cls, ip, prot, gotcls, gotip, gotprot = 0, "", false, false, false, false

	if table_sets.enableipwatch == 1 then -- ip watch
		ip, gotip = getip (nick), true

		if checkipwat (nick, ip, data) then
			return 0
		end
	end

	if table_sets.searchuptime > 0 and table_sets.showuseruptime == 1 then -- search uptime
		cls, gotcls = getclass (nick), true

		if cls < table_sets.scanbelowclass then
			if not gotip then
				ip, gotip = getip (nick), true
			end

			prot, gotprot = isprotected (nick, ip), true

			if table_usup [nick] then
				local dif = os.time () - table_usup [nick]

				if dif < table_sets.searchuptime then
					if table_sets.classnotilowupsear < 11 then
						local sype, sear = data:match ("^%$Search .* .*%?.*%?.*%?(.*)%?(.*)$")

						if sype and sear then
							sype = tonumber (sype or 1) or 1

							if sype < 1 or sype > 9 then
								sype = 1
							end

							if sype == 9 and sear:sub (1, 4):lower () == "tth:" then -- remove "TTH:"
								sear = sear:sub (5)
							end
						else
							sype = 1
							sear = ""
						end

						local note = "Low search uptime of %d seconds from %s with IP %s and class %d as any file: %s"

						if sype == 2 then
							note = "Low search uptime of %d seconds from %s with IP %s and class %d as audio file: %s"
						elseif sype == 3 then
							note = "Low search uptime of %d seconds from %s with IP %s and class %d as compressed file: %s"
						elseif sype == 4 then
							note = "Low search uptime of %d seconds from %s with IP %s and class %d as document: %s"
						elseif sype == 5 then
							note = "Low search uptime of %d seconds from %s with IP %s and class %d as executable: %s"
						elseif sype == 6 then
							note = "Low search uptime of %d seconds from %s with IP %s and class %d as picture: %s"
						elseif sype == 7 then
							note = "Low search uptime of %d seconds from %s with IP %s and class %d as video: %s"
						elseif sype == 8 then
							note = "Low search uptime of %d seconds from %s with IP %s and class %d as folder: %s"
						elseif sype == 9 then
							note = "Low search uptime of %d seconds from %s with IP %s and class %d as TTH: %s"
						end

						opsnotify (table_sets.classnotilowupsear, gettext (note):format (dif, nick, ip .. tryipcc (ip, nick), cls, repsrchchars (sear)))
					end

					if table_sets.searuptimeact == 0 then -- message
						maintouser (nick, gettext ("Please wait another %d seconds before using hub search engine."):format (table_sets.searchuptime - dif))
					elseif table_sets.searuptimeact == 1 then -- drop
						opsnotify (table_sets.classnotilowupsear, gettext ("User dropped: %s"):format (nick))
						VH:Disconnect (nick)
					end

					return 0
				end
			end
		end
	end

	if table_sets.enablesearfilt == 1 then -- search filter
		if not gotcls then
			cls, gotcls = getclass (nick), true
		end

		if cls < table_sets.scanbelowclass then
			if not gotip then
				ip = getip (nick)
			end

			if not gotprot then
				prot = isprotected (nick, ip)
			end

			if not prot then
				local sefi = table_sefi [nick]

				if sefi then
					if not sefi.sil then
						maintouser (nick, gettext ("Your search request is discarded due to previous forbidden search request: %s"):format (sefi.req))
					end

					table_sefi [nick].num = sefi.num + 1
					return 0
				elseif sefiscan (nick, data, cls, ip) then
					return 0
				end
			end
		end
	end

	if not gotcls then
		cls = getclass (nick)
	end

	searrankaccept (nick, cls, data)
	return 1
end

----- ---- --- -- -

function VH_OnParsedMsgSR (nick, data)
	if table_othsets.locked then
		return 1
	end

	if avparsesr (data, nick) == 0 then
		return 0
	end

	-- todo: add search results filter
	return 1
end

----- ---- --- -- -

function VH_OnParsedMsgValidateNick (ip, data)
	if table_othsets.locked then
		return 1
	end

	if table_sets.enableipwatch == 1 then -- ip watch
		checkipwat (nil, ip, data) -- do not return 0, is a login sequence
	end

	-- move ip autorization here when callback is fixed
	-- move ip connect antiflood
	-- move nick and ip myinfo checks
	return 1
end

----- ---- --- -- -

function VH_OnParsedMsgSupports (addr, data, back)
	if table_othsets.locked then
		return 1
	end

	if table_sets.enableipwatch == 1 then -- ip watch
		checkipwat (nil, addr, data) -- do not return 0 here, we are adding own support flags
	end

	if (table_sets.instrcmenu == 1 or table_sets.instusermenu == 1) and data:find ("UserCommand", 1, true) and not back:find ("UserCommand", 1, true) then
		return {"$Supports " .. back .. "UserCommand |", 0, 1}
	end

	return 1
end

----- ---- --- -- -

function VH_OnNewReg (nick, class, op)
	if table_othsets.locked then
		return 1
	end

	if table_sets.regnewpubenable == 1 then -- public registration notification
		local noti = ""

		if tonumber (class) == 1 and table_sets.regnewpubmsgreg ~= "" then
			noti = table_sets.regnewpubmsgreg:gsub ("<nick>", reprexpchars (nick))
		elseif tonumber (class) == 2 and table_sets.regnewpubmsgvip ~= "" then
			noti = table_sets.regnewpubmsgvip:gsub ("<nick>", reprexpchars (nick))
		elseif tonumber (class) == 3 and table_sets.regnewpubmsgop ~= "" then
			noti = table_sets.regnewpubmsgop:gsub ("<nick>", reprexpchars (nick))
		elseif tonumber (class) == 4 and table_sets.regnewpubmsgcheef ~= "" then
			noti = table_sets.regnewpubmsgcheef:gsub ("<nick>", reprexpchars (nick))
		elseif tonumber (class) == 5 and table_sets.regnewpubmsgadmin ~= "" then
			noti = table_sets.regnewpubmsgadmin:gsub ("<nick>", reprexpchars (nick))
		elseif tonumber (class) == 10 and table_sets.regnewpubmsgmaster ~= "" then
			noti = table_sets.regnewpubmsgmaster:gsub ("<nick>", reprexpchars (nick))
		end

		if noti ~= "" then
			maintoall (noti, 0, 10)
		end
	end

	if nick ~= op then -- registration notification, dont notify self registration, hub does that
		local opclass = getclass (op)
		opsnotify (table_sets.classnotireg, gettext ("%s with class %d registered new user with class %d: %s"):format (op, opclass, class, nick))
		oprankaccept (op, opclass)
	end

	return 1
end

----- ---- --- -- -

function VH_OnDelReg (nick, class, op)
	if table_othsets.locked then
		return 1
	end

	local opclass = getclass (op) -- registration notification
	opsnotify (table_sets.classnotireg, gettext ("%s with class %d deleted registered user with class %d: %s"):format (op, opclass, class, nick))

	if nick ~= op then
		oprankaccept (op, opclass)
	end

	delledouser (nick) -- remove user from ledokol tables

	return 1
end

----- ---- --- -- -

function VH_OnUpdateClass (nick, oldclass, newclass, op)
	if table_othsets.locked then
		return 1
	end

	if table_sets.regnewpubenable == 1 and tonumber (newclass) > tonumber (oldclass) then -- public registration notification
		local noti = ""

		if tonumber (newclass) == 1 and table_sets.regnewpubmsgreg ~= "" then
			noti = table_sets.regnewpubmsgreg:gsub ("<nick>", reprexpchars (nick))
		elseif tonumber (newclass) == 2 and table_sets.regnewpubmsgvip ~= "" then
			noti = table_sets.regnewpubmsgvip:gsub ("<nick>", reprexpchars (nick))
		elseif tonumber (newclass) == 3 and table_sets.regnewpubmsgop ~= "" then
			noti = table_sets.regnewpubmsgop:gsub ("<nick>", reprexpchars (nick))
		elseif tonumber (newclass) == 4 and table_sets.regnewpubmsgcheef ~= "" then
			noti = table_sets.regnewpubmsgcheef:gsub ("<nick>", reprexpchars (nick))
		elseif tonumber (newclass) == 5 and table_sets.regnewpubmsgadmin ~= "" then
			noti = table_sets.regnewpubmsgadmin:gsub ("<nick>", reprexpchars (nick))
		elseif tonumber (newclass) == 10 and table_sets.regnewpubmsgmaster ~= "" then
			noti = table_sets.regnewpubmsgmaster:gsub ("<nick>", reprexpchars (nick))
		end

		if noti ~= "" then
			maintoall (noti, 0, 10)
		end
	end

	local opclass = getclass (op) -- registration notification
	opsnotify (table_sets.classnotireg, gettext ("%s with class %d changed user class from %d to %d: %s"):format (op, opclass, oldclass, newclass, nick))

	if table_sets.oprankclass ~= 11 and tonumber (oldclass) >= table_sets.oprankclass and tonumber (newclass) < table_sets.oprankclass then
		if nick ~= op then
			oprankaccept (op, opclass)
		end

		VH:SQLQuery ("delete from `" .. tbl_sql.opran .. "` where `nick` = '" .. repsqlchars (nick) .. "'") -- remove user from op ranks list
	end

	return 1
end

----- ---- --- -- -

function VH_OnHubName (nick, name)
	--if table_othsets.locked then
		--return 1
	--end

	-- todo: use this for rolling topic in future
	return 1
end

----- ---- --- -- -

function VH_OnTimer (msec)
	if table_othsets.locked then
		return 1
	end

	local st = os.time () -- current time

	if table_sets.avsearchint > 0 and table_sets.avsearservaddr ~= "" then -- antivirus search server
		avsearservread () -- todo: read every second?
	end

	if table_sets.avsearchint > 0 and os.difftime (st, table_othsets.avlastseartick) >= table_sets.avsearchint then -- antivirus search
		for nick, data in pairs (table_avus) do
			if os.difftime (st, data [""]) >= table_sets.avuserfree * 60 then
				table_avus [nick] = nil
			end
		end

		if table_sets.avsearservaddr ~= "" and table_othsets.serv_udp then -- we have search server, todo: dont send to no share, self and similar users
			if table_refu.SendToActiveClass and table_refu.SendToPassiveClass then -- active request to passive users and passive request to active users
				VH:SendToPassiveClass ("$Search " .. table_sets.avsearservaddr .. ":" .. _tostring (table_sets.avsearservport) .. " F?F?0?1?" .. table_avse [table_othsets.avnextitem] .. "|", 0, table_sets.scanbelowclass - 1)
				VH:SendToActiveClass ("$Search Hub:" .. table_othsets.sendfrom .. " F?F?0?1?" .. table_avse [table_othsets.avnextitem] .. "|", 0, table_sets.scanbelowclass - 1)
			else -- active request to all users
				VH:SendToClass ("$Search " .. table_sets.avsearservaddr .. ":" .. _tostring (table_sets.avsearservport) .. " F?F?0?1?" .. table_avse [table_othsets.avnextitem] .. "|", 0, table_sets.scanbelowclass - 1)
			end
		elseif table_refu.SendToActiveClass then -- we dont have server
			VH:SendToActiveClass ("$Search Hub:" .. table_othsets.sendfrom .. " F?F?0?1?" .. table_avse [table_othsets.avnextitem] .. "|", 0, table_sets.scanbelowclass - 1)
		else -- we have nothing
			VH:SendToClass ("$Search Hub:" .. table_othsets.sendfrom .. " F?F?0?1?" .. table_avse [table_othsets.avnextitem] .. "|", 0, table_sets.scanbelowclass - 1)
		end

		if table_othsets.avnextitem >= # table_avse then
			if table_sets.avrandrequest == 1 then -- generate and send special random request
				table_othsets.avrandstr = genrandstr (30)

				if table_sets.avsearservaddr ~= "" and table_othsets.serv_udp then -- we have search server
					if table_refu.SendToActiveClass and table_refu.SendToPassiveClass then -- active request to passive users and passive request to active users
						VH:SendToPassiveClass ("$Search " .. table_sets.avsearservaddr .. ":" .. _tostring (table_sets.avsearservport) .. " F?F?0?1?" .. table_othsets.avrandstr .. "|", 0, table_sets.scanbelowclass - 1)
						VH:SendToActiveClass ("$Search Hub:" .. table_othsets.sendfrom .. " F?F?0?1?" .. table_othsets.avrandstr .. "|", 0, table_sets.scanbelowclass - 1)
					else -- active request to all users
						VH:SendToClass ("$Search " .. table_sets.avsearservaddr .. ":" .. _tostring (table_sets.avsearservport) .. " F?F?0?1?" .. table_othsets.avrandstr .. "|", 0, table_sets.scanbelowclass - 1)
					end
				elseif table_refu.SendToActiveClass then -- we dont have server
					VH:SendToActiveClass ("$Search Hub:" .. table_othsets.sendfrom .. " F?F?0?1?" .. table_othsets.avrandstr .. "|", 0, table_sets.scanbelowclass - 1)
				else -- we have nothing
					VH:SendToClass ("$Search Hub:" .. table_othsets.sendfrom .. " F?F?0?1?" .. table_othsets.avrandstr .. "|", 0, table_sets.scanbelowclass - 1)
				end
			end

			table_othsets.avnextitem = 1
		else
			if table_sets.avrandrequest == 1 and table_othsets.avrandstr ~= "" then -- clear special random request
				table_othsets.avrandstr = ""
			end

			table_othsets.avnextitem = table_othsets.avnextitem + 1
		end

		table_othsets.avlastseartick = st
	end

	if table_sets.avdbloadint > 0 and table_othsets.ver_curl and os.difftime (st, table_othsets.avlastloadtick) >= (table_sets.avdbloadint * 60) then -- antivirus load
		loadavdb (st)
		table_othsets.avlastloadtick = st
	end

	if table_sets.remrunning == 1 then -- reminder
		if os.difftime (st, table_othsets.remseconds) >= 60 then
			table_othsets.remseconds = st
			sendreminder ()
		end
	end

	if table_sets.timebotint > 0 then -- time bot
		if os.difftime (st, table_othsets.timebotseconds) >= table_sets.timebotint then
			installtimebot ()
		end
	end

	if table_sets.rolltopicint > 0 then -- rolling topic
		if not table_othsets.topicvalue and table_refu.GetTopic then
			table_othsets.topicvalue = VH:GetTopic ()
		end

		if table_othsets.topicvalue and (table_othsets.topicvalue ~= "") and (os.difftime (st, table_othsets.rolltopicsecs) >= table_sets.rolltopicint) then
			rolltopic ()
		end
	end

	if table_sets.resprunning == 1 then -- chat responder
		for k, v in pairs (table_resp) do
			for t, s in pairs (v) do
				if os.difftime (st, t) >= table_sets.respdelay then
					maintoall (s, 0, 10) -- finally send the message
					table_resp [k] = nil -- free up queue
					break
				end
			end
		end
	end

	--if table_othsets.mod_sock and (table_sets.hublistpingint > 0) then -- hublist pinger
		--if os.difftime (st, table_othsets.hubpingmins) >= (table_sets.hublistpingint * 60) then
			--hublistping ()
			--table_othsets.hubpingmins = st -- reset
		--end
	--end

	if table_sets.statscollint > 0 then -- statistics
		if os.difftime (st, table_othsets.statscollmins) >= (table_sets.statscollint * 60) then
			collectstats ()
			table_othsets.statscollmins = st -- reset
		end
	end

	if table_sets.enableuserlog == 1 and table_sets.ulogautoclean > 0 then -- clean up user logger
		if os.difftime (st, table_othsets.ulogcleanmins) >= 86400 then -- every 24 hours
			local secs = os.difftime (st, (table_sets.ulogautoclean * 24 * 60 * 60))
			local _, rows = VH:SQLQuery ("select `id` from `" .. tbl_sql.ulog .. "` where `time` < " .. _tostring (secs))

			if rows > 0 then
				VH:SQLQuery ("delete from `" .. tbl_sql.ulog .. "` where `time` < " .. _tostring (secs))
				opsnotify (table_sets.classnotiledoact, gettext ("Automatically deleted %d user log entries older than %d days."):format (rows, table_sets.ulogautoclean))
				local tdiff = st + table_sets.srvtimediff
				VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('lastcleanulog', " .. _tostring (tdiff) .. ") on duplicate key update `value` = " .. _tostring (tdiff))
				VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('limcleanulog', " .. _tostring (table_sets.ulogautoclean) .. ") on duplicate key update `value` = " .. _tostring (table_sets.ulogautoclean))
			end

			table_othsets.ulogcleanmins = st
		end
	end

	if table_sets.autoupdcheck > 0 and table_othsets.ver_curl and table_sets.classnotiledoact ~= 11 and os.difftime (st, table_othsets.lastupdcheck) >= (table_sets.autoupdcheck * 3600) then -- automatic update check
		autoupdatecheck ()
		table_othsets.lastupdcheck = st -- reset
	end

	if os.difftime (st, table_othsets.collgarb) >= 900 then -- collect garbage every 15 minutes
		if table_othsets.ver_lua:sub (1, 3) == "5.0" then collectgarbage () else collectgarbage ("collect") end
		table_othsets.collgarb = st -- reset
	end

	return 1
end

----- ---- --- -- -

function VH_OnUnknownMsg (nick, data, isnick, ipaddr)
	if table_othsets.locked then
		return 1
	end

	if # data == 0 then -- skip pings
		return 1
	elseif data:sub (1, 7) == "$UserIP" then -- userip support
		if table_sets.useripsupport == 1 and getclass (nick) >= 3 then
			local nl, il = data:sub (9), ""
			local len = # nl

			if len > 0 then
				if nl:sub (len - 1) ~= "$$" then -- modify
					nl = nl .. "$$"
				end

				for user in nl:gmatch ("([^$]+)%$%$") do
					if getstatus (user) == 1 and not isbot (user) then
						local ip = getip (user)

						if ip ~= "0.0.0.0" then
							il = il .. user .. " " .. ip .. "$$"
						end
					end
				end

				if # il > 0 then
					VH:SendToUser ("$UserIP " .. il .. "|", nick)
				end
			end
		end

		return 1
	end

	-- unknown command

	if not isnick or tonumber (isnick) == 1 then -- old version or new version with nick
		local ip = ""

		if ipaddr and ipaddr ~= "" then
			ip = ipaddr
		else
			ip = getip (nick)
		end

		local class = getclass (nick)
		opsnotify (table_sets.classnotiunk, gettext ("Unknown protocol command from %s with IP %s and class %d: %s"):format (nick, ip .. tryipcc (ip, nick), class, repnmdcoutchars (data)))

		if table_sets.kickunkusers == 1 and class < table_sets.scanbelowclass and not isprotected (nick, ip) then -- kick
			local rsn = table_sets.unkkickreason:gsub ("%*", reprexpchars (repnmdcoutchars (data)))
			VH:KickUser (table_othsets.sendfrom, nick, rsn .. "     #_ban_" .. table_sets.unktbantime)
			return 0
		end
	elseif table_sets.unkbeforelogin == 1 then -- new version with ip
		opsnotify (table_sets.classnotiunk, gettext ("Unknown protocol command from IP %s before login: %s"):format (nick .. tryipcc (nick), repnmdcoutchars (data)))

		if table_sets.kickunkusers == 1 and not isprotected (nil, nick) then -- drop
			local rsn = table_sets.unkkickreason:gsub ("%*", reprexpchars (repnmdcoutchars (data)))
			return {"<" .. table_othsets.sendfrom .. "> " .. rsn .. "|", 0, 0}
		end
	end

	return 1
end

----- ---- --- -- -

function VH_OnParsedMsgAnyEx (ip, data)
	--if table_othsets.locked then
		--return 1
	--end

	-- patch
	return 1
end

----- ---- --- -- -

function VH_OnParsedMsgAny (nick, data)
	if table_othsets.locked then
		return 1
	end

	if data:find ("^<") then -- main chat
		local _, _, cmd = data:find ("^<" .. reppatchars (nick) .. "> (" .. table_othsets.optrig .. ".+)$")

		if cmd then
			local cls = getclass (nick)

			if cls >= 3 then
				if cmd:find ("^" .. table_othsets.optrig .. "luaload .*$") or cmd:find ("^" .. table_othsets.optrig .. "luaunload .*$") or cmd:find ("^" .. table_othsets.optrig .. "luareload .*$") then
					if cls >= getconfig ("plugin_mod_class") then -- use plugin permission for lua scripts too
						donotifycmd (nick, cmd, 0, cls)
						savecmdlog (nick, cls, cmd, true)
					else
						commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
						return 0
					end

				elseif cmd:find ("^" .. table_othsets.optrig .. "lualist.*$") or cmd:find ("^" .. table_othsets.optrig .. "luainfo.*$") or cmd:find ("^" .. table_othsets.optrig .. "luaversion.*$") then
					donotifycmd (nick, cmd, 0, cls)
					savecmdlog (nick, cls, cmd, true)

				elseif cmd:find ("^" .. table_othsets.optrig .. "offplug .*$") or cmd:find ("^" .. table_othsets.optrig .. "onplug .*$") or cmd:find ("^" .. table_othsets.optrig .. "replug .*$") or cmd:find ("^" .. table_othsets.optrig .. "modplug .*$") or cmd:find ("^" .. table_othsets.optrig .. "addplug .*$") or cmd:find ("^" .. table_othsets.optrig .. "delplug .*$") then
					if cls >= getconfig ("plugin_mod_class") then -- check the permissions
						donotifycmd (nick, cmd, 0, cls)
						savecmdlog (nick, cls, cmd, true)
					end

				elseif cmd:find ("^" .. table_othsets.optrig .. "lstplug.*$") then
					donotifycmd (nick, cmd, 0, cls)
					savecmdlog (nick, cls, cmd, true)
				end
			end
		end

	elseif data:find ("^%$OpForceMove ") then -- opforcemove
		local cls = getclass (nick)
		if cls < getconfig ("min_class_redir") then return 0 end
		local _, _, who, where, msg = data:find ("%$Who:(.+)%$Where:(.+)%$Msg:(.+)$")
		if not who or not where or not msg then return 0 end
		if getstatus (who) == 0 then return 0 end
		local ip = getip (who)

		if isprotected (who, ip) then
			commandanswer (nick, gettext ("User you're trying to kick or redirect is protected: %s"):format (who))
			return 0
		else
			opsnotify (table_sets.classnotiredir, gettext ("Redirected %s with IP %s and class %d to %s: <%s> %s"):format (who, ip .. tryipcc (ip, who), getclass (who), where, nick, msg))
			oprankaccept (nick, cls)
		end

	elseif data:find ("^%$ConnectToMe ") then -- connecttome
		local cls = getclass (nick)
		local rip = getip (nick)

		if table_sets.classnotibadctm < 11 then -- bad ctm notification
			local othernick, ctm = data:match ("^%$ConnectToMe ([^ ]+) (.+)$")

			if othernick and ctm and rip ~= "0.0.0.0" then
				local ip, port = ctm:match ("^(.-):(.*)$")

				if ip and port then
					if ip ~= rip then -- either ctm exploit or incorrect ip in client settings
						opsnotify (table_sets.classnotibadctm, gettext ("%s with IP %s and class %d stated incorrect IP in connect request to %s: %s"):format (nick, rip .. tryipcc (rip, nick), cls, othernick, repnmdcoutchars (ip .. ":" .. port)))
					end
				elseif ctm ~= rip then
					opsnotify (table_sets.classnotibadctm, gettext ("%s with IP %s and class %d stated incorrect IP in connect request to %s: %s"):format (nick, rip .. tryipcc (rip, nick), cls, othernick, repnmdcoutchars (ctm)))
				end
			end
		end

		if detprotoflood ("ctm", true, nick, rip, cls) then -- protocol flood
			return 0
		end
	end

	return 1
end

----- ---- --- -- -

function VH_OnParsedMsgConnectToMe (nick, othernick, ip, port)
	if table_othsets.locked then
		return 1
	end

	local class, haveclass = 0, false

	if table_sets.enableipwatch == 1 and checkipwat (nick, getip (nick), "$ConnectToMe " .. othernick .. " " .. ip .. ":" .. port) then -- ip watch
		return 0
	end

	if (table_sets.avdbloadint > 0 or table_sets.avsearchint > 0) and table_sets.avdetaction == 0 and table_avbl [othernick] then
		if not haveclass then
			class = getclass (nick)
			haveclass = true
		end

		if class < 3 then
			maintouser (nick, gettext ("Your connection request is blocked because user that you're trying connect to was detected as virus spreader: %s"): format (othernick))
			return 0
		end
	end

	--if table_sets.addledobot == 1 and othernick == table_sets.ledobotnick then -- hub doesnt allow this request
		--maintouser (nick, gettext ("You can download me from: %s"):format ("http://ledo.feardc.net/"))
		--return 0
	--end

	if not haveclass then
		class = getclass (nick)
		haveclass = true
	end

	if table_sets.ctmminclass > class then
		if table_ctmb [nick] then
			if os.difftime (os.time (), table_ctmb [nick]) >= table_sets.ctmmsginterval then
				table_ctmb [nick] = os.time () -- reset
				maintouser (nick, table_sets.ctmblockmsg)
			end
		else
			table_ctmb [nick] = os.time () -- add
			maintouser (nick, table_sets.ctmblockmsg)
		end

		return 0
	end

	return 1
end

----- ---- --- -- -

function VH_OnParsedMsgRevConnectToMe (nick, othernick)
	if table_othsets.locked then
		return 1
	end

	local class, haveclass = 0, false

	if table_sets.enableipwatch == 1 and checkipwat (nick, getip (nick), "$RevConnectToMe " .. othernick .. " " .. nick) then -- ip watch
		return 0
	end

	if (table_sets.avdbloadint > 0 or table_sets.avsearchint > 0) and table_sets.avdetaction == 0 and table_avbl [othernick] then
		if not haveclass then
			class = getclass (nick)
			haveclass = true
		end

		if class < 3 then
			maintouser (nick, gettext ("Your connection request is blocked because user that you're trying connect to was detected as virus spreader: %s"): format (othernick))
			return 0
		end
	end

	--if table_sets.addledobot == 1 and othernick == table_sets.ledobotnick then -- hub doesnt allow this request
		--maintouser (nick, gettext ("You can download me from: %s"):format ("http://ledo.feardc.net/"))
		--return 0
	--end

	if not haveclass then
		class = getclass (nick)
		haveclass = true
	end

	if table_sets.ctmminclass > class then
		if table_ctmb [nick] then
			if os.difftime (os.time (), table_ctmb [nick]) >= table_sets.ctmmsginterval then
				table_ctmb [nick] = os.time () -- reset
				maintouser (nick, table_sets.ctmblockmsg)
			end
		else
			table_ctmb [nick] = os.time () -- add
			maintouser (nick, table_sets.ctmblockmsg)
		end

		return 0
	end

	return 1
end

----- ---- --- -- -

function VH_OnNewBan (ip, nick, host, share, ran_min, ran_max, bype, bate, why, op)
	if table_othsets.locked or table_sets.classnotiban == 11 or not op then -- skip old verlihub
		return 1
	end

	local banshare = tonumber (share or 0) or 0
	local bantype = tonumber (bype or 0) or 0 -- we dont use ban type here because miltiple parts might be banned
	local bandate = tonumber (bate or 0) or 0
	local banwhy = why

	if not banwhy or # banwhy == 0 then
		banwhy = gettext ("No reason specified")
	end

	if bandate == 0 then
		if bantype ~= 3 and bantype ~= 4 and bantype ~= 5 and bantype ~= 6 and bantype ~= 9 and ip and # ip > 0 then
			opsnotify (table_sets.classnotiban, gettext ("IP %s permanently banned: <%s> %s"):format (ip, op, banwhy))
		end

		if nick and # nick > 0 then
			if bantype == 8 then
				opsnotify (table_sets.classnotiban, gettext ("Prefix %s permanently banned: <%s> %s"):format (nick, op, banwhy))
			else
				opsnotify (table_sets.classnotiban, gettext ("Nick %s permanently banned: <%s> %s"):format (nick, op, banwhy))
			end
		end

		if host and # host > 0 then
			opsnotify (table_sets.classnotiban, gettext ("Host %s permanently banned: <%s> %s"):format (host, op, banwhy))
		end

		if banshare > 0 then
			opsnotify (table_sets.classnotiban, gettext ("Share %s permanently banned: <%s> %s"):format (_tostring (banshare), op, banwhy))
		end

		if ran_min and ran_max and # ran_min > 0 and # ran_max > 0 then
			opsnotify (table_sets.classnotiban, gettext ("Range %s permanently banned: <%s> %s"):format (ran_min .. " - " .. ran_max, op, banwhy))
		end
	else
		if bantype ~= 3 and ip and # ip > 0 then
			opsnotify (table_sets.classnotiban, gettext ("IP %s temporarily banned until %s: <%s> %s"):format (ip, os.date (table_sets.dateformat .. " " .. table_sets.timeformat, bandate), op, banwhy))
		end

		if nick and # nick > 0 then
			if bantype == 8 then
				opsnotify (table_sets.classnotiban, gettext ("Prefix %s temporarily banned until %s: <%s> %s"):format (nick, os.date (table_sets.dateformat .. " " .. table_sets.timeformat, bandate), op, banwhy))
			else
				opsnotify (table_sets.classnotiban, gettext ("Nick %s temporarily banned until %s: <%s> %s"):format (nick, os.date (table_sets.dateformat .. " " .. table_sets.timeformat, bandate), op, banwhy))
			end
		end

		if host and # host > 0 then
			opsnotify (table_sets.classnotiban, gettext ("Host %s temporarily banned until %s: <%s> %s"):format (host, os.date (table_sets.dateformat .. " " .. table_sets.timeformat, bandate), op, banwhy))
		end

		if banshare > 0 then
			opsnotify (table_sets.classnotiban, gettext ("Share %s temporarily banned until %s: <%s> %s"):format (_tostring (banshare), os.date (table_sets.dateformat .. " " .. table_sets.timeformat, bandate), op, banwhy))
		end

		if ran_min and ran_max and # ran_min > 0 and # ran_max > 0 then
			opsnotify (table_sets.classnotiban, gettext ("Range %s temporarily banned until %s: <%s> %s"):format (ran_min .. " - " .. ran_max, os.date (table_sets.dateformat .. " " .. table_sets.timeformat, bandate), op, banwhy))
		end
	end

	oprankaccept (op, getclass (op))
	return 1
end

----- ---- --- -- -

function VH_OnUnBan (what, op, why)
	if table_othsets.locked or table_sets.classnotiban == 11 then
		return 1
	end

	local repwhat = repsqlchars (what)
	local _, rows = VH:SQLQuery ("select `ban_type` from `banlist` where `ip` = '" .. repwhat .. "' or `nick` = '" .. repwhat .. "' or `host` = '" .. repwhat .. "' or `share_size` = '" .. repwhat .. "' limit 1")

	if rows > 0 then
		local _, bantype = VH:SQLFetch (0)
		bantype = tonumber (bantype) or -1
		local banwhy = why

		if not banwhy or # banwhy == 0 then
			banwhy = gettext ("No reason specified")
		end

		if bantype == 0 then -- nick + ip
			opsnotify (table_sets.classnotiban, gettext ("Nick and IP %s unbanned: <%s> %s"):format (what, op, banwhy))
		elseif bantype == 1 then -- ip
			opsnotify (table_sets.classnotiban, gettext ("IP %s unbanned: <%s> %s"):format (what, op, banwhy))
		elseif bantype == 2 then -- nick
			opsnotify (table_sets.classnotiban, gettext ("Nick %s unbanned: <%s> %s"):format (what, op, banwhy))
		elseif bantype == 3 then -- range
			opsnotify (table_sets.classnotiban, gettext ("Range %s unbanned: <%s> %s"):format (what, op, banwhy))
		elseif bantype == 4 or bantype == 5 or bantype == 6 or bantype == 9 then -- host
			opsnotify (table_sets.classnotiban, gettext ("Host %s unbanned: <%s> %s"):format (what, op, banwhy))
		elseif bantype == 7 then -- share
			opsnotify (table_sets.classnotiban, gettext ("Share %s unbanned: <%s> %s"):format (what, op, banwhy))
		elseif bantype == 8 then -- prefix
			opsnotify (table_sets.classnotiban, gettext ("Prefix %s unbanned: <%s> %s"):format (what, op, banwhy))
		else -- other
			opsnotify (table_sets.classnotiban, gettext ("Other %s unbanned: <%s> %s"):format (what, op, banwhy))
		end

		oprankaccept (op, getclass (op))
	end

	return 1
end

----- ---- --- -- -

function VH_OnOperatorKicks (op, nick, data)
	if table_othsets.locked then
		return 1
	end

	local ip = getip (nick)

	if isprotected (nick, ip) then -- protected
		commandanswer (op, gettext ("User you're trying to kick or redirect is protected: %s"):format (nick))
		return 0
	end

	local ucl = getclass (nick)
	opsnotify (table_sets.classnotikick, gettext ("%s with IP %s and class %d kicked: <%s> %s"):format (nick, ip .. tryipcc (ip, nick), ucl, op, (valor (data, "") or gettext ("No reason specified"))))
	oprankaccept (op, getclass (op))

	if ucl > 0 and ucl < table_sets.scanbelowclass then
		if table_sets.regkickaction == 1 then
			local rucl = getregclass (nick)

			if rucl then -- check if physically registered
				opsnotify (table_sets.classnotikick, gettext ("%s is registered with class %d."):format (nick, rucl))
			end
		elseif table_sets.regkickaction == 2 then
			rucl = getregclass (nick)

			if rucl then -- only if registered
				delledouser (nick)
				VH:SQLQuery ("delete from `reglist` where `nick` = '" .. repsqlchars (nick) .. "' limit 1")
				opsnotify (table_sets.classnotikick, gettext ("%s is registered with class %d and has been automatically unregistered and deleted from other tables."):format (nick, rucl))
			end
		end
	end

	return 1
end

----- ---- --- -- -

function VH_OnOperatorDrops (op, nick)
	if table_othsets.locked then
		return 1
	end

	if isprotected (nick, getip (nick)) then -- protected
		commandanswer (op, gettext ("User you're trying to kick or redirect is protected: %s"):format (nick))
		return 0
	end

	oprankaccept (op, getclass (op))
	return 1
end

----- ---- --- -- -

function VH_OnOpChatMessage (nick, data)
	if table_othsets.locked then
		return 1
	end

	addophistoryline (nick, data, getconfig ("opchat_class") or 3)
	return 1
end

----- ---- --- -- -

function VH_OnPublicBotMessage (nick, data, micl, macl)
	if table_othsets.locked then
		return 1
	end

	if (tonumber (micl or 0) or 0) == 0 and (tonumber (macl or 10) or 10) == 10 then -- only when sent to all
		addmchistoryline (nick, nick, data)
	end

	return 1
end

----- ---- --- -- -

function VH_OnScriptCommand (name, data, plug, file)
	if table_othsets.locked then
		return 1
	end

	if name == "chat_to_all" then -- user sends chat message to all
		local nick, line = data:match ("^<([^ ]+)> (.*)$")

		if nick and line then
			nick = repnmdcoutchars (nick)
			addmchistoryline (nick, nick, repnmdcoutchars (line))
		end
	elseif name == "opchat_to_all" then -- user sends operator chat message to all
		local nick, line = data:match ("^<([^ ]+)> (.*)$")

		if nick and line then
			nick = repnmdcoutchars (nick)
			addophistoryline (nick, line, getconfig ("opchat_class") or 3)
		end
	end

	return 1
end

----- ---- --- -- -

function VH_OnParsedMsgPM (from, data, to)
	if table_othsets.locked then
		return 1
	end

	local ip = getip (from)
	local prot = isprotected (from, ip)
	local fcls = getclass (from)

	if fcls == -1 and to == table_othsets.botnick and data:match ("^" .. table_othsets.ustrig .. "report .+$") then
		return 1
	end

	if not prot then -- protection
		if fcls < table_sets.pmminclass and to ~= table_othsets.botnick then
			pmtouser (from, to, gettext ("You're not allowed to send private messages."))
			return 0
		end

		if table_sets.chatuptime > 0 and table_sets.showuseruptime == 1 and fcls < table_sets.scanbelowclass and table_usup [from] then -- chat uptime
			local dif = os.time () - table_usup [from]

			if dif < table_sets.chatuptime then
				local toip = getip (to)
				opsnotify (table_sets.classnotilowupchat, gettext ("Low chat uptime of %d seconds from %s with IP %s and class %d in PM to %s with IP %s and class %d: %s"):format (dif, from, ip .. tryipcc (ip, from), fcls, to, toip .. tryipcc (toip, to), getclass (to), data))

				if table_sets.chatuptimeact == 0 then -- message
					pmtouser (from, to, gettext ("Please wait another %d seconds before using private chat."):format (table_sets.chatuptime - dif))
				elseif table_sets.chatuptimeact == 1 then -- drop
					opsnotify (table_sets.classnotilowupchat, gettext ("User dropped: %s"):format (from))
					VH:Disconnect (from)
				--elseif table_sets.chatuptimeact == 2 then -- silent
					-- nothing to do
				elseif table_sets.chatuptimeact == 3 then -- message to self
					opsnotify (table_sets.classnotilowupchat, gettext ("User received own message: %s"):format (from))
					-- not needed for private messages
				end

				return 0
			end
		end

		if table_sets.chatcodeon > 0 and (table_sets.chatcodeflag == 0 or table_sets.chatcodeflag == 2) and fcls <= table_sets.codemaxclass then -- chatcode
			if not table_code [from] then
				local vcode, code = genchatcode ()

				table_code [from] = {
					["vcode"] = vcode,
					["code"] = code,
					["lock"] = true
				}

				local txt = table_sets.codetext:gsub ("<code>", reprexpchars (vcode))
				pmtouser (from, to, txt)
				return 0
			elseif table_code [from]["lock"] then
				local rcode = table_code [from]["code"]

				if table_sets.chatcodeon == 2 then -- accept lower case
					rcode = rcode:lower ()
				end

				if data == rcode or data == table_code [from]["code"] then
					table_code [from]["lock"] = false
					pmtouser (from, to, gettext ("Code accepted."))
				else
					local txt = table_sets.codetext:gsub ("<code>", reprexpchars (table_code [from]["vcode"]))
					pmtouser (from, to, txt)
				end

				return 0
			end
		end

		if detchatflood (from, fcls, ip, data, to) then -- flood detection
			return 0
		end

		if gagipcheck (from, ip, fcls, to, data) then
			return 0
		end

		if gagccheck (from, ip, fcls, to, data) then
			return 0
		end
	--elseif table_sets.chatantiflood == 1 then -- update last chat nick, pm not supported
		--table_othsets.chflonenick = from
	end

	----- ---- --- -- -

	if table_othsets.opchatnick ~= "" and to == table_othsets.opchatnick then -- operator chat
		if fcls >= 3 then
			if data:match ("^" .. table_othsets.optrig .. table_cmnds.ophistory .. " %d+$") or data:match ("^" .. table_othsets.optrig .. table_cmnds.ophistory .. "$") then
				if table_sets.histlimit > 0 then
					donotifycmd (from, data, 0, fcls)
					sendophistory (from, fcls, data:sub (# table_cmnds.ophistory + 3), false, true)
				else
					pmtouser (from, table_othsets.opchatnick, gettext ("This command is either disabled or you don't have access to it."))
				end

				return 0
			elseif not VH_OnOpChatMessage then -- backward compatibility
				addophistoryline (from, data, 3) -- log operator chat
			end
		else
			opsnotify (table_sets.classnotibotpm, gettext ("%s with IP %s and class %d sent message to %s: %s"):format (from, ip .. tryipcc (ip, from), fcls, table_othsets.opchatnick, data))
		end

	----- ---- --- -- -

	elseif to == table_othsets.botnick then -- hub security
		if data:sub (1, 1):match (table_othsets.ustrig) then
			-- skip
		elseif data:sub (1, 1):match (table_othsets.optrig) then
			if fcls >= 3 then -- operator command
				if data:match ("^" .. table_othsets.optrig .. "luaload .*$") or data:match ("^" .. table_othsets.optrig .. "luaunload .*$") or data:match ("^" .. table_othsets.optrig .. "luareload .*$") then
					if fcls >= getconfig ("plugin_mod_class") then -- use plugin permission for lua scripts too
						donotifycmd (from, data, 0, fcls)
						savecmdlog (from, fcls, data, true)
					else
						commandanswer (from, gettext ("This command is either disabled or you don't have access to it."))
						return 0
					end
				elseif data:match ("^" .. table_othsets.optrig .. "lualist.*$") or data:match ("^" .. table_othsets.optrig .. "luainfo.*$") or data:match ("^" .. table_othsets.optrig .. "luaversion.*$") then
					donotifycmd (from, data, 0, fcls)
					savecmdlog (from, fcls, data, true)
				elseif data:match ("^" .. table_othsets.optrig .. "offplug .*$") or data:match ("^" .. table_othsets.optrig .. "onplug .*$") or data:match ("^" .. table_othsets.optrig .. "replug .*$") or data:match ("^" .. table_othsets.optrig .. "modplug .*$") or data:match ("^" .. table_othsets.optrig .. "addplug .*$") or data:match ("^" .. table_othsets.optrig .. "delplug .*$") then
					if fcls >= getconfig ("plugin_mod_class") then -- check the permissions
						donotifycmd (from, data, 0, fcls)
						savecmdlog (from, fcls, data, true)
					end
				elseif data:match ("^" .. table_othsets.optrig .. "lstplug.*$") then
					donotifycmd (from, data, 0, fcls)
					savecmdlog (from, fcls, data, true)
				end
			else
				opsnotify (table_sets.classnotibotpm, gettext ("%s with IP %s and class %d sent message to %s: %s"):format (from, ip .. tryipcc (ip, from), fcls, table_othsets.botnick, data))
			end
		else
			opsnotify (table_sets.classnotibotpm, gettext ("%s with IP %s and class %d sent message to %s: %s"):format (from, ip .. tryipcc (ip, from), fcls, table_othsets.botnick, data))
		end

	----- ---- --- -- -

	elseif to == table_sets.ledobotnick then -- ledokol bot
		if table_sets.addledobot == 1 then
			if fcls == 10 then
				if data:sub (1, 1):find (table_othsets.optrig) then -- accept operator command
					VH_OnOperatorCommand (from, data)
				else
					for x in getnicklist ():gmatch ("([^$]+)%$%$") do
						if not isbot (x) then
							local cl = getclass (x)

							if x ~= from and cl == 10 then -- class 10 only
								VH:SendToUser ("$To: " .. x.." From: " .. to .. " $<" .. from .. "> " .. data .. "|", x)
							end
						end
					end
				end
			elseif fcls >= 3 then
				if data:sub (1, 1):find (table_othsets.optrig) then -- accept operator command
					VH_OnOperatorCommand (from, data)
				end
			else
				opsnotify (table_sets.classnotibotpm, gettext ("%s with IP %s and class %d sent message to %s: %s"):format (from, ip .. tryipcc (ip, from), fcls, table_sets.ledobotnick, data))
				VH:SendToUser ("$To: " .. from .. " From: " .. table_sets.ledobotnick .. " $<" .. table_sets.ledobotnick .. "> " .. gettext ("I'm probably away. State your business and I might answer later if you're lucky.") .. "|", from)
			end
		end

	----- ---- --- -- -

	elseif table_othsets.lasttimenick and (to == table_othsets.lasttimenick) then -- time bot
		if table_sets.timebotint > 0 then
			opsnotify (table_sets.classnotibotpm, gettext ("%s with IP %s and class %d sent message to %s: %s"):format (from, ip .. tryipcc (ip, from), fcls, table_othsets.lasttimenick, data))
			VH:SendToUser ("$To: " .. from .. " From: " .. table_othsets.lasttimenick .. " $<" .. table_othsets.lasttimenick .. "> " .. gettext ("I'm probably away. State your business and I might answer later if you're lucky.") .. "|", from)
		end

	----- ---- --- -- -

	else -- other
		if not prot then -- protection
			if antiscan (from, fcls, data, 2, to, nil) == 0 then -- scan before broadcasting
				return 0
			end
		end

		if broadcastchatroom (to, from, data, fcls) then -- check chatrooms
			return 0
		end

		if broadcastccroom (to, from, data, fcls) then
			return 0
		end

		-- todo: send pm to real nick when is sent to custom nick, do it after all checks and replaces
		--if broadcastcustnick (to, from, data) then -- check custom nicks
			--return 0
		--end

		if checknopm (from, fcls, to) then -- no pm
			return 0
		end

		local pmdat = data

		if table_sets.replrunning == 1 and (table_sets.replprotect == 0 or not prot) then -- replacer
			pmdat = replchatmsg (from, ip, fcls, pmdat, 2)
		end

		if table_sets.custnickclass < 11 then -- use custom nick for sender in receivers message
			local custnick = getcustnick (from)

			if custnick then
				if data ~= pmdat then
					local toip = getip (to)
					opsnotify (table_sets.classnotirepl, gettext ("Message replaced for user with IP %s and class %d in PM to %s with IP %s and class %d: <%s> %s"):format (ip .. tryipcc (ip, from), fcls, to, toip .. tryipcc (toip, to), getclass (to), from, data))
				end

				VH:SendToUser ("$To: " .. to .. " From: " .. from .. " $<" .. custnick .. "> " .. pmdat .. "|", to)
				return 0
			elseif data ~= pmdat then
				local toip = getip (to)
				opsnotify (table_sets.classnotirepl, gettext ("Message replaced for user with IP %s and class %d in PM to %s with IP %s and class %d: <%s> %s"):format (ip .. tryipcc (ip, from), fcls, to, toip .. tryipcc (toip, to), getclass (to), from, data))
				VH:SendToUser ("$To: " .. to .. " From: " .. from .. " $<" .. from .. "> " .. pmdat .. "|", to)
				return 0
			end
		elseif data ~= pmdat then
			local toip = getip (to)
			opsnotify (table_sets.classnotirepl, gettext ("Message replaced for user with IP %s and class %d in PM to %s with IP %s and class %d: <%s> %s"):format (ip .. tryipcc (ip, from), fcls, to, toip .. tryipcc (toip, to), getclass (to), from, data))
			VH:SendToUser ("$To: " .. to .. " From: " .. from .. " $<" .. from .. "> " .. pmdat .. "|", to)
			return 0
		end
	end

	return 1
end

----- ---- --- -- -

function VH_OnParsedMsgMCTo (from, data, to)
	if table_othsets.locked then
		return 1
	end

	local ip = getip (from)
	local prot = isprotected (from, ip)
	local fcls = getclass (from)

	if not prot then -- protection
		if fcls < table_sets.pmminclass then
			maintouser (from, gettext ("You're not allowed to send private messages."))
			return 0
		end

		if table_sets.chatuptime > 0 and table_sets.showuseruptime == 1 and fcls < table_sets.scanbelowclass and table_usup [from] then -- chat uptime
			local dif = os.time () - table_usup [from]

			if dif < table_sets.chatuptime then
				local toip = getip (to)
				opsnotify (table_sets.classnotilowupchat, gettext ("Low chat uptime of %d seconds from %s with IP %s and class %d in PM to %s with IP %s and class %d: %s"):format (dif, from, ip .. tryipcc (ip, from), fcls, to, toip .. tryipcc (toip, to), getclass (to), data))

				if table_sets.chatuptimeact == 0 then -- message
					maintouser (from, gettext ("Please wait another %d seconds before using private chat."):format (table_sets.chatuptime - dif))
				elseif table_sets.chatuptimeact == 1 then -- drop
					opsnotify (table_sets.classnotilowupchat, gettext ("User dropped: %s"):format (from))
					VH:Disconnect (from)
				--elseif table_sets.chatuptimeact == 2 then -- silent
					-- nothing to do
				elseif table_sets.chatuptimeact == 3 then -- message to self
					opsnotify (table_sets.classnotilowupchat, gettext ("User received own message: %s"):format (from))
					-- not needed for private messages
				end

				return 0
			end
		end

		if table_sets.chatcodeon > 0 and (table_sets.chatcodeflag == 0 or table_sets.chatcodeflag == 2) and fcls <= table_sets.codemaxclass then -- chatcode
			if not table_code [from] then
				local vcode, code = genchatcode ()

				table_code [from] = {
					["vcode"] = vcode,
					["code"] = code,
					["lock"] = true
				}

				local txt = table_sets.codetext:gsub ("<code>", reprexpchars (vcode))
				maintouser (from, txt)
				return 0
			elseif table_code [from]["lock"] then
				local rcode = table_code [from]["code"]

				if table_sets.chatcodeon == 2 then -- accept lower case
					rcode = rcode:lower ()
				end

				if data == rcode or data == table_code [from]["code"] then
					table_code [from]["lock"] = false
					maintouser (from, gettext ("Code accepted."))
				else
					local txt = table_sets.codetext:gsub ("<code>", reprexpchars (table_code [from]["vcode"]))
					maintouser (from, txt)
				end

				return 0
			end
		end

		if detchatflood (from, fcls, ip, data, to) then -- flood detection
			return 0
		end

		if gagipcheck (from, ip, fcls, to, data) then
			return 0
		end

		if gagccheck (from, ip, fcls, to, data) then
			return 0
		end
	--elseif table_sets.chatantiflood == 1 then -- update last chat nick, mcto not supported
		--table_othsets.chflonenick = from
	end

	if not prot then -- protection
		if antiscan (from, fcls, data, 2, to, nil) == 0 then -- antispam
			return 0
		end
	end

	if checknopm (from, fcls, to) then -- no pm
		return 0
	end

	local pmdat = data

	if table_sets.replrunning == 1 and (table_sets.replprotect == 0 or not prot) then -- replacer
		pmdat = replchatmsg (from, ip, fcls, pmdat, 2)
	end

	if table_sets.custnickclass < 11 then -- use custom nick for sender in receivers message
		local custnick = getcustnick (from)

		if custnick then
			if data ~= pmdat then
				local toip = getip (to)
				opsnotify (table_sets.classnotirepl, gettext ("Message replaced for user with IP %s and class %d in PM to %s with IP %s and class %d: <%s> %s"):format (ip .. tryipcc (ip, from), fcls, to, toip .. tryipcc (toip, to), getclass (to), from, data))
			end

			local mcto = false

			if table_refu.InUserSupports then -- check if client supports mcto
				local on, has = VH:InUserSupports (to, "MCTo")

				if on and has and tonumber (has) == 1 then
					mcto = true
				end
			end

			if mcto then
				VH:SendToUser ("$MCTo: " .. to .. " From: " .. from .. " $<" .. custnick .. "> " .. pmdat .. "|", to)
			else
				VH:SendToUser ("<" .. custnick .. "> " .. pmdat .. "|", to)
			end

			return 0
		elseif data ~= pmdat then
			local toip = getip (to)
			opsnotify (table_sets.classnotirepl, gettext ("Message replaced for user with IP %s and class %d in PM to %s with IP %s and class %d: <%s> %s"):format (ip .. tryipcc (ip, from), fcls, to, toip .. tryipcc (toip, to), getclass (to), from, data))
			local mcto = false

			if table_refu.InUserSupports then -- check if client supports mcto
				local on, has = VH:InUserSupports (to, "MCTo")

				if on and has and tonumber (has) == 1 then
					mcto = true
				end
			end

			if mcto then
				VH:SendToUser ("$MCTo: " .. to .. " From: " .. from .. " $<" .. from .. "> " .. pmdat .. "|", to)
			else
				VH:SendToUser ("<" .. from .. "> " .. pmdat .. "|", to)
			end

			return 0
		end
	elseif data ~= pmdat then
		local toip = getip (to)
		opsnotify (table_sets.classnotirepl, gettext ("Message replaced for user with IP %s and class %d in PM to %s with IP %s and class %d: <%s> %s"):format (ip .. tryipcc (ip, from), fcls, to, toip .. tryipcc (toip, to), getclass (to), from, data))
		local mcto = false

		if table_refu.InUserSupports then -- check if client supports mcto
			local on, has = VH:InUserSupports (to, "MCTo")

			if on and has and tonumber (has) == 1 then
				mcto = true
			end
		end

		if mcto then
			VH:SendToUser ("$MCTo: " .. to .. " From: " .. from .. " $<" .. from .. "> " .. pmdat .. "|", to)
		else
			VH:SendToUser ("<" .. from .. "> " .. pmdat .. "|", to)
		end

		return 0
	end

	return 1
end

----- ---- --- -- -

function VH_OnParsedMsgChat (nick, data)
	if table_othsets.locked then
		return 1
	end

	local ucl = getclass (nick)

	if ucl < getconfig ("mainchat_class") then
		return 1
	end

	local ip = getip (nick)
	local prot = isprotected (nick, ip)

	if not prot then -- protection
		if table_sets.chatuptime > 0 and table_sets.showuseruptime == 1 and ucl < table_sets.scanbelowclass and table_usup [nick] then -- chat uptime
			local dif = os.time () - table_usup [nick]

			if dif < table_sets.chatuptime then
				opsnotify (table_sets.classnotilowupchat, gettext ("Low chat uptime of %d seconds from %s with IP %s and class %d in MC: %s"):format (dif, nick, ip .. tryipcc (ip, nick), ucl, data))

				if table_sets.chatuptimeact == 0 then -- message
					maintouser (nick, gettext ("Please wait another %d seconds before using public chat."):format (table_sets.chatuptime - dif))
				elseif table_sets.chatuptimeact == 1 then -- drop
					opsnotify (table_sets.classnotilowupchat, gettext ("User dropped: %s"):format (nick))
					VH:Disconnect (nick)
				--elseif table_sets.chatuptimeact == 2 then -- silent
					-- nothing to do
				elseif table_sets.chatuptimeact == 3 then -- message to self
					opsnotify (table_sets.classnotilowupchat, gettext ("User received own message: %s"):format (nick))
					maintoself (nick, data)
				end

				return 0
			end
		end

		if table_sets.chatcodeon > 0 and (table_sets.chatcodeflag == 0 or table_sets.chatcodeflag == 1) and ucl <= table_sets.codemaxclass then -- chatcode
			if not table_code [nick] then
				local vcode, code = genchatcode ()

				table_code [nick] = {
					["vcode"] = vcode,
					["code"] = code,
					["lock"] = true
				}

				local txt = table_sets.codetext:gsub ("<code>", reprexpchars (vcode))
				maintouser (nick, txt)
				return 0
			elseif table_code [nick]["lock"] then
				local rcode = table_code [nick]["code"]

				if table_sets.chatcodeon == 2 then -- accept lower case
					rcode = rcode:lower ()
				end

				if data == rcode or data == table_code [nick]["code"] then
					table_code [nick]["lock"] = false
					maintouser (nick, gettext ("Code accepted."))
				else
					local txt = table_sets.codetext:gsub ("<code>", reprexpchars (table_code [nick]["vcode"]))
					maintouser (nick, txt)
				end

				return 0
			end
		end

		if detchatflood (nick, ucl, ip, data, nil) then -- flood detection
			return 0
		end

		if gagipcheck (nick, ip, ucl, nil, data) then
			return 0
		end

		if gagccheck (nick, ip, ucl, nil, data) then
			return 0
		end

		if antiscan (nick, ucl, data, 1, nil, nil) == 0 then -- antispam
			return 0
		end
	elseif table_sets.chatantiflood == 1 then -- update last chat nick
		table_othsets.chflonenick = nick
	end

	local fakenick = nick

	if table_sets.funrandomchat == 1 then
		fakenick = getrandomnick ()

		if table_sets.custnickclass < 11 then
			fakenick = getcustnick (fakenick) or fakenick -- use custom nick
		end
	elseif table_sets.custnickclass < 11 then
		fakenick = getcustnick (nick) or nick
	end

	local cvdat = data
	local retval = 1

	if table_sets.translitmode > 0 then -- convert translit
		cvdat = convtranslit (cvdat, table_sets.translitmode)

		if data ~= cvdat then -- only when modified
			if antiscan (nick, ucl, cvdat, 1, nil, nil) == 0 then -- spam detection after translit conversion
				return 0
			end

			retval = 0
		end
	end

	if table_sets.tolowcharcase == 1 and ucl < 3 then -- convert char case
		cvdat = convcaps (cvdat, true)

		if data ~= cvdat then -- only when modified
			retval = 0
		end
	end

	cvdat = modusrmode (nick, ip, cvdat) -- chat mode

	if table_sets.replrunning == 1 and (table_sets.replprotect == 0 or not prot) then -- replacer
		local norepl = cvdat
		cvdat = replchatmsg (nick, ip, ucl, cvdat, 1)

		if norepl ~= cvdat then
			opsnotify (table_sets.classnotirepl, gettext ("Message replaced for user with IP %s and class %d in MC: <%s> %s"):format (ip .. tryipcc (ip, nick), ucl, nick, data))
		end
	end

	if data ~= cvdat then
		retval = 0 -- only when modified
	end

	if table_sets.useripinchat > 0 then -- ip in chat
		local pfx = ""

		if table_sets.useripinchat == 2 and table_refu.GetUserCC then
			local cc = getcc (nick)

			if not cc or cc == "--" then
				cc = "??"
			end

			pfx = "[ " .. ip .. " &#124; " .. cc .. " ]"
		else
			pfx = "[ " .. ip .. " ]"
		end

		VH:SendToClass ("<" .. fakenick .. "> " .. cvdat .. "|", 0, 2)
		VH:SendToClass (pfx .. " <" .. fakenick .. "> " .. cvdat .. "|", 3, 10)
		retval = 0
	elseif retval == 0 or fakenick ~= nick then -- no ip, only when modified
		VH:SendToClass ("<" .. fakenick .. "> " .. cvdat .. "|", 0, 10)
		retval = 0
	end

	addmchistoryline (fakenick, nick, cvdat)
	replyresponder (fakenick, ucl, cvdat)
	chatrankaccept (nick, ucl)
	wordrankaccept (nick, ucl, cvdat)
	return retval
end

---------------------------------------------------------------------
-- verlihub event functions <<
---------------------------------------------------------------------

---------------------------------------------------------------------
-- ledokol functions >>
---------------------------------------------------------------------

function forcewelcome (nick, line, cls)
	if line:match ("^%S+ %S+ .+$") then
		local mype = line:match ("^(%S+) %S+ .+$")

		if mype == "in" or mype == "out" then
			local user, item = line:match ("^%S+ (%S+) (.+)$")

			if getstatus (user) == 1 and (table_sets.welcomeclass == 11 or getclass (user) < table_sets.welcomeclass) then
				commandanswer (nick, gettext ("Either the feature is disabled or user that you're trying to set welcome message for doesn't have access to it."))
			else
				local rser = repsqlchars (user)
				local _, rows = VH:SQLQuery ("select `nick` from `" .. tbl_sql.wm .. "` where `nick` = '" .. rser .. "'")

				if rows > 0 then
					VH:SQLQuery ("update `" .. tbl_sql.wm .. "` set `" .. mype .. "` = '" .. repsqlchars (item) .. "' where `nick` = '" .. rser .. "'")
				else
					VH:SQLQuery ("insert into `" .. tbl_sql.wm .. "` (`nick`, `" .. mype .. "`) values ('" .. rser .. "', '" .. repsqlchars (item) .. "')")
				end

				item = item:gsub ("%*", reprexpchars (user))

				if mype == "in" then
					commandanswer (nick, gettext ("Login message set for %s: %s"):format (user, item))
					opsnotify (table_sets.classnotiwelcome, gettext ("%s with class %d changed login message for %s: %s"):format (nick, cls, user, item))
				elseif mype == "out" then
					commandanswer (nick, gettext ("Logout message set for %s: %s"):format (user, item))
					opsnotify (table_sets.classnotiwelcome, gettext ("%s with class %d changed logout message for %s: %s"):format (nick, cls, user, item))
				end
			end
		else -- unknown type
			commandanswer (nick, gettext ("Known types are: %s"):format ("in " .. gettext ("and") .. " out"))
		end
	else -- deleting
		local mype = line:match ("^(%S+) %S+$")

		if mype == "in" then
			local user = line:match ("^%S+ (%S+)$")

			if getstatus (user) == 1 and (table_sets.welcomeclass == 11 or getclass (user) < table_sets.welcomeclass) then
				commandanswer (nick, gettext ("Either the feature is disabled or user that you're trying to set welcome message for doesn't have access to it."))
			else
				local rser = repsqlchars (user)
				VH:SQLQuery ("update `" .. tbl_sql.wm .. "` set `in` = null where `nick` = '" .. rser .. "'")
				VH:SQLQuery ("delete from `" .. tbl_sql.wm .. "` where `nick` = '" .. rser .. "' and `out` is null")
				commandanswer (nick, gettext ("Login message deleted for user: %s"):format (user))
				opsnotify (table_sets.classnotiwelcome, gettext ("%s with class %d deleted login message for user: %s"):format (nick, cls, user))
			end
		elseif mype == "out" then
			local user = line:match ("^%S+ (%S+)$")

			if getstatus (user) == 1 and (table_sets.welcomeclass == 11 or getclass (user) < table_sets.welcomeclass) then
				commandanswer (nick, gettext ("Either the feature is disabled or user that you're trying to set welcome message for doesn't have access to it."))
			else
				local rser = repsqlchars (user)
				VH:SQLQuery ("update `" .. tbl_sql.wm .. "` set `out` = null where `nick` = '" .. rser .. "'")
				VH:SQLQuery ("delete from `" .. tbl_sql.wm .. "` where `nick` = '" .. rser .. "' and `in` is null")
				commandanswer (nick, gettext ("Logout message deleted for user: %s"):format (user))
				opsnotify (table_sets.classnotiwelcome, gettext ("%s with class %d deleted logout message for user: %s"):format (nick, cls, user))
			end
		else -- unknown type
			commandanswer (nick, gettext ("Known types are: %s"):format ("in " .. gettext ("and") .. " out"))
		end
	end
end

----- ---- --- -- -

function listwelcome (nick)
	local _, rows = VH:SQLQuery ("select `nick`, `in`, `out` from `" .. tbl_sql.wm .. "` order by `nick` asc")

	if rows > 0 then
		local list = ""

		for row = 0, rows - 1 do
			local _, user, mein, meout = VH:SQLFetch (row)
			mein = mein or ""
			mein = mein:gsub ("%*", reprexpchars (user))
			meout = meout or ""
			meout = meout:gsub ("%*", reprexpchars (user))
			list = list .. "\r\n " .. gettext ("Nick") .. ": " .. user .. "\r\n " .. gettext ("Login message") .. ": " .. mein .. "\r\n " .. gettext ("Logout message") .. ": " .. meout .. "\r\n"
		end

		commandanswer (nick, gettext ("Welcome message list") .. ":\r\n" .. list)
	else
		commandanswer (nick, gettext ("Welcome message list is empty."))
	end
end

----- ---- --- -- -

function delwelcome (nick, item, cls)
	local rtem = repsqlchars (item)
	local _, rows = VH:SQLQuery ("select `nick` from `" .. tbl_sql.wm .. "` where `nick` = '" .. rtem .. "'")

	if rows > 0 then
		VH:SQLQuery ("delete from `" .. tbl_sql.wm .. "` where `nick` = '" .. rtem .. "'")
		commandanswer (nick, gettext ("Welcome messages were deleted for user: %s"):format (item))
		opsnotify (table_sets.classnotiwelcome, gettext ("%s with class %d deleted welcome messages for user: %s"):format (nick, cls, item))
	else
		commandanswer (nick, gettext ("Couldn't delete user from welcome message list because not found: %s"):format (item))
	end
end

----- ---- --- -- -

function setwelcome (nick, line, cls)
	if line:match ("^%S+ .+$") then
		local mype = line:match ("^(%S+) .+$")

		if mype == "in" or mype == "out" then
			local item = line:match ("^%S+ (.+)$")
			local rick = repsqlchars (nick)
			local _, rows = VH:SQLQuery ("select `nick` from `" .. tbl_sql.wm .. "` where `nick` = '" .. rick .. "'")

			if rows > 0 then
				VH:SQLQuery ("update `" .. tbl_sql.wm .. "` set `" .. mype .. "` = '" .. repsqlchars (item) .. "' where `nick` = '" .. rick .. "'")
			else
				VH:SQLQuery ("insert into `" .. tbl_sql.wm .. "` (`nick`, `" .. mype .. "`) values ('" .. rick .. "', '" .. repsqlchars (item) .. "')")
			end

			item = item:gsub ("%*", reprexpchars (nick))

			if mype == "in" then
				commandanswer (nick, gettext ("Your login message set: %s"):format (item))
				opsnotify (table_sets.classnotiwelcome, gettext ("%s with class %d changed his login message: %s"):format (nick, cls, item))
			elseif mype == "out" then
				commandanswer (nick, gettext ("Your logout message set: %s"):format (item))
				opsnotify (table_sets.classnotiwelcome, gettext ("%s with class %d changed his logout message: %s"):format (nick, cls, item))
			end
		else -- unknown type
			commandanswer (nick, gettext ("Known types are: %s"):format ("in " .. gettext ("and") .. " out"))
		end
	else -- deleting
		local mype = line

		if mype == "in" then
			local rick = repsqlchars (nick)
			VH:SQLQuery ("update `" .. tbl_sql.wm .. "` set `in` = null where `nick` = '" .. rick .. "'")
			VH:SQLQuery ("delete from `" .. tbl_sql.wm .. "` where `nick` = '" .. rick .. "' and `out` is null")
			commandanswer (nick, gettext ("Your login message deleted."))
			opsnotify (table_sets.classnotiwelcome, gettext ("%s with class %d deleted his login message."):format (nick, cls))
		elseif mype == "out" then
			local rick = repsqlchars (nick)
			VH:SQLQuery ("update `" .. tbl_sql.wm .. "` set `out` = null where `nick` = '" .. rick .. "'")
			VH:SQLQuery ("delete from `" .. tbl_sql.wm .. "` where `nick` = '" .. rick .. "' and `in` is null")
			commandanswer (nick, gettext ("Your logout message deleted."))
			opsnotify (table_sets.classnotiwelcome, gettext ("%s with class %d deleted his logout message."):format (nick, cls))
		else -- unknown type
			commandanswer (nick, gettext ("Known types are: %s"):format ("in " .. gettext ("and") .. " out"))
		end
	end
end

----- ---- --- -- -

function showwelcome (nick)
	local _, rows = VH:SQLQuery ("select `in`, `out` from `" .. tbl_sql.wm .. "` where `nick` = '" .. repsqlchars (nick) .. "'")

	if rows > 0 then
		local _, mein, meout = VH:SQLFetch (0)
		mein = mein or ""
		mein = mein:gsub ("%*", reprexpchars (nick))
		commandanswer (nick, gettext ("Your login message: %s"):format (mein))
		meout = meout or ""
		meout = meout:gsub ("%*", reprexpchars (nick))
		commandanswer (nick, gettext ("Your logout message: %s"):format (meout))
	else
		commandanswer (nick, gettext ("You don't have any welcome messages."))
	end
end

----- ---- --- -- -

function sendwelcomein (nick, ucl)
	if ucl < table_sets.welcomeclass then
		return
	end

	local _, rows = VH:SQLQuery ("select `in` from `" .. tbl_sql.wm .. "` where `nick` = '" .. repsqlchars (nick) .. "' and `in` is not null")

	if rows > 0 then
		local _, mein = VH:SQLFetch (0)

		if table_sets.custnickclass < 11 then
			mein = mein:gsub ("%*", reprexpchars (getcustnick (nick) or nick))
		else
			mein = mein:gsub ("%*", reprexpchars (nick))
		end

		maintoall (mein, 0, 10)
	end
end

----- ---- --- -- -

function sendwelcomeout (nick, ucl)
	if ucl < table_sets.welcomeclass then
		return
	end

	local _, rows = VH:SQLQuery ("select `out` from `" .. tbl_sql.wm .. "` where `nick` = '" .. repsqlchars (nick) .. "' and `out` is not null")

	if rows > 0 then
		local _, meout = VH:SQLFetch (0)

		if table_sets.custnickclass < 11 then
			meout = meout:gsub ("%*", reprexpchars (getcustnick (nick) or nick))
		else
			meout = meout:gsub ("%*", reprexpchars (nick))
		end

		maintoall (meout, 0, 10)
	end
end

----- ---- --- -- -

function addchatroom (nick, item)
	local _, _, room, desc, minc, maxc, cc = item:find ("^(%S+) (.*) (%d+) (%d+) (%S+)$")
	minc, maxc = tonumber (minc), tonumber (maxc)

	if (minc > 5 and minc < 10) or minc > 10 or (maxc > 5 and maxc < 10) or maxc > 10 then -- invalid class
		commandanswer (nick, gettext ("Known classes are: %s"):format ("0, 1, 2, 3, 4, 5 " .. gettext ("and") .. " 10"))
	else
		local entry = repsqlchars (room)
		local _, rows = VH:SQLQuery ("select `minclass` from `" .. tbl_sql.chat .. "` where `room` = '" .. entry .. "' limit 1")

		if rows > 0 then
			VH:SQLQuery ("update `" .. tbl_sql.chat .. "` set `description` = '" .. repsqlchars (desc) .. "', `minclass` = " .. minc .. ", `maxclass` = " .. maxc .. ", `cc` = '" .. repsqlchars (cc:upper ()) .. "' where `room` = '" .. entry .. "' limit 1")
			commandanswer (nick, gettext ("Modified chatroom: %s"):format (room))
		else
			if getstatus (room) == 0 then
				VH:SQLQuery ("insert into `" .. tbl_sql.chat .. "` (`room`, `description`, `minclass`, `maxclass`, `cc`) values ('" .. entry .. "', '" .. repsqlchars (desc) .. "', " .. minc .. ", " .. maxc .. ", '" .. repsqlchars (cc:upper ()) .. "')")
				if table_sets.chatrunning == 1 then addhubrobot (room, desc, 1, "", 0) end
				commandanswer (nick, gettext ("Added chatroom: %s"):format (room))
			else -- nick is already in use
				commandanswer (nick, gettext ("Couldn't add chatroom because nick is already in use: %s"):format (room))
			end
		end
	end
end

----- ---- --- -- -

function delchatroom (nick, item)
	local room = repsqlchars (item)
	local _, rows = VH:SQLQuery ("select `minclass` from `" .. tbl_sql.chat .. "` where `room` = '" .. room .. "'")

	if rows > 0 then
		VH:SQLQuery ("delete from `" .. tbl_sql.chat .. "` where `room` = '" .. room .. "'")

		if table_sets.chatrunning == 1 then -- delete room
			delhubrobot (item)
		end

		table_chat [item] = nil -- delete ignore list

		if table_sets.chathistlimit > 0 then -- delete history
			cleanroomhistory (item, nick, 0, true, getclass (nick))
		end

		commandanswer (nick, gettext ("Deleted chatroom: %s"):format (item))
	else
		commandanswer (nick, gettext ("Couldn't delete chatroom because not found: %s"):format (item))
	end
end

----- ---- --- -- -

function listchatroom (nick)
	local _, rows = VH:SQLQuery ("select `room`, `description`, `minclass`, `maxclass`, `cc` from `" .. tbl_sql.chat .. "` order by `minclass` asc, `maxclass` desc")

	if rows > 0 then
		local anentry = ""

		for x = 0, rows - 1 do
			local _, room, desc, minc, maxc, cc = VH:SQLFetch (x)
			anentry = anentry .. "\r\n " .. gettext ("Chatroom") .. ": " .. room .. " [ " .. minc .. " / " .. maxc .. " / " .. cc .. " ]\r\n " .. gettext ("Description") .. ": " .. desc .. "\r\n"
		end

		commandanswer (nick, gettext ("Chatroom list") .. ":\r\n" .. anentry)
	else
		commandanswer (nick, gettext ("Chatroom list is empty."))
	end
end

----- ---- --- -- -

function addacre (nick, data)
	local _, _, cc, us = data:find ("^([%a][%a%d]) ([^ ]+)$")
	cc = cc:upper ()
	local ccrep = repsqlchars (cc)
	local usrep = repsqlchars (us)
	local _, rows = VH:SQLQuery ("select `id` from `" .. tbl_sql.acre .. "` where `cc` = '" .. ccrep .. "' and `nick` = '" .. usrep .. "' limit 1")

	if rows > 0 then
		local _, id = VH:SQLFetch (0)
		commandanswer (nick, gettext ("Couldn't add automatic country chatroom entrance because already exists with ID: %d"):format (id))
	else
		VH:SQLQuery ("insert into `" .. tbl_sql.acre .. "` (`cc`, `nick`) values ('" .. ccrep .. "', '" .. usrep .. "')")
		local room = table_sets.ccroomstyle:gsub ("<cc>", reprexpchars (cc)) -- code
		room = room:gsub ("<cn>", reprexpchars (cc_names [cc] or gettext ("Unknown country"))) -- name
		room = room:gsub (string.char (32), string.char (160)) -- space
		commandanswer (nick, gettext ("Added automatic country chatroom entrance for %s: %s"):format (room, us))
	end
end

----- ---- --- -- -

function delacre (nick, data)
	local id = tonumber (data) or 0
	local _, rows = VH:SQLQuery ("select `id` from `" .. tbl_sql.acre .. "` where `id` = " .. _tostring (id) .. " limit 1")

	if rows > 0 then
		VH:SQLQuery ("delete from `" .. tbl_sql.acre .. "` where `id` = " .. _tostring (id) .. " limit 1")
		commandanswer (nick, gettext ("Deleted automatic country chatroom entrance with ID: %d"):format (id))
	else
		commandanswer (nick, gettext ("Couldn't delete automatic country chatroom entrance because ID not found: %d"):format (id))
	end
end

----- ---- --- -- -

function listacre (nick)
	local _, rows = VH:SQLQuery ("select * from `" .. tbl_sql.acre .. "` order by `id` asc")

	if rows > 0 then
		local list = ""

		for x = 0, rows - 1 do
			local _, id, cc, us = VH:SQLFetch (x)
			cc = cc:upper ()
			local room = table_sets.ccroomstyle:gsub ("<cc>", reprexpchars (cc)) -- code
			room = room:gsub ("<cn>", reprexpchars (cc_names [cc] or gettext ("Unknown country"))) -- name
			room = room:gsub (string.char (32), string.char (160)) -- space
			list = list .. " [ I: " .. _tostring (id) .. " ] [ C: " .. room .. " ] [ N: " .. us .. " ]\r\n"
		end

		commandanswer (nick, gettext ("Automatic country chatroom entrance list") .. ":\r\n\r\n" .. list)
	else
		commandanswer (nick, gettext ("Automatic country chatroom entrance list is empty."))
	end
end

----- ---- --- -- -

function installchatrooms ()
	local _, rows = VH:SQLQuery ("select `room`, `description` from `" .. tbl_sql.chat .. "`")

	for x = 0, rows - 1 do
		local _, room, desc = VH:SQLFetch (x)
		addhubrobot (room, desc, 1, "", 0)
	end
end

----- ---- --- -- -

function uninstallchatrooms ()
	local _, rows = VH:SQLQuery ("select `room` from `" .. tbl_sql.chat .. "`")

	for x = 0, (tonumber (rows) or 0) - 1 do
		local _, room = VH:SQLFetch (x)
		delhubrobot (room)
	end

	table_chat = {} -- clear ignore list
end

----- ---- --- -- -

function uninstallccrooms ()
	for k, _ in pairs (table_room) do
		local robot = table_sets.ccroomstyle:gsub ("<cc>", reprexpchars (k))
		robot = robot:gsub ("<cn>", reprexpchars (cc_names [k] or gettext ("Unknown country")))
		robot = robot:gsub (string.char (32), string.char (160)) -- space to non-breaking space
		delhubrobot (robot)
		table_room [k] = nil
	end
end

----- ---- --- -- -

function getccroommember (nick, cc)
	for k, v in pairs (table_room [cc]) do
		if nick == v then
			return k
		end
	end

	return 0
end

----- ---- --- -- -

function getchatroomignore (nick, room)
	if table_chat [room] then
		for k, v in pairs (table_chat [room]) do
			if nick == v then
				return k
			end
		end
	end

	return 0
end

----- ---- --- -- -

function addccroommember (nick, class)
	if not table_refu.GetUserCC or table_sets.ccroomrunning == 0 or isbot (nick) or class < table_sets.ccroomautocls then
		return
	end

	local cc = getcc (nick)

	if not cc or cc == "--" then
		return
	end

	local room = table_sets.ccroomstyle:gsub ("<cc>", reprexpchars (cc)) -- create room nick
	room = room:gsub ("<cn>", reprexpchars (cc_names [cc] or gettext ("Unknown country")))
	room = room:gsub (string.char (32), string.char (160)) -- space to non-breaking space

	if table_room [cc] then -- room exists
		if getccroommember (nick, cc) == 0 then -- add user to member list
			table.insert (table_room [cc], nick)
			edithubrobot (room, gettext ("Chatroom: %s"):format (cc_names [cc] or gettext ("Unknown country")), 1, "", # table_room [cc])
		end
	else -- create new room
		table_room [cc] = {nick}
		addhubrobot (room, gettext ("Chatroom: %s"):format (cc_names [cc] or gettext ("Unknown country")), 1, "", 1)
	end
end

----- ---- --- -- -

function delccroommember (nick)
	if not table_refu.GetUserCC or table_sets.ccroomrunning == 0 or isbot (nick) then
		return
	end

	for cc, _ in pairs (table_room) do -- remove user from all rooms
		local pos = getccroommember (nick, cc)

		if pos > 0 then
			table.remove (table_room [cc], pos)
			local room = table_sets.ccroomstyle:gsub ("<cc>", reprexpchars (cc)) -- create room nick
			room = room:gsub ("<cn>", reprexpchars (cc_names [cc] or gettext ("Unknown country")))
			room = room:gsub (string.char (32), string.char (160)) -- space to non-breaking space

			if # table_room [cc] == 0 then -- remove the room itself when empty
				delhubrobot (room)
				table_room [cc] = nil
			else -- modify room
				edithubrobot (room, gettext ("Chatroom: %s"):format (cc_names [cc] or gettext ("Unknown country")), 1, "", # table_room [cc])
			end
		end
	end
end

----- ---- --- -- -

function addccroomacre (nick, class)
	if not table_refu.GetUserCC or table_sets.ccroomrunning == 0 or isbot (nick) or class < table_sets.ccroomautocls then
		return
	end

	local _, rows = VH:SQLQuery ("select `cc` from `" .. tbl_sql.acre .. "` where `nick` = '" .. repsqlchars (nick) .. "'")

	if rows > 0 then
		for x = 0, rows - 1 do
			local _, cc = VH:SQLFetch (x)
			cc = cc:upper ()
			local room = table_sets.ccroomstyle:gsub ("<cc>", reprexpchars (cc)) -- code
			room = room:gsub ("<cn>", reprexpchars (cc_names [cc] or gettext ("Unknown country"))) -- name
			room = room:gsub (string.char (32), string.char (160)) -- space

			if table_room [cc] then -- exists
				if getccroommember (nick, cc) == 0 then -- add
					table.insert (table_room [cc], nick)
					edithubrobot (room, gettext ("Chatroom: %s"):format (cc_names [cc] or gettext ("Unknown country")), 1, "", # table_room [cc])
				end
			else -- create
				table_room [cc] = {nick}
				addhubrobot (room, gettext ("Chatroom: %s"):format (cc_names [cc] or gettext ("Unknown country")), 1, "", 1)
			end
		end
	end
end

----- ---- --- -- -

function chatroomhelp ()
	local ustrig = getconfig ("cmd_start_user"):sub (1, 1)
	local txt = " " .. ustrig .. table_cmnds.chatenter .. " - " .. gettext ("Enter the chatroom") .. "\r\n"
	txt = txt .. " " .. ustrig .. table_cmnds.chatleave .. " - " .. gettext ("Leave the chatroom") .. "\r\n"
	txt = txt .. " " .. ustrig .. table_cmnds.chatusers .. " - " .. gettext ("Chatroom member list") .. "\r\n"
	txt = txt .. " " .. ustrig .. table_cmnds.chathist .. " [" .. gettext ("lines") .. "=" .. _tostring (table_sets.histdeflines) .. "] - " .. gettext ("Chatroom history") .. "\r\n"
	txt = txt .. " " .. ustrig .. table_cmnds.chathelp .. " - " .. gettext ("This list of commands") .. "\r\n"
	return txt
end

----- ---- --- -- -

function broadcastccroom (to, nick, data, class) -- country code based chatroom
	if not table_refu.GetUserCC or table_sets.ccroomrunning == 0 then
		return false
	end

	for k, v in pairs (table_room) do
		local robot = table_sets.ccroomstyle:gsub ("<cc>", reprexpchars (k))
		robot = robot:gsub ("<cn>", reprexpchars (cc_names [k] or gettext ("Unknown country")))
		robot = robot:gsub (string.char (32), string.char (160)) -- space to non-breaking space

		if robot == to then -- room match
			local mem = getccroommember (nick, k)
			local cmd, par = nil, nil

			if data:match ("^" .. table_othsets.ustrig .. "%S+ .*$") then
				cmd, par = data:match ("^" .. table_othsets.ustrig .. "(%S+) (.*)$")
			else
				cmd = data:match ("^" .. table_othsets.ustrig .. "(%S+)$")
			end

			local custnick = nil

			if table_sets.custnickclass < 11 then -- use custom nick
				custnick = getcustnick (nick)
			end

			if mem > 0 then -- is member
				if cmd then -- user command
					if cmd == table_cmnds.chatenter then
						VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("You're already member of this chatroom.") .. "|", nick)

					elseif cmd == table_cmnds.chatleave then
						table.remove (table_room [k], mem)
						VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("You've left the chatroom.") .. "|", nick)

						if table_sets.roomusernotify == 1 then -- notification
							for _, x in pairs (v) do
								if x ~= nick then -- skip self
									VH:SendToUser ("$To: " .. x .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("User left the chatroom: %s"):format (custnick or nick) .. "|", x)
								end
							end

							if table_sets.chathistbotmsg == 1 then
								addcrhistoryline (to, to, to, gettext ("User left the chatroom: %s"):format (custnick or nick))
							end
						end

					elseif cmd == table_cmnds.chatusers then
						local list = ""

						for c, x in pairs (v) do
							if table_sets.custnickclass < 11 then -- use custom nick
								list = list .. " " .. _tostring (c) .. ". " .. (getcustnick (x) or x) .. "\r\n"
							else
								list = list .. " " .. _tostring (c) .. ". " .. x .. "\r\n"
							end
						end

						VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("Chatroom member list") .. ":\r\n\r\n" .. list .. "|", nick)

					elseif cmd == table_cmnds.chathist then
						if table_sets.chathistlimit == 0 then
							VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("This command is either disabled or you don't have access to it.") .. "|", nick)
						else
							sendcrhistory (to, nick, class, par or table_sets.histdeflines)
						end

					elseif cmd == table_cmnds.chathelp then
						VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("Chatroom user commands") .. ":\r\n\r\n" .. chatroomhelp () .. "|", nick)

					else -- unknown command
						VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("Unknown chatroom command, use %s for help."):format (getconfig ("cmd_start_user"):sub (1, 1) .. table_cmnds.chathelp) .. "|", nick)
					end

				else -- regular message
					for _, x in pairs (v) do
						if x ~= nick then -- skip self
							VH:SendToUser ("$To: " .. x .. " From: " .. to .. " $<" .. (custnick or nick) .. "> " .. data .. "|", x)
						end
					end

					addcrhistoryline (to, (custnick or nick), nick, data)
				end

			else -- not member
				if class < table_sets.ccroommancls then
					local mtip = getip (nick)
					opsnotify (table_sets.classnotibotpm, gettext ("%s with IP %s and class %d sent message to %s: %s"):format (nick, mtip .. tryipcc (mtip, nick), class, to, data))
					VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("You don't have access to this chatroom.") .. "|", nick)
				else
					if cmd then -- user command
						if cmd == table_cmnds.chatenter then
							table.insert (table_room [k], nick)
							VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("You've entered %s chatroom."):format (k) .. "|", nick)

							if table_sets.roomusernotify == 1 then -- notification
								for _, x in pairs (v) do
									if x ~= nick then -- skip self
										VH:SendToUser ("$To: " .. x .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("User entered the chatroom: %s"):format (custnick or nick) .. "|", x)
									end
								end

								if table_sets.chathistbotmsg == 1 then
									addcrhistoryline (to, to, to, gettext ("User entered the chatroom: %s"):format (custnick or nick))
								end
							end

						elseif cmd == table_cmnds.chatleave then
							VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("You're not member of this chatroom.") .. "|", nick)

						elseif cmd == table_cmnds.chatusers then
							local list = ""

							for c, x in pairs (v) do
								if table_sets.custnickclass < 11 then -- use custom nick
									list = list .. " " .. _tostring (c) .. ". " .. (getcustnick (x) or x) .. "\r\n"
								else
									list = list .. " " .. _tostring (c) .. ". " .. x .. "\r\n"
								end
							end

							if list == "" then
								VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("Chatroom is empty.") .. "|", nick)
							else
								VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("Chatroom member list") .. ":\r\n\r\n" .. list .. "|", nick)
							end

						elseif cmd == table_cmnds.chathist then
							VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("You're not member of this chatroom.") .. "|", nick)

						elseif cmd == table_cmnds.chathelp then
							VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("Chatroom user commands") .. ":\r\n\r\n" .. chatroomhelp () .. "|", nick)

						else -- unknown command
							VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("Unknown chatroom command, use %s for help."):format (getconfig ("cmd_start_user"):sub (1, 1) .. table_cmnds.chathelp) .. "|", nick)
						end

					else -- regular message
						VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("You're not member of this chatroom.") .. "|", nick)
					end
				end
			end

			return true
		end
	end

	return false
end

----- ---- --- -- -

--[[

function broadcastcustnick (to, nick, data)
	if table_sets.custnickclass == 11 then
		return false
	end

	local rnick = findcustnick (to)

	if rnick then -- match
		VH:SendToUser ("$To: " .. rnick .. " From: " .. nick .. " $<" .. nick .. "> " .. data .. "|", rnick)
		return true
	end

	return false
end

]]--

----- ---- --- -- -

function broadcastchatroom (to, nick, data, class) -- class based chatroom
	if table_sets.chatrunning == 0 then
		return false
	end

	local _, rows = VH:SQLQuery ("select `room`, `minclass`, `maxclass`, `cc` from `" .. tbl_sql.chat .. "`")

	if rows == 0 then
		return false
	end

	for x = 0, rows - 1 do
		local _, room, minc, maxc, cc = VH:SQLFetch (x)

		if room == to then -- room match
			minc, maxc = tonumber (minc) or 0, tonumber (maxc) or 10

			if class >= minc and class <= maxc and (not table_refu.GetUserCC or cc == "*" or cc == getcc (nick)) then -- is member
				local ign = getchatroomignore (nick, to)
				local cmd, par = nil, nil

				if data:match ("^" .. table_othsets.ustrig .. "%S+ .*$") then
					cmd, par = data:match ("^" .. table_othsets.ustrig .. "(%S+) (.*)$")
				else
					cmd = data:match ("^" .. table_othsets.ustrig .. "(%S+)$")
				end

				local custnick = nil

				if table_sets.custnickclass < 11 then -- use custom nick
					custnick = getcustnick (nick)
				end

				if cmd then -- user command
					if cmd == table_cmnds.chatenter then
						if ign > 0 then -- remove from ignore list
							table.remove (table_chat [to], ign)
							VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("You've entered %s chatroom."):format (to) .. "|", nick)

							if table_sets.roomusernotify == 1 then -- notification
								for x in getnicklist ():gmatch ("([^%$ ]+)") do
									if not isbot (x) then
										local cl = getclass (x)

										if x ~= nick and cl >= minc and cl <= maxc and (not table_refu.GetUserCC or cc == "*" or cc == getcc (x)) and getchatroomignore (x, to) == 0 then -- skip self
											VH:SendToUser ("$To: " .. x .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("User entered the chatroom: %s"):format (custnick or nick) .. "|", x)
										end
									end
								end

								if table_sets.chathistbotmsg == 1 then
									addcrhistoryline (to, to, to, gettext ("User entered the chatroom: %s"):format (custnick or nick))
								end
							end
						else -- not ignoring
							VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("You're already member of this chatroom.") .. "|", nick)
						end

					elseif cmd == table_cmnds.chatleave then
						if ign > 0 then -- already ignoring
							VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("You're not member of this chatroom.") .. "|", nick)
						else -- add to ignore list
							if table_chat [to] then -- ignore list exists
								table.insert (table_chat [to], nick)
							else -- create ignore list
								table_chat [to] = {nick}
							end

							VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("You've left the chatroom.") .. "|", nick)

							if table_sets.roomusernotify == 1 then -- notification
								for x in getnicklist ():gmatch ("([^%$ ]+)") do
									if not isbot (x) then
										local cl = getclass (x)

										if x ~= nick and cl >= minc and cl <= maxc and (not table_refu.GetUserCC or cc == "*" or cc == getcc (x)) and getchatroomignore (x, to) == 0 then -- skip self
											VH:SendToUser ("$To: " .. x .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("User left the chatroom: %s"):format (custnick or nick) .. "|", x)
										end
									end
								end

								if table_sets.chathistbotmsg == 1 then
									addcrhistoryline (to, to, to, gettext ("User left the chatroom: %s"):format (custnick or nick))
								end
							end
						end

					elseif cmd == table_cmnds.chatusers then
						local list = ""
						local c = 1

						for x in getnicklist ():gmatch ("([^%$ ]+)") do
							if not isbot (x) then
								local cl = getclass (x)

								if cl >= minc and cl <= maxc and (not table_refu.GetUserCC or cc == "*" or cc == getcc (x)) and getchatroomignore (x, to) == 0 then
									if table_sets.custnickclass < 11 then -- use custom nick
										list = list .. " " .. _tostring (c) .. ". " .. (getcustnick (x) or x) .. "\r\n"
									else
										list = list .. " " .. _tostring (c) .. ". " .. x .. "\r\n"
									end

									c = c + 1
								end
							end
						end

						if list == "" then
							VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("Chatroom is empty.") .. "|", nick)
						else
							VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("Chatroom member list") .. ":\r\n\r\n" .. list .. "|", nick)
						end

					elseif cmd == table_cmnds.chathist then
						if ign > 0 then -- ignoring
							VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("You're not member of this chatroom.") .. "|", nick)
						else
							if table_sets.chathistlimit == 0 then
								VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("This command is either disabled or you don't have access to it.") .. "|", nick)
							else
								sendcrhistory (to, nick, class, par or table_sets.histdeflines)
							end
						end

					elseif cmd == table_cmnds.chathelp then
						VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("Chatroom user commands") .. ":\r\n\r\n" .. chatroomhelp () .. "|", nick)

					else -- unknown command
						VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("Unknown chatroom command, use %s for help."):format (getconfig ("cmd_start_user"):sub (1, 1) .. table_cmnds.chathelp) .. "|", nick)
					end

				else -- regular message
					if ign > 0 then -- ignoring
						VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("You're not member of this chatroom.") .. "|", nick)
					else -- broadcast
						for x in getnicklist ():gmatch ("([^%$ ]+)") do
							if not isbot (x) then
								local cl = getclass (x)

								if x ~= nick and cl >= minc and cl <= maxc and (not table_refu.GetUserCC or cc == "*" or cc == getcc (x)) and getchatroomignore (x, to) == 0 then -- skip self
									VH:SendToUser ("$To: " .. x .. " From: " .. to .. " $<" .. (custnick or nick) .. "> " .. data .. "|", x)
								end
							end
						end

						addcrhistoryline (to, (custnick or nick), nick, data)
					end
				end

			else -- not member
				local mtip = getip (nick)
				opsnotify (table_sets.classnotibotpm, gettext ("%s with IP %s and class %d sent message to %s: %s"):format (nick, mtip .. tryipcc (mtip, nick), class, to, data))
				VH:SendToUser ("$To: " .. nick .. " From: " .. to .. " $<" .. to .. "> " .. gettext ("You don't have access to this chatroom.") .. "|", nick)
			end

			return true
		end
	end

	return false
end

----- ---- --- -- -

function ischatroom (nick)
	local _, rows = VH:SQLQuery ("select `room` from `" .. tbl_sql.chat .. "` where `room` = '" .. repsqlchars (nick) .. "'")

	if rows > 0 then
		return true
	end

	return false
end

----- ---- --- -- -

function getcustnick (nick)
	local _, rows = VH:SQLQuery ("select `custom` from `" .. tbl_sql.cust .. "` where `nick` = '" .. repsqlchars (nick) .. "' limit 1")

	if rows > 0 then
		local _, value = VH:SQLFetch (0)
		return value
	else
		local lownick = tolow (nick)

		for key, value in pairs (table_cust) do
			if tolow (key) == lownick then
				return value
			end
		end
	end

	return
end

----- ---- --- -- -

function getrealnick (nick, custom)
	local rnick = findcustnick (custom)

	if not rnick then
		if getstatus (custom) == 1 then
			commandanswer (nick, gettext ("Requested nick is real."))
		else
			commandanswer (nick, gettext ("Requested nick wasn't found in custom nick list."))
		end
	else
		local stsword = ""

		if getstatus (rnick) == 1 then
			stsword = gettext ("online")
		else
			stsword = gettext ("offline")
		end

		commandanswer (nick, gettext ("Requested nick belongs to a user who is %s: %s"):format (stsword, rnick)) -- todo: split translation
	end
end

----- ---- --- -- -

function findcustnick (nick)
	local _, rows = VH:SQLQuery ("select `nick` from `" .. tbl_sql.cust .. "` where `custom` = '" .. repsqlchars (nick) .. "'")

	if rows > 0 then
		local _, val = VH:SQLFetch (0)
		return val
	else
		local lnick = tolow (nick)

		for k, v in pairs (table_cust) do
			if tolow (v) == lnick then
				return k
			end
		end

		return
	end
end

----- ---- --- -- -

function addcustnick (nick, custom)
	local nnick = repsqlchars (nick)
	local _, rows = VH:SQLQuery ("select `custom` from `" .. tbl_sql.cust .. "` where `nick` = '" .. nnick .. "'")

	if rows > 0 then
		local _, old = VH:SQLFetch (0)
		VH:SendToClass ("$Quit " .. old .. "|", 0, 10)
		VH:SQLQuery ("update `" .. tbl_sql.cust .. "` set `custom` = '" .. repsqlchars (custom) .. "' where `nick` = '" .. nnick .. "'")
	else
		VH:SQLQuery ("insert into `" .. tbl_sql.cust .. "` (`nick`, `custom`) values ('" .. nnick .. "', '" .. repsqlchars (custom) .. "')")
	end

	--if getconfig ("send_user_ip") == 1 then
		--local ip = getip (nick)

		--if ip ~= "0.0.0.0" then
			--VH:SendToClass ("$UserIP " .. custom .. " " .. ip .. "$$|", 3, 10)
		--end
	--end
end

----- ---- --- -- -

function cleancustnick (limit, byclass)
	local _, rows = VH:SQLQuery ("select `nick`, `custom` from `" .. tbl_sql.cust .. "`")

	if rows > 0 then
		local table_delete = {}

		for x = 0, rows - 1 do
			local _, nick, custom = VH:SQLFetch (x)

			if byclass == 0 then
				if # custom > limit then
					table_delete [nick] = custom
				end
			else
				if getclass (nick) < limit then
					table_delete [nick] = custom
				end
			end
		end

		for k, v in pairs (table_delete) do
			VH:SQLQuery ("delete from `" .. tbl_sql.cust .. "` where `nick` = '" .. repsqlchars (k) .. "'")

			if getstatus (k) == 1 then
				if table_sets.classnoticust ~= 11 then
					maintoall (gettext ("%s is now known as: %s"):format (v, k), table_sets.classnoticust, 10)
				end
			end

			VH:SendToClass ("$Quit " .. v.."|", 0, 10)
		end
	end
end

----- ---- --- -- -

function delcustnick (nick, cls, quit)
	local lnick = tolow (nick)

	for k, v in pairs (table_cust) do
		if tolow (k) == lnick or tolow (v) == lnick then
			table_cust [k] = nil

			if quit then
				VH:SendToClass ("$Quit " .. v .. "|", 0, 10)
			end

			return v
		end
	end

	if cls >= table_sets.custnickclass then
		lnick = repsqlchars (nick)
		local _, rows = VH:SQLQuery ("select `custom` from `" .. tbl_sql.cust .. "` where `nick` = '" .. lnick .. "' or `custom` = '" .. lnick .. "'")

		if rows > 0 then
			local _, cust = VH:SQLFetch (0)
			VH:SQLQuery ("delete from `" .. tbl_sql.cust .. "` where `custom` = '" .. repsqlchars (cust) .. "'")

			if quit then
				VH:SendToClass ("$Quit " .. cust .. "|", 0, 10)
			end

			return cust
		end
	end

	return
end

----- ---- --- -- -

function resetrealnick (nick)
	local lnick = tolow (nick)

	for k, v in pairs (table_cust) do
		if tolow (v) == lnick then
			maintoall (gettext ("Custom nick %s is now owned by real user and therefore has been reset for user: %s"):format (nick, k), 0, 10)
			table_cust [k] = nil
			return
		end
	end

	if table_sets.custnickclass ~= 11 then -- might be enabled after user login, results a conflict
		local _, rows = VH:SQLQuery ("select `nick` from `" .. tbl_sql.cust .. "` where `custom` = '" .. repsqlchars (nick) .. "' limit 1")

		if rows > 0 then
			local _, cust = VH:SQLFetch (0)
			VH:SQLQuery ("delete from `" .. tbl_sql.cust .. "` where `nick` = '" .. repsqlchars (cust) .. "' limit 1")
			maintoall (gettext ("Custom nick %s is now owned by real user and therefore has been reset for user: %s"):format (nick, cust), 0, 10)
		end
	end
end

----- ---- --- -- -

function opforcecustnick (nick, line)
	local _, _, onick, ncust = line:find ("^(%S+) (.+)$")

	if table_sets.custnickclass == 11 then
		commandanswer (nick, gettext ("Enable requested feature and try again."))
	elseif getstatus (onick) == 0 then
		commandanswer (nick, gettext ("User not in list: %s"):format (onick))
	elseif # ncust > table_sets.custmaxlen then
		commandanswer (nick, gettext ("Custom nick can't be longer than %d characters."):format (table_sets.custmaxlen))
	else
		local oldcust = getcustnick (onick)
		ncust = repnickchars (ncust)

		if getstatus (ncust) == 0 and not getregclass (ncust) and not findcustnick (ncust) then
			if getclass (onick) < table_sets.custnickclass then -- temporary nick
				table_cust [onick] = ncust

				if oldcust then
					VH:SendToClass ("$Quit " .. oldcust .. "|", 0, 10)
				end

				--if getconfig ("send_user_ip") == 1 then
					--local ip = getip (onick)

					--if ip ~= "0.0.0.0" then
						--VH:SendToClass ("$UserIP " .. ncust .. " " .. ip .. "$$|", 3, 10)
					--end
				--end
			else
				addcustnick (onick, ncust)
			end

			if table_sets.classnoticust == 11 then
				commandanswer (nick, gettext ("You renamed %s to: %s"):format ((oldcust or getcsnick (onick) or onick), ncust))
			else
				maintoall (gettext ("%s renamed %s to: %s"):format ((getcustnick (nick) or nick), (oldcust or getcsnick (onick) or onick), ncust), table_sets.classnoticust, 10)
			end
		else -- nick already exists in list
			commandanswer (nick, gettext ("This nick is registered or in use and therefore can't be used as custom nick: %s"):format (ncust))
		end
	end
end

----- ---- --- -- -

function opdelcustnick (nick, user)
	local luser, orig, cust, ok = repsqlchars (user), "", "", false
	local _, rows = VH:SQLQuery ("select `nick`, `custom` from `" .. tbl_sql.cust .. "` where `nick` = '" .. luser .. "' or `custom` = '" .. luser .. "'")

	if rows > 0 then
		_, orig, cust = VH:SQLFetch (0)
		VH:SQLQuery ("delete from `" .. tbl_sql.cust .. "` where `nick` = '" .. repsqlchars (orig) .. "'")
		ok = true
	else
		luser = tolow (user)

		for k, v in pairs (table_cust) do
			if tolow (k) == luser or tolow (v) == luser then
				orig = k
				cust = v
				table_cust [k] = nil
				ok = true
				break
			end
		end
	end

	if ok then
		if getstatus (orig) == 1 then
			if table_sets.classnoticust == 11 then
				commandanswer (nick, gettext ("%s is now known as: %s"):format (cust, (getcsnick (orig) or orig)))
			else
				maintoall (gettext ("%s is now known as: %s"):format (cust, (getcsnick (orig) or orig)), table_sets.classnoticust, 10)
			end
		else
			commandanswer (nick, gettext ("Deleted user from custom nick list: %s"):format (orig))
		end

		VH:SendToClass ("$Quit " .. cust .. "|", 0, 10)
	else
		commandanswer (nick, gettext ("Couldn't delete user from custom nick list because not found: %s"):format (user))
	end
end

----- ---- --- -- -

function resetcustnicks ()
	if table_sets.custnickclass == 11 then return end
	if table_sets.savecustnicks == 1 then return end
	local _, rows = VH:SQLQuery ("select `nick`, `custom` from `" .. tbl_sql.cust .. "`")
	if type (rows) ~= "number" then return end

	if rows > 0 then
		local table_delete = {}

		for x = 0, rows - 1 do
			local _, nick, custom = VH:SQLFetch (x)
			table_delete [nick] = custom
		end

		for k, v in pairs (table_delete) do
			VH:SQLQuery ("delete from `" .. tbl_sql.cust .. "` where `nick` = '" .. repsqlchars (k) .. "'")

			if getstatus (k) == 1 then
				if table_sets.classnoticust ~= 11 then
					maintoall (gettext ("%s is now known as: %s"):format (v, k), table_sets.classnoticust, 10)
				end
			end
		end
	end
end

----- ---- --- -- -

function setcustnick (nick, custom, ucl)
	local ip = getip (nick)

	if not isprotected (nick, ip) then -- protection
		if table_sets.chatuptime > 0 and table_sets.showuseruptime == 1 and ucl < table_sets.scanbelowclass and table_usup [nick] then -- chat uptime
			local dif = os.time () - table_usup [nick]

			if dif < table_sets.chatuptime then
				opsnotify (table_sets.classnotilowupchat, gettext ("Low chat uptime of %d seconds from %s with IP %s and class %d in command: %s"):format (dif, nick, ip .. tryipcc (ip, nick), ucl, "+" .. table_cmnds.nick .. " " .. custom))

				if table_sets.chatuptimeact == 0 then -- message
					maintouser (nick, gettext ("Please wait another %d seconds before using public chat."):format (table_sets.chatuptime - dif))
				elseif table_sets.chatuptimeact == 1 then -- drop
					opsnotify (table_sets.classnotilowupchat, gettext ("User dropped: %s"):format (nick))
					VH:Disconnect (nick)
				--elseif table_sets.chatuptimeact == 2 then -- silent
					-- nothing to do
				elseif table_sets.chatuptimeact == 3 then -- message to self
					opsnotify (table_sets.classnotilowupchat, gettext ("User received own message: %s"):format (nick))
					maintouser (nick, gettext ("%s is now known as: %s"):format (nick, custom)) -- simple for now
				end

				return
			end
		end

		if table_sets.chatcodeon > 0 and (table_sets.chatcodeflag == 0 or table_sets.chatcodeflag == 1) and ucl <= table_sets.codemaxclass then -- chatcode
			if not table_code [nick] then
				local vcode, code = genchatcode ()

				table_code [nick] = {
					["vcode"] = vcode,
					["code"] = code,
					["lock"] = true
				}

				local txt = table_sets.codetext:gsub ("<code>", reprexpchars (vcode))
				maintouser (nick, txt)
				return
			elseif table_code [nick]["lock"] then
				local txt = table_sets.codetext:gsub ("<code>", reprexpchars (table_code [nick]["vcode"]))
				maintouser (nick, txt)
				return
			end
		end
	end

if # custom == 0 then -- user is resetting his nick
	local oldcust = getcustnick (nick)

	if oldcust then
		delcustnick (nick, ucl, true)

		if table_sets.classnoticust == 11 then
			commandanswer (nick, gettext ("You are now known as: %s"):format (nick))
		else
			maintoall (gettext ("%s is now known as: %s"):format (oldcust, nick), table_sets.classnoticust, 10)
		end
	else
		commandanswer (nick, gettext ("I'm staying idle due to confusion."))
	end

elseif # custom > table_sets.custmaxlen then
	commandanswer (nick, gettext ("Custom nick can't be longer than %d characters."):format (table_sets.custmaxlen))
else
	if antiscan (nick, ucl, custom, 1, nil, nil) == 0 then return end -- scan for spam
	local custom = repnickchars (custom)

	if nick:lower () == custom:lower () or (getstatus (custom) == 0 and not getregclass (custom) and not findcustnick (custom)) then
		local oldcust = getcustnick (nick)

		if nick == custom then -- resetting
			delcustnick (nick, ucl, true)
		else
			addcustnick (nick, custom)
		end

		if table_sets.classnoticust == 11 then
			commandanswer (nick, gettext ("You are now known as: %s"):format (custom))
		else
			maintoall (gettext ("%s is now known as: %s"):format ((oldcust or nick), custom), table_sets.classnoticust, 10)
		end

	else -- nick already used
		commandanswer (nick, gettext ("This nick is registered or in use and therefore can't be used as custom nick: %s"):format (custom))
	end
end
end

----- ---- --- -- -

function listcustnick (nick)
	local t = {}
	local _, rows = VH:SQLQuery ("select `nick`, `custom` from `" .. tbl_sql.cust .. "`")

	if rows > 0 then
		for x = 0, rows - 1 do
			local _, usr, cust = VH:SQLFetch (x)
			t [usr] = cust
		end
	end

	for k, v in pairs (table_cust) do
		t [k] = v
	end

	local list, x = "", 1

	for k, v in pairs (t) do
		list = list .. " " .. x..". [ O: " .. getstatus (k) .. " ] " .. k.." @ " .. v.."\r\n"
		x = x + 1
	end

	if list ~= "" then
		commandanswer (nick, gettext ("Custom nick list") .. ":\r\n\r\n" .. list)
	else
		commandanswer (nick, gettext ("Custom nick list is empty."))
	end
end

----- ---- --- -- -

function logsread (nick, line)
	local name, linu = "", table_othsets.logdeflines

	if line:match ("^%S+ %d+$") then
		name, linu = line:match ("^(%S+) (%d+)$")
	else
		name = line:match ("^(%S+)$")
	end

	linu = tonumber (linu)

	if linu < 1 then
		linu = 1
	end

	if name == "log" or name == "log.old" or name == "err" or name == "err.old" or name == "net_out.log" then
		local lito = 0
		local file = io.open (table_othsets.cfgdir .. name, "r")

		if file then
			file:close ()

			for line in io.lines (table_othsets.cfgdir .. name) do
				lito = lito + 1
			end

			local diff, show = 0, 0

			if lito > 0 then
				if lito > linu then
					diff = lito - linu + 1
					show = linu
				else
					diff = 1
					show = lito
				end

				local nule, list = # _tostring (lito), ""
				lito = 0

				for line in io.lines (table_othsets.cfgdir .. name) do
					lito = lito + 1

					if lito >= diff then
						list = list .. " " .. prezero (nule, lito) .. ": " .. repnmdcoutchars (line) .. "\r\n"
					end
				end

				commandanswer (nick, gettext ("Showing last %d lines out of total %d found in %s file"):format (show, lito, name) .. ":\r\n\r\n" .. list)
			else -- empty file
				commandanswer (nick, gettext ("Log file is empty or does not exist."))
			end
		else -- file not found
			commandanswer (nick, gettext ("Log file is empty or does not exist."))
		end
	else -- invalid file
		commandanswer (nick, gettext ("Known files are: %s"):format ("log, err, log.old, err.old " .. gettext ("and") .. " net_out.log"))
	end
end

----- ---- --- -- -

function checkcmd (nick, class, cmd)
	local _, rows = VH:SQLQuery ("select `command`, `class` from `" .. tbl_sql.cmd .. "` order by `occurred` desc")

	if rows > 0 then
		local rcmd = repnmdcinchars (cmd)

		for x = 0, rows - 1 do
			local _, entry, cls = VH:SQLFetch (x)

			if rcmd:find (entry) and (class < tonumber (cls)) then
				VH:SQLQuery ("update `" .. tbl_sql.cmd .. "` set `occurred` = `occurred` + 1 where `command` = '" .. repsqlchars (entry) .. "' limit 1")
				commandanswer (nick, gettext ("This command is either disabled or you don't have access to it."))
				return 0
			end
		end
	end

	return 1
end

----- ---- --- -- -

function addcmdentry (nick, item)
local _, _, class = item:find ("^.+ (%d+)$")
class = tonumber (class)

if class == 11 or class == 10 or class == 5 or class == 4 or class == 3 or class == 2 or class == 1 then -- only if valid class
local _, _, entry = item:find ("^(.+) %d+$")
local str = repsqlchars (repnmdcinchars (entry))
local _, rows = VH:SQLQuery ("select `class` from `" .. tbl_sql.cmd .. "` where `command` = '" .. str .. "' limit 1")

if rows > 0 then
VH:SQLQuery ("update `" .. tbl_sql.cmd .. "` set `class` = " .. class .. " where `command` = '" .. str .. "' limit 1")
commandanswer (nick, gettext ("Modified command permission with class %d: %s"):format (class, entry))
else
VH:SQLQuery ("insert into `" .. tbl_sql.cmd .. "` (`command`, `class`) values ('" .. str .. "', " .. class .. ")")
commandanswer (nick, gettext ("Added command permission with class %d: %s"):format (class, entry))
end

else
commandanswer (nick, gettext ("Known classes are: %s"):format ("1, 2, 3, 4, 5, 10 " .. gettext ("and") .. " 11"))
end
end

----- ---- --- -- -

function delcmdentry (nick, item)
local aitem = repsqlchars (repnmdcinchars (item))
local _, rows = VH:SQLQuery ("select `class` from `" .. tbl_sql.cmd .. "` where `command` = '" .. aitem .. "' limit 1")

if rows > 0 then
VH:SQLQuery ("delete from `" .. tbl_sql.cmd .. "` where `command` = '" .. aitem .. "' limit 1")
commandanswer (nick, gettext ("Deleted command permission: %s"):format (item))
else
commandanswer (nick, gettext ("Couldn't delete command permission because not found: %s"):format (item))
end
end

----- ---- --- -- -

function listcmdentry (nick)
local _, rows = VH:SQLQuery ("select `command`, `class`, `occurred` from `" .. tbl_sql.cmd .. "` order by `occurred` desc")

if rows > 0 then
local anentry, len = "", 0

for x = 0, rows - 1 do
local _, entry, class, occurred = VH:SQLFetch (x)
if x == 0 then len = # occurred end
anentry = anentry .. " " .. prezero (# rows, (x + 1)) .. ". [ O: " .. prezero (len, occurred) .. " ] " .. repnmdcoutchars (entry) .. " [" .. class .. "]\r\n"
end

commandanswer (nick, gettext ("Command permission list") .. ":\r\n\r\n" .. anentry)
else
commandanswer (nick, gettext ("Command permission list is empty."))
end
end

----- ---- --- -- -

function addcmdexentry (nick, item)
local entry = repsqlchars (repnmdcinchars (item))
local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.cmdex .. "` where `exception` = '" .. entry .. "' limit 1")

if rows > 0 then
commandanswer (nick, gettext ("Couldn't add command notification exception entry because already exists: %s"):format (item))
else
VH:SQLQuery ("insert into `" .. tbl_sql.cmdex .. "` (`exception`) values ('" .. entry .. "')")
commandanswer (nick, gettext ("Added command notification exception entry: %s"):format (item))
end
end

----- ---- --- -- -

function delcmdexentry (nick, item)
local aitem = repsqlchars (repnmdcinchars (item))
local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.cmdex .. "` where `exception` = '" .. aitem .. "' limit 1")

if rows > 0 then
VH:SQLQuery ("delete from `" .. tbl_sql.cmdex .. "` where `exception` = '" .. aitem .. "' limit 1")
commandanswer (nick, gettext ("Deleted command notification exception entry: %s"):format (item))
else
commandanswer (nick, gettext ("Couldn't delete command notification exception entry because not found: %s"):format (item))
end
end

----- ---- --- -- -

function listcmdexentry (nick)
local _, rows = VH:SQLQuery ("select `exception`, `occurred` from `" .. tbl_sql.cmdex .. "` order by `occurred` desc")

if rows > 0 then
local anentry, len = "", 0

for x = 0, rows - 1 do
local _, entry, occurred = VH:SQLFetch (x)
if x == 0 then len = # occurred end
anentry = anentry .. " " .. prezero (# rows, (x + 1)) .. ". [ O: " .. prezero (len, occurred) .. " ] " .. repnmdcoutchars (entry) .. "\r\n"
end

commandanswer (nick, gettext ("Command notification exception list") .. ":\r\n\r\n" .. anentry)
else
commandanswer (nick, gettext ("Command notification exception list is empty."))
end
end

----- ---- --- -- -

function installtimebot ()
	table_othsets.timebotseconds = os.time ()
	local bottime = table_othsets.timebotseconds + table_sets.srvtimediff -- current time
	bottime = os.date (table_sets.timebotnick, bottime)

	if table_sets.fasttimebot == 1 then
		if table_othsets.lasttimenick then
			VH:SendToClass ("$Quit " .. table_othsets.lasttimenick .. "|", 0, 10)
		end

		VH:SendToClass ("$OpList " .. bottime .. "$$|", 0, 10)
	else
		if table_othsets.lasttimenick then
			delhubrobot (table_othsets.lasttimenick)
		end

		addhubrobot (bottime, table_othsets.timebotdesc, 2, "", 0)
	end

	table_othsets.lasttimenick = bottime
end

----- ---- --- -- -

function addreminder (nick, item)
	local _, _, ident, cntnt, minc, maxc, dest, intv = item:find ("^(%S+) (.+) (%d+) (%d+) (%d) (%d+)$")
	minc, maxc, dest, intv = tonumber (minc), tonumber (maxc), tonumber (dest), tonumber (intv)

	if (minc > 5 and minc < 10) or minc > 10 or (maxc > 5 and maxc < 10) or maxc > 10 then -- invalid class
		commandanswer (nick, gettext ("Known classes are: %s"):format ("0, 1, 2, 3, 4, 5 " .. gettext ("and") .. " 10"))
	elseif dest > 3 then -- invalid destination
		commandanswer (nick, gettext ("Known destinations are: %s"):format ("0, 1, 2 " .. gettext ("and") .. " 3"))
	elseif intv < 1 or intv > 10080 then -- invalid interval
		commandanswer (nick, gettext ("Known interval is: %s"):format ("1 " .. gettext ("to") .. " 10080"))
	else
		if dest == 3 and cntnt:find (string.char (67, 111, 110, 110, 101, 99, 116, 84, 111, 77, 101)) then
			commandanswer (nick, gettext ("Don't be stupid."))
		else
			local entry = repsqlchars (ident)
			local _, rows = VH:SQLQuery ("select `dest` from `" .. tbl_sql.rem .. "` where `id` = '" .. entry .. "' limit 1")

			if rows > 0 then
				VH:SQLQuery ("update `" .. tbl_sql.rem .. "` set `content` = '" .. repsqlchars (cntnt) .. "', `minclass` = " .. minc .. ", `maxclass` = " .. maxc .. ", `dest` = " .. dest .. ", `interval` = " .. intv .. " where `id` = '" .. entry .. "' limit 1")
				commandanswer (nick, gettext ("Modified reminder: %s"):format (ident))
			else
				VH:SQLQuery ("insert into `" .. tbl_sql.rem .. "` (`id`, `content`, `minclass`, `maxclass`, `dest`, `interval`) values ('" .. entry .. "', '" .. repsqlchars (cntnt) .. "', " .. minc .. ", " .. maxc .. ", " .. dest .. ", " .. intv .. ")")
				commandanswer (nick, gettext ("Added reminder: %s"):format (ident))
			end
		end
	end
end

----- ---- --- -- -

function delreminder (nick, item)
	local aitem = repsqlchars (item)
	local _, rows = VH:SQLQuery ("select `dest` from `" .. tbl_sql.rem .. "` where `id` = '" .. aitem .. "' limit 1")

	if rows > 0 then
		VH:SQLQuery ("delete from `" .. tbl_sql.rem .. "` where `id` = '" .. aitem .. "' limit 1")
		commandanswer (nick, gettext ("Deleted reminder: %s"):format (item))
	else
		commandanswer (nick, gettext ("Reminder not found: %s"):format (item))
	end
end

----- ---- --- -- -

function showreminder (nick, id)
	local _, rows = VH:SQLQuery ("select `content` from `" .. tbl_sql.rem .. "` where `id` = '" .. repsqlchars (id) .. "' limit 1")

	if rows > 0 then
		local _, contn = VH:SQLFetch (0)
		commandanswer (nick, gettext ("Preview of %s reminder: %s"):format (id, reptextvars (contn, nil, nil)))
	else
		commandanswer (nick, gettext ("Reminder not found: %s"):format (id))
	end
end

----- ---- --- -- -

function listreminder (nick)
local _, rows = VH:SQLQuery ("select `id`, `content`, `minclass`, `maxclass`, `dest`, `interval`, `timer` from `" .. tbl_sql.rem .. "` order by `minclass` asc, `maxclass` desc")

if rows > 0 then
	local anentry = ""

	for x = 0, rows - 1 do
		local _, ident, cntnt, minc, maxc, dest, intv, timr = VH:SQLFetch (x)
		dest = tonumber (dest)

		if dest == 0 then
			dest = gettext ("MC")
		elseif dest == 1 then
			dest = gettext ("PM")
		elseif dest == 3 then
			dest = gettext ("Raw command")
		else -- 2
			dest = gettext ("Both")
		end

		anentry = anentry .. "\r\n " .. gettext ("Identifier: %s"):format (ident) .. "\r\n " .. gettext ("Destination: %s"):format (dest) .. " [ C: " .. minc .. "-" .. maxc .. " ]\r\n " .. gettext ("Interval: %d of %d"):format (timr, intv) .. "\r\n " .. gettext ("Content: %s"):format (cntnt) .. "\r\n"
	end

	commandanswer (nick, gettext ("Reminder list") .. ":\r\n" .. anentry)
else
	commandanswer (nick, gettext ("Reminder list is empty."))
end
end

----- ---- --- -- -

function sendreminder ()
	local _, rows = VH:SQLQuery ("select `id`, `interval`, `timer` from `" .. tbl_sql.rem .. "`")
	if rows == 0 then return end
	local t = {}

	for x = 0, rows - 1 do
		local _, idnt, intrv, tmer = VH:SQLFetch (x)
		tmer = tonumber (tmer) + 1

		if tmer >= tonumber (intrv) then
			t [idnt] = 0
		else
			t [idnt] = tmer
		end
	end

	for k, v in pairs (t) do
		local repk = repsqlchars (k)

		if v == 0 then -- send the reminder
			local _, rows = VH:SQLQuery ("select `content`, `minclass`, `maxclass`, `dest` from `" .. tbl_sql.rem .. "` where `id` = '" .. repk .. "' limit 1")

			if rows > 0 then
				local _, contn, mincl, maxcl, pmf = VH:SQLFetch (0)
				local repdvars = reptextvars (contn, nil, nil)
				pmf = tonumber (pmf)

				if pmf == 0 then -- mc
					maintoall (repdvars, mincl, maxcl, true)
				elseif pmf == 1 then -- pm
					VH:SendPMToAll (repdvars, table_othsets.sendfrom, mincl, maxcl)
				elseif pmf == 3 then -- raw
					VH:SendToClass (repnmdcinchars (repdvars), mincl, maxcl)
				else -- 2, mc + pm
					maintoall (repdvars, mincl, maxcl, true)
					VH:SendPMToAll (repdvars, table_othsets.sendfrom, mincl, maxcl)
				end
			end
		end

		VH:SQLQuery ("update `" .. tbl_sql.rem .. "` set `timer` = " .. v.." where `id` = '" .. repk .. "' limit 1")
	end
end

----- ---- --- -- -

function addtrigger (nick, data)
	local _, _, id, cont, minc, maxc = data:find ("^(%S+) \"(.+)\" (%d+) (%d+)$")
	minc, maxc = tonumber (minc), tonumber (maxc)

	if (minc > 5 and minc < 10) or minc > 10 or (maxc > 5 and maxc < 10) or maxc > 10 then -- invalid class
		commandanswer (nick, gettext ("Known classes are: %s"):format ("0, 1, 2, 3, 4, 5 " .. gettext ("and") .. " 10"))
	else
		local entry = repsqlchars (id)
		local _, rows = VH:SQLQuery ("select `minclass` from `" .. tbl_sql.trig .. "` where `id` = '" .. entry .. "' limit 1")

		if rows > 0 then
			VH:SQLQuery ("update `" .. tbl_sql.trig .. "` set `content` = '" .. repsqlchars (cont) .. "', `minclass` = " .. _tostring (minc) .. ", `maxclass` = " .. _tostring (maxc) .. " where `id` = '" .. entry .. "' limit 1")
			commandanswer (nick, gettext ("Modified trigger: %s"):format (id))
		else
			VH:SQLQuery ("insert into `" .. tbl_sql.trig .. "` (`id`, `content`, `minclass`, `maxclass`) values ('" .. entry .. "', '" .. repsqlchars (cont) .. "', " .. _tostring (minc) .. ", " .. _tostring (maxc) .. ")")
			commandanswer (nick, gettext ("Added trigger: %s"):format (id))
		end
	end
end

----- ---- --- -- -

function deltrigger (nick, id)
	local entry = repsqlchars (id)
	local _, rows = VH:SQLQuery ("select `minclass` from `" .. tbl_sql.trig .. "` where `id` = '" .. entry .. "' limit 1")

	if rows > 0 then
		VH:SQLQuery ("delete from `" .. tbl_sql.trig .. "` where `id` = '" .. entry .. "' limit 1")
		commandanswer (nick, gettext ("Deleted trigger: %s"):format (id))
	else
		commandanswer (nick, gettext ("Trigger not found: %s"):format (id))
	end
end

----- ---- --- -- -

function listtrigger (nick)
	local _, rows = VH:SQLQuery ("select `id`, `content`, `minclass`, `maxclass` from `" .. tbl_sql.trig .. "` order by `minclass` asc, `maxclass` desc")

	if rows > 0 then
		local list = ""

		for x = 0, rows - 1 do
			local _, id, cont, minc, maxc = VH:SQLFetch (x)
			local data = cont:gsub ("[\r\n]", "")
			local dale = # data

			if dale > 100 then
				data = data:sub (1, dale) .. " [ .. .]"
			end

			list = list .. "\r\n " .. gettext ("Identifier: %s"):format (id) .. "\r\n " .. gettext ("Class range: %d to %d"):format (minc, maxc) .. "\r\n " .. gettext ("Content: %s"):format (repnmdcoutchars (data)) .. "\r\n"
		end

		commandanswer (nick, gettext ("Trigger list") .. ":\r\n" .. list)
	else
		commandanswer (nick, gettext ("Trigger list is empty."))
	end
end

----- ---- --- -- -

function checktrigger (nick, data, pm)
	if table_sets.trigrunning == 0 then
		return false
	end

	local _, _, id = data:find ("^" .. table_othsets.ustrig .. "(%S+)")

	if id then
		local _, rows = VH:SQLQuery ("select `content`, `minclass`, `maxclass` from `" .. tbl_sql.trig .. "` where `id` = '" .. repsqlchars (id) .. "' limit 1")

		if rows > 0 then
			local _, cont, minc, maxc = VH:SQLFetch (0)
			local class = getclass (nick)

			if tonumber (pm) == 1 then
				if class >= tonumber (minc) and class <= tonumber (maxc) then
					pmtouser (nick, nil, repnmdcoutchars (reptextvars (cont, nick)))
				else
					pmtouser (nick, nil, gettext ("This command is either disabled or you don't have access to it."))
				end
			else
				if class >= tonumber (minc) and class <= tonumber (maxc) then
					maintouser (nick, repnmdcoutchars (reptextvars (cont, nick)))
				else
					maintouser (nick, gettext ("This command is either disabled or you don't have access to it."))
				end
			end

			return true
		end
	end

	return false
end

----- ---- --- -- -

function addnopm (nick, line)
	local _, _, lre, act, cls, rsn = line:find ("^(%S+) (%d) (%d+) (.+)$")

	if tonumber (act) > 1 then -- invalid action
		commandanswer (nick, gettext ("Known actions are: %s"):format ("0 " .. gettext ("and") .. " 1"))
	elseif (tonumber (cls) > 5 and tonumber (cls) < 10) or tonumber (cls) > 11 then -- invalid class
		commandanswer (nick, gettext ("Known classes are: %s"):format ("0, 1, 2, 3, 4, 5, 10 " .. gettext ("and") .. " 11"))
	else
		local rlre = repsqlchars (repnmdcinchars (lre))
		local _, rows = VH:SQLQuery ("select `action` from `" .. tbl_sql.nopm .. "` where `nick` = '" .. rlre .. "' limit 1")

		if rows > 0 then -- update
			VH:SQLQuery ("update `" .. tbl_sql.nopm .. "` set `action` = " .. act .. ", `maxclass` = " .. cls .. ", `reason` = '" .. repsqlchars (rsn) .. "' where `nick` = '" .. rlre .. "' limit 1")
			commandanswer (nick, gettext ("Modified blocked PM entry: %s"):format (lre))
		else -- add
			VH:SQLQuery ("insert into `" .. tbl_sql.nopm .. "` (`nick`, `action`, `maxclass`, `reason`) values ('" .. rlre .. "', " .. act .. ", " .. cls .. ", '" .. repsqlchars (rsn) .. "')")
			commandanswer (nick, gettext ("Added blocked PM entry: %s"):format (lre))
		end
	end
end

----- ---- --- -- -

function checkipwat (nick, ip, data)
	-- affected areas so far: supports, validatenick, myinfo, search, sr, ctm, rctm
	local _, rows = VH:SQLQuery ("select `ip`, `reason`, `result` from `" .. tbl_sql.ipwa .. "`")

	if rows > 0 then
		for x = 0, rows - 1 do
			local _, lre, rsn, res = VH:SQLFetch (x)

			if ip:find ("^" .. lre) then
				opsnotify (table_sets.classnotiipwatch, gettext ("IP watch notification from %s with IP %s: %s"):format ((nick or gettext ("unknown nick")), ip .. tryipcc (ip, nick), rsn) .. "\r\n\r\n " .. repnmdcoutchars (data) .. "\r\n") -- notify

				if tonumber (res) == 0 then
					return true
				else
					return false
				end
			end
		end
	end

	return false
end

----- ---- --- -- -

function addipwat (nick, line)
	local _, _, lre, rsn, res = line:find ("^(%S+) \"(.+)\" (%d)$")

	if tonumber (res) < 0 or tonumber (res) > 1 then
		commandanswer (nick, gettext ("Known results are: %s"):format ("0 " .. gettext ("and") .. " 1"))
	else
		local rlre = repsqlchars (repnmdcinchars (lre))
		local _, rows = VH:SQLQuery ("select `result` from `" .. tbl_sql.ipwa .. "` where `ip` = '" .. rlre .. "' limit 1")

		if rows > 0 then -- update
			VH:SQLQuery ("update `" .. tbl_sql.ipwa .. "` set `reason` = '" .. repsqlchars (rsn) .. "', `result` = " .. res .. " where `ip` = '" .. rlre .. "' limit 1")
			commandanswer (nick, gettext ("Modified IP watch entry: %s"):format (lre))
		else -- add
			VH:SQLQuery ("insert into `" .. tbl_sql.ipwa .. "` (`ip`, `reason`, `result`) values ('" .. rlre .. "', '" .. repsqlchars (rsn) .. "', " .. res .. ")")
			commandanswer (nick, gettext ("Added IP watch entry: %s"):format (lre))
		end
	end
end

----- ---- --- -- -

function delipwat (nick, line)
	local rlre = repsqlchars (repnmdcinchars (line))
	local _, rows = VH:SQLQuery ("select `result` from `" .. tbl_sql.ipwa .. "` where `ip` = '" .. rlre .. "' limit 1")

	if rows > 0 then -- delete
		VH:SQLQuery ("delete from `" .. tbl_sql.ipwa .. "` where `ip` = '" .. rlre .. "' limit 1")
		commandanswer (nick, gettext ("Deleted IP watch entry: %s"):format (line))
	else -- not in list
		commandanswer (nick, gettext ("Couldn't delete IP watch entry because not found: %s"):format (line))
	end
end

----- ---- --- -- -

function listipwat (nick)
	local _, rows = VH:SQLQuery ("select `ip`, `reason`, `result` from `" .. tbl_sql.ipwa .. "`")

	if rows > 0 then -- ok
		local iwlist = ""

		for x = 0, rows - 1 do
			local _, lre, rsn, res = VH:SQLFetch (x)
			iwlist = iwlist .. " " .. prezero (# rows, (x + 1)) .. ". " .. repnmdcoutchars (lre) .. " [ R: " .. rsn .. " ] [ R: " .. res .. " ]\r\n"
		end

		commandanswer (nick, gettext ("List of IP watch entries") .. ":\r\n\r\n" .. iwlist)
	else -- empty
		commandanswer (nick, gettext ("IP watch list is empty."))
	end
end

----- ---- --- -- -

function addrcmenu (nick, line)
	local _, _, menu, cmnd, cype, cont, ord, minc, maxc = line:find ("^\"(.+)\" \"(.*)\" (%d+) (%d+) (%d+) (%d+) (%d+)$")
	cype = tonumber (cype)

	if (cype >= 0 and cype <= 2) or cype == 255 then
		cont = tonumber (cont)

		if cont >= 1 and cont <= 15 then
			ord = tonumber (ord)

			if ord >= 0 and ord <= 65535 then
				minc = tonumber (minc)

				if (minc >= 0 and minc <= 5) or minc == 10 or minc == 11 then
					maxc = tonumber (maxc)

					if (maxc >= 0 and maxc <= 5) or maxc == 10 then
						local repmenu = repsqlchars (repnmdcoutchars (menu))
						local repcmnd = repsqlchars (repnmdcoutchars (cmnd))
						local _, rows = VH:SQLQuery ("select `id` from `" .. tbl_sql.rcmenu .. "` where `menu` = '" .. repmenu .. "' limit 1")

						if rows > 0 then -- update
							local _, id = VH:SQLFetch (0)
							VH:SQLQuery ("update `" .. tbl_sql.rcmenu .. "` set `command` = '" .. repcmnd .."', `type` = " .. _tostring (cype) .. ", `cont` = " .. _tostring (cont) .. ", `order` = " .. _tostring (ord) .. ", `minclass` = " .. _tostring (minc) .. ", `maxclass` = " .. _tostring (maxc) .. " where `id` = " .. _tostring (id))
							commandanswer (nick, gettext ("Modified right click menu item: %s"):format (menu))
						else -- add
							VH:SQLQuery ("insert into `" .. tbl_sql.rcmenu .. "` (`menu`, `command`, `type`, `cont`, `order`, `minclass`, `maxclass`) values ('" .. repmenu .. "', '" .. repcmnd .. "', " .. _tostring (cype) .. ", " .. _tostring (cont) .. ", " .. _tostring (ord) .. ", " .. _tostring (minc) .. ", " .. _tostring (maxc) .. ")")
							commandanswer (nick, gettext ("Added right click menu item: %s"):format (menu))
						end
					else -- unknown maximum class
						commandanswer (nick, gettext ("Known classes are: %s"):format ("0, 1, 2, 3, 4, 5 " .. gettext ("and") .. " 10"))
					end
				else -- unknown minimum class
					commandanswer (nick, gettext ("Known classes are: %s"):format ("0, 1, 2, 3, 4, 5, 10 " .. gettext ("and") .. " 11"))
				end
			else -- unknown order
				commandanswer (nick, gettext ("Known orders are: %s"):format ("0 " .. gettext ("to") .. " 65535"))
			end
		else -- unknown context
			commandanswer (nick, gettext ("Known contexts are: %s"):format ("1 " .. gettext ("to") .. " 15"))
		end
	else -- unknown type
		commandanswer (nick, gettext ("Known types are: %s"):format ("0, 1, 2, " .. gettext ("and") .. " 255"))
	end
end

----- ---- --- -- -

function delrcmenu (nick, id)
	local _, rows = VH:SQLQuery ("select `menu` from `" .. tbl_sql.rcmenu .. "` where `id` = " .. _tostring (id))

	if rows > 0 then
		local _, menu = VH:SQLFetch (0)
		VH:SQLQuery ("delete from `" .. tbl_sql.rcmenu .. "` where `id` = " .. _tostring (id))
		commandanswer (nick, gettext ("Deleted right click menu item: %s"):format (menu))
	else
		commandanswer (nick, gettext ("Right click menu item not found: %d"):format (tonumber (id)))
	end
end

----- ---- --- -- -

function listrcmenu (nick)
	local _, rows = VH:SQLQuery ("select * from `" .. tbl_sql.rcmenu .. "` order by `order` asc, `id` asc")

	if rows > 0 then
		local list = ""

		for x = 0, rows - 1 do
			local _, id, menu, cmnd, cype, cont, ord, minc, maxc, off = VH:SQLFetch (x)
			list = list .. "\r\n " .. gettext ("Menu item") .. ": " .. menu .. "\r\n"

			if cmnd == "" then
				list = list .. " " .. gettext ("Menu command") .. ": " .. gettext ("Separator or eraser") .. "\r\n"
			else
				list = list .. " " .. gettext ("Menu command") .. ": " .. cmnd .. "\r\n"
			end

			list = list .. " [ I: " .. _tostring (id) .. " ] [ T: " .. _tostring (cype) .. " ] [ C: " .. _tostring (cont) .. " ] [ O: " .. _tostring (ord) .. " ] [ MIC: " .. _tostring (minc) .. " ] [ MAC: " .. _tostring (maxc) .. " ] [ D: " .. _tostring (off) .. " ]\r\n"
		end

		commandanswer (nick, gettext ("List of right click menu items") .. ":\r\n" .. list)
	else
		commandanswer (nick, gettext ("Right click menu item list is empty."))
	end
end

----- ---- --- -- -

function ordrcmenu (nick, line)
	local id, ord = line:match ("^(%d+) (%d+)$")
	ord = tonumber (ord)

	if ord >= 0 and ord <= 65535 then
		local _, rows = VH:SQLQuery ("select `menu` from `" .. tbl_sql.rcmenu .. "` where `id` = " .. _tostring (id))

		if rows > 0 then
			local _, menu = VH:SQLFetch (0)
			VH:SQLQuery ("update `" .. tbl_sql.rcmenu .. "` set `order` = " .. _tostring (ord) .. " where `id` = " .. _tostring (id))
			commandanswer (nick, gettext ("Changed right click menu item order: %s"):format (menu))
		else
			commandanswer (nick, gettext ("Right click menu item not found: %d"):format (tonumber (id)))
		end
	else -- unknown order
		commandanswer (nick, gettext ("Known orders are: %s"):format ("0 " .. gettext ("to") .. " 65535"))
	end
end

----- ---- --- -- -

function offrcmenu (nick, id)
	local _, rows = VH:SQLQuery ("select `menu`, `off` from `" .. tbl_sql.rcmenu .. "` where `id` = " .. _tostring (id))

	if rows > 0 then
		local _, menu, off = VH:SQLFetch (0)
		off = tonumber (off or 0) or 0

		if off == 0 then
			VH:SQLQuery ("update `" .. tbl_sql.rcmenu .. "` set `off` = 1 where `id` = " .. _tostring (id))
			commandanswer (nick, gettext ("Disabled right click menu item: %s"):format (menu))
		else
			VH:SQLQuery ("update `" .. tbl_sql.rcmenu .. "` set `off` = 0 where `id` = " .. _tostring (id))
			commandanswer (nick, gettext ("Enabled right click menu item: %s"):format (menu))
		end
	else
		commandanswer (nick, gettext ("Right click menu item not found: %d"):format (tonumber (id)))
	end
end

----- ---- --- -- -

function sendrcmenu (nick, class)
	if table_sets.instrcmenu == 0 or class < 0 then
		return
	end

	if table_refu.InUserSupports then -- check if client supports user commands
		local on, has = VH:InUserSupports (nick, "UserCommand")

		if on and has and tonumber (has) == 0 then
			return
		end
	end

	local _, rows = VH:SQLQuery ("select `menu`, `command`, `type`, `cont` from `" .. tbl_sql.rcmenu .. "` where `off` = 0 and `minclass` <= " .. _tostring (class) .. " and `maxclass` >= " .. tonumber (class) .. " order by `order` asc, `id` asc")

	if rows > 0 then
		for x = 0, rows - 1 do
			local _, menu, cmnd, cype, cont = VH:SQLFetch (x)

			if cmnd == "" then
				VH:SendToUser ("$UserCommand " .. _tostring (cype) .. " " .. _tostring (cont) .. "|", nick)
			else
				VH:SendToUser ("$UserCommand " .. _tostring (cype) .. " " .. _tostring (cont) .. " " .. menu .. "$<%[mynick]> " .. cmnd .. "&#124;|", nick)
			end
		end
	end
end

----- ---- --- -- -

function delnopm (nick, line)
	local rlre = repsqlchars (repnmdcinchars (line))
	local _, rows = VH:SQLQuery ("select `action` from `" .. tbl_sql.nopm .. "` where `nick` = '" .. rlre .. "' limit 1")

	if rows > 0 then -- delete
		VH:SQLQuery ("delete from `" .. tbl_sql.nopm .. "` where `nick` = '" .. rlre .. "' limit 1")
		commandanswer (nick, gettext ("Deleted blocked PM entry: %s"):format (line))
	else -- not in list
		commandanswer (nick, gettext ("Couldn't delete blocked PM entry because not found: %s"):format (line))
	end
end

----- ---- --- -- -

function listnopm (nick)
	local _, rows = VH:SQLQuery ("select `nick`, `action`, `maxclass`, `reason` from `" .. tbl_sql.nopm .. "` order by `action` asc")

	if rows > 0 then -- ok
		local nplist = ""

		for x = 0, rows - 1 do
			local _, lre, act, cls, rsn = VH:SQLFetch (x)
			nplist = nplist .. "\r\n " .. prezero (# rows, (x + 1)) .. ". " .. repnmdcoutchars (lre) .. " [ A: " .. act .. " ] [ C: " .. cls .. " ]\r\n " .. gettext ("Reason: %s"):format (rsn) .. "\r\n"
		end

		commandanswer (nick, gettext ("List of blocked PM entries") .. ":\r\n" .. nplist)
	else -- empty
		commandanswer (nick, gettext ("Blocked PM list is empty."))
	end
end

----- ---- --- -- -

function checknopm (from, cls, to)
	-- fixme: confrontation with antispam, actions that forwards the message, such as replace
	local _, rows = VH:SQLQuery ("select `nick`, `action`, `maxclass`, `reason` from `" .. tbl_sql.nopm .. "`")

	if rows > 0 then
		for x = 0, rows - 1 do
			local _, lre, act, mcl, rsn = VH:SQLFetch (x)

			if tolow (to):find (lre) then
				if cls <= tonumber (mcl) then
					pmtouser (from, to, gettext ("You're not allowed to send PM to this user because: %s"):format (rsn))

					if tonumber (act) == 1 then -- drop
						VH:Disconnect (from)
					end

					return true
				end

				break
			end
		end
	end

	return false
end

----- ---- --- -- -

function addhban (nick, line)
	local _, _, lst, rsn = line:find ("^(.+) \"(.+)\"$")
	local cnt = 0

	for lre in lst:gmatch ("%S+") do
		cnt = cnt + 1
		local rlre = repsqlchars (repnmdcinchars (lre))
		local _, rows = VH:SQLQuery ("select `ip` from `" .. tbl_sql.hban .. "` where `ip` = '" .. rlre .. "' limit 1")

		if rows > 0 then -- update
			VH:SQLQuery ("update `" .. tbl_sql.hban .. "` set `reason` = '" .. repsqlchars (rsn) .. "' where `ip` = '" .. rlre .. "' limit 1")

			if nick then
				commandanswer (nick, gettext ("Modified hard IP ban entry: %s"):format (lre))
			end
		else -- add
			VH:SQLQuery ("insert into `" .. tbl_sql.hban .. "` (`ip`, `reason`) values ('" .. rlre .. "', '" .. repsqlchars (rsn) .. "')")

			if nick then
				commandanswer (nick, gettext ("Added hard IP ban entry: %s"):format (lre))
			end
		end
	end

	if cnt == 0 and nick then
		commandanswer (nick, gettext ("To add multiple entries with this command you need to separate every entry by space."))
	end
end

----- ---- --- -- -

function delhban (nick, line)
	local rlre = repsqlchars (repnmdcinchars (line))
	local _, rows = VH:SQLQuery ("select `ip` from `" .. tbl_sql.hban .. "` where `ip` = '" .. rlre .. "' limit 1")

	if rows > 0 then -- delete
		VH:SQLQuery ("delete from `" .. tbl_sql.hban .. "` where `ip` = '" .. rlre .. "' limit 1")
		commandanswer (nick, gettext ("Deleted hard IP ban entry: %s"):format (line))
	else -- not in list
		commandanswer (nick, gettext ("Couldn't delete hard IP ban entry because not found: %s"):format (line))
	end
end

----- ---- --- -- -

function listhban (nick)
	local _, rows = VH:SQLQuery ("select `ip`, `reason` from `" .. tbl_sql.hban .. "`")

	if rows > 0 then -- ok
		local hblist = ""

		for x = 0, rows - 1 do
			local _, lre, rsn = VH:SQLFetch (x)
			hblist = hblist .. " " .. prezero (# rows, (x + 1)) .. ". " .. repnmdcoutchars (lre) .. " [ R: " .. rsn .. " ]\r\n"
		end

		commandanswer (nick, gettext ("List of hard IP ban entries") .. ":\r\n\r\n" .. hblist)
	else -- empty
		commandanswer (nick, gettext ("Hard IP ban list is empty."))
	end
end

----- ---- --- -- -

function checkhban (ip)
	local _, rows = VH:SQLQuery ("select `ip`, `reason` from `" .. tbl_sql.hban .. "`")

	if rows > 0 then
		for x = 0, rows - 1 do
			local _, lre, rsn = VH:SQLFetch (x)

			if ip:find ("^" .. lre) then
				opsnotify (table_sets.classnotihardban, gettext ("Hard IP ban refused connection from IP %s: %s"):format (ip .. tryipcc (ip), rsn)) -- notify
				return true
			end
		end
	end

	return false
end

----- ---- --- -- -

function addnews (nick, item)
	local ndate = os.time () + table_sets.srvtimediff -- current time
	VH:SQLQuery ("insert into `" .. tbl_sql.news .. "` (`date`, `by`, `item`) values (" .. _tostring (ndate) .. ", '" .. repsqlchars (nick) .. "', '" .. repsqlchars (item) .. "')")

	if table_sets.newsclass < 11 then
		maintoall (gettext ("News item added by %s: %s"):format (nick, item), table_sets.newsclass, 10)
	else
		commandanswer (nick, gettext ("Added news item: %s"):format (os.date (table_sets.dateformat .. " " .. table_sets.timeformat, ndate)))
	end
end

----- ---- --- -- -

function delnews (nick, adate)
	local _, rows = VH:SQLQuery ("select `date` from `" .. tbl_sql.news .. "`")
	local t = {}

	if rows > 0 then
		for x = 0, rows - 1 do
			local _, zdate = VH:SQLFetch (x)

			if os.date (table_sets.dateformat .. " " .. table_sets.timeformat, zdate):find (repdatechars (adate)) then
				table.insert (t, zdate)
			end
		end
	else
		commandanswer (nick, gettext ("Hub news list is empty."))
		return
	end

	for _, v in pairs (t) do
		-- items might have same timestamp, dont delete duplicates
		-- or create other way for deletion, for example by id
		VH:SQLQuery ("delete from `" .. tbl_sql.news .. "` where `date` = " .. v.." limit 1")
	end

	local num = # t

	if num > 0 then
		commandanswer (nick, gettext ("Deleted %d news items."):format (num))
	else
		commandanswer (nick, gettext ("Couldn't delete news items because not found: %s"):format (adate))
	end
end

----- ---- --- -- -

function sendnews (nick, num, auto)
	local lnum = tonumber (num or table_sets.newsdeflines) or table_sets.newsdeflines

	if lnum < 1 then
		lnum = 1
	end

	local _, rows = VH:SQLQuery ("select `date`, `by`, `item` from `" .. tbl_sql.news .. "` order by `date` desc, `id` desc limit " .. _tostring (lnum))

	if rows > 0 then
		local list = ""

		for x = 0, rows - 1 do
			local _, sdate, user, text = VH:SQLFetch (x)
			list = " " .. gettext ("By %s on %s: %s"):format (user, os.date (table_sets.dateformat .. " " .. table_sets.timeformat, sdate), text) .. "\r\n" .. list
		end

		if auto then
			maintouser (nick, gettext ("Last %d news items"):format (rows) .. ":\r\n\r\n" .. list)
		else
			commandanswer (nick, gettext ("Last %d news items"):format (rows) .. ":\r\n\r\n" .. list)
		end
	elseif not auto then -- only if sending manually
		commandanswer (nick, gettext ("Hub news list is empty."))
	end
end

----- ---- --- -- -

function addresponder (nick, item)
	local _, _, msg, rpl, maxc = item:find ("^\"(.+)\" \"(.+)\" (%d+)$")
	maxc = tonumber (maxc)

	if maxc >= 0 and maxc <= 5 or maxc == 10 then
		VH:SQLQuery ("insert into `" .. tbl_sql.mcresp .. "` (`message`, `reply`, `maxclass`) values ('" .. repsqlchars (repnmdcinchars (msg)) .. "', '" .. repsqlchars (rpl) .. "', " .. maxc .. ")")
		commandanswer (nick, gettext ("Added chat responder: %s"):format (msg))
	else
		commandanswer (nick, gettext ("Known classes are: %s"):format ("0, 1, 2, 3, 4, 5 " .. gettext ("and") .. " 10"))
	end
end

----- ---- --- -- -

function delresponder (nick, id)
	local _, rows = VH:SQLQuery ("select `maxclass` from `" .. tbl_sql.mcresp .. "` where `id` = " .. id)

	if rows > 0 then
		VH:SQLQuery ("delete from `" .. tbl_sql.mcresp .. "` where `id` = " .. id)
		commandanswer (nick, gettext ("Deleted chat responder with ID: %d"):format (id))
	else
		commandanswer (nick, gettext ("Couldn't delete chat responder because ID not found: %d"):format (id))
	end
end

----- ---- --- -- -

function listresponder (nick, lre)
	local _, rows = VH:SQLQuery ("select `id`, `message`, `reply`, `maxclass`, `occurred` from `" .. tbl_sql.mcresp .. "` order by `occurred` desc, `id` desc")
	local list, count = "", 0

	if rows > 0 then
		for x = 0, rows - 1 do
			local _, id, msg, repl, maxc, occur = VH:SQLFetch (x)

			if lre == "" or reppatchars (msg):match (repnmdcinchars (lre)) then
				list = list .. "\r\n " .. gettext ("Responder") .. ": " .. repnmdcoutchars (msg) .. "\r\n " .. gettext ("Reply") .. ": " .. repl .. "\r\n [ I: " .. _tostring (id) .. " ] [ C: " .. _tostring (maxc) .. " ] [ O: " .. _tostring (occur) .. " ]\r\n"
				count = count + 1
			end
		end
	end

	if count > 0 then
		commandanswer (nick, gettext ("Main chat responder list") .. ": " .. gettext ("%d of %d"):format (count, rows) .. "\r\n" .. list)
	elseif rows > 0 then
		commandanswer (nick, gettext ("Main chat responder list contains %d items, but none matched your pattern."):format (rows))
	else
		commandanswer (nick, gettext ("Main chat responder list is empty."))
	end
end

----- ---- --- -- -

function addrespex (nick, item)
	local entry = repsqlchars (item)
	local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.respex .. "` where `exception` = '" .. entry .. "'")

	if rows > 0 then
		commandanswer (nick, gettext ("Couldn't add chat responder exception because already exists: %s"):format (item))
	else
		VH:SQLQuery ("insert into `" .. tbl_sql.respex .. "` (`exception`) values ('" .. entry .. "')")
		commandanswer (nick, gettext ("Added chat responder exception: %s"):format (item))
	end
end

----- ---- --- -- -

function delrespex (nick, item)
	local aitem = repsqlchars (item)
	local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.respex .. "` where `exception` = '" .. aitem .. "'")

	if rows > 0 then
		VH:SQLQuery ("delete from `" .. tbl_sql.respex .. "` where `exception` = '" .. aitem .. "'")
		commandanswer (nick, gettext ("Deleted chat responder exception: %s"):format (item))
	else
		commandanswer (nick, gettext ("Couldn't delete chat responder exception because not found: %s"):format (item))
	end
end

----- ---- --- -- -

function listrespex (nick)
	local _, rows = VH:SQLQuery ("select `exception`, `occurred` from `" .. tbl_sql.respex .. "` order by `occurred` desc")

	if rows > 0 then
		local anentry, len = "", 0

		for x = 0, rows - 1 do
			local _, entry, occurred = VH:SQLFetch (x)
			if x == 0 then len = # occurred end
			anentry = anentry .. " " .. prezero (# rows, (x + 1)) .. ". [ O: " .. prezero (len, occurred) .. " ] " .. entry .. "\r\n"
		end

		commandanswer (nick, gettext ("Chat responder exception list") .. ":\r\n\r\n" .. anentry)
	else
		commandanswer (nick, gettext ("Chat responder exception list is empty."))
	end
end

----- ---- --- -- -

function replyresponder (nick, cls, msg)
	if table_sets.resprunning == 0 then
		return
	end

	local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.respex .. "` where `exception` = '" .. repsqlchars (nick) .. "' or `exception` = '" .. repsqlchars (getip (nick)) .. "'")

	if rows > 0 then
		local _, ex = VH:SQLFetch (0)
		VH:SQLQuery ("update `" .. tbl_sql.respex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (ex) .. "'")
		return
	end

	local _, rows = VH:SQLQuery ("select `id`, `message`, `reply`, `maxclass` from `" .. tbl_sql.mcresp .. "`")

	if rows > 0 then
		local txt = tolow (repnmdcinchars (msg))
		local respsel = {}

		for x = 0, rows - 1 do
			local _, id, ent, repl, maxc = VH:SQLFetch (x)
			id = tonumber (id)

			if cls <= tonumber (maxc) and txt:match (ent) then
				table.insert (respsel, {[id] = repl})
			end
		end

		local cnt = # respsel

		if cnt > 0 then
			if table_sets.respskiplast == 1 and table_lars.last and cnt > 1 then
				for k, v in pairs (respsel) do
					if v [table_lars.last] then
						table.remove (respsel, k)
						cnt = cnt - 1
						break
					end
				end
			end

			for k, v in pairs (respsel [math.random (cnt)]) do
				table.insert (table_resp, {[os.time ()] = reptextvars (v, nick, msg)})
				VH:SQLQuery ("update `" .. tbl_sql.mcresp .. "` set `occurred` = `occurred` + 1 where `id` = " .. _tostring (k))

				if table_sets.respskiplast == 1 then
					table_lars.last = k
				end
			end
		end
	end
end

----- ---- --- -- -

function addreplacer (nick, item)
	local data, repl, maxc, flags = "", "", 10, 1

	if item:match ("^\".+\" \".+\" %d+ %d$") then
		data, repl, maxc, flags = item:match ("^\"(.+)\" \"(.+)\" (%d+) (%d)$")
	else
		data, repl, maxc = item:match ("^\"(.+)\" \"(.+)\" (%d+)$")
	end

	maxc = tonumber (maxc)
	flags = tonumber (flags)

	if maxc < 0 or maxc > 10 or (maxc > 5 and maxc < 10) then
		commandanswer (nick, gettext ("Known classes are: %s"):format ("0, 1, 2, 3, 4, 5 " .. gettext ("and") .. " 10"))
	elseif flags < 0 or flags > 2 then
		commandanswer (nick, gettext ("Known flags are: %s"):format ("0=ALL, 1=MC " .. gettext ("and") .. " 2=PM"))
	else
		VH:SQLQuery ("insert into `" .. tbl_sql.chatrepl .. "` (`message`, `replace`, `maxclass`, `flags`) values ('" .. repsqlchars (repnmdcinchars (data)) .. "', '" .. repsqlchars (repl) .. "', " .. _tostring (maxc) .. ", " .. _tostring (flags) .. ")")
		local note = "Added replacer in MC: %s"

		if flags == 0 then
			note = "Added replacer in MC and PM: %s"
		elseif flags == 2 then
			note = "Added replacer in PM: %s"
		end

		commandanswer (nick, gettext (note):format (data))
	end
end

----- ---- --- -- -

function delreplacer (nick, id)
	local _, rows = VH:SQLQuery ("select `maxclass` from `" .. tbl_sql.chatrepl .. "` where `id` = " .. _tostring (id))

	if rows > 0 then
		VH:SQLQuery ("delete from `" .. tbl_sql.chatrepl .. "` where `id` = " .. _tostring (id))
		commandanswer (nick, gettext ("Deleted chat replacer with ID: %d"):format (id))
	else
		commandanswer (nick, gettext ("Couldn't delete chat replacer because ID not found: %d"):format (id))
	end
end

----- ---- --- -- -

function listreplacer (nick)
	local _, rows = VH:SQLQuery ("select `id`, `message`, `replace`, `maxclass`, `flags`, `occurred` from `" .. tbl_sql.chatrepl .. "` order by `occurred` desc, `id` desc")

	if rows > 0 then
		local list = ""

		for row = 0, rows - 1 do
			local _, id, data, repl, maxc, flag, occ = VH:SQLFetch (row)
			list = list .. "\r\n " .. gettext ("LRE") .. ": " .. repnmdcoutchars (data) .. "\r\n " .. gettext ("Replace") .. ": " .. repl .. "\r\n [ I: " .. _tostring (id) .. " ] [ C: " .. _tostring (maxc) .. " ] [ F: " .. _tostring (flag) .. " ] [ O: " .. _tostring (occ) .. " ]\r\n"
		end

		commandanswer (nick, gettext ("Chat replacer list") .. ":\r\n" .. list)
	else
		commandanswer (nick, gettext ("Chat replacer list is empty."))
	end
end

----- ---- --- -- -

function addreplex (nick, line)
	local item, iype = line:match ("^(.+) (%d)$")
	iype = tonumber (iype)

	if iype < 0 or iype > 2 then
		commandanswer (nick, gettext ("Known types are: %s"):format ("0, 1 " .. gettext ("and") .. " 2"))
	else
		local entry = repsqlchars (item)
		local _, rows = VH:SQLQuery ("select `type` from `" .. tbl_sql.replex .. "` where `exception` = '" .. entry .. "'")

		if rows > 0 then
			VH:SQLQuery ("update `" .. tbl_sql.replex .. "` set `type` = " .. _tostring (iype) .. " where `exception` = '" .. entry .. "'")
			commandanswer (nick, gettext ("Modified chat replacer exception with type %d: %s"):format (iype, item))
		else
			VH:SQLQuery ("insert into `" .. tbl_sql.replex .. "` (`exception`, `type`) values ('" .. entry .. "', " .. _tostring (iype) .. ")")
			commandanswer (nick, gettext ("Added chat replacer exception with type %d: %s"):format (iype, item))
		end
	end
end

----- ---- --- -- -

function delreplex (nick, item)
	local entry = repsqlchars (item)
	local _, rows = VH:SQLQuery ("select `type` from `" .. tbl_sql.replex .. "` where `exception` = '" .. entry .. "'")

	if rows > 0 then
		local _, iype = VH:SQLFetch (0)
		VH:SQLQuery ("delete from `" .. tbl_sql.replex .. "` where `exception` = '" .. entry .. "'")
		commandanswer (nick, gettext ("Deleted chat replacer exception with type %d: %s"):format (iype, item))
	else
		commandanswer (nick, gettext ("Couldn't delete chat replacer exception because not found: %s"):format (item))
	end
end

----- ---- --- -- -

function listreplex (nick)
	local _, rows = VH:SQLQuery ("select `exception`, `type`, `occurred` from `" .. tbl_sql.replex .. "` order by `occurred` desc")

	if rows > 0 then
		local list, olen = "", 0

		for row = 0, rows - 1 do
			local _, item, iype, occ = VH:SQLFetch (row)

			if row == 0 then
				olen = # _tostring (occ)
			end

			list = list .. " " .. prezero (# _tostring (rows), (row + 1)) .. ". [ T: " .. _tostring (iype) .. " ] [ O: " .. prezero (olen, occ) .. " ] " .. repnmdcoutchars (item) .. "\r\n"
		end

		commandanswer (nick, gettext ("Chat replacer exception list") .. ":\r\n\r\n" .. list)
	else
		commandanswer (nick, gettext ("Chat replacer exception list is empty."))
	end
end

----- ---- --- -- -

function replchatmsg (nick, addr, class, data, flag)
	local _, rows = VH:SQLQuery ("select `exception`, `type` from `" .. tbl_sql.replex .. "`")
	local exli = {}

	if rows > 0 then
		local done = ""

		for row = 0, rows - 1 do
			local _, item, iype = VH:SQLFetch (row)
			iype = tonumber (iype or 2) or 2

			if iype == 0 then -- nick
				if nick == item then
					done = item
					break
				end
			elseif iype == 1 then -- addr
				if addr == item then
					done = item
					break
				end
			else -- lre
				table.insert (exli, item)
			end
		end

		if done ~= "" then
			VH:SQLQuery ("update `" .. tbl_sql.replex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (done) .. "'")
			return data
		end
	end

	local _, rows = VH:SQLQuery ("select `id`, `message`, `replace`, `maxclass` from `" .. tbl_sql.chatrepl .. "` where `flags` = 0 or `flags` = " .. _tostring (flag))

	if rows > 0 then
		local repls = {}

		for row = 0, rows - 1 do
			local _, id, item, repl, cmax = VH:SQLFetch (row)

			table.insert (repls, {
				[(tonumber (id or 1) or 1)] = {
					["c"] = tonumber (cmax or 0) or 0,
					["d"] = item,
					["r"] = repl
				}
			})
		end

		local back = repnmdcinchars (data)
		local test = tolow (back)
		local done = false

		for _, list in pairs (repls) do
			for id, item in pairs (list) do
				if class <= item.c then
					local last = 1

					for part in test:gmatch (item.d) do
						local sos, eos = test:find (part, last, true)

						if sos and eos then
							local cont, expa = true, ""

							if sos < 8 then
								expa = test:sub (1, eos + 6)
							else
								expa = test:sub (sos - 6, eos + 6)
							end

							for _, exen in pairs (exli) do
								if expa:match (exen) then
									VH:SQLQuery ("update `" .. tbl_sql.replex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (exen) .. "'")
									cont = false
									break
								end
							end

							if cont then
								local repl = reptextvars (item.r, (getcustnick (nick) or nick), back) -- dont replace % here
								back = back:sub (1, sos - 1) .. repl .. back:sub (eos + 1)
								test = test:sub (1, sos - 1) .. repl .. test:sub (eos + 1)
								last = sos + # repl
							end
						end
					end

					if last > 1 then
						VH:SQLQuery ("update `" .. tbl_sql.chatrepl .. "` set `occurred` = `occurred` + 1 where `id` = " .. _tostring (id))
						done = true
					end
				end
			end
		end

		if done then
			return repnmdcoutchars (back)
		end
	end

	return data
end

----- ---- --- -- -

function addrelease (nick, line)
	local _, rel, cat, tth = 0, "", "", ""

	if line:find ("^\".+\" \".+\" %S+$") then
		_, _, rel, cat, tth = line:find ("^\"(.+)\" \"(.+)\" (%S+)$")
	else
		_, _, rel, cat = line:find ("^\"(.+)\" \"(.+)\"$")
	end

	local arel = repsqlchars (rel)
	local _, rows = VH:SQLQuery ("select `date` from `" .. tbl_sql.rel .. "` where `release` = '" .. arel .. "' limit 1")
	local ndate = os.time () + table_sets.srvtimediff -- current time

	if rows > 0 then
		VH:SQLQuery ("update `" .. tbl_sql.rel .. "` set `category` = '" .. repsqlchars (cat) .. "', `tth` = '" .. repsqlchars (tth) .. "', `date` = '" .. ndate .. "' where `release` = '" .. arel .. "' limit 1")
		commandanswer (nick, gettext ("Modified release: %s"):format (rel))
	else
		VH:SQLQuery ("insert into `" .. tbl_sql.rel .. "` (`release`, `category`, `tth`, `by`, `date`) values ('" .. arel .. "', '" .. repsqlchars (cat) .. "', '" .. repsqlchars (tth) .. "', '" .. repsqlchars (nick) .. "', '" .. ndate .. "')")
		commandanswer (nick, gettext ("Added release: %s"):format (rel))
	end
end

----- ---- --- -- -

function delrelease (nick, line)
local _, _, stype = line:find ("^(%S+) .+$")

if stype == "rel" then
local _, _, rel = line:find ("^%S+ (.+)$")
local arel = repsqlchars (rel)
local _, rows = VH:SQLQuery ("select `date` from `" .. tbl_sql.rel .. "` where `release` = '" .. arel .. "' limit 1")

if rows > 0 then
VH:SQLQuery ("delete from `" .. tbl_sql.rel .. "` where `release` = '" .. arel .. "' limit 1")
commandanswer (nick, gettext ("Deleted release: %s"):format (rel))
else
commandanswer (nick, gettext ("Couldn't delete release because not found: %s"):format (rel))
end

elseif stype == "cat" then
local _, _, cat = line:find ("^%S+ (.+)$")
local acat = repsqlchars (cat)
local _, rows = VH:SQLQuery ("select `date` from `" .. tbl_sql.rel .. "` where `category` = '" .. acat .. "'")

if rows > 0 then
VH:SQLQuery ("delete from `" .. tbl_sql.rel .. "` where `category` = '" .. acat .. "'") -- no limit
commandanswer (nick, gettext ("Deleted %d releases from category: %s"):format (rows ,cat))
else
commandanswer (nick, gettext ("Couldn't delete category because not found: %s"):format (cat))
end

else -- unknown type
commandanswer (nick, gettext ("Known types are: %s"):format ("rel " .. gettext ("and") .. " cat"))
end
end

----- ---- --- -- -

function listrelease (nick, line)
local _, stype, lnnum, catst = 0, "", 0, ""

if line:find ("^%S+ %d+ .+$") then
_, _, stype, lnnum, catst = line:find ("^(%S+) (%d+) (.+)$")
else
_, _, stype, lnnum = line:find ("^(%S+) (%d+)$")
catst = nil
end

lnnum = tonumber (lnnum)
if lnnum < 1 then lnnum = 1 end

if stype == "cat" then
if not catst then
commandanswer (nick, gettext ("Selected type requires extra parameters. Please refer to manual for more information."))
else
local _, rows = VH:SQLQuery ("select `release`, `tth`, `by`, `date` from `" .. tbl_sql.rel .. "` where `category` = '" .. repsqlchars (catst) .. "' order by `date` desc limit " .. lnnum)

if rows > 0 then
local anentry = ""

for x = 0, rows - 1 do
local _, rel, tth, auth, adate = VH:SQLFetch (x)

if # tth > 0 then
tth = "\r\n " .. gettext ("Magnet link: %s"):format ("magnet:?xt=urn:tree:tiger:" .. tth)
end

anentry = anentry .. "\r\n " .. prezero (# rows, (x + 1)) .. ". " .. rel .. "\r\n " .. gettext ("Added by: %s"):format (auth) .. "\r\n " .. gettext ("Published: %s"):format (os.date (table_sets.dateformat .. " " .. table_sets.timeformat, adate)) .. tth .. "\r\n"
end

commandanswer (nick, gettext ("Last %d releases by category %s"):format (rows, catst) .. ":\r\n" .. anentry)
else
commandanswer (nick, gettext ("No releases by requested category were found: %s"):format (catst))
end
end

elseif stype == "pub" then
if not catst then
commandanswer (nick, gettext ("Selected type requires extra parameters. Please refer to manual for more information."))
else
local _, rows = VH:SQLQuery ("select `release`, `category`, `tth`, `date` from `" .. tbl_sql.rel .. "` where `by` = '" .. repsqlchars (catst) .. "' order by `date` desc limit " .. lnnum)

if rows > 0 then
local anentry = ""

for x = 0, rows - 1 do
local _, rel, cat, tth, adate = VH:SQLFetch (x)

if # tth > 0 then
tth = "\r\n " .. gettext ("Magnet link: %s"):format ("magnet:?xt=urn:tree:tiger:" .. tth)
end

anentry = anentry .. "\r\n " .. prezero (# rows, (x + 1)) .. ". " .. rel .. "\r\n " .. gettext ("Category: %s"):format (cat) .. "\r\n " .. gettext ("Published: %s"):format (os.date (table_sets.dateformat .. " " .. table_sets.timeformat, adate)) .. tth .. "\r\n"
end

commandanswer (nick, gettext ("Last %d releases published by %s"):format (rows, catst) .. ":\r\n" .. anentry)
else
commandanswer (nick, gettext ("No releases by requested publisher were found: %s"):format (catst))
end
end

elseif stype == "all" then
local _, rows = VH:SQLQuery ("select `release`, `category`, `tth`, `by`, `date` from `" .. tbl_sql.rel .. "` order by `date` desc limit " .. lnnum)

if rows > 0 then
local anentry = ""

for x = 0, rows - 1 do
local _, rel, cat, tth, auth, adate = VH:SQLFetch (x)

if # tth > 0 then
tth = "\r\n " .. gettext ("Magnet link: %s"):format ("magnet:?xt=urn:tree:tiger:" .. tth)
end

anentry = anentry .. "\r\n " .. prezero (# rows, (x + 1)) .. ". " .. rel .. "\r\n " .. gettext ("Category: %s"):format (cat) .. "\r\n " .. gettext ("Added by: %s"):format (auth) .. "\r\n " .. gettext ("Published: %s"):format (os.date (table_sets.dateformat .. " " .. table_sets.timeformat, adate)) .. tth .. "\r\n"
end

commandanswer (nick, gettext ("Last %d releases"):format (rows) .. ":\r\n" .. anentry)
else
commandanswer (nick, gettext ("Release list is empty."))
end

else -- unknown type
commandanswer (nick, gettext ("Known types are: %s"):format ("cat, pub " .. gettext ("and") .. " all"))
end
end

----- ---- --- -- -

function findrelease (nick, line)
	local spat = line:gsub ("%%", "\\%%")
	spat = spat:gsub (string.char (32), "%%") -- space to match any characters as word delimiter
	spat = repsqlchars (spat)
	local _, rows = VH:SQLQuery ("select `release`, `category`, `tth`, `by`, `date` from `" .. tbl_sql.rel .. "` where `release` like '%" .. spat .. "%' or `category` like '%" .. spat .. "%' order by `date` desc")

	if rows > 0 then
		local anentry = ""

		for x = 0, rows - 1 do
			local _, rel, cat, tth, auth, adate = VH:SQLFetch (x)

			if # tth > 0 then
				tth = "\r\n " .. gettext ("Magnet link: %s"):format ("magnet:?xt=urn:tree:tiger:" .. tth)
			end

			anentry = anentry .. "\r\n " .. prezero (# rows, (x + 1)) .. ". " .. rel .. "\r\n " .. gettext ("Category: %s"):format (cat) .. "\r\n " .. gettext ("Added by: %s"):format (auth) .. "\r\n " .. gettext ("Published: %s"):format (os.date (table_sets.dateformat .. " " .. table_sets.timeformat, adate)) .. tth .. "\r\n"
		end

		commandanswer (nick, gettext ("Last %d releases by search string %s"):format (rows, line) .. ":\r\n" .. anentry)
	else
		commandanswer (nick, gettext ("No releases by requested search string were found: %s"):format (line))
	end
end

----- ---- --- -- -

function seenlookup (nick, line)
	local _, ftype, ftext = 0, "nick", ""

	if line:match ("^[^ ]+ .+$") then
		ftype, ftext = line:match ("^([^ ]+) (.+)$")
	else
		ftext = line
	end

	if ftype == "nick" or ftype == "desc" or ftype == "tag" or ftype == "conn" or ftype == "mail" or ftype == "share" or ftype == "ip" then
		if ftype == "nick" then
			commandanswer (nick, gettext ("Looking for users with nick %s on: %s"):format (ftext, "http://www.te-home.net/?do=hublist"))
		elseif ftype == "desc" then
			commandanswer (nick, gettext ("Looking for users with description %s on: %s"):format (ftext, "http://www.te-home.net/?do=hublist"))
		elseif ftype == "tag" then
			commandanswer (nick, gettext ("Looking for users with client tag %s on: %s"):format (ftext, "http://www.te-home.net/?do=hublist"))
		elseif ftype == "conn" then
			commandanswer (nick, gettext ("Looking for users with connection type %s on: %s"):format (ftext, "http://www.te-home.net/?do=hublist"))
		elseif ftype == "mail" then
			commandanswer (nick, gettext ("Looking for users with email address %s on: %s"):format (ftext, "http://www.te-home.net/?do=hublist"))
		elseif ftype == "share" then
			commandanswer (nick, gettext ("Looking for users with share size %s on: %s"):format (ftext, "http://www.te-home.net/?do=hublist"))
		elseif ftype == "ip" then
			commandanswer (nick, gettext ("Looking for users with IP address %s on: %s"):format (ftext, "http://www.te-home.net/?do=hublist"))
		end

		local res, err, data = getcurl (table_othsets.seenurl, {[ftype] = ftext})

		if res then
			if data == "" or data == "0" then
				if ftype == "nick" then
					commandanswer (nick, gettext ("Users with nick not found in any hubs: %s"):format (ftext))
				elseif ftype == "desc" then
					commandanswer (nick, gettext ("Users with description not found in any hubs: %s"):format (ftext))
				elseif ftype == "tag" then
					commandanswer (nick, gettext ("Users with client tag not found in any hubs: %s"):format (ftext))
				elseif ftype == "conn" then
					commandanswer (nick, gettext ("Users with connection type not found in any hubs: %s"):format (ftext))
				elseif ftype == "mail" then
					commandanswer (nick, gettext ("Users with email address not found in any hubs: %s"):format (ftext))
				elseif ftype == "share" then
					commandanswer (nick, gettext ("Users with share size not found in any hubs: %s"):format (ftext))
				elseif ftype == "ip" then
					commandanswer (nick, gettext ("Users with IP address not found in any hubs: %s"):format (ftext))
				end
			else
				local list, lpos = "", 1

				for line in data:gmatch ("[^\r\n]+") do
					local _, _, lous, lohu = line:find ("^([^ ]+)|([^ ]+)$")

					if lous and lohu then
						list = list .. " " .. _tostring (lpos) .. ". " .. repnmdcoutchars (lous) .. " @ dchub://" .. repnmdcoutchars (lohu) .. "/\r\n"
						lpos = lpos + 1
					end
				end

				if list == "" then
					if ftype == "nick" then
						commandanswer (nick, gettext ("Users with nick not found in any hubs: %s"):format (ftext))
					elseif ftype == "desc" then
						commandanswer (nick, gettext ("Users with description not found in any hubs: %s"):format (ftext))
					elseif ftype == "tag" then
						commandanswer (nick, gettext ("Users with client tag not found in any hubs: %s"):format (ftext))
					elseif ftype == "conn" then
						commandanswer (nick, gettext ("Users with connection type not found in any hubs: %s"):format (ftext))
					elseif ftype == "mail" then
						commandanswer (nick, gettext ("Users with email address not found in any hubs: %s"):format (ftext))
					elseif ftype == "share" then
						commandanswer (nick, gettext ("Users with share size not found in any hubs: %s"):format (ftext))
					elseif ftype == "ip" then
						commandanswer (nick, gettext ("Users with IP address not found in any hubs: %s"):format (ftext))
					end
				else
					if ftype == "nick" then
						commandanswer (nick, gettext ("Users with nick %s found in following hubs"):format (ftext) .. ":\r\n\r\n" .. list)
					elseif ftype == "desc" then
						commandanswer (nick, gettext ("Users with description %s found in following hubs"):format (ftext) .. ":\r\n\r\n" .. list)
					elseif ftype == "tag" then
						commandanswer (nick, gettext ("Users with client tag %s found in following hubs"):format (ftext) .. ":\r\n\r\n" .. list)
					elseif ftype == "conn" then
						commandanswer (nick, gettext ("Users with connection type %s found in following hubs"):format (ftext) .. ":\r\n\r\n" .. list)
					elseif ftype == "mail" then
						commandanswer (nick, gettext ("Users with email address %s found in following hubs"):format (ftext) .. ":\r\n\r\n" .. list)
					elseif ftype == "share" then
						commandanswer (nick, gettext ("Users with share size %s found in following hubs"):format (ftext) .. ":\r\n\r\n" .. list)
					elseif ftype == "ip" then
						commandanswer (nick, gettext ("Users with IP address %s found in following hubs"):format (ftext) .. ":\r\n\r\n" .. list)
					end
				end
			end
		else
			commandanswer (nick, err)
		end
	else
		commandanswer (nick, gettext ("Known types are: %s"):format ("nick, desc, tag, conn, mail, share " .. gettext ("and") .. " ip"))
	end
end

----- ---- --- -- -

function dropip (nick, ip)
	local num = dropallbyip (ip)

	if num == 0 then
		commandanswer (nick, gettext ("No users found with IP: %s"):format (ip))
	else
		commandanswer (nick, gettext ("Dropped %d users with IP: %s"):format (num, ip))
		opsnotify (table_sets.classnotikick, gettext ("%s dropped %d users with IP: %s"):format (nick, num, ip))
	end
end

----- ---- --- -- -

function showuserinfo (nick, usr)
local user = getcsnick (usr)

if not user then -- not in list
	commandanswer (nick, gettext ("User not in list: %s"):format (usr))
elseif isbot (user) then -- bot
	if table_refu.GetLuaBots then
		local bots = VH:GetLuaBots ()
		local info = ""

		if bots then
			for _, v in pairs (bots) do
				if user == v ["sNick"] then
					info = info .. " " .. gettext ("Nick: %s"):format (user) .. "\r\n" -- nick

					if v ["iClass"] then -- class
						info = info .. " " .. gettext ("Class: %d"):format (v ["iClass"]) .. "\r\n"
					end

					if v ["sScriptname"] then -- script
						info = info .. " " .. gettext ("Owner script: %s"):format (v ["sScriptname"]) .. "\r\n"
					end

					if v ["sMyINFO"] then -- myinfo
						local desc, tag, conn, sts, email, share = parsemyinfo (user, v ["sMyINFO"])
						info = info .. " " .. gettext ("Description: %s"):format (desc) .. "\r\n" -- description
						info = info .. " " .. gettext ("Tag: %s"):format (tag) .. "\r\n" -- tag

						if # tag > 0 then -- tag information
							local res = parsetag (tag)

							if res ["cl"] then -- client
								info = info .. " " .. gettext ("Client: %s"):format (res ["cl"]) .. "\r\n"
							end

							if res ["ve"] then -- version
								info = info .. " " .. gettext ("Version: %s"):format (res ["ve"]) .. "\r\n"
							end

							if res ["mo"] then -- mode
								info = info .. " " .. gettext ("Mode: %s"):format (res ["mo"]) .. "\r\n"
							end

							if res ["hu"] then -- hubs
								info = info .. " " .. gettext ("Hubs: %s"):format (res ["hu"]) .. "\r\n"
							end

							if res ["sl"] then -- slots
								info = info .. " " .. gettext ("Slots: %s"):format (res ["sl"]) .. "\r\n"
							end

							if res ["li"] then -- limiter
								info = info .. " " .. gettext ("Limiter: %s KiB/s"):format (res ["li"]) .. "\r\n"
							end
						end

						info = info .. " " .. gettext ("Connection: %s"):format (conn) .. "\r\n" -- connection
						info = info .. " " .. gettext ("Status: %s"):format (statustostr (sts)) .. "\r\n" -- status
						info = info .. " " .. gettext ("Email: %s"):format (email) .. "\r\n" -- email
						info = info .. " " .. gettext ("Share: %s"):format (makesize (share)) .. "\r\n" -- share

						if tonumber (share) > 0 then
							info = info .. " " .. gettext ("Exact share: %s"):format (_tostring (share) .. " " .. gettext ("B")) .. "\r\n" -- exact share
						end
					end

					break
				end
			end
		end

		if info == "" then
			commandanswer (nick, gettext ("Unable to get bot information: %s"):format (user))
		else
			commandanswer (nick, gettext ("Bot information") .. ":\r\n\r\n" .. info)
		end

	else
		commandanswer (nick, gettext ("Unable to get bot information: %s"):format (user))
	end

else -- user
	local info = ""
	local class = getclass (user)
	local ip = getip (user)

	if table_sets.custnickclass < 11 then -- nick
		local cn = getcustnick (user)

		if cn then
			info = info .. " " .. gettext ("Nick: %s"):format (user .. " @ " .. cn) .. "\r\n"
		else
			info = info .. " " .. gettext ("Nick: %s"):format (user) .. "\r\n"
		end

	else
		info = info .. " " .. gettext ("Nick: %s"):format (user) .. "\r\n"
	end

		if table_sets.showuseruptime == 1 and table_usup [user] then -- uptime
			info = info .. " " .. gettext ("Uptime: %s"):format (formatuptime (table_usup [user], false)) .. "\r\n"
		end

	info = info .. " " .. gettext ("Class: %d"):format (class) .. "\r\n" -- class

	if getconfig ("dns_lookup") ~= 0 then
		info = info .. " " .. gettext ("DNS: %s"):format (gethost (user)) .. "\r\n" -- dns
	end

	info = info .. " " .. gettext ("IP: %s"):format (ip) .. "\r\n" -- ip

	if table_refu.GetUserGeoIP then
		local on, geoip = VH:GetUserGeoIP (user)

		if on and geoip and geoip ["host"] then
			if geoip ["range_low"] and geoip ["range_high"] then
				info = info .. " " .. gettext ("IP range: %s - %s"):format (geoip ["range_low"], geoip ["range_high"]) .. "\r\n" -- range
			end

			if geoip ["country_code"] then
				local extra = ""

				if geoip ["country"] then
					extra = "=" .. geoip ["country"]
				end

				info = info .. " " .. gettext ("Country: %s"):format (geoip ["country_code"] .. extra) .. "\r\n" -- country code and country
			end

			if geoip ["city"] then
				info = info .. " " .. gettext ("City: %s"):format (geoip ["city"]) .. "\r\n" -- city
			end

			if geoip ["region_code"] then
				local extra = ""

				if geoip ["region"] then
					extra = "=" .. geoip ["region"]
				end

				info = info .. " " .. gettext ("Region: %s"):format (geoip ["region_code"] .. extra) .. "\r\n" -- region code and region
			end

			if geoip ["continent_code"] then
				local extra = ""

				if geoip ["continent"] then
					extra = "=" .. geoip ["continent"]
				end

				info = info .. " " .. gettext ("Continent: %s"):format (geoip ["continent_code"] .. extra) .. "\r\n" -- continent code and continent
			end

			if geoip ["time_zone"] then
				info = info .. " " .. gettext ("Time zone: %s"):format (geoip ["time_zone"]) .. "\r\n" -- time zone
			end

			if geoip ["latitude"] and geoip ["longitude"] then
				info = info .. " " .. gettext ("Coordinates: %.4f %.4f"):format (geoip ["latitude"], geoip ["longitude"]) .. "\r\n" -- latitude and longitude
			end

			if geoip ["postal_code"] then
				info = info .. " " .. gettext ("Postal code: %s"):format (geoip ["postal_code"]) .. "\r\n" -- postal code
			end

			if geoip ["metro_code"] and geoip ["metro_code"] > 0 then
				info = info .. " " .. gettext ("Metro code: %d"):format (geoip ["metro_code"]) .. "\r\n" -- metro code
			end

			if geoip ["area_code"] and geoip ["area_code"] > 0 then
				info = info .. " " .. gettext ("Area code: %d"):format (geoip ["area_code"]) .. "\r\n" -- area code
			end
		end
	end

	local mi = getmyinfo (user)

	if mi then
		local desc, tag, conn, sts, email, share = parsemyinfo (user, mi)
		info = info .. " " .. gettext ("Description: %s"):format (desc) .. "\r\n" -- description
		info = info .. " " .. gettext ("Tag: %s"):format (tag) .. "\r\n" -- tag

		if # tag > 0 then -- tag information
			local res = parsetag (tag)

			if res ["cl"] then -- client
				info = info .. " " .. gettext ("Client: %s"):format (res ["cl"]) .. "\r\n"
			end

			if res ["ve"] then -- version
				info = info .. " " .. gettext ("Version: %s"):format (res ["ve"]) .. "\r\n"
			end

			if res ["mo"] then -- mode
				info = info .. " " .. gettext ("Mode: %s"):format (res ["mo"]) .. "\r\n"
			end

			if res ["hu"] then -- hubs
				info = info .. " " .. gettext ("Hubs: %s"):format (res ["hu"]) .. "\r\n"
			end

			if res ["sl"] then -- slots
				info = info .. " " .. gettext ("Slots: %s"):format (res ["sl"]) .. "\r\n"
			end

			if res ["li"] then -- limiter
				info = info .. " " .. gettext ("Limiter: %s KiB/s"):format (res ["li"]) .. "\r\n"
			end
		end

		info = info .. " " .. gettext ("Connection: %s"):format (conn) .. "\r\n" -- connection
		info = info .. " " .. gettext ("Status: %s"):format (statustostr (sts)) .. "\r\n" -- status
		info = info .. " " .. gettext ("Email: %s"):format (email) .. "\r\n" -- email
		info = info .. " " .. gettext ("Share: %s"):format (makesize (share)) .. "\r\n" -- share

		if tonumber (share) > 0 then
			info = info .. " " .. gettext ("Exact share: %s"):format (_tostring (share) .. " " .. gettext ("B")) .. "\r\n" -- exact share
		end
	end

	if table_refu.GetUserSupports then
		local on, sup = VH:GetUserSupports (user)

		if on and sup and sup ~= "" then
			info = info .. " " .. gettext ("Client supports: %s"):format (sup) .. "\r\n" -- supports
		end
	end

	if table_refu.GetUserVersion then
		local on, ver = VH:GetUserVersion (user)

		if on and ver and ver ~= "" then
			info = info .. " " .. gettext ("NMDC version: %s"):format (ver) .. "\r\n" -- version
		end
	end

	if table_refu.GetUserHubURL then
		local on, url = VH:GetUserHubURL (user)

		if on and url and url ~= "" then
			info = info .. " " .. gettext ("Hub URL: %s"):format (url) .. "\r\n" -- hub url
		end
	end

	local usli = getusersbyip (ip)

	if # usli > 1 then
		info = info .. " " .. gettext ("Users with same IP") .. ":" -- users with same ip

		for _, usni in pairs (usli) do
			if usni ~= user then
				info = info .. " " .. usni
			end
		end

		info = info .. "\r\n"
	end

	commandanswer (nick, gettext ("User information") .. ":\r\n\r\n" .. info)
end
end

----- ---- --- -- -

function showipinfo (nick, ip)
	if table_refu.GetHostGeoIP then
		local info = ""
		local ok, geoip = VH:GetHostGeoIP (ip)

		if ok and geoip and geoip ["host"] then
			if geoip ["range_low"] and geoip ["range_high"] then
				info = info .. " " .. gettext ("IP range: %s - %s"):format (geoip ["range_low"], geoip ["range_high"]) .. "\r\n" -- range
			end

			if geoip ["country_code"] then
				local extra = ""

				if geoip ["country"] then
					extra = "=" .. geoip ["country"]
				end

				info = info .. " " .. gettext ("Country: %s"):format (geoip ["country_code"] .. extra) .. "\r\n" -- country code and country
			end

			if geoip ["city"] then
				info = info .. " " .. gettext ("City: %s"):format (geoip ["city"]) .. "\r\n" -- city
			end

			if geoip ["region_code"] then
				local extra = ""

				if geoip ["region"] then
					extra = "=" .. geoip ["region"]
				end

				info = info .. " " .. gettext ("Region: %s"):format (geoip ["region_code"] .. extra) .. "\r\n" -- region code and region
			end

			if geoip ["continent_code"] then
				local extra = ""

				if geoip ["continent"] then
					extra = "=" .. geoip ["continent"]
				end

				info = info .. " " .. gettext ("Continent: %s"):format (geoip ["continent_code"] .. extra) .. "\r\n" -- continent code and continent
			end

			if geoip ["time_zone"] then
				info = info .. " " .. gettext ("Time zone: %s"):format (geoip ["time_zone"]) .. "\r\n" -- time zone
			end

			if geoip ["latitude"] and geoip ["longitude"] then
				info = info .. " " .. gettext ("Coordinates: %.4f %.4f"):format (geoip ["latitude"], geoip ["longitude"]) .. "\r\n" -- latitude and longitude
			end

			if geoip ["postal_code"] then
				info = info .. " " .. gettext ("Postal code: %s"):format (geoip ["postal_code"]) .. "\r\n" -- postal code
			end

			if geoip ["metro_code"] and geoip ["metro_code"] > 0 then
				info = info .. " " .. gettext ("Metro code: %d"):format (geoip ["metro_code"]) .. "\r\n" -- metro code
			end

			if geoip ["area_code"] and geoip ["area_code"] > 0 then
				info = info .. " " .. gettext ("Area code: %d"):format (geoip ["area_code"]) .. "\r\n" -- area code
			end
		end

		if info ~= "" then
			commandanswer (nick, gettext ("IP information") .. ":\r\n\r\n " .. gettext ("IP: %s"):format (ip) .. "\r\n" .. info)
		else
			commandanswer (nick, gettext ("IP information not available: %s"):format (ip))
		end
	else
		commandanswer (nick, gettext ("This feature requires %s or later installed on your system."):format ("Verlihub 1.0.0-RC1"))
	end
end

----- ---- --- -- -

function showcmdlog (nick, cls, ln)
local nn = tonumber (ln)
if nn < 1 then nn = 1 end
local _, rows = VH:SQLQuery ("select `time`, `nick`, `class`, `command` from `" .. tbl_sql.clog .. "` where `class` <= " .. cls .. " order by `time` desc limit " .. nn)

if rows > 0 then
	local list = ""

	for x = 0, rows - 1 do
		local _, tm, usr, ucl, cmd = VH:SQLFetch (x)
		list = list .. " " .. os.date (table_sets.dateformat .. " " .. table_sets.timeformat, tm) .. ": [" .. prezero (2, ucl) .. "] <" .. usr .. "> " .. cmd .. "\r\n"
	end

	commandanswer (nick, gettext ("Showing %d entries from command logger"):format (rows) .. ":\r\n\r\n" .. list)
else
	commandanswer (nick, gettext ("Command logger is empty."))
end
end

----- ---- --- -- -

function showuserlog (nick, line)
	local tp, str, lim = line:match ("^(%S+) (.+) (%d+)$")

	if tp == "nick" or tp == "addr" or tp == "ip" or tp == "code" or tp == "cc" or tp == "desc" or tp == "tag" or tp == "conn" or tp == "mail" or tp == "email" or tp == "size" or tp == "share" or tp == "all" then
		if tp == "addr" then
			tp = "ip"
		elseif tp == "code" then
			tp = "cc"
		elseif tp == "mail" then
			tp = "email"
		elseif tp == "size" then
			tp = "share"
		end

		lim = tonumber (lim)

		if lim < 1 then
			lim = 1
		end

		str = repsqlchars (str)

		if tp == "all" then -- any part
			local _, rows = VH:SQLQuery ("select `time`, `nick`, `ip`, `cc`, `desc`, `tag`, `conn`, `email`, `share` from `" .. tbl_sql.ulog .. "` where `nick` like '%" .. str .. "%' or `ip` like '%" .. str .. "%' or `cc` like '%" .. str .. "%' or `desc` like '%" .. str .. "%' or `tag` like '%" .. str .. "%' or `conn` like '%" .. str .. "%' or `email` like '%" .. str .. "%' or `share` like '%" .. str .. "%' order by `time` desc limit " .. lim)

			if rows > 0 then
				local res = ""

				for x = 0, rows - 1 do
					local _, rtime, rnick, rip, rcc, rdesc, rtag, rconn, remail, rshare = VH:SQLFetch (x)
					rnick = repnmdcoutchars (rnick)
					rip = repnmdcoutchars (rip)
					res = res .. " [ O: " .. fromunixtime (rtime, false) .. " ] [ N: " .. rnick .. " ]"

					if rip ~= "0.0.0.0" then
						res = res .. " [ I: " .. rip .. tryipcc (rip, rnick) .. " ]"
					end

					if rcc and rcc ~= "" then
						res = res .. " [ L: " .. repnmdcoutchars (rcc .. "=" .. (cc_names [rcc] or gettext ("Unknown country"))) .. " ]"
					end

					if rdesc and rdesc ~= "" then
						res = res .. " [ D: " .. repnmdcoutchars (rdesc) .. " ]"
					end

					if rtag and rtag ~= "" then
						res = res .. " [ T: " .. repnmdcoutchars (rtag) .. " ]"
					end

					if rconn and rconn ~= "" then
						res = res .. " [ C: " .. repnmdcoutchars (rconn) .. " ]"
					end

					if remail and remail ~= "" then
						res = res .. " [ E: " .. repnmdcoutchars (remail) .. " ]"
					end

					if (tonumber (rshare or 0) or 0) > 0 then
						res = res .. " [ S: " .. repnmdcoutchars (rshare) .. " ]"
					end

					res = res .. "\r\n"
				end

				commandanswer (nick, gettext ("Showing %d user log results"):format (rows) .. ":\r\n\r\n" .. res)
			else
				commandanswer (nick, gettext ("No user results found."))
			end

		else -- specific
			local _, rows = VH:SQLQuery ("select `time`, `nick`, `ip`, `cc`, `desc`, `tag`, `conn`, `email`, `share` from `" .. tbl_sql.ulog .. "` where `" .. tp .. "` like '%" .. str .. "%' order by `time` desc limit " .. lim)

			if rows > 0 then
				local res = ""

				for x = 0, rows - 1 do
					local _, rtime, rnick, rip, rcc, rdesc, rtag, rconn, remail, rshare = VH:SQLFetch (x)
					rnick = repnmdcoutchars (rnick)
					rip = repnmdcoutchars (rip)
					res = res .. " [ O: " .. fromunixtime (rtime, false) .. " ] [ N: " .. rnick .. " ]"

					if rip ~= "0.0.0.0" then
						res = res .. " [ I: " .. rip .. tryipcc (rip, rnick) .. " ]"
					end

					if rcc and rcc ~= "" then
						res = res .. " [ L: " .. repnmdcoutchars (rcc .. "=" .. (cc_names [rcc] or gettext ("Unknown country"))) .. " ]"
					end

					if rdesc and rdesc ~= "" then
						res = res .. " [ D: " .. repnmdcoutchars (rdesc) .. " ]"
					end

					if rtag and rtag ~= "" then
						res = res .. " [ T: " .. repnmdcoutchars (rtag) .. " ]"
					end

					if rconn and rconn ~= "" then
						res = res .. " [ C: " .. repnmdcoutchars (rconn) .. " ]"
					end

					if remail and remail ~= "" then
						res = res .. " [ E: " .. repnmdcoutchars (remail) .. " ]"
					end

					if (tonumber (rshare or 0) or 0) > 0 then
						res = res .. " [ S: " .. repnmdcoutchars (rshare) .. " ]"
					end

					res = res .. "\r\n"
				end

				commandanswer (nick, gettext ("Showing %d user log results"):format (rows) .. ":\r\n\r\n" .. res)
			else
				commandanswer (nick, gettext ("No user results found."))
			end
		end

	else -- unknown type
		commandanswer (nick, gettext ("Known types are: %s"):format ("nick, addr, code, desc, tag, conn, mail, size " .. gettext ("and") .. " all"))
	end
end

----- ---- --- -- -

function collectstats ()
	local tm = os.time () + table_sets.srvtimediff -- current time

	-- users and peak

	local uc = getusercount ()
	VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('users_now', " .. _tostring (tm) .. ", " .. _tostring (uc) .. ") on duplicate key update `time` = " .. _tostring (tm) .. ", `count` = " .. _tostring (uc))
	local _, rows = VH:SQLQuery ("select `time`, `count` from `" .. tbl_sql.stat .. "` where `type` = 'users_peak' limit 1")

	if rows > 0 then
		local _, ptm, puc = VH:SQLFetch (0)
		ptm = tonumber (ptm) or 0
		puc = tonumber (puc) or 0

		if uc > puc then
			VH:SQLQuery ("update `" .. tbl_sql.stat .. "` set `time` = " .. _tostring (tm) .. ", `count` = " .. _tostring (uc) .. " where `type` = 'users_peak' limit 1")

			if table_sets.classnotipeakuc < 11 then
				local msg = table_sets.userrecmsg

				if msg:find ("<longdate>", 1, true) then
					msg = msg:gsub ("<longdate>", reprexpchars (fromunixtime (ptm, false)))
				end

				if msg:find ("<shortdate>", 1, true) then
					msg = msg:gsub ("<shortdate>", reprexpchars (fromunixtime (ptm, true)))
				end

				if msg:find ("<old>", 1, true) then
					msg = msg:gsub ("<old>", reprexpchars (puc))
				end

				if msg:find ("<new>", 1, true) then
					msg = msg:gsub ("<new>", reprexpchars (uc))
				end

				maintoall (msg, table_sets.classnotipeakuc, 10)
			end
		end
	else
		VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('users_peak', " .. _tostring (tm) .. ", " .. _tostring (uc) .. ")")
	end

	-- total share and peak

	local ts = gettotsharesize ()
	VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('share_now', " .. _tostring (tm) .. ", '" .. _tostring (ts) .. "') on duplicate key update `time` = " .. _tostring (tm) .. ", `count` = '" .. _tostring (ts) .. "'")
	local _, rows = VH:SQLQuery ("select `time`, `count` from `" .. tbl_sql.stat .. "` where `type` = 'share_peak' limit 1")

	if rows > 0 then
		local _, ptm, pts = VH:SQLFetch (0)
		ptm = tonumber (ptm) or 0
		pts = tonumber (pts) or 0

		if ts > pts then
			VH:SQLQuery ("update `" .. tbl_sql.stat .. "` set `time` = " .. _tostring (tm) .. ", `count` = '" .. _tostring (ts) .. "' where `type` = 'share_peak' limit 1")

			if table_sets.classnotipeakts < 11 then
				local msg = table_sets.sharerecmsg

				if msg:find ("<longdate>", 1, true) then
					msg = msg:gsub ("<longdate>", reprexpchars (fromunixtime (ptm, false)))
				end

				if msg:find ("<shortdate>", 1, true) then
					msg = msg:gsub ("<shortdate>", reprexpchars (fromunixtime (ptm, true)))
				end

				if msg:find ("<old>", 1, true) then
					msg = msg:gsub ("<old>", reprexpchars (makesize (pts)))
				end

				if msg:find ("<new>", 1, true) then
					msg = msg:gsub ("<new>", reprexpchars (makesize (ts)))
				end

				maintoall (msg, table_sets.classnotipeakts, 10)
			end
		end
	else
		VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('share_peak', " .. _tostring (tm) .. ", '" .. _tostring (ts) .. "')")
	end

	-- average share and peak

	if uc > 0 and ts > 0 then
		local avg = roundint ((ts / uc), 0)
		VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('avgshare_now', " .. _tostring (tm) .. ", '" .. _tostring (avg) .. "') on duplicate key update `time` = " .. _tostring (tm) .. ", `count` = '" .. _tostring (avg) .. "'")
		local _, rows = VH:SQLQuery ("select `count` from `" .. tbl_sql.stat .. "` where `type` = 'avgshare_peak' limit 1")

		if rows > 0 then
			local _, pavg = VH:SQLFetch (0)
			pavg = tonumber (pavg) or 0

			if avg > pavg then
				VH:SQLQuery ("update `" .. tbl_sql.stat .. "` set `time` = " .. _tostring (tm) .. ", `count` = '" .. _tostring (avg) .. "' where `type` = 'avgshare_peak' limit 1")
			end
		else
			VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('avgshare_peak', " .. _tostring (tm) .. ", '" .. _tostring (avg) .."')")
		end
	end

	-- uptime and peak

	if table_refu.GetUpTime then
		local ut = getuptime ()
		VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('uptime_now', " .. _tostring (tm) .. ", " .. _tostring (ut) .. ") on duplicate key update `time` = " .. _tostring (tm) .. ", `count` = " .. _tostring (ut))
		local _, rows = VH:SQLQuery ("select `count` from `" .. tbl_sql.stat .. "` where `type` = 'uptime_peak' limit 1")

		if rows > 0 then
			local _, put = VH:SQLFetch (0)
			put = tonumber (put) or 0

			if ut > put then
				VH:SQLQuery ("update `" .. tbl_sql.stat .. "` set `time` = " .. _tostring (tm) .. ", `count` = " .. _tostring (ut) .. " where `type` = 'uptime_peak' limit 1")
			end
		else
			VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('uptime_peak', " .. _tostring (tm) .. ", " .. _tostring (ut) .. ")")
		end
	end

	-- memory and peak

	local mu = getmemusg ()
	VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('memory_now', " .. _tostring (tm) .. ", " .. _tostring (mu) .. ") on duplicate key update `time` = " .. _tostring (tm) .. ", `count` = " .. _tostring (mu))
	local _, rows = VH:SQLQuery ("select `count` from `" .. tbl_sql.stat .. "` where `type` = 'memory_peak' limit 1")

	if rows > 0 then
		local _, pmu = VH:SQLFetch (0)
		pmu = tonumber (pmu) or 0

		if mu > pmu then
			VH:SQLQuery ("update `" .. tbl_sql.stat .. "` set `time` = " .. _tostring (tm) .. ", `count` = " .. _tostring (mu) .. " where `type` = 'memory_peak' limit 1")
		end
	else
		VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('memory_peak', " .. _tostring (tm) .. ", " .. _tostring (mu) .. ")")
	end

	-- nick lists

	local nl, ol, bl = "", "", ""

	for usr in getnicklist ():gmatch ("([^%$ ]+)") do
		if isbot (usr) then
			bl = bl .. usr .. "$$"
		elseif getclass (usr) >= 3 or table_opks [usr] then
			ol = ol .. usr .. "$$"
		else
			nl = nl .. usr .. "$$"
		end
	end

	nl, ol, bl = repsqlchars (nl), repsqlchars (ol), repsqlchars (bl)
	VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('user_list', " .. _tostring (tm) .. ", '" .. nl .. "') on duplicate key update `time` = " .. _tostring (tm) .. ", `count` = '" .. nl .. "'")
	VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('operator_list', " .. _tostring (tm) .. ", '" .. ol .. "') on duplicate key update `time` = " .. _tostring (tm) .. ", `count` = '" .. ol .. "'")
	VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('bot_list', " .. _tostring (tm) .. ", '" .. bl .. "') on duplicate key update `time` = " .. _tostring (tm) .. ", `count` = '" .. bl .. "'")
end

----- ---- --- -- -

function calculate (nick, line)
	local _, _, anum, bnum = line:find ("^(%S+) %S (%S+)$")
	anum = anum:gsub (",", ".")
	bnum = bnum:gsub (",", ".")

	if (tonumber (anum) or anum:lower () == "pi") and (tonumber (bnum) or bnum:lower () == "pi") then
		local _, _, oper = line:find ("^%S+ (%S) %S+$")

		if oper == "+" or oper == "-" or oper == "*" or oper == "x" or oper == "/" or oper == "^" then
			if anum:lower () == "pi" then
				anum = math.pi
			else
				anum = tonumber (anum)
			end

			if bnum:lower () == "pi" then
				bnum = math.pi
			else
				bnum = tonumber (bnum)
			end

			local reslt = 0

			if oper == "+" then
				reslt = anum + bnum
			elseif oper == "-" then
				reslt = anum - bnum
			elseif oper == "*" or oper == "x" then
				reslt = anum * bnum
			elseif oper == "/" then
				if bnum == 0 then -- division by zero
					commandanswer (nick, gettext ("Division by zero is forbidden."))
					return
				end

				reslt = anum / bnum
			elseif oper == "^" then
				reslt = anum ^ bnum
			end

			commandanswer (nick, anum .. " " .. oper .. " " .. bnum .. " = " .. reslt)
		else
			commandanswer (nick, gettext ("Known operations are: %s"):format ("+, -, *, / " .. gettext ("and") .. " ^"))
		end
	else
		commandanswer (nick, gettext ("Both numbers must be either pi or numbers."))
	end
end

----- ---- --- -- -

function lretoplain (nick, data)
	commandanswer (nick, gettext ("LRE converted to plain text: %s"):format (repnmdcoutchars (reppatchars (repnmdcinchars (tolow (data))))))
end

----- ---- --- -- -

function addauthentry (nick, item)
	local _, _, user, ip = item:find ("^(%S+) (.+)$")
	VH:SQLQuery ("insert into `" .. tbl_sql.auth .. "` (`nick`, `ip`) values ('" .. repsqlchars (user) .. "', '" .. repsqlchars (repnmdcinchars (ip)) .. "')")
	commandanswer (nick, gettext ("Added authorization entry: %s @ %s"):format (user, ip))
end

----- ---- --- -- -

function modauthentry (nick, item)
	local _, _, id, ip = item:find ("^(%d+) (.+)$")
	local _, rows = VH:SQLQuery ("select `nick` from `" .. tbl_sql.auth .. "` where `id` = " .. id .. " limit 1")

	if rows > 0 then
		local _, user = VH:SQLFetch (0)
		VH:SQLQuery ("update `" .. tbl_sql.auth .. "` set `ip` = '" .. repsqlchars (repnmdcinchars (ip)) .. "' where `id` = " .. id .. " limit 1")
		commandanswer (nick, gettext ("Modified authorization entry: %s @ %s"):format (user, ip))
	else
		commandanswer (nick, gettext ("Couldn't modify authorization entry because not found: %d"):format (id))
	end
end

----- ---- --- -- -

function delauthentry (nick, id)
	local _, rows = VH:SQLQuery ("select `nick` from `" .. tbl_sql.auth .. "` where `id` = " .. id .. " limit 1")

	if rows > 0 then
		local _, user = VH:SQLFetch (0)
		VH:SQLQuery ("delete from `" .. tbl_sql.auth .. "` where `id` = " .. id .. " limit 1")
		commandanswer (nick, gettext ("Deleted authorization entry: %s"):format (user))
	else
		commandanswer (nick, gettext ("Couldn't delete authorization entry because not found: %s"):format (id))
	end
end

----- ---- --- -- -

function listauthentry (nick)
	local _, rows = VH:SQLQuery ("select `id`, `nick`, `ip`, `badip`, `good`, `bad` from `" .. tbl_sql.auth .. "` order by `nick` asc, `bad` desc, `good` desc")

	if rows > 0 then
		local list, len, seclen = "", 0, 0

		for x = 0, rows - 1 do
			local _, id, user, ip, bip, good, bad = VH:SQLFetch (x)

			if x == 0 then
				len = # good
				seclen = # bad
			end

			list = list .. " " .. prezero (# rows, (x + 1)) .. ". [ B: " .. prezero (seclen, bad) .. " ] [ G: " .. prezero (len, good) .. " ] [ I: " .. id .. " ] " .. user .. " @ " .. repnmdcoutchars (ip) .. " [ LB: " .. bip .. " ]\r\n"
		end

		commandanswer (nick, gettext ("IP authorization list") .. ":\r\n\r\n" .. list)
	else
		commandanswer (nick, gettext ("IP authorization list is empty."))
	end
end

----- ---- --- -- -

function authcheck (nick, cls, uip)
	if uip == "0.0.0.0" then return false end
	local user = repsqlchars (nick)
	local _, rows = VH:SQLQuery ("select `id`, `ip` from `" .. tbl_sql.auth .. "` where `nick` = '" .. user .. "'")
	if rows == 0 then return false end

	for x = 0, rows - 1 do
		local _, id, ip = VH:SQLFetch (x)

		if uip:find (ip) then -- match
			VH:SQLQuery ("update `" .. tbl_sql.auth .. "` set `good` = `good` + 1 where `id` = " .. id .. " limit 1")
			opsnotify (table_sets.classnotiauth, gettext ("%s with IP %s and class %d authorized."):format (nick, uip .. tryipcc (uip, nick), cls))
			return false
		end
	end

	maintouser (nick, table_sets.authmessage)
	VH:SQLQuery ("update `" .. tbl_sql.auth .. "` set `badip` = '" .. repsqlchars (uip) .. "', `bad` = `bad` + 1 where `nick` = '" .. user .. "'")
	VH:Disconnect (nick) -- drop user
	opsnotify (table_sets.classnotiauth, gettext ("%s with IP %s and class %d failed authorization and disconnected."):format (nick, uip .. tryipcc (uip, nick), cls))
	return true
end

----- ---- --- -- -

function checkregmecmd (nick, ucl, ip)
	if getconfig ("disable_regme_cmd") ~= 0 then return 1 end
	if ucl >= 1 then return 1 end -- unregistered only

	if table_sets.regmechatcnt > 0 then
		if table_regm [nick] then
			if table_regm [nick] < table_sets.regmechatcnt then
				commandanswer (nick, gettext ("You need to send another %d main chat messages in order to use hub registration."):format ((table_sets.regmechatcnt - table_regm [nick])))
				return 0
			end
		else
			commandanswer (nick, gettext ("You need to send another %d main chat messages in order to use hub registration."):format (table_sets.regmechatcnt))
			return 0
		end
	end

	if table_sets.regmeuptime > 0 and table_sets.showuseruptime == 1 then -- regme uptime
		if table_usup [nick] then
			local dif = os.time () - table_usup [nick]

			if dif < table_sets.regmeuptime then
				opsnotify (table_sets.classnotilowupreg, gettext ("Low registration uptime from %s with IP %s and class %d: %s"):format (nick, ip .. tryipcc (ip, nick), ucl, gettext ("%d seconds"):format (dif)))
				commandanswer (nick, gettext ("Please wait another %d seconds before using hub registration."):format (table_sets.regmeuptime - dif))
				return 0
			end
		--else
			--commandanswer (nick, gettext ("Please reconnect to gain %d seconds of uptime in order to use hub registration."):format (table_sets.regmeuptime))
		end
	end

	return 1
end

----- ---- --- -- -

function autoupdatecheck ()
	local res, err, data = getcurl (table_othsets.updserv .. table_othsets.verfile)

	if res and data ~= "" and data:find ("^%d+%.%d+%.%d+$") then
		local reve = data:gsub ("%.", "")
		local myve = ver_ledo:gsub ("%.", "")

		if (tonumber (reve) or 0) > (tonumber (myve) or 0) then -- version number must be higher
			opsnotify (table_sets.classnotiledoact, gettext ("Automatic update check detected stable version of %s available, use following command to update: %s"):format ("Ledokol " .. data, getconfig ("cmd_start_op"):sub (1, 1) .. table_cmnds.ledover))
		end
	end
end

----- ---- --- -- -

function updatescript (nick)
	commandanswer (nick, gettext ("Downloading version file: %s"):format (table_othsets.verfile))
	local res, err, data = getcurl (table_othsets.updserv .. table_othsets.verfile)

	if res then
		if data ~= "" and data:find ("^%d+%.%d+%.%d+$") then
			local veda = data
			local reve = veda:gsub ("%.", "")
			local myve = ver_ledo:gsub ("%.", "")

			if (tonumber (reve) or 0) > (tonumber (myve) or 0) then -- version number must be higher
				commandanswer (nick, gettext ("Stable version of %s is available: %s"):format ("Ledokol", veda))
				commandanswer (nick, gettext ("Downloading script file: %s"):format (table_othsets.luafile))
				local res, err, data = getcurl (table_othsets.updserv .. table_othsets.luafile, nil, true)

				if res then
					if data ~= "" and data:find ("ver_ledo = \"" .. veda .. "\" -- ledokol version", 1, true) then
						commandanswer (nick, gettext ("Moving file: %s"):format (table_othsets.luafile))
						local res, err = os.execute ("mv -f \"" .. table_othsets.cfgdir .. table_othsets.tmpfile .. "\" \"" .. table_othsets.cfgdir .. "scripts/" .. table_othsets.luafile .. "\"")

						if res then
							if table_sets.langfileprefix ~= "" then
								local lafi = table_othsets.langfilefmt:format (table_sets.langfileprefix)
								commandanswer (nick, gettext ("Downloading translation file: %s"):format (lafi))
								local res, err, data = getcurl (table_othsets.updservlang .. lafi, nil, true)

								if res then
									if data ~= "" and data:find ("# Version: " .. veda, 1, true) then
										commandanswer (nick, gettext ("Moving file: %s"):format (lafi))
										local res, err = os.execute ("mv -f \"" .. table_othsets.cfgdir .. table_othsets.tmpfile .. "\" \"" .. table_othsets.cfgdir .. "scripts/" .. lafi .. "\"")

										if not res then
											os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)
											commandanswer (nick, gettext ("Failed to move file: %s"):format (repnmdcoutchars (err or gettext ("No error message specified."))))
										end
									else
										os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)
										commandanswer (nick, gettext ("File not found on update server: %s"):format (lafi))
									end
								else
									commandanswer (nick, err)
								end
							end

							commandanswer (nick, gettext ("Please use following commands to finish update process") .. ":\r\n\r\n !luaunload " .. table_othsets.cfgdir .. "scripts/" .. table_othsets.luafile .. "\r\n !luaload " .. table_othsets.cfgdir .. "scripts/" .. table_othsets.luafile .. "\r\n")
						else
							os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)
							commandanswer (nick, gettext ("Failed to move file: %s"):format (repnmdcoutchars (err or gettext ("No error message specified."))))
						end
					else
						os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)
						commandanswer (nick, gettext ("File not found on update server: %s"):format (table_othsets.luafile))
					end
				else
					commandanswer (nick, err)
				end
			else
				commandanswer (nick, gettext ("You are using latest version of %s, no update is required."):format ("Ledokol"))
			end
		else
			commandanswer (nick, gettext ("File not found on update server: %s"):format (table_othsets.verfile))
		end
	else
		commandanswer (nick, err)
	end
end

----- ---- --- -- -

function updatescriptdev (nick)
	commandanswer (nick, gettext ("Downloading script file: %s"):format (table_othsets.luafile))
	local res, err, data = getcurl (table_othsets.updservdev .. table_othsets.luafile, nil, true)

	if res then
		if data ~= "" then
			local _, _, veda = data:find ("ver_ledo = \"(%d+%.%d+%.%d+)\" %-%- ledokol version")

			if veda then
				commandanswer (nick, gettext ("Development version of %s is available: %s"):format ("Ledokol", veda))
				commandanswer (nick, gettext ("Moving file: %s"):format (table_othsets.luafile))
				local res, err = os.execute ("mv -f \"" .. table_othsets.cfgdir .. table_othsets.tmpfile .. "\" \"" .. table_othsets.cfgdir .. "scripts/" .. table_othsets.luafile .. "\"")

				if res then
					if table_sets.langfileprefix ~= "" then
						local lafi = table_othsets.langfilefmt:format (table_sets.langfileprefix)
						commandanswer (nick, gettext ("Downloading translation file: %s"):format (lafi))
						local res, err, data = getcurl (table_othsets.updservdev .. lafi, nil, true)

						if res then
							if data ~= "" and data:find ("# Version: %d+%.%d+%.%d+") then
								commandanswer (nick, gettext ("Moving file: %s"):format (lafi))
								local res, err = os.execute ("mv -f \"" .. table_othsets.cfgdir .. table_othsets.tmpfile .. "\" \"" .. table_othsets.cfgdir .. "scripts/" .. lafi .. "\"")

								if not res then
									os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)
									commandanswer (nick, gettext ("Failed to move file: %s"):format (repnmdcoutchars (err or gettext ("No error message specified."))))
								end
							else
								os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)
								commandanswer (nick, gettext ("File not found on update server: %s"):format (lafi))
							end
						else
							commandanswer (nick, err)
						end
					end

					commandanswer (nick, gettext ("Please use following commands to finish update process") .. ":\r\n\r\n !luaunload " .. table_othsets.cfgdir .. "scripts/" .. table_othsets.luafile .. "\r\n !luaload " .. table_othsets.cfgdir .. "scripts/" .. table_othsets.luafile .. "\r\n")
				else
					os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)
					commandanswer (nick, gettext ("Failed to move file: %s"):format (repnmdcoutchars (err or gettext ("No error message specified."))))
				end
			else
				os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)
				commandanswer (nick, gettext ("File not found on update server: %s"):format (table_othsets.luafile))
			end
		else
			os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)
			commandanswer (nick, gettext ("File not found on update server: %s"):format (table_othsets.luafile))
		end
	else
		commandanswer (nick, err)
	end
end

----- ---- --- -- -

function updatescriptforce (nick)
	commandanswer (nick, gettext ("Downloading script file: %s"):format (table_othsets.luafile))
	local res, err, data = getcurl (table_othsets.updserv .. table_othsets.luafile, nil, true)

	if res then
		if data ~= "" then
			local _, _, veda = data:find ("ver_ledo = \"(%d+%.%d+%.%d+)\" %-%- ledokol version")

			if veda then
				commandanswer (nick, gettext ("Stable version of %s is available: %s"):format ("Ledokol", veda))
				commandanswer (nick, gettext ("Moving file: %s"):format (table_othsets.luafile))
				local res, err = os.execute ("mv -f \"" .. table_othsets.cfgdir .. table_othsets.tmpfile .. "\" \"" .. table_othsets.cfgdir .. "scripts/" .. table_othsets.luafile .. "\"")

				if res then
					if table_sets.langfileprefix ~= "" then
						local lafi = table_othsets.langfilefmt:format (table_sets.langfileprefix)
						commandanswer (nick, gettext ("Downloading translation file: %s"):format (lafi))
						local res, err, data = getcurl (table_othsets.updservlang .. lafi, nil, true)

						if res then
							if data ~= "" and data:find ("# Version: " .. veda, 1, true) then
								commandanswer (nick, gettext ("Moving file: %s"):format (lafi))
								local res, err = os.execute ("mv -f \"" .. table_othsets.cfgdir .. table_othsets.tmpfile .. "\" \"" .. table_othsets.cfgdir .. "scripts/" .. lafi .. "\"")

								if not res then
									os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)
									commandanswer (nick, gettext ("Failed to move file: %s"):format (repnmdcoutchars (err or gettext ("No error message specified."))))
								end
							else
								os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)
								commandanswer (nick, gettext ("File not found on update server: %s"):format (lafi))
							end
						else
							commandanswer (nick, err)
						end
					end

					commandanswer (nick, gettext ("Please use following commands to finish update process") .. ":\r\n\r\n !luaunload " .. table_othsets.cfgdir .. "scripts/" .. table_othsets.luafile .. "\r\n !luaload " .. table_othsets.cfgdir .. "scripts/" .. table_othsets.luafile .. "\r\n")
				else
					os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)
					commandanswer (nick, gettext ("Failed to move file: %s"):format (repnmdcoutchars (err or gettext ("No error message specified."))))
				end
			else
				os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)
				commandanswer (nick, gettext ("File not found on update server: %s"):format (table_othsets.luafile))
			end
		else
			os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)
			commandanswer (nick, gettext ("File not found on update server: %s"):format (table_othsets.luafile))
		end
	else
		commandanswer (nick, err)
	end
end

----- ---- --- -- -

function deletehistory (nick, text, class)
	local data = repsqlchars (text)
	local _, rows = VH:SQLQuery ("select `id` from `" .. tbl_sql.mchist .. "` where `message` like '%" .. data .. "%' or `nick` like '%" .. data .. "%' or `realnick` like '%" .. data .. "%'")

	if rows > 0 then
		local delete = {}

		for row = 0, rows - 1 do
			local _, id = VH:SQLFetch (row)
			table.insert (delete, id)
		end

		for _, id in pairs (delete) do
			VH:SQLQuery ("delete from `" .. tbl_sql.mchist .. "` where `id` = " .. _tostring (id))
		end

		commandanswer (nick, gettext ("Deleted %d main chat history messages by text: %s"):format (rows, text))
		opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d main chat history messages by text: %s"):format (nick, class, rows, text))
	else
		commandanswer (nick, gettext ("There are no main chat history messages to remove."))
	end
end

----- ---- --- -- -

function cleanhistory (nick, limit, auto, class)
	local rows = counttable (tbl_sql.mchist)

	if rows > 0 then
		if limit == 0 then
			VH:SQLQuery ("truncate table `" .. tbl_sql.mchist .. "`")
		elseif rows > limit then
			rows = rows - limit
			VH:SQLQuery ("delete from `" .. tbl_sql.mchist .. "` order by `date` asc limit " .. _tostring (rows))
		end

		if limit == 0 or rows > limit then
			commandanswer (nick, gettext ("Deleted %d main chat history messages."):format (rows))
			opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d main chat history messages."):format (nick, class, rows))
		end
	elseif not auto then
		commandanswer (nick, gettext ("There are no main chat history messages to remove."))
	end

	rows = counttable (tbl_sql.ophist)

	if rows > 0 then
		if limit == 0 then
			VH:SQLQuery ("truncate table `" .. tbl_sql.ophist .. "`")
		elseif rows > limit then
			rows = rows - limit
			VH:SQLQuery ("delete from `" .. tbl_sql.ophist .. "` order by `date` asc limit " .. _tostring (rows))
		end

		if limit == 0 or rows > limit then
			commandanswer (nick, gettext ("Deleted %d operator chat history messages."):format (rows))
			opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d operator chat history messages."):format (nick, class, rows))
		end
	elseif not auto then
		commandanswer (nick, gettext ("There are no operator chat history messages to remove."))
	end
end

----- ---- --- -- -

function cleanroomhistory (room, nick, limit, auto, class)
	if room then
		local item = repsqlchars (room)
		local _, rows = VH:SQLQuery ("select count(*) from `" .. tbl_sql.crhist .. "` where `room` = '" .. item .. "'")

		if rows > 0 then
			local _, num = VH:SQLFetch (0)
			rows = tonumber (num or 0) or 0

			if rows > 0 then
				if limit == 0 then
					VH:SQLQuery ("delete from `" .. tbl_sql.crhist .. "` where `room` = '" .. item .. "'")
				elseif rows > limit then
					rows = rows - limit
					VH:SQLQuery ("delete from `" .. tbl_sql.crhist .. "` where `room` = '" .. item .. "' order by `date` asc limit " .. _tostring (rows))
				end

				if limit == 0 or rows > limit then
					commandanswer (nick, gettext ("Deleted %d chatroom history messages: %s"):format (rows, room))
					opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d chatroom history messages: %s"):format (nick, class, rows, room))
				end
			elseif not auto then
				commandanswer (nick, gettext ("There are no chatroom history messages to remove: %s"):format (room))
			end
		end
	else
		local _, rows = VH:SQLQuery ("select distinct(`room`) from `" .. tbl_sql.crhist .. "`")

		if rows > 0 then
			local rooms = {}

			for row = 0, rows - 1 do
				local _, name = VH:SQLFetch (row)
				table.insert (rooms, name)
			end

			for _, name in pairs (rooms) do -- iterate rooms
				local item = repsqlchars (name)
				local _, rows = VH:SQLQuery ("select count(*) from `" .. tbl_sql.crhist .. "` where `room` = '" .. item .. "'")

				if rows > 0 then
					local _, num = VH:SQLFetch (0)
					rows = tonumber (num or 0) or 0

					if rows > 0 then
						if limit == 0 then
							VH:SQLQuery ("delete from `" .. tbl_sql.crhist .. "` where `room` = '" .. item .. "'")
						elseif rows > limit then
							rows = rows - limit
							VH:SQLQuery ("delete from `" .. tbl_sql.crhist .. "` where `room` = '" .. item .. "' order by `date` asc limit " .. _tostring (rows))
						end

						if limit == 0 or rows > limit then
							commandanswer (nick, gettext ("Deleted %d chatroom history messages: %s"):format (rows, name))
							opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d chatroom history messages: %s"):format (nick, class, rows, name))
						end
					elseif not auto then
						commandanswer (nick, gettext ("There are no chatroom history messages to remove: %s"):format (name))
					end
				end
			end
		elseif not auto then
			commandanswer (nick, gettext ("There are no chatroom history messages to remove: %s"):format ("*"))
		end
	end
end

----- ---- --- -- -

function cleanccroomhistory (nick)
	local class = getclass (nick)
	local _, rows = VH:SQLQuery ("select `room` from `" .. tbl_sql.chat .. "`")

	if rows > 0 then
		local chats = {}

		for row = 0, rows - 1 do
			local _, room = VH:SQLFetch (row)
			chats [room] = true
		end

		local _, rows = VH:SQLQuery ("select distinct(`room`) from `" .. tbl_sql.crhist .. "`")

		if rows > 0 then
			local rooms = {}

			for row = 0, rows - 1 do
				local _, room = VH:SQLFetch (row)

				if not chats [room] then
					table.insert (rooms, room)
				end
			end

			for _, room in pairs (rooms) do
				cleanroomhistory (room, nick, 0, true, class)
			end
		end
	else
		cleanroomhistory (nil, nick, 0, true, class)
	end
end

----- ---- --- -- -

function renameccroomhistory (old, new)
	for code, name in pairs (cc_names) do
		local oldname = old:gsub ("<cc>", reprexpchars (code)) -- code
		oldname = oldname:gsub ("<cn>", reprexpchars (name)) -- name
		oldname = oldname:gsub (string.char (32), string.char (160)) -- space
		local newname = new:gsub ("<cc>", reprexpchars (code)) -- code
		newname = newname:gsub ("<cn>", reprexpchars (name)) -- name
		newname = newname:gsub (string.char (32), string.char (160)) -- space
		VH:SQLQuery ("update `" .. tbl_sql.crhist .. "` set `room` = '" .. repsqlchars (newname) .. "' where `room` = '" .. repsqlchars (oldname) .. "'")
	end

	local oldname = old:gsub ("<cc>", reprexpchars ("??")) -- code
	oldname = oldname:gsub ("<cn>", reprexpchars (gettext ("Unknown country"))) -- name
	oldname = oldname:gsub (string.char (32), string.char (160)) -- space
	local newname = new:gsub ("<cc>", reprexpchars ("??")) -- code
	newname = newname:gsub ("<cn>", reprexpchars (gettext ("Unknown country"))) -- name
	newname = newname:gsub (string.char (32), string.char (160)) -- space
	VH:SQLQuery ("update `" .. tbl_sql.crhist .. "` set `room` = '" .. repsqlchars (newname) .. "' where `room` = '" .. repsqlchars (oldname) .. "'")
end

----- ---- --- -- -

function sendmchistory (nick, class, num, auto)
	local lnum = tonumber (num or table_sets.histdeflines) or table_sets.histdeflines

	if lnum > table_sets.histlimit then
		lnum = table_sets.histlimit
	elseif lnum < 1 then
		lnum = 1
	end

	local _, rows = VH:SQLQuery ("select `nick`, `ip`, `date`, `message` from `" .. tbl_sql.mchist .. "` order by `date` desc, `id` desc limit " .. _tostring (lnum))

	if rows > 0 then
		local list = ""

		for x = 0, rows - 1 do
			local _, user, ip, stamp, text = VH:SQLFetch (x)

			if auto then -- truncate message
				if table_sets.histautonewlinedel == 1 then
					text = text:gsub ("[\r\n]", "")
				end

				if table_sets.histautolinemax > 0 and # text > table_sets.histautolinemax then
					text = text:sub (1, table_sets.histautolinemax) .. " [ .. .]"
				end
			end

			if class >= table_sets.histshowipclass and ip and # ip > 0 then
				list = " " .. os.date (table_sets.dateformat .. " " .. table_sets.timeformat, stamp) .. " &#124; " .. ip .. ": <" .. user .. "> " .. text .. "\r\n" .. list
			else
				list = " " .. os.date (table_sets.dateformat .. " " .. table_sets.timeformat, stamp) .. ": <" .. user .. "> " .. text .. "\r\n" .. list
			end
		end

		if not auto then
			commandanswer (nick, gettext ("Last %d main chat messages"):format (rows) .. ":\r\n\r\n" .. list)
		else
			maintouser (nick, gettext ("Last %d main chat messages"):format (rows) .. ":\r\n\r\n" .. list)
		end
	elseif not auto then -- only if sending manually
		commandanswer (nick, gettext ("Main chat history is empty."))
	end
end

----- ---- --- -- -

function sendophistory (nick, class, num, auto, inop)
	local lnum = tonumber (num or table_sets.histdeflines) or table_sets.histdeflines

	if lnum >= table_sets.histlimit then
		lnum = table_sets.histlimit
	elseif lnum < 1 then
		lnum = 1
	end

	local _, rows = VH:SQLQuery ("select `nick`, `date`, `message` from `" .. tbl_sql.ophist .. "` where `class` <= " .. _tostring (class) .. " order by `date` desc, `id` desc limit " .. _tostring (lnum))

	if rows > 0 then
		local list = ""

		for row = 0, rows - 1 do
			local _, user, stamp, text = VH:SQLFetch (row)

			if auto then -- truncate the message
				if table_sets.histautonewlinedel == 1 then
					text = text:gsub ("[\r\n]", "")
				end

				if table_sets.histautolinemax > 0 and # text > table_sets.histautolinemax then
					text = text:sub (1, table_sets.histautolinemax) .. " [ .. .]"
				end
			end

			list = " " .. os.date (table_sets.dateformat .. " " .. table_sets.timeformat, stamp) .. ": <" .. user .. "> " .. text .. "\r\n" .. list
		end

		if not auto then
			if inop then
				pmtouser (nick, table_othsets.opchatnick, gettext ("Last %d operator chat messages"):format (rows) .. ":\r\n\r\n" .. list)
			else
				commandanswer (nick, gettext ("Last %d operator chat messages"):format (rows) .. ":\r\n\r\n" .. list)
			end
		else
			maintouser (nick, gettext ("Last %d operator chat messages"):format (rows) .. ":\r\n\r\n" .. list)
		end
	elseif not auto then -- only if sending manually
		if inop then
			pmtouser (nick, table_othsets.opchatnick, gettext ("Operator chat history is empty."))
		else
			commandanswer (nick, gettext ("Operator chat history is empty."))
		end
	end
end

----- ---- --- -- -

function sendcrhistory (room, nick, class, num)
	local lnum = tonumber (num or table_sets.histdeflines) or table_sets.histdeflines

	if lnum > table_sets.chathistlimit then
		lnum = table_sets.chathistlimit
	elseif lnum < 1 then
		lnum = 1
	end

	local _, rows = VH:SQLQuery ("select `nick`, `ip`, `date`, `message` from `" .. tbl_sql.crhist .. "` where `room` = '" .. repsqlchars (room) .. "' order by `date` desc, `id` desc limit " .. _tostring (lnum))

	if rows > 0 then
		local list = ""

		for x = 0, rows - 1 do
			local _, user, ip, stamp, text = VH:SQLFetch (x)

			if class >= table_sets.chathistipclass and ip and # ip > 0 then
				list = " " .. os.date (table_sets.dateformat .. " " .. table_sets.timeformat, stamp) .. " &#124; " .. ip .. ": <" .. user .. "> " .. text .. "\r\n" .. list
			else
				list = " " .. os.date (table_sets.dateformat .. " " .. table_sets.timeformat, stamp) .. ": <" .. user .. "> " .. text .. "\r\n" .. list
			end
		end

		VH:SendToUser ("$To: " .. nick .. " From: " .. room .. " $<" .. room .. "> " .. gettext ("Last %d chatroom messages"):format (rows) .. ":\r\n\r\n" .. list .. "|", nick)
	else
		VH:SendToUser ("$To: " .. nick .. " From: " .. room .. " $<" .. room .. "> " .. gettext ("Chatroom history is empty.") .. "|", nick)
	end
end

----- ---- --- -- -

function sendownhistory (nick, class, num)
	local lnum = tonumber (num or table_sets.histdeflines) or table_sets.histdeflines

	if lnum > table_sets.histlimit then
		lnum = table_sets.histlimit
	elseif lnum < 1 then
		lnum = 1
	end

	local _, rows = VH:SQLQuery ("select `nick`, `ip`, `date`, `message` from `" .. tbl_sql.mchist .. "` where `realnick` = '" .. repsqlchars (nick) .. "' order by `date` desc, `id` desc limit " .. _tostring (lnum))

	if rows > 0 then
		local list = ""

		for x = 0, rows - 1 do
			local _, user, ip, stamp, text = VH:SQLFetch (x)

			if class >= table_sets.histshowipclass and ip and # ip > 0 then
				list = " " .. os.date (table_sets.dateformat .. " " .. table_sets.timeformat, stamp) .. " &#124; " .. ip .. ": <" .. user .. "> " .. text .. "\r\n" .. list
			else
				list = " " .. os.date (table_sets.dateformat .. " " .. table_sets.timeformat, stamp) .. ": <" .. user .. "> " .. text .. "\r\n" .. list
			end
		end

		commandanswer (nick, gettext ("Last %d main chat messages written by you"):format (rows) .. ":\r\n\r\n" .. list)
	else
		commandanswer (nick, gettext ("There are no main chat history messages written by you."))
	end
end

----- ---- --- -- -

function addmchistoryline (nick, real, line, refl)
	if table_sets.histlimit == 0 then
		return
	end

	if (nick == table_othsets.sendfrom or nick == table_othsets.botnick) and (table_sets.histbotmsg == 0 or refl) then
		return
	end

	local count = counttable (tbl_sql.mchist)
	local addr = getip (real)
	local data = line:gsub ("is kicking", reprexpchars ("is" .. string.char (160) .. "kicking"))

	if count > 0 and getclass (real) < 3 then
		VH:SQLQuery ("select `realnick`, `nick`, `ip`, `message` from `" .. tbl_sql.mchist .. "` order by `date` desc limit 1") -- get last message
		local _, last_real, last_nick, last_addr, last_data = VH:SQLFetch (0)

		if last_real == real and last_nick == nick and last_addr == addr and last_data == data then -- skip same message
			return
		end
	end

	if count >= table_sets.histlimit then
		VH:SQLQuery ("select `id` from `" .. tbl_sql.mchist .. "` order by `date` asc limit 1") -- get oldest message
		local _, old_id = VH:SQLFetch (0)
		VH:SQLQuery ("update `" .. tbl_sql.mchist .. "` set `realnick` = '" .. repsqlchars (real) .. "', `nick` = '" .. repsqlchars (nick) .. "', `ip` = " .. sqlemptnull (valor (addr, "0.0.0.0")) .. ", `date` = " .. _tostring (os.time () + table_sets.srvtimediff) .. ", `message` = '" .. repsqlchars (data) .. "' where `id` = " .. _tostring (old_id))
	else
		VH:SQLQuery ("insert into `" .. tbl_sql.mchist .. "` (`realnick`, `nick`, `ip`, `date`, `message`) values ('" .. repsqlchars (real) .. "', '" .. repsqlchars (nick) .. "', " .. sqlemptnull (valor (addr, "0.0.0.0")) .. ", " .. _tostring (os.time () + table_sets.srvtimediff) .. ", '" .. repsqlchars (data) .. "')")
	end
end

----- ---- --- -- -

function addophistoryline (nick, line, class)
	if table_sets.histlimit == 0 then
		return
	end

	if nick == table_othsets.feednick and table_sets.histbotmsg == 0 then -- table_othsets.opchatnick
		return
	end

	if line:sub (1, 1) == "+" then -- skip chatroom commands
		return
	end

	if counttable (tbl_sql.ophist) >= table_sets.histlimit then
		VH:SQLQuery ("select `id` from `" .. tbl_sql.ophist .. "` order by `date` asc limit 1") -- get oldest message
		local _, old_id = VH:SQLFetch (0)
		VH:SQLQuery ("update `" .. tbl_sql.ophist .. "` set `nick` = '" .. repsqlchars (nick) .. "', `date` = " .. _tostring (os.time () + table_sets.srvtimediff) .. ", `message` = '" .. repsqlchars (line) .. "', `class` = " .. _tostring (class) .. " where `id` = " .. _tostring (old_id))
	else
		VH:SQLQuery ("insert into `" .. tbl_sql.ophist .. "` (`nick`, `date`, `message`, `class`) values ('" .. repsqlchars (nick) .. "', " .. _tostring (os.time () + table_sets.srvtimediff) .. ", '" .. repsqlchars (line) .. "', " .. _tostring (class) .. ")")
	end
end

----- ---- --- -- -

function addcrhistoryline (room, nick, real, line)
	if table_sets.chathistlimit == 0 then
		return
	end

	local rep_room = repsqlchars (room)
	local addr = getip (real)

	if counttable (tbl_sql.crhist, "`room` = '" .. rep_room .. "'") >= table_sets.chathistlimit then
		VH:SQLQuery ("select `id` from `" .. tbl_sql.crhist .. "` where `room` = '" .. rep_room .. "' order by `date` asc limit 1") -- get oldest message
		local _, old_id = VH:SQLFetch (0)
		VH:SQLQuery ("update `" .. tbl_sql.crhist .. "` set `realnick` = '" .. repsqlchars (real) .. "', `nick` = '" .. repsqlchars (nick) .. "', `ip` = " .. sqlemptnull (valor (addr, "0.0.0.0")) .. ", `date` = " .. _tostring (os.time () + table_sets.srvtimediff) .. ", `message` = '" .. repsqlchars (line) .. "' where `id` = " .. _tostring (old_id))
	else
		VH:SQLQuery ("insert into `" .. tbl_sql.crhist .. "` (`room`, `realnick`, `nick`, `ip`, `date`, `message`) values ('" .. rep_room .. "', '" .. repsqlchars (real) .. "', '" .. repsqlchars (nick) .. "', " .. sqlemptnull (valor (addr, "0.0.0.0")) .. ", " .. _tostring (os.time () + table_sets.srvtimediff) .. ", '" .. repsqlchars (line) .. "')")
	end
end

----- ---- --- -- -

function addprotentry (nick, line)
	local ent = repnmdcinchars (line)
	local ok = true

	for _, prot in pairs (cache_prot) do
		if prot == ent then
			ok = false
			break
		end
	end

	if ok then -- add
		table.insert (cache_prot, ent)
		VH:SQLQuery ("insert ignore into `" .. tbl_sql.prot .. "` (`protected`) values ('" .. repsqlchars (ent) .. "')")
		commandanswer (nick, gettext ("Added protection entry: %s"):format (line))
	else -- exists
		commandanswer (nick, gettext ("Protection entry already exists: %s"):format (line))
	end
end

----- ---- --- -- -

function delprotentry (nick, line)
	local ent = repnmdcinchars (line)
	local id = 0

	for pos, prot in pairs (cache_prot) do
		if prot == ent then
			id = pos
			break
		end
	end

	if id > 0 then -- delete
		table.remove (cache_prot, id)
		VH:SQLQuery ("delete ignore from `" .. tbl_sql.prot .. "` where `protected` = '" .. repsqlchars (ent) .. "'")
		commandanswer (nick, gettext ("Deleted protection entry: %s"):format (line))
	else -- not in list
		commandanswer (nick, gettext ("Protection entry not found: %s"):format (line))
	end
end

----- ---- --- -- -

function listprotentry (nick)
	local _, rows = VH:SQLQuery ("select `protected`, `occurred` from `" .. tbl_sql.prot .. "` order by `occurred` desc")

	if rows > 0 then
		local list, rlen, olen = "", 0, 0

		for x = 0, rows - 1 do
			local _, ent, occ = VH:SQLFetch (x)

			if x == 0 then
				rlen = # _tostring (rows)
				olen = # _tostring (occ)
			end

			list = list .. " " .. prezero (rlen, (x + 1)) .. ". [ O: " .. prezero (olen, occ) .. " ] " .. repnmdcoutchars (ent) .. "\r\n"
		end

		commandanswer (nick, gettext ("Protection list") .. ":\r\n\r\n" .. list)
	else -- empty
		commandanswer (nick, gettext ("Protection list is empty."))
	end
end

----- ---- --- -- -

function isprotected (nick, addr)
	if # cache_prot > 0 then
		local lick = ""

		if nick then
			lick = tolow (nick)
		end

		for _, prot in pairs (cache_prot) do
			if (nick and lick:match (prot)) or (addr and addr:match (prot)) then
				VH:SQLQuery ("update ignore `" .. tbl_sql.prot .. "` set `occurred` = `occurred` + 1 where `protected` = '" .. repsqlchars (prot) .. "'")
				return true
			end
		end
	end

	return false
end

----- ---- --- -- -

function setmode (nick, line)
local _, _, usr, tp = line:find ("^(.+) (%S+)$")

--if getstatus (usr) == 1 then
	if tp == "norm" then
		if table_mode [usr] then
			commandanswer (nick, gettext ("Changing chat mode for %s: %s => %s"):format (usr, table_mode [usr], tp))
			table_mode [usr] = nil
		else
			commandanswer (nick, gettext ("Not found in chat mode list: %s"):format (usr))
		end

	elseif tp == "rev" or tp == "cyr" or tp == "lat" or tp == "cap" or tp == "low" or tp == "pwd" or tp == "num" then
			commandanswer (nick, gettext ("Changing chat mode for %s: %s => %s"):format (usr, (table_mode [usr] or "norm"), tp))
			table_mode [usr] = tp

	else -- unknown mode
		commandanswer (nick, gettext ("Known chat modes are: %s"):format ("rev, cyr, lat, cap, low, pwd, num " .. gettext ("and") .. " norm"))
	end
--else
	--commandanswer (nick, gettext ("User not in list: %s"):format (usr))
--end
end

----- ---- --- -- -

function listmodes (nick)
local list = ""
local x = 1

for k, v in pairs (table_mode) do
	list = list .. " " .. x..". " .. k.." @ " .. v.."\r\n"
	x = x + 1
end

if list == "" then
	commandanswer (nick, gettext ("Chat mode user list is empty."))
else
	commandanswer (nick, gettext ("Chat mode user list") .. ":\r\n\r\n" .. list)
end
end

----- ---- --- -- -

function modusrmode (nick, ip, msg)
local ret = msg

for k, v in pairs (table_mode) do
	if tolow (nick):find (k) or ip:find (k) then
		if v == "rev" then
			ret = ret:reverse ()
		elseif v == "cyr" then
			ret = convtranslit (ret, 2)
		elseif v == "lat" then
			ret = convtranslit (ret, 1)
		elseif v == "cap" then
			ret = convcaps (ret, false)
		elseif v == "low" then
			ret = convcaps (ret, true)
		elseif v == "pwd" then
			ret = ret:gsub ("%S", "*")
		elseif v == "num" then
			ret = ret:gsub ("[oO��]", "0")
			ret = ret:gsub ("[iIlL]", "1")
			ret = ret:gsub ("[eE��]", "3")
			ret = ret:gsub ("[aA����]", "4")
			ret = ret:gsub ("[sS]", "5")
			ret = ret:gsub ("[����]", "6")
			ret = ret:gsub ("[tT��%?]", "7")
			ret = ret:gsub ("[yY��]", "9")
		end

		return ret
	end
end

return ret
end

----- ---- --- -- -

function hublistadd (nick, line)
local _, _, addr, name, ownr = line:find ("^(%S+) \"(.+)\" \"(.*)\"$")
if not addr:find (":") then addr = addr .. ":411" end
local raddr = repsqlchars (addr)
local _, rows = VH:SQLQuery ("select `owner` from `" .. tbl_sql.hubs .. "` where `address` = '" .. raddr .. "' limit 1")

if rows > 0 then -- update
VH:SQLQuery ("update `" .. tbl_sql.hubs .. "` set `name` = '" .. repsqlchars (name) .. "', `owner` = '" .. repsqlchars (ownr) .. "' where `address` = '" .. raddr .. "' limit 1")
commandanswer (nick, gettext ("Modified friendly hub: %s"):format (addr))
else -- add
VH:SQLQuery ("insert into `" .. tbl_sql.hubs .. "` (`address`, `name`, `owner`) values ('" .. raddr .. "', '" .. repsqlchars (name) .. "', '" .. repsqlchars (ownr) .. "')")
commandanswer (nick, gettext ("Added friendly hub: %s"):format (addr))
end
end

----- ---- --- -- -

function hublistdel (nick, addr)
local maddr = addr
if not maddr:find (":") then maddr = maddr .. ":411" end
local raddr = repsqlchars (maddr)
local _, rows = VH:SQLQuery ("select `owner` from `" .. tbl_sql.hubs .. "` where `address` = '" .. raddr .. "' limit 1")

if rows > 0 then -- delete
VH:SQLQuery ("delete from `" .. tbl_sql.hubs .. "` where `address` = '" .. raddr .. "' limit 1")
commandanswer (nick, gettext ("Deleted friendly hub: %s"):format (maddr))
else -- not in list
commandanswer (nick, gettext ("Friendly hub not found: %s"):format (maddr))
end
end

----- ---- --- -- -

function hublistshow (nick)
	local _, rows = VH:SQLQuery ("select `address`, `name`, `owner`, `status` from `" .. tbl_sql.hubs .. "` order by `status` desc, `name` asc")

	if rows > 0 then -- ok
		local hlist = ""

		for x = 0, rows - 1 do
			local _, addr, name, ownr, sts = VH:SQLFetch (x)
			local pos = addr:find (":")

			if addr:sub (pos + 1) == "411" then
				addr = addr:sub (1, pos - 1)
			end

			if ownr ~= "" then
				ownr = " [ O: " .. ownr .. " ]"
			end

			--if not table_othsets.mod_sock or table_sets.hublistpingint == 0 then
				sts = ""
			--else
				--if tonumber (sts) == 1 then
					--sts = " [ S: " .. gettext ("Online") .. " ]"
				--else
					--sts = " [ S: " .. gettext ("Offline") .. " ]"
				--end
			--end

			hlist = hlist .. " " .. prezero (# rows, (x + 1)) .. ". " .. name .. " @ dchub://" .. addr .. "/" .. ownr .. sts .. "\r\n" -- todo: allow adding adc, adcs, nmdcs hubs
		end

		commandanswer (nick, gettext ("Friendly hublist") .. ":\r\n\r\n" .. hlist)
	else -- empty
		commandanswer (nick, gettext ("Friendly hublist is empty."))
	end
end

----- ---- --- -- -

--[[

function hublistping ()
	local lsocktcp = table_othsets.mod_sock.tcp () -- prepare the socket

	if not lsocktcp then
		return
	end

	lsocktcp:setoption ("reuseaddr", true)

	if not lsocktcp:bind ("*", 0) then
		return
	end

	lsocktcp:settimeout (table_sets.hubpingtimeout) -- connect timeout
	local _, rows = VH:SQLQuery ("select `address`, `status` from `" .. tbl_sql.hubs .. "`")
	local updlist = {}

	for x = 0, rows - 1 do
		local _, addr, sts = VH:SQLFetch (x)
		local pos = addr:find (":")
		local nsts = 0

		if lsocktcp:connect (addr:sub (1, pos - 1), (tonumber (addr:sub (pos + 1)) or 411), nil, nil) then
			lsocktcp:close ()
			nsts = 1
		end

		if nsts ~= tonumber (sts) then -- changed
			updlist [addr] = nsts
		end
	end

	for k, v in pairs (updlist) do
		VH:SQLQuery ("update `" .. tbl_sql.hubs .. "` set `status` = " .. v .. " where `address` = '" .. repsqlchars (k) .. "' limit 1")
	end
end

]]--

----- ---- --- -- -

function sendoffmsg (from, line, ucls)
	local _, _, to = line:find ("^(%S+) .+$")

	if to:lower () == from:lower () then
		commandanswer (from, gettext ("Why would you send offline message to yourself?"))
	elseif isbot (to) then
		commandanswer (from, gettext ("The user you're trying to send offline message to is a bot. Message is discarded."))
	else
		local _, _, msg = line:find ("^%S+ (.+)$")
		local uip = getip (from)
		local tsts = getstatus (to)

		if isprotected (from, uip) or antiscan (from, ucls, msg, 3, to, tsts) == 1 then
			if tsts == 1 then
				offlinepm (from, to, msg)
				commandanswer (from, gettext ("User %s is online. Sending message directly."):format (to))
			else
				local ndate = os.time () + table_sets.srvtimediff -- current time
				VH:SQLQuery ("insert into `" .. tbl_sql.off .. "` (`from`, `ip`, `to`, `date`, `message`) values ('" .. repsqlchars (from) .. "', '" .. uip .. "', '" .. repsqlchars (to) .. "', " .. ndate .. ", '" .. repsqlchars (msg) .. "')")
				commandanswer (from, gettext ("Your offline message stored for user: %s"):format (to))
				opsnotify (table_sets.classnotioff, gettext ("%s with IP %s and class %d sent offline message."):format (from, uip .. tryipcc (uip, from), ucls))
			end
		end
	end
end

----- ---- --- -- -

function autosendoffmsg (to, ucls, tip)
if table_sets.offmsgclass ~= 11 then
local user = repsqlchars (to)
local _, rows = VH:SQLQuery ("select `from`, `date`, `message` from `" .. tbl_sql.off .. "` where `to` = '" .. user .. "' order by `date` asc, `from` asc")

if rows > 0 then
for x = 0, rows - 1 do
local _, from, adate, msg = VH:SQLFetch (x)
offlinepm (from, to, gettext ("I sent offline message to you on %s"):format (os.date (table_sets.dateformat .. " " .. table_sets.timeformat, adate)) .. ":\r\n\r\n" .. msg .. "\r\n")
local sts = ""

if getstatus (from) == 0 then
sts = gettext ("Offline")
else
sts = gettext ("Online")
end

offlinepm (from, to, gettext ("My current status") .. ": " .. sts)
end

opsnotify (table_sets.classnotioff, gettext ("%s with IP %s and class %d received offline messages."):format (to, tip .. tryipcc (tip, to), ucls))
VH:SQLQuery ("delete from `" .. tbl_sql.off .. "` where `to` = '" .. user .. "'") -- remove all stored message to that user
end
end
end

----- ---- --- -- -

function listoffline (nick)
local _, rows = VH:SQLQuery ("select `from`, `ip`, `date` from `" .. tbl_sql.off .. "` order by `date` asc, `from` asc")

if rows > 0 then
local anentry = ""

for x = 0, rows - 1 do
local _, from, ip, adate = VH:SQLFetch (x)
anentry = anentry .. " " .. prezero (# rows, (x + 1)) .. ". [ D: " .. os.date (table_sets.dateformat .. " " .. table_sets.timeformat, adate) .. " ] " .. from .. " @ " .. ip .. "\r\n"
end

commandanswer (nick, gettext ("Stored offline messages") .. ":\r\n\r\n" .. anentry)
else
commandanswer (nick, gettext ("Offline message list is empty."))
end
end

----- ---- --- -- -

function deloffline (nick, adate)
local _, rows = VH:SQLQuery ("select `date` from `" .. tbl_sql.off .. "`")
local t = {}

if rows > 0 then
	for x = 0, rows - 1 do
		local _, zdate = VH:SQLFetch (x)

		if os.date (table_sets.dateformat .. " " .. table_sets.timeformat, zdate):find (repdatechars (adate)) then
			table.insert (t, zdate)
		end
	end

else
	commandanswer (nick, gettext ("Offline message list is empty."))
	return
end

for _, v in pairs (t) do
	-- same goes here, as for hub news, see comments in delnews
	VH:SQLQuery ("delete from `" .. tbl_sql.off .. "` where `date` = " .. v.." limit 1")
end

local num = # t

if num > 0 then
	commandanswer (nick, gettext ("Deleted %d offline messages."):format (num))
else
	commandanswer (nick, gettext ("Couldn't delete offline messages because not found: %s"):format (adate))
end
end

----- ---- --- -- -

function cleanoffline (nick, cls)
local rows = counttable (tbl_sql.off)

if rows > 0 then
VH:SQLQuery ("truncate table `" .. tbl_sql.off .. "`")
commandanswer (nick, gettext ("Deleted %d offline messages."):format (rows))
opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted all offline messages."):format (nick, cls))
else
commandanswer (nick, gettext ("There are no offline messages to remove."))
end
end

----- ---- --- -- -

function checknick (nick, ucls, aip)
	if table_sets.michnick == 0 then
		return 0
	end

	local _, rows = VH:SQLQuery ("select `nick`, `time` from `" .. tbl_sql.minick .. "` order by `occurred` desc")

	if rows > 0 then
		local lowtxt = tolow (repnmdcinchars (nick))

		for x = 0, rows - 1 do
			local _, entry, btime = VH:SQLFetch (x)
			local fres, fval = catchfinderror (lowtxt, entry)

			if not fres then
				local ferr = gettext ("There is an error in following forbidden nick pattern") .. ":\r\n\r\n"
				ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (entry) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
				opsnotify (table_sets.classnotiledoact, ferr)
			elseif fval then
				VH:SQLQuery ("update `" .. tbl_sql.minick .. "` set `occurred` = `occurred` + 1 where `nick` = '" .. repsqlchars (entry) .. "' limit 1")
				local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.miex .. "`")

				if rows > 0 then
					for x = 0, rows - 1 do
						local _, entry = VH:SQLFetch (x)
						local fres, fval = catchfinderror (lowtxt, entry)

						if not fres then
							local ferr = gettext ("There is an error in following MyINFO exception pattern") .. ":\r\n\r\n"
							ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (entry) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
							opsnotify (table_sets.classnotiledoact, ferr)
						elseif fval then
							VH:SQLQuery ("update `" .. tbl_sql.miex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (entry) .. "' limit 1")
							opsnotify (table_sets.classnotiex, gettext ("%s with IP %s and class %d allowed due to forbidden nick exception: %s"):format (nick, aip .. tryipcc (aip, nick), ucls, nick))
							return 0
						end
					end
				end

				if not btime or btime == "" then
					btime = table_sets.mitbantime
				end

				local rsn = table_sets.minickmessage:gsub ("%*", reprexpchars (nick))
				VH:KickUser (table_othsets.sendfrom, nick, rsn .. "     #_ban_" .. btime)
				return 1
			end
		end
	end

	return 0
end

----- ---- --- -- -

function checkdesc (nick, desc, ucls, aip)
	if table_sets.michdesc == 0 then
		return 0
	end

	local _, rows = VH:SQLQuery ("select `description`, `time` from `" .. tbl_sql.midesc .. "` order by `occurred` desc")

	if rows > 0 then
		local lowtxt = tolow (repnmdcinchars (desc))

		for x = 0, rows - 1 do
			local _, entry, btime = VH:SQLFetch (x)
			local fres, fval = catchfinderror (lowtxt, entry)

			if not fres then
				local ferr = gettext ("There is an error in following forbidden description pattern") .. ":\r\n\r\n"
				ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (entry) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
				opsnotify (table_sets.classnotiledoact, ferr)
			elseif fval then
				VH:SQLQuery ("update `" .. tbl_sql.midesc .. "` set `occurred` = `occurred` + 1 where `description` = '" .. repsqlchars (entry) .. "' limit 1")
				local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.miex .. "`")

				if rows > 0 then
					for x = 0, rows - 1 do
						local _, entry = VH:SQLFetch (x)
						local fres, fval = catchfinderror (lowtxt, entry)

						if not fres then
							local ferr = gettext ("There is an error in following MyINFO exception pattern") .. ":\r\n\r\n"
							ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (entry) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
							opsnotify (table_sets.classnotiledoact, ferr)
						elseif fval then
							VH:SQLQuery ("update `" .. tbl_sql.miex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (entry) .. "' limit 1")
							opsnotify (table_sets.classnotiex, gettext ("%s with IP %s and class %d allowed due to forbidden description exception: %s"):format (nick, aip .. tryipcc (aip, nick), ucls, desc))
							return 0
						end
					end
				end

				if not btime or btime == "" then
					btime = table_sets.mitbantime
				end

				local rsn = table_sets.midescmessage:gsub ("%*", reprexpchars (desc))
				VH:KickUser (table_othsets.sendfrom, nick, rsn .. "     #_ban_" .. btime)
				return 1
			end
		end
	end

	return 0
end

----- ---- --- -- -

function checktag (nick, tag, ucls, aip)
	if table_sets.michtag == 0 then
		return 0
	end

	local _, rows = VH:SQLQuery ("select `tag`, `time` from `" .. tbl_sql.mitag .. "` order by `occurred` desc")

	if rows > 0 then
		local lowtxt = tolow (repnmdcinchars (tag))

		for x = 0, rows - 1 do
			local _, entry, btime = VH:SQLFetch (x)
			local fres, fval = catchfinderror (lowtxt, entry)

			if not fres then
				local ferr = gettext ("There is an error in following forbidden tag pattern") .. ":\r\n\r\n"
				ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (entry) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
				opsnotify (table_sets.classnotiledoact, ferr)
			elseif fval then
				VH:SQLQuery ("update `" .. tbl_sql.mitag .. "` set `occurred` = `occurred` + 1 where `tag` = '" .. repsqlchars (entry) .. "' limit 1")
				local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.miex .. "`")

				if rows > 0 then
					for x = 0, rows - 1 do
						local _, entry = VH:SQLFetch (x)
						local fres, fval = catchfinderror (lowtxt, entry)

						if not fres then
							local ferr = gettext ("There is an error in following MyINFO exception pattern") .. ":\r\n\r\n"
							ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (entry) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
							opsnotify (table_sets.classnotiledoact, ferr)
						elseif fval then
							VH:SQLQuery ("update `" .. tbl_sql.miex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (entry) .. "' limit 1")
							opsnotify (table_sets.classnotiex, gettext ("%s with IP %s and class %d allowed due to forbidden tag exception: %s"):format (nick, aip .. tryipcc (aip, nick), ucls, tag))
							return 0
						end
					end
				end

				local rsn = table_sets.mitagmessage
				local res = parsetag (tag)

				if res ["cl"] then -- client
					rsn = rsn:gsub ("<cl>", reprexpchars (res ["cl"]))
				end

				if res ["ve"] then -- version
					rsn = rsn:gsub ("<ve>", reprexpchars (res ["ve"]))
				end

				if res ["mo"] then -- mode
					rsn = rsn:gsub ("<mo>", reprexpchars (res ["mo"]))
				end

				if res ["hu"] then -- hubs
					rsn = rsn:gsub ("<hu>", reprexpchars (res ["hu"]))
				end

				if res ["sl"] then -- slots
					rsn = rsn:gsub ("<sl>", reprexpchars (res ["sl"]))
				end

				if res ["li"] then -- limiter
					rsn = rsn:gsub ("<li>", reprexpchars (res ["li"]))
				end

				if not btime or btime == "" then
					btime = table_sets.mitbantime
				end

				rsn = rsn:gsub ("%*", reprexpchars (tag))
				VH:KickUser (table_othsets.sendfrom, nick, rsn .. "     #_ban_" .. btime)
				return 1
			end
		end
	end

	return 0
end

----- ---- --- -- -

function checkconn (nick, conn, ucls, aip)
	if table_sets.michconn == 0 then
		return 0
	end

	local _, rows = VH:SQLQuery ("select `connection`, `time` from `" .. tbl_sql.miconn .. "` order by `occurred` desc")

	if rows > 0 then
		local lowtxt = tolow (repnmdcinchars (conn))

		for x = 0, rows - 1 do
			local _, entry, btime = VH:SQLFetch (x)
			local fres, fval = catchfinderror (lowtxt, entry)

			if not fres then
				local ferr = gettext ("There is an error in following forbidden connection type pattern") .. ":\r\n\r\n"
				ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (entry) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
				opsnotify (table_sets.classnotiledoact, ferr)
			elseif fval then
				VH:SQLQuery ("update `" .. tbl_sql.miconn .. "` set `occurred` = `occurred` + 1 where `connection` = '" .. repsqlchars (entry) .. "' limit 1")
				local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.miex .. "`")

				if rows > 0 then
					for x = 0, rows - 1 do
						local _, entry = VH:SQLFetch (x)
						local fres, fval = catchfinderror (lowtxt, entry)

						if not fres then
							local ferr = gettext ("There is an error in following MyINFO exception pattern") .. ":\r\n\r\n"
							ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (entry) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
							opsnotify (table_sets.classnotiledoact, ferr)
						elseif fval then
							VH:SQLQuery ("update `" .. tbl_sql.miex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (entry) .. "' limit 1")
							opsnotify (table_sets.classnotiex, gettext ("%s with IP %s and class %d allowed due to forbidden connection type exception: %s"):format (nick, aip .. tryipcc (aip, nick), ucls, conn))
							return 0
						end
					end
				end

				if not btime or btime == "" then
					btime = table_sets.mitbantime
				end

				local rsn = table_sets.miconnmessage:gsub ("%*", reprexpchars (conn))
				VH:KickUser (table_othsets.sendfrom, nick, rsn .. "     #_ban_" .. btime)
				return 1
			end
		end
	end

	return 0
end

----- ---- --- -- -

function checkemail (nick, email, ucls, aip)
	if table_sets.michemail == 0 then
		return 0
	end

	local _, rows = VH:SQLQuery ("select `email`, `time` from `" .. tbl_sql.miemail .. "` order by `occurred` desc")

	if rows > 0 then
		local lowtxt = tolow (repnmdcinchars (email))

		for x = 0, rows - 1 do
			local _, entry, btime = VH:SQLFetch (x)
			local fres, fval = catchfinderror (lowtxt, entry)

			if not fres then
				local ferr = gettext ("There is an error in following forbidden email pattern") .. ":\r\n\r\n"
				ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (entry) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
				opsnotify (table_sets.classnotiledoact, ferr)
			elseif fval then
				VH:SQLQuery ("update `" .. tbl_sql.miemail .. "` set `occurred` = `occurred` + 1 where `email` = '" .. repsqlchars (entry) .. "' limit 1")
				local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.miex .. "`")

				if rows > 0 then
					for x = 0, rows - 1 do
						local _, entry = VH:SQLFetch (x)
						local fres, fval = catchfinderror (lowtxt, entry)

						if not fres then
							local ferr = gettext ("There is an error in following MyINFO exception pattern") .. ":\r\n\r\n"
							ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (entry) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
							opsnotify (table_sets.classnotiledoact, ferr)
						elseif fval then
							VH:SQLQuery ("update `" .. tbl_sql.miex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (entry) .. "' limit 1")
							opsnotify (table_sets.classnotiex, gettext ("%s with IP %s and class %d allowed due to forbidden email exception: %s"):format (nick, aip .. tryipcc (aip, nick), ucls, email))
							return 0
						end
					end
				end

				if not btime or btime == "" then
					btime = table_sets.mitbantime
				end

				local rsn = table_sets.miemailmessage:gsub ("%*", reprexpchars (email))
				VH:KickUser (table_othsets.sendfrom, nick, rsn .. "     #_ban_" .. btime)
				return 1
			end
		end
	end

	return 0
end

----- ---- --- -- -

function checkshare (nick, share, ucls, aip)
	if table_sets.michshare == 0 then
		return 0
	end

	local _, rows = VH:SQLQuery ("select `share`, `time` from `" .. tbl_sql.mishare .. "` order by `occurred` desc")

	if rows > 0 then
		local lowtxt = repnmdcinchars (share)

		for x = 0, rows - 1 do
			local _, entry, btime = VH:SQLFetch (x)
			local fres, fval = catchfinderror (lowtxt, entry)

			if not fres then
				local ferr = gettext ("There is an error in following forbidden share size pattern") .. ":\r\n\r\n"
				ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (entry) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
				opsnotify (table_sets.classnotiledoact, ferr)
			elseif fval then
				VH:SQLQuery ("update `" .. tbl_sql.mishare .. "` set `occurred` = `occurred` + 1 where `share` = '" .. repsqlchars (entry) .. "' limit 1")
				local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.miex .. "`")

				if rows > 0 then
					for x = 0, rows - 1 do
						local _, entry = VH:SQLFetch (x)
						local fres, fval = catchfinderror (lowtxt, entry)

						if not fres then
							local ferr = gettext ("There is an error in following MyINFO exception pattern") .. ":\r\n\r\n"
							ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (entry) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
							opsnotify (table_sets.classnotiledoact, ferr)
						elseif fval then
							VH:SQLQuery ("update `" .. tbl_sql.miex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (entry) .. "' limit 1")
							opsnotify (table_sets.classnotiex, gettext ("%s with IP %s and class %d allowed due to forbidden share size exception: %s"):format (nick, aip .. tryipcc (aip, nick), ucls, share))
							return 0
						end
					end
				end

				if not btime or btime == "" then
					btime = table_sets.mitbantime
				end

				local rsn = table_sets.misharemessage:gsub ("%*", reprexpchars (share))
				VH:KickUser (table_othsets.sendfrom, nick, rsn .. "     #_ban_" .. btime)
				return 1
			end
		end
	end

	return 0
end

----- ---- --- -- -

function checkip (nick, aip, ucls)
	if table_sets.michip == 0 or aip == "0.0.0.0" then
		return 0
	end

	local _, rows = VH:SQLQuery ("select `ip`, `time` from `" .. tbl_sql.miip .. "` order by `occurred` desc")

	if rows > 0 then
		local lowtxt = repnmdcinchars (aip)

		for x = 0, rows - 1 do
			local _, entry, btime = VH:SQLFetch (x)
			local fres, fval = catchfinderror (lowtxt, entry)

			if not fres then
				local ferr = gettext ("There is an error in following forbidden IP address pattern") .. ":\r\n\r\n"
				ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (entry) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
				opsnotify (table_sets.classnotiledoact, ferr)
			elseif fval then
				VH:SQLQuery ("update `" .. tbl_sql.miip .. "` set `occurred` = `occurred` + 1 where `ip` = '" .. repsqlchars (entry) .. "' limit 1")
				local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.miex .. "`")

				if rows > 0 then
					for x = 0, rows - 1 do
						local _, entry = VH:SQLFetch (x)
						local fres, fval = catchfinderror (lowtxt, entry)

						if not fres then
							local ferr = gettext ("There is an error in following MyINFO exception pattern") .. ":\r\n\r\n"
							ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (entry) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
							opsnotify (table_sets.classnotiledoact, ferr)
						elseif fval then
							VH:SQLQuery ("update `" .. tbl_sql.miex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (entry) .. "' limit 1")
							opsnotify (table_sets.classnotiex, gettext ("%s with IP %s and class %d allowed due to forbidden IP address exception: %s"):format (nick, aip .. tryipcc (aip, nick), ucls, aip))
							return 0
						end
					end
				end

				if not btime or btime == "" then
					btime = table_sets.mitbantime
				end

				local rsn = table_sets.miipmessage:gsub ("%*", reprexpchars (aip))
				VH:KickUser (table_othsets.sendfrom, nick, rsn .. "     #_ban_" .. btime)
				return 1
			end
		end
	end

	return 0
end

----- ---- --- -- -

function checkcc (nick, cls)
	if table_sets.michcc == 0 or not table_refu.GetUserCC then
		return false
	end

	local cc = getcc (nick)

	if not cc then
		return false
	end

	local _, rows = VH:SQLQuery ("select `cc`, `time` from `" .. tbl_sql.micc .. "` order by `occurred` desc")

	if rows > 0 then
		local lcc = tolow (repnmdcinchars (cc))

		for x = 0, rows - 1 do
			local _, ent, btime = VH:SQLFetch (x)
			local fres, fval = catchfinderror (lcc, ent)

			if not fres then
				local ferr = gettext ("There is an error in following forbidden country code pattern") .. ":\r\n\r\n"
				ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (ent) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
				opsnotify (table_sets.classnotiledoact, ferr)
			elseif fval then
				VH:SQLQuery ("update `" .. tbl_sql.micc .. "` set `occurred` = `occurred` + 1 where `cc` = '" .. repsqlchars (ent) .. "' limit 1")
				local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.miex .. "`")

				if rows > 0 then
					for x = 0, rows - 1 do
						local _, ent = VH:SQLFetch (x)
						local fres, fval = catchfinderror (lcc, ent)

						if not fres then
							local ferr = gettext ("There is an error in following MyINFO exception pattern") .. ":\r\n\r\n"
							ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (ent) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
							opsnotify (table_sets.classnotiledoact, ferr)
						elseif fval then
							VH:SQLQuery ("update `" .. tbl_sql.miex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (ent) .. "' limit 1")
							opsnotify (table_sets.classnotiex, gettext ("%s with IP %s and class %d allowed due to forbidden country code exception: %s"):format (nick, ip .. tryipcc (ip, nick), cls, cc .. "=" .. (cc_names [cc] or gettext ("Unknown country"))))
							return false
						end
					end
				end

				if not btime or btime == "" then
					btime = table_sets.mitbantime
				end

				local rsn = table_sets.miccmessage:gsub ("%*", reprexpchars (cc .. "=" .. (cc_names [cc] or gettext ("Unknown country"))))
				VH:KickUser (table_othsets.sendfrom, nick, rsn .. "     #_ban_" .. btime)
				return true
			end
		end
	end

	return false
end

----- ---- --- -- -

function checkdns (nick, cls, ip)
	if table_sets.michdns == 0 or getconfig ("dns_lookup") == 0 then
		return false
	end

	local dns = gethost (nick)

	if dns == "[unknown]" then
		return false
	end

	local _, rows = VH:SQLQuery ("select `dns`, `time` from `" .. tbl_sql.midns .. "` order by `occurred` desc")

	if rows > 0 then
		local ldns = tolow (repnmdcinchars (dns))

		for x = 0, rows - 1 do
			local _, ent, btime = VH:SQLFetch (x)
			local fres, fval = catchfinderror (ldns, ent)

			if not fres then
				local ferr = gettext ("There is an error in following forbidden DNS pattern") .. ":\r\n\r\n"
				ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (ent) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
				opsnotify (table_sets.classnotiledoact, ferr)
			elseif fval then
				VH:SQLQuery ("update `" .. tbl_sql.midns .. "` set `occurred` = `occurred` + 1 where `dns` = '" .. repsqlchars (ent) .. "' limit 1")
				local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.miex .. "`")

				if rows > 0 then
					for x = 0, rows - 1 do
						local _, ent = VH:SQLFetch (x)
						local fres, fval = catchfinderror (ldns, ent)

						if not fres then
							local ferr = gettext ("There is an error in following MyINFO exception pattern") .. ":\r\n\r\n"
							ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (ent) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
							opsnotify (table_sets.classnotiledoact, ferr)
						elseif fval then
							VH:SQLQuery ("update `" .. tbl_sql.miex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (ent) .. "' limit 1")
							opsnotify (table_sets.classnotiex, gettext ("%s with IP %s and class %d allowed due to forbidden DNS exception: %s"):format (nick, ip .. tryipcc (ip, nick), cls, dns))
							return false
						end
					end
				end

				if not btime or btime == "" then
					btime = table_sets.mitbantime
				end

				local rsn = table_sets.midnsmessage:gsub ("%*", reprexpchars (dns))
				VH:KickUser (table_othsets.sendfrom, nick, rsn .. "     #_ban_" .. btime)
				return true
			end
		end
	end

	return false
end

----- ---- --- -- -

function checksup (nick, cls, ip)
	if table_sets.michsup == 0 or not table_refu.GetUserSupports then
		return false
	end

	local on, sup = VH:GetUserSupports (nick)

	if not on or not sup or sup == "" then
		return false
	end

	local _, rows = VH:SQLQuery ("select `supports`, `time` from `" .. tbl_sql.misup .. "` order by `occurred` desc")

	if rows > 0 then
		local lsup = tolow (repnmdcinchars (sup))

		for x = 0, rows - 1 do
			local _, ent, btime = VH:SQLFetch (x)
			local fres, fval = catchfinderror (lsup, ent)

			if not fres then
				local ferr = gettext ("There is an error in following forbidden client supports pattern") .. ":\r\n\r\n"
				ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (ent) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
				opsnotify (table_sets.classnotiledoact, ferr)
			elseif fval then
				VH:SQLQuery ("update `" .. tbl_sql.misup .. "` set `occurred` = `occurred` + 1 where `supports` = '" .. repsqlchars (ent) .. "' limit 1")
				local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.miex .. "`")

				if rows > 0 then
					for x = 0, rows - 1 do
						local _, ent = VH:SQLFetch (x)
						local fres, fval = catchfinderror (lsup, ent)

						if not fres then
							local ferr = gettext ("There is an error in following MyINFO exception pattern") .. ":\r\n\r\n"
							ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (ent) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
							opsnotify (table_sets.classnotiledoact, ferr)
						elseif fval then
							VH:SQLQuery ("update `" .. tbl_sql.miex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (ent) .. "' limit 1")
							opsnotify (table_sets.classnotiex, gettext ("%s with IP %s and class %d allowed due to forbidden client supports exception: %s"):format (nick, ip .. tryipcc (ip, nick), cls, sup))
							return false
						end
					end
				end

				if not btime or btime == "" then
					btime = table_sets.mitbantime
				end

				local rsn = table_sets.misupmessage:gsub ("%*", reprexpchars (sup))
				VH:KickUser (table_othsets.sendfrom, nick, rsn .. "     #_ban_" .. btime)
				return true
			end
		end
	end

	return false
end

----- ---- --- -- -

function checkver (nick, cls, ip)
	if table_sets.michver == 0 or not table_refu.GetUserVersion then
		return false
	end

	local on, ver = VH:GetUserVersion (nick)

	if not on or not ver or ver == "" then
		return false
	end

	local _, rows = VH:SQLQuery ("select `version`, `time` from `" .. tbl_sql.miver .. "` order by `occurred` desc")

	if rows > 0 then
		local lver = tolow (repnmdcinchars (ver))

		for x = 0, rows - 1 do
			local _, ent, btime = VH:SQLFetch (x)
			local fres, fval = catchfinderror (lver, ent)

			if not fres then
				local ferr = gettext ("There is an error in following forbidden NMDC version pattern") .. ":\r\n\r\n"
				ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (ent) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
				ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
				opsnotify (table_sets.classnotiledoact, ferr)
			elseif fval then
				VH:SQLQuery ("update `" .. tbl_sql.miver .. "` set `occurred` = `occurred` + 1 where `version` = '" .. repsqlchars (ent) .. "' limit 1")
				local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.miex .. "`")

				if rows > 0 then
					for x = 0, rows - 1 do
						local _, ent = VH:SQLFetch (x)
						local fres, fval = catchfinderror (lver, ent)

						if not fres then
							local ferr = gettext ("There is an error in following MyINFO exception pattern") .. ":\r\n\r\n"
							ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (ent) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
							ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
							opsnotify (table_sets.classnotiledoact, ferr)
						elseif fval then
							VH:SQLQuery ("update `" .. tbl_sql.miex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (ent) .. "' limit 1")
							opsnotify (table_sets.classnotiex, gettext ("%s with IP %s and class %d allowed due to forbidden NMDC version exception: %s"):format (nick, ip .. tryipcc (ip, nick), cls, ver))
							return false
						end
					end
				end

				if not btime or btime == "" then
					btime = table_sets.mitbantime
				end

				local rsn = table_sets.mivermessage:gsub ("%*", reprexpchars (ver))
				VH:KickUser (table_othsets.sendfrom, nick, rsn .. "     #_ban_" .. btime)
				return true
			end
		end
	end

	return false
end

----- ---- --- -- -

function checkfake (nick, share, ucls, aip)
	if share < 1048576 then return 0 end -- skip < 1 gb
	local isfake = false

	if table_sets.michfakenum > 0 then -- same numbers
		for x = 0, 9 do
			if _tostring (share):find (_tostring (x):rep (table_sets.michfakenum)) then
				isfake = true
				break
			end
		end
	end

	if not isfake and table_sets.michfakediv == 1 then -- divide by 1 gb, tb, pb, dont check twice
		if not tostring ((share + 0.0) / 1048576):find ("%.[^0]+$") or not tostring ((share + 0.0) / 1073741824):find ("%.[^0]+$") or not tostring ((share + 0.0) / 1099511627776):find ("%.[^0]+$") then
			isfake = true
		end
	end

	if isfake then -- is fake, check for exception
		local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.miex .. "`")

		if rows > 0 then
			local sh = repnmdcinchars (_tostring (share))

			for x = 0, rows - 1 do
				local _, entry = VH:SQLFetch (x)

				if sh:find (entry) then
					VH:SQLQuery ("update `" .. tbl_sql.miex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (entry) .. "' limit 1")
					opsnotify (table_sets.classnotiex, gettext ("%s with IP %s and class %d allowed due to fake share exception: %s"):format (nick, aip .. tryipcc (aip, nick), ucls, _tostring (share) .. " " .. gettext ("B")))
					return 0
				end
			end
		end

		local rsn = table_sets.mifakemessage:gsub ("%*", reprexpchars (_tostring (share) .. " " .. gettext ("B")))
		VH:KickUser (table_othsets.sendfrom, nick, rsn .. "     #_ban_" .. table_sets.mitbantime)
		return 1
	end

	return 0
end

----- ---- --- -- -

function checkclone (nick, share, aip, ucls)
	if table_sets.michclone == 0 or share == 0 or aip == "0.0.0.0" then return 0 end -- skip

	for user in getnicklist ():gmatch ("([^$]+)%$%$") do
		if user ~= nick and getclass (user) < table_sets.scanbelowclass then -- skip user himself and if second user is protected
			if parsemyinfoshare (getmyinfo (user)) == share and getip (user) == aip then -- exact share and ip match
				local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.miex .. "`")

				if rows > 0 then
					for x = 0, rows - 1 do
						local _, entry = VH:SQLFetch (x)

						if repnmdcinchars (share):find (entry) or repnmdcinchars (aip):find (entry) then
							VH:SQLQuery ("update `" .. tbl_sql.miex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (entry) .. "' limit 1")
							opsnotify (table_sets.classnotiex, gettext ("%s with IP %s and class %d allowed due to clone exception: %s"):format (nick, aip .. tryipcc (aip, nick), ucls, user))
							return 0
						end
					end
				end

				local rsn = table_sets.miclonemessage:gsub ("%*", reprexpchars (user))

				if table_sets.michclone == 1 then
					maintouser (nick, rsn)
					opsnotify (table_sets.classnotimich, gettext ("Dropping user due to clone detection from IP %s with class %d: %s = %s"):format (aip .. tryipcc (aip, nick), ucls, nick, user))
					VH:Disconnect (nick)
				elseif table_sets.michclone == 2 then
					if table_sets.miclonekicktime ~= "" then
						rsn = rsn .. "     #_ban_" .. table_sets.miclonekicktime
					end

					VH:KickUser (table_othsets.sendfrom, nick, rsn)
				end

				return 1
			end
		end
	end

	return 0
end

----- ---- --- -- -

function checksameip (nick, ip, ucls)
	if table_sets.michsameip == 0 or ip == "0.0.0.0" then return 0 end -- skip

	for user in getnicklist ():gmatch ("([^$]+)%$%$") do
		if user ~= nick and getclass (user) < table_sets.scanbelowclass then -- skip user himself and if second user is protected
			if getip (user) == ip then -- exact ip match
				local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.miex .. "`")

				if rows > 0 then
					for x = 0, rows - 1 do
						local _, entry = VH:SQLFetch (x)

						if repnmdcinchars (ip):find (entry) then
							VH:SQLQuery ("update `" .. tbl_sql.miex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (entry) .. "' limit 1")
							opsnotify (table_sets.classnotiex, gettext ("%s with IP %s and class %d allowed due to same IP exception: %s"):format (nick, ip .. tryipcc (ip, nick), ucls, user))
							return 0
						end
					end
				end

				local rsn = table_sets.misameipmessage:gsub ("%*", reprexpchars (user))
				VH:KickUser (table_othsets.sendfrom, nick, rsn .. "     #_ban_" .. table_sets.mitbantime)
				return 1
			end
		end
	end

	return 0
end

----- ---- --- -- -

function gagipadd (nick, line)
	local _, _, ip, flag = line:find ("^(%S+) (%d)$")
	flag = tonumber (flag)

	if nick then
		if flag < 0 or flag > 2 then
			commandanswer (nick, gettext ("Known flags are: %s"):format ("0=ALL, 1=MC " .. gettext ("and") .. " 2=PM"))
		else
			local rip = repsqlchars (repnmdcinchars (ip))
			local _, rows = VH:SQLQuery ("select `flag` from `" .. tbl_sql.ipgag .. "` where `ip` = '" .. rip .. "' limit 1")

			if rows > 0 then -- modify
				VH:SQLQuery ("update `" .. tbl_sql.ipgag .. "` set `flag` = " .. _tostring (flag) .. " where `ip` = '" .. rip .. "' limit 1")
				commandanswer (nick, gettext ("Modified IP gag: %s"):format (ip))
			else -- add
				VH:SQLQuery ("insert into `" .. tbl_sql.ipgag .. "` (`ip`, `flag`) values ('" .. rip .. "', " .. _tostring (flag) .. ")")
				commandanswer (nick, gettext ("Added IP gag: %s"):format (ip))
			end

			if table_igag [ip] then
				table_igag [ip] = nil
			end
		end
	else
		if table_igag [ip] then -- flood or spam detected both in mc and pm
			flag = 0
		elseif flag > 2 then -- 3 = offline message, 4 = report command
			flag = 2
		end

		table_igag [ip] = flag
	end
end

----- ---- --- -- -

function gagipdel (nick, ip)
	if ip == "*" then
		table_igag = {}
		commandanswer (nick, gettext ("Cleared temporary IP gag list."))
	else
		local ok = false

		if table_igag [ip] then
			table_igag [ip] = nil
			ok = true
		end

		local rip = repsqlchars (repnmdcinchars (ip))
		local _, rows = VH:SQLQuery ("select `flag` from `" .. tbl_sql.ipgag .. "` where `ip` = '" .. rip .. "' limit 1")

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.ipgag .. "` where `ip` = '" .. rip .. "' limit 1")
			ok = true
		end

		if ok then
			commandanswer (nick, gettext ("Deleted IP gag: %s"):format (ip))
		else -- not in list
			commandanswer (nick, gettext ("IP gag not found: %s"):format (ip))
		end
	end
end

----- ---- --- -- -

function gagiplist (nick)
	local function flagname (flag)
		if flag == 0 then
			return "=ALL"
		elseif flag == 1 then
			return "=MC"
		elseif flag == 2 then
			return "=PM"
		end
	end

	local list, count = "", 0
	local _, rows = VH:SQLQuery ("select `ip`, `flag` from `" .. tbl_sql.ipgag .. "`")

	if rows > 0 then -- permanent list
		for x = 0, rows - 1 do
			local _, ip, flag = VH:SQLFetch (x)
			count = x + 1
			list = list .. " " .. _tostring (count) .. ". " .. repnmdcoutchars (ip) .. " [ F: " .. flag .. flagname (tonumber (flag)) .. " ] [ T: P ]\r\n"
		end
	end

	for key, value in pairs (table_igag) do -- temporary list
		count = count + 1
		list = list .. " " .. _tostring (count) .. ". " .. repnmdcoutchars (key) .. " [ F: " .. _tostring (value) .. flagname (value) .. " ] [ T: T ]\r\n"
	end

	if list == "" then
		commandanswer (nick, gettext ("IP gag list is empty."))
	else
		commandanswer (nick, gettext ("IP gag list") .. ":\r\n\r\n" .. list)
	end
end

----- ---- --- -- -

function gagipcheck (nick, ip, class, to, data)
	if class >= table_sets.scanbelowclass then
		return false
	end

	local t = {}

	for key, value in pairs (table_igag) do -- temporary list
		t [key] = value
	end

	local _, rows = VH:SQLQuery ("select `ip`, `flag` from `" .. tbl_sql.ipgag .. "`")

	if rows > 0 then -- permanent list
		for x = 0, rows - 1 do
			local _, lre, flag = VH:SQLFetch (x)
			t [lre] = tonumber (flag)
		end
	end

	for key, value in pairs (t) do
		if ip:match (key) then
			if to and (value == 0 or value == 2) then -- pm
				pmtouser (nick, to, gettext ("Private chat is currently disabled for you."))
				local toip = getip (to)
				opsnotify (table_sets.classnotigagip, gettext ("%s with IP %s and class %d tries to speak with IP gag in PM to %s with IP %s and class %d: %s"):format (nick, ip .. tryipcc (ip, nick), class, to, toip .. tryipcc (toip, to), getclass (to), data))
				return true
			elseif not to and (value == 0 or value == 1) then -- mc
				maintouser (nick, gettext ("Main chat is currently disabled for you."))
				opsnotify (table_sets.classnotigagip, gettext ("%s with IP %s and class %d tries to speak with IP gag in MC: %s"):format (nick, ip .. tryipcc (ip, nick), class, data))
				return true
			end

			break
		end
	end

	return false
end

----- ---- --- -- -

function gagccadd (nick, line)
	local lre, flag = line:match ("^(.+) (%d)$")
	flag = tonumber (flag)

	if flag < 0 or flag > 2 then
		commandanswer (nick, gettext ("Known flags are: %s"):format ("0=ALL, 1=MC " .. gettext ("and") .. " 2=PM"))
	else
		local rlre = repsqlchars (repnmdcinchars (lre))
		local _, rows = VH:SQLQuery ("select `flag` from `" .. tbl_sql.ccgag .. "` where `item` = '" .. rlre .. "'")

		if rows > 0 then -- modify
			VH:SQLQuery ("update `" .. tbl_sql.ccgag .. "` set `flag` = " .. _tostring (flag) .. " where `item` = '" .. rlre .. "'")
			commandanswer (nick, gettext ("Modified country code gag: %s"):format (lre))
		else -- add
			VH:SQLQuery ("insert into `" .. tbl_sql.ccgag .. "` (`item`, `flag`) values ('" .. rlre .. "', " .. _tostring (flag) .. ")")
			commandanswer (nick, gettext ("Added country code gag: %s"):format (lre))
		end
	end
end

----- ---- --- -- -

function gagccdel (nick, lre)
	if lre == "*" then
		VH:SQLQuery ("truncate table `" .. tbl_sql.ccgag .. "`")
		commandanswer (nick, gettext ("Cleared country code gag list."))
	else
		local rlre = repsqlchars (repnmdcinchars (lre))
		local _, rows = VH:SQLQuery ("select `flag` from `" .. tbl_sql.ccgag .. "` where `item` = '" .. rlre .. "'")

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.ccgag .. "` where `item` = '" .. rlre .. "'")
			commandanswer (nick, gettext ("Deleted country code gag: %s"):format (lre))
		else -- not in list
			commandanswer (nick, gettext ("Country code gag not found: %s"):format (lre))
		end
	end
end

----- ---- --- -- -

function gagcclist (nick)
	local function flagname (flag)
		if flag == 0 then
			return "=ALL"
		elseif flag == 1 then
			return "=MC"
		elseif flag == 2 then
			return "=PM"
		else
			return "=??"
		end
	end

	local _, rows = VH:SQLQuery ("select `item`, `flag` from `" .. tbl_sql.ccgag .. "`")

	if rows > 0 then
		local list = ""

		for x = 0, rows - 1 do
			local _, lre, flag = VH:SQLFetch (x)
			list = list .. " " .. _tostring (x + 1) .. ". " .. repnmdcoutchars (lre) .. " [ F: " .. _tostring (flag) .. flagname (tonumber (flag)) .. " ]\r\n"
		end

		commandanswer (nick, gettext ("Country code gag list") .. ":\r\n\r\n" .. list)
	else
		commandanswer (nick, gettext ("Country code gag list is empty."))
	end
end

----- ---- --- -- -

function gagccheck (nick, ip, class, to, data)
	if class >= table_sets.scanbelowclass then
		return false
	end

	local cc = getcc (nick)

	if not cc then
		return false
	end

	local _, rows = VH:SQLQuery ("select `item`, `flag` from `" .. tbl_sql.ccgag .. "`")

	if rows > 0 then
		cc = cc:lower ()

		for x = 0, rows - 1 do
			local _, lre, flag = VH:SQLFetch (x)

			if cc:match (lre) then
				flag = tonumber (flag)

				if to and (flag == 0 or flag == 2) then -- pm
					pmtouser (nick, to, gettext ("Private chat is currently disabled for you."))
					local toip = getip (to)
					opsnotify (table_sets.classnotigagip, gettext ("%s with IP %s and class %d tries to speak with country code gag in PM to %s with IP %s and class %d: %s"):format (nick, ip .. tryipcc (ip, nick), class, to, toip .. tryipcc (toip, to), getclass (to), data))
					return true
				elseif not to and (flag == 0 or flag == 1) then -- mc
					maintouser (nick, gettext ("Main chat is currently disabled for you."))
					opsnotify (table_sets.classnotigagip, gettext ("%s with IP %s and class %d tries to speak with country code gag in MC: %s"):format (nick, ip .. tryipcc (ip, nick), class, data))
					return true
				end

				break
			end
		end
	end

	return false
end

----- ---- --- -- -

function detprotoflood (pref, prot, nick, ip, class)
	if table_sets ["protoflood" .. pref .. "cnt"] == 0 then -- disabled
		return false
	end

	if class >= table_sets.scanbelowclass then -- minimum class
		return false
	end

	if prot and isprotected (nick, ip) then -- protection
		return false
	end

	local tm = os.time ()

	if table_prfl [pref][nick] then
		local dif = os.difftime (tm, table_prfl [pref][nick]["lst"])

		if table_prfl [pref][nick]["cnt"] >= table_sets ["protoflood" .. pref .. "cnt"] and dif <= table_sets ["protoflood" .. pref .. "int"] then -- match
			local sts = genprflsts (pref)

			if pref == "ctm" then -- for now use only on ctm detection, in future add to all detections
				if table_sets ["protoflood" .. pref .. "act"] == 0 then -- drop
					maintouser (nick, gettext ("Protocol flood detected from your client: %s"):format (sts))
					opsnotify (table_sets.classnotiprotoflood, gettext ("Dropping %s with IP %s and class %d due to protocol flood detection: %s"):format (nick, ip .. tryipcc (ip, nick), class, sts))
					VH:Disconnect (nick)
				elseif table_sets ["protoflood" .. pref .. "act"] == 1 then -- kick
					VH:KickUser (table_othsets.sendfrom, nick, gettext ("Protocol flood detected from your client: %s"):format (sts))
				elseif table_sets ["protoflood" .. pref .. "act"] == 2 then -- temporary ban
					VH:KickUser (table_othsets.sendfrom, nick, gettext ("Protocol flood detected from your client: %s"):format (sts) .. "     #_ban_" .. table_sets.thirdacttime)
				elseif table_sets ["protoflood" .. pref .. "act"] == 3 then -- permanent ban
					VH:KickUser (table_othsets.sendfrom, nick, gettext ("Protocol flood detected from your client: %s"):format (sts) .. "     #_ban_" .. table_sets.seventhacttime)
				end
			else
				maintouser (nick, gettext ("Protocol flood detected from your client: %s"):format (sts))
				opsnotify (table_sets.classnotiprotoflood, gettext ("Dropping %s with IP %s and class %d due to protocol flood detection: %s"):format (nick, ip .. tryipcc (ip, nick), class, sts))
				VH:Disconnect (nick) -- drop
			end

			return true
		elseif dif > table_sets ["protoflood" .. pref .. "int"] then -- start over
			table_prfl [pref][nick]["cnt"] = 1
			table_prfl [pref][nick]["lst"] = tm
		else -- update count
			table_prfl [pref][nick]["cnt"] = table_prfl [pref][nick]["cnt"] + 1
		end
	else -- not in list
		table_prfl [pref][nick] = {
			["cnt"] = 1,
			["lst"] = tm
		}
	end

	return false
end

----- ---- --- -- -

function genprflsts (pref)
	local sts = "[BUG]"

	if pref == "ctm" then
		sts = "ConnectToMe"
	end

	return "&#36;" .. sts
end

----- ---- --- -- -

function detchatflood (nick, class, ip, msg, to)
	if table_sets.chatantiflood == 0 then
		return false
	end

	if class >= table_sets.scanbelowclass then
		if not pm then -- update last chat nick, pm not supported
			table_othsets.chflonenick = nick
		end

		return false
	end

	local tm = os.time ()

	if table_sets.chatfloodallcount > 0 and table_sets.chatfloodallint > 0 and not to then -- flood form all users, main chat only for now
		local dif = os.difftime (tm, table_othsets.chflalltime)

		if table_othsets.chflallcount >= table_sets.chatfloodallcount and dif <= table_sets.chatfloodallint then
			opsnotify (table_sets.classnotiflood, gettext ("Message ignored due to flood detection from %s with IP %s and class %d in MC: %s"):format (nick, ip .. tryipcc (ip, nick), class, msg))
			maintouser (nick, gettext ("Sorry, your message has been ignored."))
			return true
		elseif dif > table_sets.chatfloodallint then
			table_othsets.chflallcount = 1
			table_othsets.chflalltime = tm
		else
			table_othsets.chflallcount = table_othsets.chflallcount + 1
		end
	end

	if table_sets.chatfloodonecount > 0 and table_sets.chatfloodoneint > 0 and not to then -- flood from one user, main chat only for now
		if table_othsets.chflonenick == nick then
			local dif = os.difftime (tm, table_othsets.chflonetime)

			if table_othsets.chflonecount >= table_sets.chatfloodonecount and dif <= table_sets.chatfloodoneint then
				if not table_flod.nick [nick] then -- notify only first time
					opsnotify (table_sets.classnotiflood, gettext ("Flood detected from %s with IP %s and class %d in MC: %s"):format (nick, ip .. tryipcc (ip, nick), class, msg))
				end

				maintouser (nick, gettext ("Main chat flood detected from your nick."))

				if table_sets.chatfloodaction == 1 then -- gag ip
					gagipadd (nil, ip .. " 1")

					if not table_flod.nick [nick] then -- notify only first time
						opsnotify (table_sets.classnotiflood, gettext ("Added %s to IP gag list, %d users in total."):format (ip .. tryipcc (ip, nick), # getusersbyip (ip, table_sets.scanbelowclass)))
					end

				elseif table_sets.chatfloodaction == 2 then -- drop
					VH:Disconnect (nick)

					if not table_flod.nick [nick] then -- notify only first time
						opsnotify (table_sets.classnotiflood, gettext ("User dropped due to flood: %s"):format (nick))
					end

				elseif table_sets.chatfloodaction == 3 then -- kick
					VH:KickUser (table_othsets.sendfrom, nick, gettext ("Main chat flood detected from your nick."))

				elseif table_sets.chatfloodaction == 4 then -- temporary ban
					VH:KickUser (table_othsets.sendfrom, nick, gettext ("Main chat flood detected from your nick.") .. "     #_ban_" .. table_sets.thirdacttime)

				elseif table_sets.chatfloodaction == 5 then -- permanent ban
					VH:KickUser (table_othsets.sendfrom, nick, gettext ("Main chat flood detected from your nick.") .. "     #_ban_" .. table_sets.seventhacttime)
				end

				table_flod.nick [nick] = true
				return true
			elseif dif > table_sets.chatfloodoneint then
				table_othsets.chflonecount = 1
				table_othsets.chflonetime = tm

				if table_flod.nick [nick] then
					table_flod.nick [nick] = nil
				end
			else
				table_othsets.chflonecount = table_othsets.chflonecount + 1
			end
		else
			table_othsets.chflonenick = nick
			table_othsets.chflonecount = 1
			table_othsets.chflonetime = tm
		end
	end

	if table_sets.chatfloodcount > 0 and table_sets.chatfloodint > 0 then
		if table_flod.addr [ip] then -- flood from one ip
			local dif = os.difftime (tm, table_flod.addr [ip]["lst"])

			if table_flod.addr [ip]["cnt"] >= table_sets.chatfloodcount and dif <= table_sets.chatfloodint then -- match
				if to then -- pm
					if table_flod.addr [ip]["fst"] then -- notify only first time
						local toip = getip (to)
						opsnotify (table_sets.classnotiflood, gettext ("Flood detected from IP %s last known as %s with class %d in PM to %s with IP %s and class %d: %s"):format (ip .. tryipcc (ip, nick), nick, class, to, toip .. tryipcc (toip, to), getclass (to), msg))
					end

					pmtouser (nick, to, gettext ("Private chat flood detected from your IP."))
				else -- mc
					if table_flod.addr [ip]["fst"] then -- notify only first time
						opsnotify (table_sets.classnotiflood, gettext ("Flood detected from IP %s last known as %s with class %d in MC: %s"):format (ip .. tryipcc (ip, nick), nick, class, msg))
					end

					maintouser (nick, gettext ("Main chat flood detected from your IP."))
				end

				if table_sets.chatfloodaction == 1 then -- gag ip
					if to then -- pm
						gagipadd (nil, ip .. " 2")
					else -- mc
						gagipadd (nil, ip .. " 1")
					end

					if table_flod.addr [ip]["fst"] then -- notify only first time
						opsnotify (table_sets.classnotiflood, gettext ("Added %s to IP gag list, %d users in total."):format (ip .. tryipcc (ip, nick), # getusersbyip (ip, table_sets.scanbelowclass)))
					end

				elseif table_sets.chatfloodaction == 2 then -- drop
					local res = dropallbyip (ip)

					if table_flod.addr [ip]["fst"] then -- notify only first time
						opsnotify (table_sets.classnotiflood, gettext ("%d users with IP %s dropped due to flood."):format (res, ip .. tryipcc (ip, nick)))
					end

				elseif table_sets.chatfloodaction == 3 then -- kick
					if to then -- pm
						kickallbyip (ip, gettext ("Private chat flood detected from your IP."))
					else --mc
						kickallbyip (ip, gettext ("Main chat flood detected from your IP."))
					end

				elseif table_sets.chatfloodaction == 4 then -- temporary ban
					if to then -- pm
						kickallbyip (ip, gettext ("Private chat flood detected from your IP.") .. "     #_ban_" .. table_sets.thirdacttime)
					else --mc
						kickallbyip (ip, gettext ("Main chat flood detected from your IP.") .. "     #_ban_" .. table_sets.thirdacttime)
					end

				elseif table_sets.chatfloodaction == 5 then -- permanent ban
					if to then -- pm
						kickallbyip (ip, gettext ("Private chat flood detected from your IP.") .. "     #_ban_" .. table_sets.seventhacttime)
					else --mc
						kickallbyip (ip, gettext ("Main chat flood detected from your IP.") .. "     #_ban_" .. table_sets.seventhacttime)
					end
				end

				table_flod.addr [ip]["fst"] = false
				return true
			elseif dif > table_sets.chatfloodint then -- start over
				table_flod.addr [ip]["cnt"] = 1
				table_flod.addr [ip]["lst"] = tm
				table_flod.addr [ip]["fst"] = true
			else -- update count
				table_flod.addr [ip]["cnt"] = table_flod.addr [ip]["cnt"] + 1
			end
		else -- not in list
			table_flod.addr [ip] = {
				["cnt"] = 1,
				["lst"] = tm,
				["fst"] = true
			}
		end
	end

	return false
end

----- ---- --- -- -

function parsemyinfoshare (info)
	local size = info:match ("^%$MyINFO %$ALL [^ ]+ .*%$.*%$.*%$.*%$(.*)%$$")
	size = tonumber (size or 0) or 0
	return size
end

----- ---- --- -- -

function parsemyinfo (nick, info)
	local desc, conn, mail, size = info:match ("^%$MyINFO %$ALL [^ ]+ (.*)%$.*%$(.*)%$(.*)%$(.*)%$$")
	local tag, sts = "", 1
	desc = desc or ""
	conn = conn or ""
	mail = mail or ""
	size = tonumber (size or 0) or 0
	local slen = # conn

	if slen > 0 then
		sts = (conn:sub (slen):byte () or 1)
		conn = conn:sub (1, slen - 1)
	end

	slen = # desc

	if slen > 0 then
		for pos = slen, 1, -1 do
			if desc:sub (pos, pos) == "<" and desc:sub (slen) == ">" then
				tag = desc:sub (pos)
				desc = desc:sub (1, pos - 1)
				break
			end
		end
	end

	return desc, tag, conn, sts, mail, size
end

----- ---- --- -- -

function parsetag (tag)
	local res = {}

	if # tag > 0 then
		local _, _, cl, ve, mo, hu, sl, ot = tag:find ("^<(.+) [Vv]:(.+),[Mm]:(%S+),[Hh]:(%S+),[Ss]:(%d+)(.*>)$")

		if cl then
			res ["cl"] = cl
		end

		if ve then
			res ["ve"] = ve
		end

		if mo then
			res ["mo"] = mo
		end

		if hu then
			res ["hu"] = hu
		end

		if sl then
			res ["sl"] = sl
		end

		if ot then
			local _, _, li = ot:find (",L:(.+)[,>]")

			if li then
				res ["li"] = li
			end
		end
	end

	return res
end

----- ---- --- -- -

function addmyinfoentry (nick, line)
	local _, part, item, btime, note = 0, "", "", "", ""

	if line:find ("^[^ ]+ \".+\" \"%d+%a\" \".+\"$") then -- <type> <"lre"> <"time"> <"note">
		_, _, part, item, btime, note = line:find ("^([^ ]+) \"(.+)\" \"(%d+%a)\" \"(.+)\"$")

	elseif line:find ("^[^ ]+ \".+\" \"%d+%a\"$") then -- <type> <"lre"> <"time">
		_, _, part, item, btime = line:find ("^([^ ]+) \"(.+)\" \"(%d+%a)\"$")

	elseif line:find ("^[^ ]+ \".+\" \".+\"$") then -- <type> <"lre"> <"note">
		_, _, part, item, note = line:find ("^([^ ]+) \"(.+)\" \"(.+)\"$")

	elseif line:find ("^[^ ]+ \".+\"$") then -- <type> <"lre">
		_, _, part, item = line:find ("^([^ ]+) \"(.+)\"$")

	elseif line:find ("^[^ ]+ .+ %d+%a$") then -- <type> <lre> <time>
		_, _, part, item, btime = line:find ("^([^ ]+) (.+) (%d+%a)$")

	else -- <type> <lre>
		_, _, part, item = line:find ("^([^ ]+) (.+)$")
	end

	local entry = repnmdcinchars (item)
	local fres, fval = catchfinderror ("", entry)
	entry = repsqlchars (entry)

	if part == "nick" then
		if not fres then
			local ferr = gettext ("There is an error in following forbidden nick pattern") .. ":\r\n\r\n"
			ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. item .. "\r\n"
			ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
			commandanswer (nick, ferr)
		else
			local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.minick .. "` where `nick` = '" .. entry .. "'")

			if rows > 0 then
				VH:SQLQuery ("update `" .. tbl_sql.minick .. "` set `time` = " .. sqlemptnull (btime) .. ", `note` = " .. sqlemptnull (note) .. " where `nick` = '" .. entry .. "'")
				commandanswer (nick, gettext ("Modified forbidden nick with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			else
				VH:SQLQuery ("insert into `" .. tbl_sql.minick .. "` (`nick`, `time`, `note`) values ('" .. entry .. "', " .. sqlemptnull (btime) .. ", " .. sqlemptnull (note) .. ")")
				commandanswer (nick, gettext ("Added forbidden nick with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			end
		end

	elseif part == "desc" then
		if not fres then
			local ferr = gettext ("There is an error in following forbidden description pattern") .. ":\r\n\r\n"
			ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. item .. "\r\n"
			ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
			commandanswer (nick, ferr)
		else
			local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.midesc .. "` where `description` = '" .. entry .. "'")

			if rows > 0 then
				VH:SQLQuery ("update `" .. tbl_sql.midesc .. "` set `time` = " .. sqlemptnull (btime) .. ", `note` = " .. sqlemptnull (note) .. " where `description` = '" .. entry .. "'")
				commandanswer (nick, gettext ("Modified forbidden description with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			else
				VH:SQLQuery ("insert into `" .. tbl_sql.midesc .. "` (`description`, `time`, `note`) values ('" .. entry .. "', " .. sqlemptnull (btime) .. ", " .. sqlemptnull (note) .. ")")
				commandanswer (nick, gettext ("Added forbidden description with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			end
		end

	elseif part == "tag" then
		if not fres then
			local ferr = gettext ("There is an error in following forbidden tag pattern") .. ":\r\n\r\n"
			ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. item .. "\r\n"
			ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
			commandanswer (nick, ferr)
		else
			local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.mitag .. "` where `tag` = '" .. entry .. "'")

			if rows > 0 then
				VH:SQLQuery ("update `" .. tbl_sql.mitag .. "` set `time` = " .. sqlemptnull (btime) .. ", `note` = " .. sqlemptnull (note) .. " where `tag` = '" .. entry .. "'")
				commandanswer (nick, gettext ("Modified forbidden tag with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			else
				VH:SQLQuery ("insert into `" .. tbl_sql.mitag .. "` (`tag`, `time`, `note`) values ('" .. entry .. "', " .. sqlemptnull (btime) .. ", " .. sqlemptnull (note) .. ")")
				commandanswer (nick, gettext ("Added forbidden tag with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			end
		end

	elseif part == "conn" then
		if not fres then
			local ferr = gettext ("There is an error in following forbidden connection type pattern") .. ":\r\n\r\n"
			ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. item .. "\r\n"
			ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
			commandanswer (nick, ferr)
		else
			local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.miconn .. "` where `connection` = '" .. entry .. "'")

			if rows > 0 then
				VH:SQLQuery ("update `" .. tbl_sql.miconn .. "` set `time` = " .. sqlemptnull (btime) .. ", `note` = " .. sqlemptnull (note) .. " where `connection` = '" .. entry .. "'")
				commandanswer (nick, gettext ("Modified forbidden connection type with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			else
				VH:SQLQuery ("insert into `" .. tbl_sql.miconn .. "` (`connection`, `time`, `note`) values ('" .. entry .. "', " .. sqlemptnull (btime) .. ", " .. sqlemptnull (note) .. ")")
				commandanswer (nick, gettext ("Added forbidden connection type with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			end
		end

	elseif part == "email" then
		if not fres then
			local ferr = gettext ("There is an error in following forbidden email pattern") .. ":\r\n\r\n"
			ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. item .. "\r\n"
			ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
			commandanswer (nick, ferr)
		else
			local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.miemail .. "` where `email` = '" .. entry .. "'")

			if rows > 0 then
				VH:SQLQuery ("update `" .. tbl_sql.miemail .. "` set `time` = " .. sqlemptnull (btime) .. ", `note` = " .. sqlemptnull (note) .. " where `email` = '" .. entry .. "'")
				commandanswer (nick, gettext ("Modified forbidden email with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			else
				VH:SQLQuery ("insert into `" .. tbl_sql.miemail .. "` (`email`, `time`, `note`) values ('" .. entry .. "', " .. sqlemptnull (btime) .. ", " .. sqlemptnull (note) .. ")")
				commandanswer (nick, gettext ("Added forbidden email with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			end
		end

	elseif part == "share" then
		if not fres then
			local ferr = gettext ("There is an error in following forbidden share size pattern") .. ":\r\n\r\n"
			ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. item .. "\r\n"
			ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
			commandanswer (nick, ferr)
		else
			local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.mishare .. "` where `share` = '" .. entry .. "'")

			if rows > 0 then
				VH:SQLQuery ("update `" .. tbl_sql.mishare .. "` set `time` = " .. sqlemptnull (btime) .. ", `note` = " .. sqlemptnull (note) .. " where `share` = '" .. entry .. "'")
				commandanswer (nick, gettext ("Modified forbidden share size with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			else
				VH:SQLQuery ("insert into `" .. tbl_sql.mishare .. "` (`share`, `time`, `note`) values ('" .. entry .. "', " .. sqlemptnull (btime) .. ", " .. sqlemptnull (note) .. ")")
				commandanswer (nick, gettext ("Added forbidden share size with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			end
		end

	elseif part == "ip" then
		if not fres then
			local ferr = gettext ("There is an error in following forbidden IP address pattern") .. ":\r\n\r\n"
			ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. item .. "\r\n"
			ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
			commandanswer (nick, ferr)
		else
			local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.miip .. "` where `ip` = '" .. entry .. "'")

			if rows > 0 then
				VH:SQLQuery ("update `" .. tbl_sql.miip .. "` set `time` = " .. sqlemptnull (btime) .. ", `note` = " .. sqlemptnull (note) .. " where `ip` = '" .. entry .. "'")
				commandanswer (nick, gettext ("Modified forbidden IP address with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			else
				VH:SQLQuery ("insert into `" .. tbl_sql.miip .. "` (`ip`, `time`, `note`) values ('" .. entry .. "', " .. sqlemptnull (btime) .. ", " .. sqlemptnull (note) .. ")")
				commandanswer (nick, gettext ("Added forbidden IP address with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			end
		end

	elseif part == "cc" then
		if not fres then
			local ferr = gettext ("There is an error in following forbidden country code pattern") .. ":\r\n\r\n"
			ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. item .. "\r\n"
			ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
			commandanswer (nick, ferr)
		else
			local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.micc .. "` where `cc` = '" .. entry .. "'")

			if rows > 0 then
				VH:SQLQuery ("update `" .. tbl_sql.micc .. "` set `time` = " .. sqlemptnull (btime) .. ", `note` = " .. sqlemptnull (note) .. " where `cc` = '" .. entry .. "'")
				commandanswer (nick, gettext ("Modified forbidden country code with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			else
				VH:SQLQuery ("insert into `" .. tbl_sql.micc .. "` (`cc`, `time`, `note`) values ('" .. entry .. "', " .. sqlemptnull (btime) .. ", " .. sqlemptnull (note) .. ")")
				commandanswer (nick, gettext ("Added forbidden country code with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			end
		end

	elseif part == "dns" then
		if not fres then
			local ferr = gettext ("There is an error in following forbidden DNS pattern") .. ":\r\n\r\n"
			ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. item .. "\r\n"
			ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
			commandanswer (nick, ferr)
		else
			local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.midns .. "` where `dns` = '" .. entry .. "'")

			if rows > 0 then
				VH:SQLQuery ("update `" .. tbl_sql.midns .. "` set `time` = " .. sqlemptnull (btime) .. ", `note` = " .. sqlemptnull (note) .. " where `dns` = '" .. entry .. "'")
				commandanswer (nick, gettext ("Modified forbidden DNS with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			else
				VH:SQLQuery ("insert into `" .. tbl_sql.midns .. "` (`dns`, `time`, `note`) values ('" .. entry .. "', " .. sqlemptnull (btime) .. ", " .. sqlemptnull (note) .. ")")
				commandanswer (nick, gettext ("Added forbidden DNS with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			end
		end

	elseif part == "sup" then
		if not fres then
			local ferr = gettext ("There is an error in following forbidden client supports pattern") .. ":\r\n\r\n"
			ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. item .. "\r\n"
			ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
			commandanswer (nick, ferr)
		else
			local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.misup .. "` where `supports` = '" .. entry .. "'")

			if rows > 0 then
				VH:SQLQuery ("update `" .. tbl_sql.misup .. "` set `time` = " .. sqlemptnull (btime) .. ", `note` = " .. sqlemptnull (note) .. " where `supports` = '" .. entry .. "'")
				commandanswer (nick, gettext ("Modified forbidden client supports with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			else
				VH:SQLQuery ("insert into `" .. tbl_sql.misup .. "` (`supports`, `time`, `note`) values ('" .. entry .. "', " .. sqlemptnull (btime) .. ", " .. sqlemptnull (note) .. ")")
				commandanswer (nick, gettext ("Added forbidden client supports with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			end
		end

	elseif part == "ver" then
		if not fres then
			local ferr = gettext ("There is an error in following forbidden NMDC version pattern") .. ":\r\n\r\n"
			ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. item .. "\r\n"
			ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
			commandanswer (nick, ferr)
		else
			local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.miver .. "` where `version` = '" .. entry .. "'")

			if rows > 0 then
				VH:SQLQuery ("update `" .. tbl_sql.miver .. "` set `time` = " .. sqlemptnull (btime) .. ", `note` = " .. sqlemptnull (note) .. " where `version` = '" .. entry .. "'")
				commandanswer (nick, gettext ("Modified forbidden NMDC version with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			else
				VH:SQLQuery ("insert into `" .. tbl_sql.miver .. "` (`version`, `time`, `note`) values ('" .. entry .. "', " .. sqlemptnull (btime) .. ", " .. sqlemptnull (note) .. ")")
				commandanswer (nick, gettext ("Added forbidden NMDC version with ban time %s: %s"):format ((valor (btime, "") or table_sets.mitbantime), item))
			end
		end

	elseif part == "ex" then
		if not fres then
			local ferr = gettext ("There is an error in following MyINFO exception pattern") .. ":\r\n\r\n"
			ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. item .. "\r\n"
			ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
			commandanswer (nick, ferr)
		else
			local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.miex .. "` where `exception` = '" .. entry .. "'")

			if rows > 0 then
				commandanswer (nick, gettext ("Couldn't add MyINFO exception because already exists: %s"):format (item))
			else
				VH:SQLQuery ("insert into `" .. tbl_sql.miex .. "` (`exception`, `note`) values ('" .. entry .. "', " .. sqlemptnull (note) .. ")")
				commandanswer (nick, gettext ("Added MyINFO exception: %s"):format (item))
			end
		end

	else -- unknown
		commandanswer (nick, gettext ("Known types are: %s"):format ("nick, desc, tag, conn, email, share, ip, cc, dns, sup, ver " .. gettext ("and") .. " ex"))
	end
end

----- ---- --- -- -

function delmyinfoentry (nick, line)
	local _, _, part, item = line:find ("^([^ ]+) (.+)$")
	local entry = repsqlchars (repnmdcinchars (item))

	if part == "nick" then
		local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.minick .. "` where `nick` = '" .. entry .. "'")

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.minick .. "` where `nick` = '" .. entry .. "'")
			commandanswer (nick, gettext ("Deleted forbidden nick: %s"):format (item))
		else
			commandanswer (nick, gettext ("Couldn't delete forbidden nick because not found: %s"):format (item))
		end

	elseif part == "desc" then
		local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.midesc .. "` where `description` = '" .. entry .. "'")

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.midesc .. "` where `description` = '" .. entry .. "'")
			commandanswer (nick, gettext ("Deleted forbidden description: %s"):format (item))
		else
			commandanswer (nick, gettext ("Couldn't delete forbidden description because not found: %s"):format (item))
		end

	elseif part == "tag" then
		local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.mitag .. "` where `tag` = '" .. entry .. "'")

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.mitag .. "` where `tag` = '" .. entry .. "'")
			commandanswer (nick, gettext ("Deleted forbidden tag: %s"):format (item))
		else
			commandanswer (nick, gettext ("Couldn't delete forbidden tag because not found: %s"):format (item))
		end

	elseif part == "conn" then
		local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.miconn .. "` where `connection` = '" .. entry .. "'")

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.miconn .. "` where `connection` = '" .. entry .. "'")
			commandanswer (nick, gettext ("Deleted forbidden connection type: %s"):format (item))
		else
			commandanswer (nick, gettext ("Couldn't delete forbidden connection type because not found: %s"):format (item))
		end

	elseif part == "email" then
		local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.miemail .. "` where `email` = '" .. entry .. "'")

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.miemail .. "` where `email` = '" .. entry .. "'")
			commandanswer (nick, gettext ("Deleted forbidden email: %s"):format (item))
		else
			commandanswer (nick, gettext ("Couldn't delete forbidden email because not found: %s"):format (item))
		end

	elseif part == "share" then
		local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.mishare .. "` where `share` = '" .. entry .. "'")

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.mishare .. "` where `share` = '" .. entry .. "'")
			commandanswer (nick, gettext ("Deleted forbidden share size: %s"):format (item))
		else
			commandanswer (nick, gettext ("Couldn't delete forbidden share size because not found: %s"):format (item))
		end

	elseif part == "ip" then
		local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.miip .. "` where `ip` = '" .. entry .. "'")

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.miip .. "` where `ip` = '" .. entry .. "'")
			commandanswer (nick, gettext ("Deleted forbidden IP address: %s"):format (item))
		else
			commandanswer (nick, gettext ("Couldn't delete forbidden IP address because not found: %s"):format (item))
		end

	elseif part == "cc" then
		local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.micc .. "` where `cc` = '" .. entry .. "'")

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.micc .. "` where `cc` = '" .. entry .. "'")
			commandanswer (nick, gettext ("Deleted forbidden country code: %s"):format (item))
		else
			commandanswer (nick, gettext ("Couldn't delete forbidden country code because not found: %s"):format (item))
		end

	elseif part == "dns" then
		local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.midns .. "` where `dns` = '" .. entry .. "'")

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.midns .. "` where `dns` = '" .. entry .. "'")
			commandanswer (nick, gettext ("Deleted forbidden DNS: %s"):format (item))
		else
			commandanswer (nick, gettext ("Couldn't delete forbidden DNS because not found: %s"):format (item))
		end

	elseif part == "sup" then
		local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.misup .. "` where `supports` = '" .. entry .. "'")

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.misup .. "` where `supports` = '" .. entry .. "'")
			commandanswer (nick, gettext ("Deleted forbidden client supports: %s"):format (item))
		else
			commandanswer (nick, gettext ("Couldn't delete forbidden client supports because not found: %s"):format (item))
		end

	elseif part == "ver" then
		local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.miver .. "` where `version` = '" .. entry .. "'")

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.miver .. "` where `version` = '" .. entry .. "'")
			commandanswer (nick, gettext ("Deleted forbidden NMDC version: %s"):format (item))
		else
			commandanswer (nick, gettext ("Couldn't delete forbidden NMDC version because not found: %s"):format (item))
		end

	elseif part == "ex" then
		local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.miex .. "` where `exception` = '" .. entry .. "'")

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.miex .. "` where `exception` = '" .. entry .. "'")
			commandanswer (nick, gettext ("Deleted MyINFO exception: %s"):format (item))
		else
			commandanswer (nick, gettext ("Couldn't delete MyINFO exception because not found: %s"):format (item))
		end

	else -- unknown
		commandanswer (nick, gettext ("Known types are: %s"):format ("nick, desc, tag, conn, email, share, ip, cc, dns, sup, ver " .. gettext ("and") .. " ex"))
	end
end

----- ---- --- -- -

function listmyinfoentry (nick, part)
	local _, rows, title, nolist = 0, 0, nil, nil

	if part == "nick" then
		_, rows = VH:SQLQuery ("select * from `" .. tbl_sql.minick .. "` order by `occurred` desc")
		title = gettext ("Forbidden nick list")
		nolist = gettext ("Forbidden nick list is empty.")

	elseif part == "desc" then
		_, rows = VH:SQLQuery ("select * from `" .. tbl_sql.midesc .. "` order by `occurred` desc")
		title = gettext ("Forbidden description list")
		nolist = gettext ("Forbidden description list is empty.")

	elseif part == "tag" then
		_, rows = VH:SQLQuery ("select * from `" .. tbl_sql.mitag .. "` order by `occurred` desc")
		title = gettext ("Forbidden tag list")
		nolist = gettext ("Forbidden tag list is empty.")

	elseif part == "conn" then
		_, rows = VH:SQLQuery ("select * from `" .. tbl_sql.miconn .. "` order by `occurred` desc")
		title = gettext ("Forbidden connection type list")
		nolist = gettext ("Forbidden connection type list is empty.")

	elseif part == "email" then
		_, rows = VH:SQLQuery ("select * from `" .. tbl_sql.miemail .. "` order by `occurred` desc")
		title = gettext ("Forbidden email list")
		nolist = gettext ("Forbidden email list is empty.")

	elseif part == "share" then
		_, rows = VH:SQLQuery ("select * from `" .. tbl_sql.mishare .. "` order by `occurred` desc")
		title = gettext ("Forbidden share size list")
		nolist = gettext ("Forbidden share size list is empty.")

	elseif part == "ip" then
		_, rows = VH:SQLQuery ("select * from `" .. tbl_sql.miip .. "` order by `occurred` desc")
		title = gettext ("Forbidden IP address list")
		nolist = gettext ("Forbidden IP address list is empty.")

	elseif part == "cc" then
		_, rows = VH:SQLQuery ("select * from `" .. tbl_sql.micc .. "` order by `occurred` desc")
		title = gettext ("Forbidden country code list")
		nolist = gettext ("Forbidden country code list is empty.")

	elseif part == "dns" then
		_, rows = VH:SQLQuery ("select * from `" .. tbl_sql.midns .. "` order by `occurred` desc")
		title = gettext ("Forbidden DNS list")
		nolist = gettext ("Forbidden DNS list is empty.")

	elseif part == "sup" then
		_, rows = VH:SQLQuery ("select * from `" .. tbl_sql.misup .. "` order by `occurred` desc")
		title = gettext ("Forbidden client supports list")
		nolist = gettext ("Forbidden client supports list is empty.")

	elseif part == "ver" then
		_, rows = VH:SQLQuery ("select * from `" .. tbl_sql.miver .. "` order by `occurred` desc")
		title = gettext ("Forbidden NMDC version list")
		nolist = gettext ("Forbidden NMDC version list is empty.")

	elseif part == "ex" then
		_, rows = VH:SQLQuery ("select * from `" .. tbl_sql.miex .. "` order by `occurred` desc")
		title = gettext ("MyINFO exception list")
		nolist = gettext ("MyINFO exception list is empty.")

	else -- unknown
		commandanswer (nick, gettext ("Known types are: %s"):format ("nick, desc, tag, conn, email, share, ip, cc, dns, sup, ver " .. gettext ("and") .. " ex"))
	end

	if title then
		if rows > 0 then
			local _, item, btime, occ, note, list, rlen, olen = 0, nil, nil, 0, nil, "", 0, 0

			for x = 0, rows - 1 do
				if part ~= "ex" then
					_, item, btime, occ, note = VH:SQLFetch (x)
				else
					_, item, occ, note = VH:SQLFetch (x)
				end

				if x == 0 then
					rlen = # _tostring (rows)
					olen = # _tostring (occ)
				end

				list = list .. " " .. prezero (rlen, x + 1) .. ". [ O: " .. prezero (olen, occ) .. " ] " .. repnmdcoutchars (item)

				if part ~= "ex" then
					list = list .. " [ B: "

					if btime and btime ~= "" then
						list = list .. btime
					else
						list = list .. table_sets.mitbantime
					end

					list = list .. " ]"
				end

				if note and note ~= "" then
					list = list .. " [ N: " .. note .. " ]"
				end

				list = list .. "\r\n"
			end

			commandanswer (nick, title .. ":\r\n\r\n" .. list)
		else
			commandanswer (nick, nolist)
		end
	end
end

----- ---- --- -- -

function cleanuptable (nick, line, cls)
	local ctype, cdays = line:match ("^(%S+) (%d+).*$")

	if not ctype then
		commandanswer (nick, gettext ("Please check your command syntax, something is wrong there."))
		return
	end

	local seconds = os.difftime (os.time (), (tonumber (cdays) * 24 * 3600))
	local tm = os.time () + table_sets.srvtimediff

	if ctype == "kick" then
		commandanswer (nick, gettext ("This operation might take very long time depending on how much is going to be removed, please be patient."))
		local _, rows = VH:SQLQuery ("select `is_drop` from `kicklist` where `time` < " .. seconds)

		if rows > 0 then
			VH:SQLQuery ("delete from `kicklist` where `time` < " .. seconds)
			commandanswer (nick, gettext ("Deleted %d rows: %s"):format (rows, ctype))
			opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d kicks older than %d days."):format (nick, cls, rows, cdays))
			VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('lastcleankick', " .. tm .. ") on duplicate key update `value` = " .. tm)
			VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('limcleankick', " .. cdays .. ") on duplicate key update `value` = " .. cdays)
		else
			commandanswer (nick, gettext ("No rows to remove: %s"):format (ctype))
		end

	elseif ctype == "ban" then
		commandanswer (nick, gettext ("This operation might take very long time depending on how much is going to be removed, please be patient."))
		local _, rows = VH:SQLQuery ("select `ban_type` from `banlist` where `date_start` < " .. seconds)

		if rows > 0 then
			VH:SQLQuery ("delete from `banlist` where `date_start` < " .. seconds)
			commandanswer (nick, gettext ("Deleted %d rows: %s"):format (rows, ctype))
			opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d bans older than %d days."):format (nick, cls, rows, cdays))
			VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('lastcleanban', " .. tm .. ") on duplicate key update `value` = " .. tm)
			VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('limcleanban', " .. cdays .. ") on duplicate key update `value` = " .. cdays)
		else
			commandanswer (nick, gettext ("No rows to remove: %s"):format (ctype))
		end

	elseif ctype == "unban" then
		commandanswer (nick, gettext ("This operation might take very long time depending on how much is going to be removed, please be patient."))
		local _, rows = VH:SQLQuery ("select `ban_type` from `unbanlist` where `date_start` < " .. seconds)

		if rows > 0 then
			VH:SQLQuery ("delete from `unbanlist` where `date_start` < " .. seconds)
			commandanswer (nick, gettext ("Deleted %d rows: %s"):format (rows, ctype))
			opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d unbans older than %d days."):format (nick, cls, rows, cdays))
			VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('lastcleanunban', " .. tm .. ") on duplicate key update `value` = " .. tm)
			VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('limcleanunban', " .. cdays .. ") on duplicate key update `value` = " .. cdays)
		else
			commandanswer (nick, gettext ("No rows to remove: %s"):format (ctype))
		end

	elseif ctype == "reg" then
		commandanswer (nick, gettext ("Selected type requires extra parameters. Please refer to manual for more information."))

	elseif ctype == "iplog" then
		commandanswer (nick, gettext ("This operation might take very long time depending on how much is going to be removed, please be patient."))
		local _, rows = VH:SQLQuery ("select `id` from `pi_iplog` where `date` < " .. seconds)

		if rows > 0 then
			VH:SQLQuery ("delete from `pi_iplog` where `date` < " .. seconds)
			commandanswer (nick, gettext ("Deleted %d rows: %s"):format (rows, ctype))
			opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d IP logger plugin entries older than %d days."):format (nick, cls, rows, cdays))
			VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('lastcleaniplog', " .. tm .. ") on duplicate key update `value` = " .. tm)
			VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('limcleaniplog', " .. cdays .. ") on duplicate key update `value` = " .. cdays)
		else
			commandanswer (nick, gettext ("No rows to remove: %s"):format (ctype))
		end

	elseif ctype == "stats" then
		commandanswer (nick, gettext ("This operation might take very long time depending on how much is going to be removed, please be patient."))
		local _, rows = VH:SQLQuery ("select `realtime` from `pi_stats` where `realtime` < " .. seconds)

		if rows > 0 then
			VH:SQLQuery ("delete from `pi_stats` where `realtime` < " .. seconds)
			commandanswer (nick, gettext ("Deleted %d rows: %s"):format (rows, ctype))
			opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d statistics plugin entries older than %d days."):format (nick, cls, rows, cdays))
			VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('lastcleanstats', " .. tm .. ") on duplicate key update `value` = " .. tm)
			VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('limcleanstats', " .. cdays .. ") on duplicate key update `value` = " .. cdays)
		else
			commandanswer (nick, gettext ("No rows to remove: %s"):format (ctype))
		end

	elseif ctype == "ulog" then
		commandanswer (nick, gettext ("This operation might take very long time depending on how much is going to be removed, please be patient."))
		local _, rows = VH:SQLQuery ("select `id` from `" .. tbl_sql.ulog .. "` where `time` < " .. _tostring (seconds))

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.ulog .. "` where `time` < " .. _tostring (seconds))
			commandanswer (nick, gettext ("Deleted %d rows: %s"):format (rows, ctype))
			opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d user log entries older than %d days."):format (nick, cls, rows, cdays))
			VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('lastcleanulog', " .. _tostring (tm) .. ") on duplicate key update `value` = " .. _tostring (tm))
			VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('limcleanulog', " .. _tostring (cdays) .. ") on duplicate key update `value` = " .. _tostring (cdays))
		else
			commandanswer (nick, gettext ("No rows to remove: %s"):format (ctype))
		end

	elseif ctype == "clog" then
		commandanswer (nick, gettext ("This operation might take very long time depending on how much is going to be removed, please be patient."))
		local _, rows = VH:SQLQuery ("select `id` from `" .. tbl_sql.clog .. "` where `time` < " .. seconds)

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.clog .. "` where `time` < " .. seconds)
			commandanswer (nick, gettext ("Deleted %d rows: %s"):format (rows, ctype))
			opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d command log entries older than %d days."):format (nick, cls, rows, cdays))
			VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('lastcleanclog', " .. tm .. ") on duplicate key update `value` = " .. tm)
			VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('limcleanclog', " .. cdays .. ") on duplicate key update `value` = " .. cdays)
		else
			commandanswer (nick, gettext ("No rows to remove: %s"):format (ctype))
		end

	elseif ctype == "anti" then
		commandanswer (nick, gettext ("This operation might take very long time depending on how much is going to be removed, please be patient."))
		local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.anti .. "` where `occurred` < " .. cdays)

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.anti .. "` where `occurred` < " .. cdays)
			commandanswer (nick, gettext ("Deleted %d rows: %s"):format (rows, ctype))
			opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d antispam entries with occurrence less than %d."):format (nick, cls, rows, cdays))
		else
			commandanswer (nick, gettext ("No rows to remove: %s"):format (ctype))
		end

	elseif ctype == "sefi" then
		commandanswer (nick, gettext ("This operation might take very long time depending on how much is going to be removed, please be patient."))
		local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.sefi .. "` where `occurred` < " .. cdays)

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.sefi .. "` where `occurred` < " .. cdays)
			commandanswer (nick, gettext ("Deleted %d rows: %s"):format (rows, ctype))
			opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d search filter entries with occurrence less than %d."):format (nick, cls, rows, cdays))
		else
			commandanswer (nick, gettext ("No rows to remove: %s"):format (ctype))
		end

	elseif ctype == "rel" then
		commandanswer (nick, gettext ("This operation might take very long time depending on how much is going to be removed, please be patient."))
		local _, rows = VH:SQLQuery ("select `date` from `" .. tbl_sql.rel .. "` where `date` < " .. seconds)

		if rows > 0 then
			VH:SQLQuery ("delete from `" .. tbl_sql.rel .. "` where `date` < " .. seconds)
			commandanswer (nick, gettext ("Deleted %d rows: %s"):format (rows, ctype))
			opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d releases older than %d days."):format (nick, cls, rows, cdays))
			VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('lastcleanrel', " .. tm .. ") on duplicate key update `value` = " .. tm)
			VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('limcleanrel', " .. cdays .. ") on duplicate key update `value` = " .. cdays)
		else
			commandanswer (nick, gettext ("No rows to remove: %s"):format (ctype))
		end

	else -- unknown type
		commandanswer (nick, gettext ("Known types are: %s"):format ("kick, ban, unban, reg, ulog, clog, rel, anti, sefi, iplog " .. gettext ("and") .. " stats"))
	end
end

----- ---- --- -- -

function altcleanuptable (nick, line, cls)
	local _, ctype, cdays, seconds, altvar = 0, "", 0, 0, 0

	if line:find ("^%S+ %* %-%d$") then
		_, _, ctype, cdays, altvar = line:find ("^(%S+) (%*) (%-%d)$")
	elseif line:find ("^%S+ %* %d+$") then
		_, _, ctype, cdays, altvar = line:find ("^(%S+) (%*) (%d+)$")
	elseif line:find ("^%S+ %d+ %-%d$") then
		_, _, ctype, cdays, altvar = line:find ("^(%S+) (%d+) (%-%d)$")
	elseif line:find ("^%S+ %d+ %d+$") then
		_, _, ctype, cdays, altvar = line:find ("^(%S+) (%d+) (%d+)$")
	end

	if ctype == "reg" then
		altvar = tonumber (altvar)

		if altvar == 10 or altvar == 5 or altvar == 4 or altvar == 3 or altvar == 2 or altvar == 1 or altvar == 0 or altvar == -1 then
			if cdays ~= "*" then
				cdays = tonumber (cdays)
				seconds = os.difftime (os.time (), (cdays * 24 * 3600))
			end

			commandanswer (nick, gettext ("This operation might take very long time depending on how much is going to be removed, please be patient."))
			local rows = 0

			if cdays == "*" then
				_, rows = VH:SQLQuery ("select `nick` from `reglist` where `class` = " .. altvar)
			elseif cdays == 0 then
				_, rows = VH:SQLQuery ("select `nick` from `reglist` where `login_last` is null and `class` = " .. altvar)
			else
				_, rows = VH:SQLQuery ("select `nick` from `reglist` where `login_last` is not null and `login_last` < " .. seconds .. " and `class` = " .. altvar)
			end

			if rows > 0 then
				local anick = ""

				for x = 0, rows - 1 do
					local _, user = VH:SQLFetch (x)
					anick = anick .. " " .. prezero (# rows, (x + 1)) .. ". " .. user .. "\r\n"
				end

				if cdays == "*" then
					VH:SQLQuery ("delete from `reglist` where `class` = " .. altvar)
				elseif cdays == 0 then
					VH:SQLQuery ("delete from `reglist` where `login_last` is null and `class` = " .. altvar)
				else
					VH:SQLQuery ("delete from `reglist` where `login_last` is not null and `login_last` < " .. seconds .. " and `class` = " .. altvar)
				end

				commandanswer (nick, gettext ("Deleted %d accounts with class %d"):format (rows, altvar) .. ":\r\n\r\n" .. anick)
				opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d accounts with class %d that has been inactive for %d days."):format (nick, cls, rows, altvar, cdays))
				local tm = os.time () + table_sets.srvtimediff
				VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('lastcleanreg', " .. tm .. ") on duplicate key update `value` = " .. tm)
				VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('limcleanreg', '" .. cdays .. "') on duplicate key update `value` = '" .. cdays .. "'")
			else
				commandanswer (nick, gettext ("No rows to remove: %s"):format (ctype))
			end
		else
			commandanswer (nick, gettext ("Known classes are: %s"):format ("-1, 0, 1, 2, 3, 4, 5 " .. gettext ("and") .. " 10"))
		end
	else -- redirect to another type
		cleanuptable (nick, line, cls)
	end
end

----- ---- --- -- -

function chatrankaccept (nick, ucls)
	if table_sets.regmechatcnt > 0 and ucls == 0 then -- regme limiter
		if table_regm [nick] then
			if table_regm [nick] < table_sets.regmechatcnt then
				table_regm [nick] = table_regm [nick] + 1
			end
		else
			table_regm [nick] = 1
		end
	end

	if ucls < table_sets.chatrankclass then return end -- chat rank
	local usr = repsqlchars (nick)
	local _, rows = VH:SQLQuery ("select `nick` from `" .. tbl_sql.ranex .. "` where `nick` = '" .. usr .. "' limit 1")

	if rows > 0 then
		VH:SQLQuery ("update `" .. tbl_sql.ranex .. "` set `occurred` = `occurred` + 1 where `nick` = '" .. usr .. "' limit 1")
	else
		VH:SQLQuery ("insert into `" .. tbl_sql.chran .. "` (`nick`) values ('" .. usr .. "') on duplicate key update `rank` = `rank` + 1")
	end
end

----- ---- --- -- -

function sharerankaccept (nick, share, ucls)
if ucls < table_sets.sharerankclass then return end
if share < (table_sets.shareranmin * 1073741824) then return end -- only users with share
local usr = repsqlchars (nick)
local _, rows = VH:SQLQuery ("select `nick` from `" .. tbl_sql.ranex .. "` where `nick` = '" .. usr .. "' limit 1")

if rows > 0 then
	VH:SQLQuery ("update `" .. tbl_sql.ranex .. "` set `occurred` = `occurred` + 1 where `nick` = '" .. usr .. "' limit 1")
else
	local _, rows = VH:SQLQuery ("select `rank` from `" .. tbl_sql.shran .. "` where `nick` = '" .. usr .. "' limit 1")

	if rows > 0 then
		local _, rank = VH:SQLFetch (0)

		if share > tonumber (rank) then
			VH:SQLQuery ("update `" .. tbl_sql.shran .. "` set `rank` = " .. share .. " where `nick` = '" .. usr .. "' limit 1")
		end

	else
		VH:SQLQuery ("insert into `" .. tbl_sql.shran .. "` (`nick`, `rank`) values ('" .. usr .. "', " .. share .. ")")
	end
end
end

----- ---- --- -- -

function oprankaccept (nick, ucls)
if ucls < table_sets.oprankclass then return end
local usr = repsqlchars (nick)
local _, rows = VH:SQLQuery ("select `nick` from `" .. tbl_sql.ranex .. "` where `nick` = '" .. usr .. "' limit 1")

if rows > 0 then
	VH:SQLQuery ("update `" .. tbl_sql.ranex .. "` set `occurred` = `occurred` + 1 where `nick` = '" .. usr .. "' limit 1")
else
	VH:SQLQuery ("insert into `" .. tbl_sql.opran .. "` (`nick`) values ('" .. usr .. "') on duplicate key update `rank` = `rank` + 1")
end
end

----- ---- --- -- -

function searrankaccept (nick, ucls, data)
if ucls < table_sets.searrankclass then return end
local _, _, tp, str = data:find ("^%$Search .* .*%?.*%?.*%?(.*)%?(.*)$")
if not str then return end
if # str == 0 then return end -- search setting might be zero
if tonumber (tp or 1) == 9 then return end -- skip tth
str = repsrchchars (str)
if str:find ("^%s+$") then return end
local usr = repsqlchars (nick)
local _, rows = VH:SQLQuery ("select `nick` from `" .. tbl_sql.ranex .. "` where `nick` = '" .. usr .. "' limit 1")

if rows > 0 then
	VH:SQLQuery ("update `" .. tbl_sql.ranex .. "` set `occurred` = `occurred` + 1 where `nick` = '" .. usr .. "' limit 1")
else
	VH:SQLQuery ("insert into `" .. tbl_sql.srran .. "` (`search`) values ('" .. repsqlchars (str) .. "') on duplicate key update `rank` = `rank` + 1")
end
end

----- ---- --- -- -

function searranksendall (nick)
local _, rows = VH:SQLQuery ("select `search`, `rank` from `" .. tbl_sql.srran .. "` order by `rank` desc limit " .. table_sets.ranklimit)

if rows > 0 then
	local arank, len = "", 0

	for x = 0, rows - 1 do
		local _, user, rank = VH:SQLFetch (x)
		if x == 0 then len = # rank end
		arank = arank .. " " .. prezero (# rows, (x + 1)) .. ". [ R: " .. prezero (len, rank) .. " ] " .. repnmdcoutchars (user) .. "\r\n"
	end

	commandanswer (nick, gettext ("Top %d search requests"):format (rows) .. ":\r\n\r\n" .. arank)
else
	commandanswer (nick, gettext ("Search rank list is empty."))
end
end

----- ---- --- -- -

function wordrankaccept (nick, ucls, line)
	if ucls < table_sets.wordrankclass then
		return
	end

	local usr = repsqlchars (nick)
	local _, rows = VH:SQLQuery ("select `nick` from `" .. tbl_sql.ranex .. "` where `nick` = '" .. usr .. "' limit 1")

	if rows > 0 then
		VH:SQLQuery ("update `" .. tbl_sql.ranex .. "` set `occurred` = `occurred` + 1 where `nick` = '" .. usr .. "' limit 1")
	else
		local str = repwordranchars (repnmdcinchars (line), 0) .. "$"

		for aword in str:gmatch ("([^$]+)%$") do
			aword = repwordranchars (aword, 1)
			local stlen = # aword

			if stlen >= table_sets.wordranmin and stlen <= table_sets.wordranmax then
				VH:SQLQuery ("insert into `" .. tbl_sql.wdran .. "` (`word`) values ('" .. repsqlchars (aword) .. "') on duplicate key update `rank` = `rank` + 1")
			end
		end
	end
end

----- ---- --- -- -

function cleanwordrank (limit, maxi)
local _, rows = VH:SQLQuery ("select `word` from `" .. tbl_sql.wdran .. "`")

if rows > 0 then
local table_delete = {}

for x = 0, rows - 1 do
local _, aword = VH:SQLFetch (x)

if maxi == 0 then
if # aword < limit then
table_delete [aword] = x
end

else

if # aword > limit then
table_delete [aword] = x
end
end
end

for k, _ in pairs (table_delete) do
VH:SQLQuery ("delete from `" .. tbl_sql.wdran .. "` where `word` = '" .. repsqlchars (k) .. "' limit 1")
end
end
end

----- ---- --- -- -

function delrank (nick, line)
local _, _, ctype, cuser = line:find ("^(%S+) (%S+)$")
local auser = repsqlchars (cuser)

if ctype == "chat" then
local _, rows = VH:SQLQuery ("select `rank` from `" .. tbl_sql.chran .. "` where `nick` = '" .. auser .. "' limit 1")

if rows > 0 then
VH:SQLQuery ("delete from `" .. tbl_sql.chran .. "` where `nick` = '" .. auser .. "' limit 1")
commandanswer (nick, gettext ("Deleted from chat rank list: %s"):format (cuser))
else
commandanswer (nick, gettext ("Not found in chat rank list: %s"):format (cuser))
end

elseif ctype == "share" then
local _, rows = VH:SQLQuery ("select `rank` from `" .. tbl_sql.shran .. "` where `nick` = '" .. auser .. "' limit 1")

if rows > 0 then
VH:SQLQuery ("delete from `" .. tbl_sql.shran .. "` where `nick` = '" .. auser .. "' limit 1")
commandanswer (nick, gettext ("Deleted from share rank list: %s"):format (cuser))
else
commandanswer (nick, gettext ("Not found in share rank list: %s"):format (cuser))
end

elseif ctype == "op" then
local _, rows = VH:SQLQuery ("select `rank` from `" .. tbl_sql.opran .. "` where `nick` = '" .. auser .. "' limit 1")

if rows > 0 then
VH:SQLQuery ("delete from `" .. tbl_sql.opran .. "` where `nick` = '" .. auser .. "' limit 1")
commandanswer (nick, gettext ("Deleted from operator rank list: %s"):format (cuser))
else
commandanswer (nick, gettext ("Not found in operator rank list: %s"):format (cuser))
end

elseif ctype == "sear" then
	local _, rows = VH:SQLQuery ("select `rank` from `" .. tbl_sql.srran .. "` where `search` = '" .. auser .. "' limit 1")

	if rows > 0 then
		VH:SQLQuery ("delete from `" .. tbl_sql.srran .. "` where `search` = '" .. auser .. "' limit 1")
		commandanswer (nick, gettext ("Deleted from search rank list: %s"):format (cuser))
	else
		commandanswer (nick, gettext ("Not found in search rank list: %s"):format (cuser))
	end

elseif ctype == "word" then
local _, rows = VH:SQLQuery ("select `rank` from `" .. tbl_sql.wdran .. "` where `word` = '" .. auser .. "' limit 1")

if rows > 0 then
VH:SQLQuery ("delete from `" .. tbl_sql.wdran .. "` where `word` = '" .. auser .. "' limit 1")
commandanswer (nick, gettext ("Deleted from word rank list: %s"):format (cuser))
else
commandanswer (nick, gettext ("Not found in word rank list: %s"):format (cuser))
end

elseif ctype == "cc" then
local _, rows = VH:SQLQuery ("select `cc` from `" .. tbl_sql.ccstat .. "` where `cc` = '" .. auser .. "'")

if rows > 0 then
VH:SQLQuery ("delete from `" .. tbl_sql.ccstat .. "` where `cc` = '" .. auser .. "'")
commandanswer (nick, gettext ("Deleted %d rows from country code statistics table: %s"):format (rows, cuser))
else
commandanswer (nick, gettext ("Not found in country code statistics table: %s"):format (cuser))
end

elseif ctype == "all" then
delrank (nick, "chat " .. cuser)
delrank (nick, "share " .. cuser)
delrank (nick, "op " .. cuser)
-- search ranks not added
-- word ranks not added
-- cc ranks not added

else -- unknown type
commandanswer (nick, gettext ("Known types are: %s"):format ("chat, share, op, sear, word, cc " .. gettext ("and") .. " all"))
end
end

----- ---- --- -- -

function cleanupranks (nick, line, cls)
local _, _, ctype, climt = line:find ("^(%S+) (%d+)$")
local climt = tonumber (climt)
local tm = os.time () + table_sets.srvtimediff

if ctype == "chat" then
commandanswer (nick, gettext ("This operation might take very long time depending on how much is going to be removed, please be patient."))
local rows = 0

if climt == 0 then
rows = counttable (tbl_sql.chran)
else
_, rows = VH:SQLQuery ("select `rank` from `" .. tbl_sql.chran .. "` where `rank` < " .. climt)
end

if rows > 0 then
if climt == 0 then
VH:SQLQuery ("truncate table `" .. tbl_sql.chran .. "`")
else
VH:SQLQuery ("delete from `" .. tbl_sql.chran .. "` where `rank` < " .. climt)
end

commandanswer (nick, gettext ("Deleted %d rows: %s"):format (rows, ctype))
opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d chat ranks lower than %d."):format (nick, cls, rows, climt))
VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('lastcleanchran', " .. tm .. ") on duplicate key update `value` = " .. tm)
VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('limcleanchran', " .. climt .. ") on duplicate key update `value` = " .. climt)
else
commandanswer (nick, gettext ("No rows to remove: %s"):format (ctype))
end

elseif ctype == "share" then
commandanswer (nick, gettext ("This operation might take very long time depending on how much is going to be removed, please be patient."))
local rows, cbytes = 0, 0

if climt == 0 then
rows = counttable (tbl_sql.shran)
else
cbytes = roundint ((climt * 1073741824), 0)
_, rows = VH:SQLQuery ("select `rank` from `" .. tbl_sql.shran .. "` where `rank` < " .. cbytes)
end

if rows > 0 then
if climt == 0 then
VH:SQLQuery ("truncate table `" .. tbl_sql.shran .. "`")
else
VH:SQLQuery ("delete from `" .. tbl_sql.shran .. "` where `rank` < " .. cbytes)
end

commandanswer (nick, gettext ("Deleted %d rows: %s"):format (rows, ctype))
opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d share ranks lower than %s."):format (nick, cls, rows, _tostring (climt) .. " " .. gettext ("GiB")))
VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('lastcleanshran', " .. tm .. ") on duplicate key update `value` = " .. tm)
VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('limcleanshran', " .. climt .. ") on duplicate key update `value` = " .. climt)
else
commandanswer (nick, gettext ("No rows to remove: %s"):format (ctype))
end

elseif ctype == "op" then
commandanswer (nick, gettext ("This operation might take very long time depending on how much is going to be removed, please be patient."))
local rows = 0

if climt == 0 then
rows = counttable (tbl_sql.opran)
else
_, rows = VH:SQLQuery ("select `rank` from `" .. tbl_sql.opran .. "` where `rank` < " .. climt)
end

if rows > 0 then
if climt == 0 then
VH:SQLQuery ("truncate table `" .. tbl_sql.opran .. "`")
else
VH:SQLQuery ("delete from `" .. tbl_sql.opran .. "` where `rank` < " .. climt)
end

commandanswer (nick, gettext ("Deleted %d rows: %s"):format (rows, ctype))
opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d operator ranks lower than %d."):format (nick, cls, rows, climt))
VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('lastcleanopran', " .. tm .. ") on duplicate key update `value` = " .. tm)
VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('limcleanopran', " .. climt .. ") on duplicate key update `value` = " .. climt)
else
commandanswer (nick, gettext ("No rows to remove: %s"):format (ctype))
end

elseif ctype == "sear" then
	commandanswer (nick, gettext ("This operation might take very long time depending on how much is going to be removed, please be patient."))
	local rows = 0

	if climt == 0 then
		rows = counttable (tbl_sql.srran)
	else
		_, rows = VH:SQLQuery ("select `rank` from `" .. tbl_sql.srran .. "` where `rank` < " .. climt)
	end

	if rows > 0 then
		if climt == 0 then
			VH:SQLQuery ("truncate table `" .. tbl_sql.srran .. "`")
		else
			VH:SQLQuery ("delete from `" .. tbl_sql.srran .. "` where `rank` < " .. climt)
		end

		commandanswer (nick, gettext ("Deleted %d rows: %s"):format (rows, ctype))
		opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d search ranks lower than %d."):format (nick, cls, rows, climt))
		VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('lastcleansrran', " .. tm .. ") on duplicate key update `value` = " .. tm)
		VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('limcleansrran', " .. climt .. ") on duplicate key update `value` = " .. climt)
	else
		commandanswer (nick, gettext ("No rows to remove: %s"):format (ctype))
	end

elseif ctype == "word" then
commandanswer (nick, gettext ("This operation might take very long time depending on how much is going to be removed, please be patient."))
local rows = 0

if climt == 0 then
rows = counttable (tbl_sql.wdran)
else
_, rows = VH:SQLQuery ("select `rank` from `" .. tbl_sql.wdran .. "` where `rank` < " .. climt)
end

if rows > 0 then
if climt == 0 then
VH:SQLQuery ("truncate table `" .. tbl_sql.wdran .. "`")
else
VH:SQLQuery ("delete from `" .. tbl_sql.wdran .. "` where `rank` < " .. climt)
end

commandanswer (nick, gettext ("Deleted %d rows: %s"):format (rows, ctype))
opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted %d word ranks lower than %d."):format (nick, cls, rows, climt))
VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('lastcleanwdran', " .. tm .. ") on duplicate key update `value` = " .. tm)
VH:SQLQuery ("insert into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('limcleanwdran', " .. climt .. ") on duplicate key update `value` = " .. climt)
else
commandanswer (nick, gettext ("No rows to remove: %s"):format (ctype))
end

elseif ctype == "cc" then
VH:SQLQuery ("truncate table `" .. tbl_sql.ccstat .. "`")
VH:SQLQuery ("update ignore `" .. tbl_sql.conf .. "` set `value` = '" .. (os.time () + table_sets.srvtimediff) .. "' where `variable` = 'date_ccstats' limit 1")
commandanswer (nick, gettext ("Deleted all rows: %s"):format (ctype))
opsnotify (table_sets.classnotiledoact, gettext ("%s with class %d deleted all user location entries."):format (nick, cls))

else -- unknown type
	commandanswer (nick, gettext ("Known types are: %s"):format ("chat, share, op, sear, word " .. gettext ("and") .. " cc"))
end
end

----- ---- --- -- -

function chatranksendown (nick)
local _, rows = VH:SQLQuery ("select `rank` from `" .. tbl_sql.chran .. "` where `nick` = '" .. repsqlchars (nick) .. "' limit 1")

if rows > 0 then
local _, rank = VH:SQLFetch (0)
commandanswer (nick, gettext ("Your chat rank is: %d"):format (rank))
else
commandanswer (nick, gettext ("You have to write something in main chat to get started."))
end
end

----- ---- --- -- -

function shareranksendown (nick)
local _, rows = VH:SQLQuery ("select `rank` from `" .. tbl_sql.shran .. "` where `nick` = '" .. repsqlchars (nick) .. "' limit 1")

if rows > 0 then
local _, rank = VH:SQLFetch (0)
commandanswer (nick, gettext ("Your share rank is: %s"):format (makesize (rank)))
else
commandanswer (nick, gettext ("You have to share %s and reconnect to get started."):format (_tostring (table_sets.shareranmin) .. " " .. gettext ("GiB")))
end
end

----- ---- --- -- -

function opranksendown (nick)
local _, rows = VH:SQLQuery ("select `rank` from `" .. tbl_sql.opran .. "` where `nick` = '" .. repsqlchars (nick) .. "' limit 1")

if rows > 0 then
local _, rank = VH:SQLFetch (0)
commandanswer (nick, gettext ("Your operator rank is: %d"):format (rank))
else
commandanswer (nick, gettext ("You have to do some operator actions to get started."))
end
end

----- ---- --- -- -

function chatranksendall (nick)
local _, rows = VH:SQLQuery ("select `nick`, `rank` from `" .. tbl_sql.chran .. "` order by `rank` desc limit " .. table_sets.ranklimit)

if rows > 0 then
local arank, len = "", 0

for x = 0, rows - 1 do
local _, user, rank = VH:SQLFetch (x)
if x == 0 then len = # rank end
arank = arank .. " " .. prezero (# rows, (x + 1)) .. ". [ R: " .. prezero (len, rank) .. " ] " .. user .. "\r\n"
end

commandanswer (nick, gettext ("Top %d chat rankers"):format (rows) .. ":\r\n\r\n" .. arank)
else
commandanswer (nick, gettext ("Chat rank list is empty."))
end
end

----- ---- --- -- -

function shareranksendall (nick)
local _, rows = VH:SQLQuery ("select `nick`, `rank` from `" .. tbl_sql.shran .. "` order by `rank` desc limit " .. table_sets.ranklimit)

if rows > 0 then
local arank = ""

for x = 0, rows - 1 do
local _, user, rank = VH:SQLFetch (x)
arank = arank .. " " .. prezero (# rows, (x + 1)) .. ". " .. user .. " @ " .. makesize (rank) .. "\r\n"
end

commandanswer (nick, gettext ("Top %d share rankers"):format (rows) .. ":\r\n\r\n" .. arank)
else
commandanswer (nick, gettext ("Share rank list is empty."))
end
end

----- ---- --- -- -

function opranksendall (nick)
local _, rows = VH:SQLQuery ("select `nick`, `rank` from `" .. tbl_sql.opran .. "` order by `rank` desc limit " .. table_sets.ranklimit)

if rows > 0 then
local arank, len = "", 0

for x = 0, rows - 1 do
local _, user, rank = VH:SQLFetch (x)
if x == 0 then len = # rank end
arank = arank .. " " .. prezero (# rows, (x + 1)) .. ". [ R: " .. prezero (len, rank) .. " ] " .. user .. "\r\n"
end

commandanswer (nick, gettext ("Top %d operator rankers"):format (rows) .. ":\r\n\r\n" .. arank)
else
commandanswer (nick, gettext ("Operator rank list is empty."))
end
end

----- ---- --- -- -

function wordranksendall (nick)
local _, rows = VH:SQLQuery ("select `word`, `rank` from `" .. tbl_sql.wdran .. "` order by `rank` desc limit " .. table_sets.ranklimit)

if rows > 0 then
	local arank, len = "", 0

	for x = 0, rows - 1 do
		local _, user, rank = VH:SQLFetch (x)
		if x == 0 then len = # rank end
		arank = arank .. " " .. prezero (# rows, (x + 1)) .. ". [ R: " .. prezero (len, rank) .. " ] " .. repnmdcoutchars (user) .. "\r\n"
	end

	commandanswer (nick, gettext ("Top %d used words"):format (rows) .. ":\r\n\r\n" .. arank)
else
	commandanswer (nick, gettext ("Word rank list is empty."))
end
end

----- ---- --- -- -

function addrankex (nick, item)
local entry = repsqlchars (item)
local _, rows = VH:SQLQuery ("select `nick` from `" .. tbl_sql.ranex .. "` where `nick` = '" .. entry .. "' limit 1")

if rows > 0 then
commandanswer (nick, gettext ("Couldn't add rank exception because already exists: %s"):format (item))
else
VH:SQLQuery ("insert into `" .. tbl_sql.ranex .. "` (`nick`) values ('" .. entry .. "')")
commandanswer (nick, gettext ("Added rank exception: %s"):format (item))
delrank (nick, "all " .. item)
end
end

----- ---- --- -- -

function delrankex (nick, item)
local aitem = repsqlchars (item)
local _, rows = VH:SQLQuery ("select `nick` from `" .. tbl_sql.ranex .. "` where `nick` = '" .. aitem .. "' limit 1")

if rows > 0 then
VH:SQLQuery ("delete from `" .. tbl_sql.ranex .. "` where `nick` = '" .. aitem .. "' limit 1")
commandanswer (nick, gettext ("Deleted rank exception: %s"):format (item))
else
commandanswer (nick, gettext ("Couldn't delete rank exception because not found: %s"):format (item))
end
end

----- ---- --- -- -

function listrankex (nick)
local _, rows = VH:SQLQuery ("select `nick`, `occurred` from `" .. tbl_sql.ranex .. "` order by `occurred` desc")

if rows > 0 then
local anentry, len = "", 0

for x = 0, rows - 1 do
local _, entry, occurred = VH:SQLFetch (x)
if x == 0 then len = # occurred end
anentry = anentry .. " " .. prezero (# rows, (x + 1)) .. ". [ O: " .. prezero (len, occurred) .. " ] " .. entry .. "\r\n"
end

commandanswer (nick, gettext ("Rank exception list") .. ":\r\n\r\n" .. anentry)
else
commandanswer (nick, gettext ("Rank exception list is empty."))
end
end

----- ---- --- -- -

function countranks (tbl)
local _, rows = VH:SQLQuery ("select `rank` from `" .. tbl .. "`")
local crcount = 0

if rows > 0 then
	for x = 0, rows - 1 do
		local _, anum = VH:SQLFetch (x)
		crcount = crcount + tonumber (anum)
	end
end

return crcount
end

----- ---- --- -- -

function addsefientry (nick, line)
	local item, prio, act, sype = line:match ("^(.+) (%d) (%d+) (%d)$")
	prio, act, sype = tonumber (prio), tonumber (act), tonumber (sype)

	if act < 0 or act > 9 then -- invalid action
		commandanswer (nick, gettext ("Known actions are: %s"):format ("0, 1, 2, 3, 4, 5, 6, 7, 8 " .. gettext ("and") .. " 9"))
	elseif prio < 0 or prio > 9 then -- invalid priority
		commandanswer (nick, gettext ("Valid priority is a number from %d to %d."):format (0, 9))
	elseif sype < 1 or sype > 9 then -- invalid search type
		commandanswer (nick, gettext ("Known search types are: %s"):format ("1, 2, 3, 4, 5, 6, 7, 8 " .. gettext ("and") .. " 9"))
	else
		local fres, fval = catchfinderror ("", repnmdcinchars (item))

		if not fres then
			local ferr = gettext ("There is an error in following search filter pattern") .. ":\r\n\r\n"
			ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. item .. "\r\n"
			ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
			commandanswer (nick, ferr)
		else
			local entry = repsqlchars (repnmdcinchars (item))
			local _, rows = VH:SQLQuery ("select `action` from `" .. tbl_sql.sefi .. "` where `filter` = '" .. entry .. "'")

			if rows > 0 then
				VH:SQLQuery ("update `" .. tbl_sql.sefi .. "` set `priority` = " .. _tostring (prio) .. ", `action` = " .. _tostring (act) .. ", `type` = " .. _tostring (sype) .. " where `filter` = '" .. entry .. "'")
				local note = "Modified search filter with action %d and priority %d as any file: %s"

				if sype == 2 then
					note = "Modified search filter with action %d and priority %d as audio file: %s"
				elseif sype == 3 then
					note = "Modified search filter with action %d and priority %d as compressed file: %s"
				elseif sype == 4 then
					note = "Modified search filter with action %d and priority %d as document: %s"
				elseif sype == 5 then
					note = "Modified search filter with action %d and priority %d as executable: %s"
				elseif sype == 6 then
					note = "Modified search filter with action %d and priority %d as picture: %s"
				elseif sype == 7 then
					note = "Modified search filter with action %d and priority %d as video: %s"
				elseif sype == 8 then
					note = "Modified search filter with action %d and priority %d as folder: %s"
				elseif sype == 9 then
					note = "Modified search filter with action %d and priority %d as TTH: %s"
				end

				commandanswer (nick, gettext (note):format (act, prio, item))
			else
				VH:SQLQuery ("insert into `" .. tbl_sql.sefi .. "` (`filter`, `priority`, `action`, `type`) values ('" .. entry .. "', " .. _tostring (prio) .. ", " .. _tostring (act) .. ", " .. _tostring (sype) .. ")")
				local note = "Added search filter with action %d and priority %d as any file: %s"

				if sype == 2 then
					note = "Added search filter with action %d and priority %d as audio file: %s"
				elseif sype == 3 then
					note = "Added search filter with action %d and priority %d as compressed file: %s"
				elseif sype == 4 then
					note = "Added search filter with action %d and priority %d as document: %s"
				elseif sype == 5 then
					note = "Added search filter with action %d and priority %d as executable: %s"
				elseif sype == 6 then
					note = "Added search filter with action %d and priority %d as picture: %s"
				elseif sype == 7 then
					note = "Added search filter with action %d and priority %d as video: %s"
				elseif sype == 8 then
					note = "Added search filter with action %d and priority %d as folder: %s"
				elseif sype == 9 then
					note = "Added search filter with action %d and priority %d as TTH: %s"
				end

				commandanswer (nick, gettext (note):format (act, prio, item))
			end
		end
	end
end

----- ---- --- -- -

function delsefientry (nick, item)
	local entry = repsqlchars (repnmdcinchars (item))
	local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.sefi .. "` where `filter` = '" .. entry .. "'")

	if rows > 0 then
		VH:SQLQuery ("delete from `" .. tbl_sql.sefi .. "` where `filter` = '" .. entry .. "'")
		commandanswer (nick, gettext ("Deleted search filter: %s"):format (item))
	else
		commandanswer (nick, gettext ("Couldn't delete search filter because not found: %s"):format (item))
	end
end

----- ---- --- -- -

function listsefientry (nick)
	local _, rows = VH:SQLQuery ("select `filter`, `occurred`, `priority`, `action`, `type` from `" .. tbl_sql.sefi .. "` order by `occurred` desc, `priority` desc")

	if rows > 0 then
		local list, olen = "", 0

		for row = 0, rows - 1 do
			local _, item, occ, prio, act, sype = VH:SQLFetch (row)

			if row == 0 then
				olen = # _tostring (occ)
			end

			list = list .. " " .. prezero (# _tostring (rows), (row + 1)) .. ". [ P: " .. _tostring (prio) .. " ] [ A: " .. _tostring (act) .. " ] [ T: " .. _tostring (sype) .. " ] [ O: " .. prezero (olen, occ) .. " ] " .. repnmdcoutchars (item) .. "\r\n"
		end

		commandanswer (nick, gettext ("Search filter list") .. ":\r\n\r\n" .. list)
	else
		commandanswer (nick, gettext ("Search filter list is empty."))
	end
end

----- ---- --- -- -

function addsefiexentry (nick, item)
	local fres, fval = catchfinderror ("", repnmdcinchars (item))

	if not fres then
		local ferr = gettext ("There is an error in following search filter exception pattern") .. ":\r\n\r\n"
		ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. item .. "\r\n"
		ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
		ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
		commandanswer (nick, ferr)
	else
		local entry = repsqlchars (repnmdcinchars (item))
		local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.sefiex .. "` where `exception` = '" .. entry .. "' limit 1")

		if rows > 0 then
			commandanswer (nick, gettext ("Couldn't add search filter exception entry because already exists: %s"):format (item))
		else
			VH:SQLQuery ("insert into `" .. tbl_sql.sefiex .. "` (`exception`) values ('" .. entry .. "')")
			commandanswer (nick, gettext ("Added search filter exception entry: %s"):format (item))
		end
	end
end

----- ---- --- -- -

function delsefiexentry (nick, item)
	local entry = repsqlchars (repnmdcinchars (item))
	local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.sefiex .. "` where `exception` = '" .. entry .. "'")

	if rows > 0 then
		VH:SQLQuery ("delete from `" .. tbl_sql.sefiex .. "` where `exception` = '" .. entry .. "'")
		commandanswer (nick, gettext ("Deleted search filter exception entry: %s"):format (item))
	else
		commandanswer (nick, gettext ("Couldn't delete search filter exception entry because not found: %s"):format (item))
	end
end

----- ---- --- -- -

function listsefiexentry (nick)
	local _, rows = VH:SQLQuery ("select `exception`, `occurred` from `" .. tbl_sql.sefiex .. "` order by `occurred` desc")

	if rows > 0 then
		local list, olen = "", 0

		for row = 0, rows - 1 do
			local _, item, occ = VH:SQLFetch (row)

			if row == 0 then
				olen = # _tostring (occ)
			end

			list = list .. " " .. prezero (# _tostring (rows), (row + 1)) .. ". [ O: " .. prezero (olen, occ) .. " ] " .. repnmdcoutchars (item) .. "\r\n"
		end

		commandanswer (nick, gettext ("Search filter exception list") .. ":\r\n\r\n" .. list)
	else
		commandanswer (nick, gettext ("Search filter exception list is empty."))
	end
end

----- ---- --- -- -

function listsefiblocks (nick)
	local list = ""

	for user, data in pairs (table_sefi) do
		list = list .. " [ N: " .. user .. " ] [ R: " .. data.req .. " ] [ N: " .. _tostring (data.num) .. " ] [ S: "

		if data.sil then
			list = list .. gettext ("Yes")
		else
			list = list .. gettext ("No")
		end

		list = list .. " ]\r\n"
	end

	if # list > 0 then
		commandanswer (nick, gettext ("Search filter block list") .. ":\r\n\r\n" .. list)
	else
		commandanswer (nick, gettext ("Search filter block list is empty."))
	end
end

----- ---- --- -- -

function delsefiblock (nick, user)
	if table_sefi [user] then
		table_sefi [user] = nil
		commandanswer (nick, gettext ("Deleted search filter block list entry: %s"):format (user))
	else
		commandanswer (nick, gettext ("Couldn't delete search filter block list entry because not found: %s"):format (user))
	end
end

----- ---- --- -- -

function addantientry (nick, item)
	local _, _, aitem, prio, aaction, flags = item:find ("^(.+) (%d) (%d+) (%d)$")
	prio, aaction, flags = tonumber (prio), tonumber (aaction), tonumber (flags)

	if aaction < 0 or aaction > 10 then -- invalid action
		commandanswer (nick, gettext ("Known actions are: %s"):format ("0, 1, 2, 3, 4, 5, 6, 7, 8, 9 " .. gettext ("and") .. " 10"))
	elseif flags < 1 or flags > 3 then -- invalid flag
		commandanswer (nick, gettext ("Known flags are: %s"):format ("1, 2 " .. gettext ("and") .. " 3"))
	elseif prio < 0 or prio > 9 then -- invalid priority
		commandanswer (nick, gettext ("Valid priority is a number from %d to %d."):format (0, 9))
	else
		local fres, fval = catchfinderror ("", repnmdcinchars (aitem))

		if not fres then
			local ferr = gettext ("There is an error in following antispam entry pattern") .. ":\r\n\r\n"
			ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. aitem .. "\r\n"
			ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
			commandanswer (nick, ferr)
		else
			local entry = repsqlchars (repnmdcinchars (aitem))
			local _, rows = VH:SQLQuery ("select `action` from `" .. tbl_sql.anti .. "` where `antispam` = '" .. entry .. "' limit 1")

			if rows > 0 then
				VH:SQLQuery ("update `" .. tbl_sql.anti .. "` set `priority` = " .. _tostring (prio) .. ", `action` = " .. _tostring (aaction) .. ", `flags` = " .. _tostring (flags) .. " where `antispam` = '" .. entry .. "' limit 1")
				local note = "Modified antispam entry with action %d and priority %d to scan in MC and PM: %s"

				if flags == 1 then
					note = "Modified antispam entry with action %d and priority %d to scan in MC: %s"
				elseif flags == 2 then
					note = "Modified antispam entry with action %d and priority %d to scan in PM: %s"
				end

				commandanswer (nick, gettext (note):format (aaction, prio, aitem))
			else
				VH:SQLQuery ("insert into `" .. tbl_sql.anti .. "` (`antispam`, `priority`, `action`, `flags`) values ('" .. entry .. "', " .. _tostring (prio) .. ", " .. _tostring (aaction) .. ", " .. _tostring (flags) .. ")")
				local note = "Added antispam entry with action %d and priority %d to scan in MC and PM: %s"

				if flags == 1 then
					note = "Added antispam entry with action %d and priority %d to scan in MC: %s"
				elseif flags == 2 then
					note = "Added antispam entry with action %d and priority %d to scan in PM: %s"
				end

				commandanswer (nick, gettext (note):format (aaction, prio, aitem))
			end
		end
	end
end

----- ---- --- -- -

function delantientry (nick, item)
local aitem = repsqlchars (repnmdcinchars (item))
local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.anti .. "` where `antispam` = '" .. aitem .. "' limit 1")

if rows > 0 then
	VH:SQLQuery ("delete from `" .. tbl_sql.anti .. "` where `antispam` = '" .. aitem .. "' limit 1")
	commandanswer (nick, gettext ("Deleted antispam entry: %s"):format (item))
else
	commandanswer (nick, gettext ("Couldn't delete antispam entry because not found: %s"):format (item))
end
end

----- ---- --- -- -

function listantientry (nick)
local _, rows = VH:SQLQuery ("select `antispam`, `occurred`, `priority`, `action`, `flags` from `" .. tbl_sql.anti .. "` order by `occurred` desc, `priority` desc, `flags` desc")

if rows > 0 then
	local anentry, len = "", 0

	for x = 0, rows - 1 do
		local _, entry, occurred, prio, aaction, flags = VH:SQLFetch (x)
		if x == 0 then len = # occurred end
		anentry = anentry .. " " .. prezero (# rows, (x + 1)) .. ". [ P: " .. prio .. " ] [ A: " .. aaction .. " ] [ F: " .. flags .. " ] [ O: " .. prezero (len, occurred) .. " ] " .. repnmdcoutchars (entry) .. "\r\n"
	end

	commandanswer (nick, gettext ("Antispam list") .. ":\r\n\r\n" .. anentry)
else
	commandanswer (nick, gettext ("Antispam list is empty."))
end
end

----- ---- --- -- -

function addexentry (nick, item)
	local fres, fval = catchfinderror ("", repnmdcinchars (item))

	if not fres then
		local ferr = gettext ("There is an error in following antispam exception entry pattern") .. ":\r\n\r\n"
		ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. item .. "\r\n"
		ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
		ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
		commandanswer (nick, ferr)
	else
		local entry = repsqlchars (repnmdcinchars (item))
		local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.antiex .. "` where `exception` = '" .. entry .. "' limit 1")

		if rows > 0 then
			commandanswer (nick, gettext ("Couldn't add antispam exception entry because already exists: %s"):format (item))
		else
			VH:SQLQuery ("insert into `" .. tbl_sql.antiex .. "` (`exception`) values ('" .. entry .. "')")
			commandanswer (nick, gettext ("Added antispam exception entry: %s"):format (item))
		end
	end
end

----- ---- --- -- -

function delexentry (nick, item)
local aitem = repsqlchars (repnmdcinchars (item))
local _, rows = VH:SQLQuery ("select `occurred` from `" .. tbl_sql.antiex .. "` where `exception` = '" .. aitem .. "' limit 1")

if rows > 0 then
VH:SQLQuery ("delete from `" .. tbl_sql.antiex .. "` where `exception` = '" .. aitem .. "' limit 1")
commandanswer (nick, gettext ("Deleted antispam exception entry: %s"):format (item))
else
commandanswer (nick, gettext ("Couldn't delete antispam exception entry because not found: %s"):format (item))
end
end

----- ---- --- -- -

function listexentry (nick)
local _, rows = VH:SQLQuery ("select `exception`, `occurred` from `" .. tbl_sql.antiex .. "` order by `occurred` desc")

if rows > 0 then
local anentry, len = "", 0

for x = 0, rows - 1 do
local _, entry, occurred = VH:SQLFetch (x)
if x == 0 then len = # occurred end
anentry = anentry .. " " .. prezero (# rows, (x + 1)) .. ". [ O: " .. prezero (len, occurred) .. " ] " .. repnmdcoutchars (entry) .. "\r\n"
end

commandanswer (nick, gettext ("Antispam exception list") .. ":\r\n\r\n" .. anentry)
else
commandanswer (nick, gettext ("Antispam exception list is empty."))
end
end

----- ---- --- -- -

function votekickuser (nick, usni)
	if getstatus (usni) == 1 then
		local user = getcsnick (usni) or usni
		local class = getclass (user)

		if class < 3 then
			if not isprotected (user, getip (user)) then
				if table_voki [user] then -- add vote
					for _, val in pairs (table_voki [user]["u"]) do
						if val == nick then
							commandanswer (nick, gettext ("You have already voted for kicking that user."))
							return
						end
					end

					table_voki [user]["c"] = table_voki [user]["c"] + 1
					table.insert (table_voki [user]["u"], nick)
				else -- new vote
					table_voki [user] = {
						["c"] = 1,
						["u"] = {nick}
					}
				end

				maintoall (gettext ("%s added vote %d of %d for kicking user with class %d: %s"):format (nick, table_voki [user]["c"], table_sets.votekickcount, class, user), 0, 10) -- notify all users

				if table_voki [user]["c"] >= table_sets.votekickcount then -- kick user
					table_voki [user] = nil
					VH:KickUser (table_othsets.sendfrom, user, gettext ("User voted kick"))
				end
			else -- user or ip is protected
				commandanswer (nick, gettext ("User you're trying to kick or redirect is protected: %s"):format (user))
			end
		else -- dont allow to kick operators
			commandanswer (nick, gettext ("You don't want to vote for kicking an operator."))
		end
	else -- not in list
		commandanswer (nick, gettext ("User not in list: %s"):format (usni))
	end
end

----- ---- --- -- -

function votekickdel (nick, usni)
	if getstatus (usni) == 1 then
		local user = getcsnick (usni) or usni

		if table_voki [user] then
			maintoall (gettext ("%s cleared %d of %d votes for kicking user with class %d: %s"):format (nick, table_voki [user]["c"], table_sets.votekickcount, getclass (user), user), 0, 10) -- notify all users
			table_voki [user] = nil
		else -- not in list
			commandanswer (nick, gettext ("User not in list: %s"):format (user))
		end
	else -- not in list
		commandanswer (nick, gettext ("User not in list: %s"):format (usni))
	end
end

----- ---- --- -- -

function votekicklist (nick)
	local list = ""

	for user, data in pairs (table_voki) do
		list = list .. " " .. gettext ("Nick: %s"):format (user) .. " &#124; " .. gettext ("Class: %d"):format (getclass (user)) .. " &#124; " .. gettext ("Votes: %d of %d"):format (data ["c"], table_sets.votekickcount) .. " &#124; " .. gettext ("Voters: %s"):format (table.concat (data ["u"], " ")) .. "\r\n"
	end

	if # list > 0 then
		commandanswer (nick, gettext ("Vote kick list") .. ":\r\n\r\n" .. list)
	else
		commandanswer (nick, gettext ("Vote kick list is empty."))
	end
end

----- ---- --- -- -

function savetopic (owner, topic, ucls)
	if ucls < getconfig ("topic_mod_class") then return end
	table_othsets.topicowner = owner
	table_othsets.topicvalue = topic

	if table_sets.statscollint > 0 then
		local tm = os.time () + table_sets.srvtimediff -- current time
		VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('current_topic', " .. tm .. ", " .. repsqlchars (topic or "") .. ") on duplicate key update `time` = " .. tm .. ", `count` = " .. repsqlchars (topic or ""))
		VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('topic_owner', " .. tm .. ", " .. repsqlchars (owner or "") .. ") on duplicate key update `time` = " .. tm .. ", `count` = " .. repsqlchars (owner or ""))
	end

	if topic and (table_sets.rolltopicint > 0) then -- rolling topic
		table_othsets.rolltopicsecs = os.time ()
		table_othsets.rolltopiclen = 1

		if table_refu.SetTopic then
			VH:SetTopic (string.rep (" ", table_sets.rolltopicspace) .. topic)
		else
			VH:SendToClass ("$HubName " .. getconfig ("hub_name") .. " - " .. string.rep (" ", table_sets.rolltopicspace) .. topic .. "|", 0, 10)
		end
	end
end

----- ---- --- -- -

function sendtopic (nick)
	if table_refu.GetTopic then
		local topic = VH:GetTopic ()

		if topic and (topic ~= "") then
			if table_othsets.topicowner and (table_sets.showtopicowner == 1) then
				commandanswer (nick, gettext ("Current topic set by %s: %s"):format (table_othsets.topicowner, topic))
			else
				commandanswer (nick, gettext ("Current topic: %s"):format (topic))
			end
		else
			commandanswer (nick, gettext ("No topic is set."))
		end
	else -- old fashion way
		if not table_othsets.topicvalue then
			commandanswer (nick, gettext ("No topic is set."))
		else
			if table_othsets.topicowner and (table_sets.showtopicowner == 1) then
				commandanswer (nick, gettext ("Current topic set by %s: %s"):format (table_othsets.topicowner, table_othsets.topicvalue))
			else
				commandanswer (nick, gettext ("Current topic: %s"):format (table_othsets.topicvalue))
			end
		end
	end
end

----- ---- --- -- -

function rolltopic ()
	table_othsets.rolltopicsecs = os.time ()
	local newtopc = string.rep (" ", table_sets.rolltopicspace) .. table_othsets.topicvalue

	if table_othsets.rolltopiclen >= (# newtopc + 1) then
		table_othsets.rolltopiclen = 1 -- dont change
	end

	newtopc = newtopc:sub (table_othsets.rolltopiclen + 1) .. newtopc:sub (1, table_othsets.rolltopiclen)
	table_othsets.rolltopiclen = table_othsets.rolltopiclen + 1 -- steps to move

	if table_refu.SetTopic then
		VH:SetTopic (newtopc)
	else
		VH:SendToClass ("$HubName " .. getconfig ("hub_name") .. " - " .. newtopc .. "|", 0, 10)
	end
end

----- ---- --- -- -

function namereg (nick, line, cls)
local _, _, oldn = line:find ("^(%S+) %S+$")

if not getregclass (oldn) then -- check if physically registered
commandanswer (nick, gettext ("User is not registered: %s"):format (oldn))
else
local _, _, newn = line:find ("^%S+ (%S+)$")
newn = repnickchars (newn)

if getstatus (oldn) == 1 then -- notify and disconnect user if hes online
pmtouser (oldn, table_othsets.botnick, gettext ("You are now going to be disconnected from the hub in order for your new nick to apply: %s"):format (newn))
VH:Disconnect (oldn)
end

local rnewn = repsqlchars (newn)
local roldn = repsqlchars (oldn)
VH:SQLQuery ("update `reglist` set `nick` = '" .. rnewn .. "' where `nick` = '" .. roldn .. "' limit 1")
	VH:SQLQuery ("update `" .. tbl_sql.wm .. "` set `nick` = '" .. rnewn .. "' where `nick` = '" .. roldn .. "'")
VH:SQLQuery ("update `" .. tbl_sql.cust .. "` set `nick` = '" .. rnewn .. "' where `nick` = '" .. roldn .. "' limit 1")
VH:SQLQuery ("update `" .. tbl_sql.auth .. "` set `nick` = '" .. rnewn .. "' where `nick` = '" .. roldn .. "'") -- no limit
VH:SQLQuery ("update `" .. tbl_sql.chran .. "` set `nick` = '" .. rnewn .. "' where `nick` = '" .. roldn .. "' limit 1")
VH:SQLQuery ("update `" .. tbl_sql.opran .. "` set `nick` = '" .. rnewn .. "' where `nick` = '" .. roldn .. "' limit 1")
VH:SQLQuery ("update `" .. tbl_sql.shran .. "` set `nick` = '" .. rnewn .. "' where `nick` = '" .. roldn .. "' limit 1")
VH:SQLQuery ("update `" .. tbl_sql.off .. "` set `from` = '" .. rnewn .. "' where `from` = '" .. roldn .. "'") -- no limit
VH:SQLQuery ("update `" .. tbl_sql.news .. "` set `by` = '" .. rnewn .. "' where `by` = '" .. roldn .. "'") -- no limit
VH:SQLQuery ("update `" .. tbl_sql.rel .. "` set `by` = '" .. rnewn .. "' where `by` = '" .. roldn .. "'") -- no limit
VH:SQLQuery ("update `" .. tbl_sql.mchist .. "` set `realnick` = '" .. rnewn .. "' where `realnick` = '" .. roldn .. "'") -- no limit
VH:SQLQuery ("update `" .. tbl_sql.ophist .. "` set `nick` = '" .. rnewn .. "' where `nick` = '" .. roldn .. "'") -- no limit
commandanswer (nick, gettext ("Renamed account %s: %s"):format (oldn, newn))
opsnotify (table_sets.classnotireg, gettext ("%s with class %d renamed account %s: %s"):format (nick, cls, oldn, newn))
end
end

----- ---- --- -- -

function findreglist (nick, user)
	local _, rows = VH:SQLQuery ("select `nick`, `class` from `reglist` where `nick` like '%" .. repsqlchars (user) .. "%' order by `class` asc, `nick` asc")

	if rows > 0 then
		local list = ""

		for x = 0, rows - 1 do
			local _, reg, class = VH:SQLFetch (x)
			list = list .. " " .. prezero (# _tostring (rows), x + 1) .. ". " .. reg .. " @ " .. _tostring (class) .. "\r\n"
		end

		commandanswer (nick, gettext ("Registered users list results for %s"):format (user) .. ":\r\n\r\n" .. list)
	else
		commandanswer (nick, gettext ("No user results found."))
	end
end

----- ---- --- -- -

function statsreglist (nick)
	local _, rows = VH:SQLQuery ("select `class` from `reglist` order by `class` asc")

	if rows > 0 then
		local temp, ord, list, total = {}, {}, "", 0

		for x = 0, rows - 1 do
			local _, class = VH:SQLFetch (x)
			temp [class] = (temp [class] or 0) + 1
		end

		for k, v in pairs (temp) do
			table.insert (ord, {key = k, val = v})
		end

		table.sort (ord, function (a, b) return a.val > b.val end)

		for _, v in pairs (ord) do
			list = list .. " " .. gettext ("Class %d: %d"):format (v.key, v.val) .. "\r\n"
			total = total + v.val
		end

		commandanswer (nick, gettext ("Registered users list statistics") .. ":\r\n\r\n" .. list .. "\r\n " .. gettext ("Total count: %d"):format (total) .. "\r\n")
	else
		commandanswer (nick, gettext ("Registered users list is empty."))
	end
end

----- ---- --- -- -

function sendreglist (nick, line)
	local class, from, count = 1, 1, 100

	if line:match ("^%-%d %d+x%d+$") then
		class, from, count = line:match ("^(%-%d) (%d+)x(%d+)$")
	else
		class, from, count = line:match ("^(%d+) (%d+)x(%d+)$")
	end

	class = tonumber (class or 1) or 1
	from = tonumber (from or 1) or 1
	count = tonumber (count or 100) or 100

	if count < 1 then
		count = 1
	end

	if class == -1 or (class >= 1 and class <= 5) or class == 10 then
		local _, total = VH:SQLQuery ("select `class` from `reglist` where `class` = " .. _tostring (class))

		if total > 0 then
			if from <= 0 or from > total then
				commandanswer (nick, gettext ("You can't start at user number %d when you only have %d accounts with class %d."):format (from, total, class))
			else
				local _, rows = VH:SQLQuery ("select `nick`, `reg_date`, `pwd_change`, `login_last`, `enabled` from `reglist` where `class` = " .. _tostring (class) .. " order by `login_last` desc limit " .. _tostring (from - 1) .. ", " .. _tostring (count))

				if rows > 0 then
					local list = ""

					for x = 0, rows - 1 do
						local _, user, reg, pass, last, on = VH:SQLFetch (x)
						list = list .. " " .. prezero (# _tostring (rows), x + 1) .. ". [ R: " .. fromunixtime (reg, true, table_sets.longdateformat) .. " ] [ L: " .. fromunixtime (last, false, table_sets.longdateformat) .. " ] [ P: " .. _tostring (pass) .. " ] [ E: " .. _tostring (on) .. " ] [ O: " .. getstatus (user) .. " ] " .. user .. "\r\n"
					end

					commandanswer (nick, gettext ("Showing %d out of total %d accounts with class %d starting at user number %d"):format (rows, total, class, from) .. ":\r\n\r\n" .. list)
				end
			end
		else
			commandanswer (nick, gettext ("There are no accounts with class: %d"):format (class))
		end
	else
		commandanswer (nick, gettext ("Known classes are: %s"):format ("-1, 1, 2, 3, 4, 5 " .. gettext ("and") .. " 10"))
	end
end

----- ---- --- -- -

function delledouser (nick)
	local usr = repsqlchars (nick)
	VH:SQLQuery ("delete from `" .. tbl_sql.wm .. "` where `nick` = '" .. usr .. "'")
	VH:SQLQuery ("delete from `" .. tbl_sql.cust .. "` where `nick` = '" .. usr .. "' limit 1")
	VH:SQLQuery ("delete from `" .. tbl_sql.auth .. "` where `nick` = '" .. usr .. "'")
	VH:SQLQuery ("delete from `" .. tbl_sql.off .. "` where `from` = '" .. usr .. "'")
	VH:SQLQuery ("delete from `" .. tbl_sql.chran .. "` where `nick` = '" .. usr .. "' limit 1")
	VH:SQLQuery ("delete from `" .. tbl_sql.opran .. "` where `nick` = '" .. usr .. "' limit 1")
	VH:SQLQuery ("delete from `" .. tbl_sql.shran .. "` where `nick` = '" .. usr .. "' limit 1")
end

----- ---- --- -- -

function sendsay (nick, message, ucl)
	local _, _, user, message = message:find ("^(%S*) (.*)$")

	if user == table_sets.ledobotnick or user == table_othsets.botnick or user == table_othsets.opchatnick or user == nick or getclass (user) < ucl then
		opsnotify (table_sets.classnotisay, gettext ("%s with class %d sent say message: <%s> %s"):format (nick, ucl, user, message))
		VH:SendToClass ("<" .. user .. "> " .. message .. "|", 0, 10)
		addmchistoryline (user, nick, message)
	else
		opsnotify (table_sets.classnotisay, gettext ("%s with class %d had bad luck sending say message: <%s> %s"):format (nick, ucl, user, message))
		commandanswer (nick, gettext ("You can't talk from nick whose class is higher or equals your own."))
	end
end

----- ---- --- -- -

function donotifyconfig (nick, line, cls)
	local var, val = line:match ("^%s*(%S+)%s+(.*)$")
	local oval = getconfig (var)
	--local _, rows = VH:SQLQuery ("select `var` from `SetupList` where `file` = '" .. (VH.ConfName or "config") .. "' and `var` = '" .. repsqlchars (var) .. "' limit 1")

	if oval then
		opsnotify (table_sets.classnoticonfig, gettext ("%s with class %d changed configuration variable %s: %s => %s"):format (nick, cls, var, oval, val))
		oprankaccept (nick, cls)
	end
end

----- ---- --- -- -

function donotifyextconfig (nick, line, cls)
	local cfg, var, val = line:match ("^%s*%[(%S+)%]%s+(%S+)%s+(.*)$")
	opsnotify (table_sets.classnoticonfig, gettext ("%s with class %d changed configuration variable %s: %s => %s"):format (nick, cls, var .. " @ " .. cfg, (getextconfig (cfg, var) or ""), val))
	oprankaccept (nick, cls)
end

----- ---- --- -- -

function donotifycmd (nick, data, micl, class)
	if table_sets.classnoticom == 11 then
		return
	end

	local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.cmdex .. "`")

	if rows > 0 then
		for row = 0, rows - 1 do
			local _, lre = VH:SQLFetch (row)

			if repnmdcinchars (data):match (lre) then
				VH:SQLQuery ("update `" .. tbl_sql.cmdex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (lre) .. "'")
				return
			end
		end
	end

	local addr = getip (nick)
	local send = gettext ("%s with IP %s and class %d used following command: %s"):format (nick, addr .. tryipcc (addr, nick), class, data)

	if micl == 0 then
		VH:SendPMToAll ("[" .. prezero (2, table_sets.classnoticom) .. "] " .. send, table_othsets.feednick, table_sets.classnoticom, 10)
	else
		VH:SendPMToAll ("[" .. prezero (2, micl) .. "] " .. send, table_othsets.feednick, micl, 10)
	end

	if table_sets.histbotmsg == 1 then -- table_sets.addledobot == 0 and table_sets.useextrafeed == 0
		if micl == 0 then
			addophistoryline (table_othsets.feednick, send, table_sets.classnoticom)
		else
			addophistoryline (table_othsets.feednick, send, micl)
		end
	end
end

----- ---- --- -- -

function savecmdlog (nick, cls, cmd, isop)
if table_sets.enablecmdlog == 0 then return end
if table_sets.enablecmdlog == 1 and not isop then return end
local ucmd = cmd

if ucmd:find ("^." .. table_cmnds.offmsg .. " %S+ .+$") then -- skip sensitive data
	local _, _, par = ucmd:find ("^." .. table_cmnds.offmsg .. " (%S+) .+$")
	ucmd = getconfig ("cmd_start_user"):sub (1, 1) .. table_cmnds.offmsg .. " " .. par .. " <" .. gettext ("message") .. ">"

elseif ucmd:find ("^" .. table_othsets.ustrig .. "msgsend%s+%S+ .+$") then
	local _, _, par = ucmd:find ("^" .. table_othsets.ustrig .. "msgsend%s+(%S+) .+$")
	ucmd = getconfig ("cmd_start_user"):sub (1, 1) .. "msgsend " .. par .. " <" .. gettext ("message") .. ">"

elseif ucmd:find ("^" .. table_othsets.optrig .. "rpass%s+%S+ .+$") then
	local _, _, par = ucmd:find ("^" .. table_othsets.optrig .. "rpass%s+(%S+) .+$")
	ucmd = getconfig ("cmd_start_op"):sub (1, 1) .. "rpass " .. par .. " <" .. gettext ("password") .. ">"

elseif ucmd:find ("^" .. table_othsets.optrig .. "rpasswd%s+%S+ .+$") then
	local _, _, par = ucmd:find ("^" .. table_othsets.optrig .. "rpasswd%s+(%S+) .+$")
	ucmd = getconfig ("cmd_start_op"):sub (1, 1) .. "rpasswd " .. par .. " <" .. gettext ("password") .. ">"

elseif ucmd:find ("^" .. table_othsets.optrig .. "regpass%s+%S+ .+$") then
	local _, _, par = ucmd:find ("^" .. table_othsets.optrig .. "regpass%s+(%S+) .+$")
	ucmd = getconfig ("cmd_start_op"):sub (1, 1) .. "regpass " .. par .. " <" .. gettext ("password") .. ">"

elseif ucmd:find ("^" .. table_othsets.optrig .. "regpasswd%s+%S+ .+$") then
	local _, _, par = ucmd:find ("^" .. table_othsets.optrig .. "regpasswd%s+(%S+) .+$")
	ucmd = getconfig ("cmd_start_op"):sub (1, 1) .. "regpasswd " .. par .. " <" .. gettext ("password") .. ">"

elseif ucmd:find ("^" .. table_othsets.ustrig .. "passwd%s+.+$") then
	ucmd = getconfig ("cmd_start_user"):sub (1, 1) .. "passwd <" .. gettext ("password") .. ">"

elseif ucmd:find ("^" .. table_othsets.ustrig .. "regme%s+.+$") then
	ucmd = getconfig ("cmd_start_user"):sub (1, 1) .. "regme <" .. gettext ("password") .. ">"
end

VH:SQLQuery ("insert into `" .. tbl_sql.clog .. "` (`time`, `nick`, `class`, `command`) values (" .. (os.time () + table_sets.srvtimediff) .. ", '" .. repsqlchars (nick) .. "', " .. cls .. ", '" .. repsqlchars (ucmd) .. "')")
end

----- ---- --- -- -

function sendlivecc (nick)
if not table_refu.GetUserCC then
	commandanswer (nick, gettext ("This feature requires %s or later installed on your system."):format ("Verlihub 0.9.8e"))
else
	local ccs, cnt = {}, 0

	for usr in getnicklist ():gmatch ("([^$]+)%$%$") do
		if not isbot (usr) then
			local cc = getcc (usr)

			if cc then
				if cc == "--" then cc = "??" end -- small change
				ccs [cc] = (ccs [cc] or 0) + 1
				cnt = cnt + 1
			end
		end
	end

	if cnt > 0 then
		commandanswer (nick, gettext ("Live user location statistics by country") .. ":\r\n\r\n" .. genccstats (ccs, cnt) .. "\r\n\t" .. gettext ("Total count: %d"):format (cnt) .. "\r\n")
	else -- empty
		commandanswer (nick, gettext ("No users in the hub."))
	end
end
end

----- ---- --- -- -

function sendlivecity (nick, cc)
	if not table_refu.GetUserCC or not table_refu.GetUserCity then
		commandanswer (nick, gettext ("This feature requires %s or later installed on your system."):format ("Verlihub 1.0.0"))
	else
		local list, count, ucc = {}, 0, cc:upper ()

		for user in getnicklist ():gmatch ("([^$]+)%$%$") do
			if not isbot (user) then
				local code = getcc (user)

				if code and (code == ucc) then
					local city = getusercity (user)

					if city then
						if city == "--" then city = "??" end -- small change
						list [city] = (list [city] or 0) + 1
						count = count + 1
					end
				end
			end
		end

		if count > 0 then
			commandanswer (nick, gettext ("Live user location statistics by city from %s=%s"):format (ucc, (cc_names [ucc] or gettext ("Unknown country"))) .. ":\r\n\r\n" .. gencitystats (list, count) .. "\r\n\t" .. gettext ("Total count: %d"):format (count) .. "\r\n")
		else -- empty
			commandanswer (nick, gettext ("No users in the hub from: %s=%s"):format (ucc, cc_names [ucc] or gettext ("Unknown country")))
		end
	end
end

----- ---- --- -- -

function sendhistcc (nick)
if not table_refu.GetUserCC then
	commandanswer (nick, gettext ("This feature requires %s or later installed on your system."):format ("Verlihub 0.9.8e"))
else
	local _, rows = VH:SQLQuery ("select `cc` from `" .. tbl_sql.ccstat .. "`")

	if rows > 0 then
		local ccs = {}

		for x = 0, rows - 1 do
			local _, cc = VH:SQLFetch (x)
			if cc == "--" then cc = "??" end -- small change
			ccs [cc] = (ccs [cc] or 0) + 1
		end

		commandanswer (nick, gettext ("All time user location statistics") .. ":\r\n\r\n" .. genccstats (ccs, rows) .. "\r\n\t" .. gettext ("Total count since %s: %d"):format (fromunixtime ((getledoconf ("date_ccstats") or os.time () + table_sets.srvtimediff), true), rows) .. "\r\n")
	else -- empty
		commandanswer (nick, gettext ("User location statistics table is empty."))
	end
end
end

----- ---- --- -- -

function genccstats (tbl, cnt)
local tmp = {}

for k, v in pairs (tbl) do
	table.insert (tmp, {key = k, val = v})
end

table.sort (tmp, function (a, b) return a.val > b.val end) -- sorting order
local ilen = # tmp [1].val -- first highest value
local stats = ""

for _, v in pairs (tmp) do
	stats = stats .. "\t" .. prezero (ilen, v.val) .. "   ~   " .. prezero (5, string.format ("%." .. (2) .. "f", (v.val / cnt * 100))) .. "%   ~   [ " .. v.key .. "   ~   " .. (cc_names [v.key] or gettext ("Unknown country")) .. " ]\r\n"
end

return stats
end

----- ---- --- -- -

function gencitystats (list, count)
	local temp = {}

	for k, v in pairs (list) do
		table.insert (temp, {key = k, val = v})
	end

	table.sort (temp, function (a, b) return a.val > b.val end) -- sorting order
	local num = # temp [1].val -- first highest value
	local stats = ""

	for _, v in pairs (temp) do
		stats = stats .. "\t" .. prezero (num, v.val) .. "   ~   " .. prezero (5, string.format ("%." .. 2 .. "f", (v.val / count * 100))) .. "%   ~   [ " .. v.key .. " ]\r\n"
	end

	return stats
end

----- ---- --- -- -

function installusermenu (usr)
	if table_sets.instusermenu == 0 then
		return
	end

	local ucl = getclass (usr)

	if ucl < 0 then
		return
	end

	if table_refu.InUserSupports then -- check if client supports user commands
		local on, has = VH:InUserSupports (usr, "UserCommand")

		if on and has and tonumber (has) == 0 then
			return
		end
	end

-- antispam

if ucl >= table_sets.mincommandclass then
	sopmenitm (usr, gettext ("Antispam") .. "\\" .. gettext ("Add antispam entry"), table_cmnds.antiadd .. " %[line:<" .. gettext ("lre") .. ">] %[line:<" .. gettext ("priority") .. ">] %[line:<" .. gettext ("action") .. ">] %[line:<" .. gettext ("flags") .. ">]")
sopmenitm (usr, gettext ("Antispam") .. "\\" .. gettext ("Antispam list"), table_cmnds.antilist)
smensep (usr)
sopmenitm (usr, gettext ("Antispam") .. "\\" .. gettext ("Delete antispam entry"), table_cmnds.antidel .. " %[line:<" .. gettext ("lre") .. ">]")
smensep (usr)
sopmenitm (usr, gettext ("Antispam") .. "\\" .. gettext ("Add antispam exception entry"), table_cmnds.antiexadd .. " %[line:<" .. gettext ("lre") .. ">]")
sopmenitm (usr, gettext ("Antispam") .. "\\" .. gettext ("Antispam exception list"), table_cmnds.antiexlist)
smensep (usr)
sopmenitm (usr, gettext ("Antispam") .. "\\" .. gettext ("Delete antispam exception entry"), table_cmnds.antiexdel .. " %[line:<" .. gettext ("lre") .. ">]")
end

	-- search filter
	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("Search filter") .. "\\" .. gettext ("Add search filter"), table_cmnds.sefiadd .. " %[line:<" .. gettext ("lre") .. ">] %[line:<" .. gettext ("priority") .. ">] %[line:<" .. gettext ("action") .. ">] %[line:<" .. gettext ("type") .. ">]")
		sopmenitm (usr, gettext ("Search filter") .. "\\" .. gettext ("Search filter list"), table_cmnds.sefilist)
		smensep (usr)
		sopmenitm (usr, gettext ("Search filter") .. "\\" .. gettext ("Delete search filter"), table_cmnds.sefidel .. " %[line:<" .. gettext ("lre") .. ">]")
		smensep (usr)
		sopmenitm (usr, gettext ("Search filter") .. "\\" .. gettext ("Add search filter exception entry"), table_cmnds.sefiexadd .. " %[line:<" .. gettext ("lre") .. ">]")
		sopmenitm (usr, gettext ("Search filter") .. "\\" .. gettext ("Search filter exception list"), table_cmnds.sefiexlist)
		smensep (usr)
		sopmenitm (usr, gettext ("Search filter") .. "\\" .. gettext ("Delete search filter exception entry"), table_cmnds.sefiexdel .. " %[line:<" .. gettext ("lre") .. ">]")
		smensep (usr)
		sopmenitm (usr, gettext ("Search filter") .. "\\" .. gettext ("Search filter block list"), table_cmnds.sefibllist)
		smensep (usr)
		sopmenitm (usr, gettext ("Search filter") .. "\\" .. gettext ("Delete search filter block list entry"), table_cmnds.sefibldel .. " %[line:<" .. gettext ("nick") .. ">]")
	end

	-- myinfo check
	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("MyINFO check") .. "\\" .. gettext ("Add MyINFO entry"), table_cmnds.myinfadd .. " %[line:<" .. gettext ("type") .. ">] %[line:<" .. gettext ("lre") .. ">]")
		sopmenitm (usr, gettext ("MyINFO check") .. "\\" .. gettext ("MyINFO list"), table_cmnds.myinflist .. " %[line:<" .. gettext ("type") .. ">]")
		smensep (usr)
		sopmenitm (usr, gettext ("MyINFO check") .. "\\" .. gettext ("Delete MyINFO entry"), table_cmnds.myinfdel .. " %[line:<" .. gettext ("type") .. ">] %[line:<" .. gettext ("lre") .. ">]")
	end

-- protection list

if ucl >= table_sets.mincommandclass then
sopmenitm (usr, gettext ("Protection list") .. "\\" .. gettext ("Add protection entry"), table_cmnds.protadd .. " %[line:<" .. gettext ("lre") .. ">]")
sopmenitm (usr, gettext ("Protection list") .. "\\" .. gettext ("Protection list"), table_cmnds.protlist)
smensep (usr)
sopmenitm (usr, gettext ("Protection list") .. "\\" .. gettext ("Delete protection entry"), table_cmnds.protdel .. " %[line:<" .. gettext ("lre") .. ">]")
end

-- authorization

if ucl >= table_sets.mincommandclass then
sopmenitm (usr, gettext ("Authorization") .. "\\" .. gettext ("Add IP authorization entry"), table_cmnds.authadd .. " %[line:<" .. gettext ("nick") .. ">] %[line:<" .. gettext ("lre") .. ">]")
sopmenitm (usr, gettext ("Authorization") .. "\\" .. gettext ("Modify IP authorization entry"), table_cmnds.authmod .. " %[line:<" .. gettext ("identifier") .. ">] %[line:<" .. gettext ("lre") .. ">]")
sopmenitm (usr, gettext ("Authorization") .. "\\" .. gettext ("IP authorization list"), table_cmnds.authlist)
smensep (usr)
sopmenitm (usr, gettext ("Authorization") .. "\\" .. gettext ("Delete authorization entry"), table_cmnds.authdel .. " %[line:<" .. gettext ("identifier") .. ">]")
end

-- ranks

if ucl >= table_sets.chatrankclass then
susmenitm (usr, gettext ("Ranks") .. "\\" .. gettext ("Top %d chat rankers"):format (table_sets.ranklimit), table_cmnds.chatranks)
susmenitm (usr, gettext ("Ranks") .. "\\" .. gettext ("Your chat rank"), table_cmnds.mychatrank)
smensep (usr)
end

if ucl >= table_sets.sharerankclass then
susmenitm (usr, gettext ("Ranks") .. "\\" .. gettext ("Top %d share rankers"):format (table_sets.ranklimit), table_cmnds.shareranks)
susmenitm (usr, gettext ("Ranks") .. "\\" .. gettext ("Your share rank"), table_cmnds.mysharerank)
smensep (usr)
end

if ucl >= table_sets.oprankclass then
susmenitm (usr, gettext ("Ranks") .. "\\" .. gettext ("Top %d operator rankers"):format (table_sets.ranklimit), table_cmnds.opranks)

if ucl >= 3 then
sopmenitm (usr, gettext ("Ranks") .. "\\" .. gettext ("Your operator rank"), table_cmnds.myoprank)
end

smensep (usr)
end

if ucl >= table_sets.searrankclass then
susmenitm (usr, gettext ("Ranks") .. "\\" .. gettext ("Top %d search requests"):format (table_sets.ranklimit), table_cmnds.searranks)
smensep (usr)
end

if ucl >= table_sets.wordrankclass then
susmenitm (usr, gettext ("Ranks") .. "\\" .. gettext ("Top %d used words"):format (table_sets.ranklimit), table_cmnds.wordranks)
smensep (usr)
end

	if ucl >= table_sets.ccstatsclass then
		susmenitm (usr, gettext ("Ranks") .. "\\" .. gettext ("Live user location statistics by country"), table_cmnds.cclive)
		susmenitm (usr, gettext ("Ranks") .. "\\" .. gettext ("Live user location statistics by city"), table_cmnds.citylive .. " %[line:<" .. gettext ("cc") .. ">]")
		susmenitm (usr, gettext ("Ranks") .. "\\" .. gettext ("All time user location statistics"), table_cmnds.cchist)
	end

if ucl >= table_sets.mincommandclass then
smensep (usr)
sopmenitm (usr, gettext ("Ranks") .. "\\" .. gettext ("Add rank exception"), table_cmnds.ranexadd .. " %[line:<" .. gettext ("nick") .. ">]")
sopmenitm (usr, gettext ("Ranks") .. "\\" .. gettext ("Rank exception list"), table_cmnds.ranexlist)
smensep (usr)
sopmenitm (usr, gettext ("Ranks") .. "\\" .. gettext ("Delete rank exception"), table_cmnds.ranexdel .. " %[line:<" .. gettext ("nick") .. ">]")
smensep (usr)
sopmenitm (usr, gettext ("Ranks") .. "\\" .. gettext ("Remove user or word from rank list"), table_cmnds.randel .. " %[line:<" .. gettext ("type") .. ">] %[line:<" .. gettext ("value") .. ">]")
sopmenitm (usr, gettext ("Ranks") .. "\\" .. gettext ("Clean up ranks"), table_cmnds.ranclean .. " %[line:<" .. gettext ("type") .. ">] %[line:<" .. gettext ("limit") .. ">]")
end

-- welcome messages

if ucl >= table_sets.mincommandclass then
sopmenitm (usr, gettext ("Welcome messages") .. "\\" .. gettext ("Force welcome message for user"), table_cmnds.wmforce .. " %[line:<" .. gettext ("type") .. ">] %[line:<" .. gettext ("nick") .. ">] %[line:<" .. gettext ("message") .. ">]")
--sopmenitm (usr, gettext ("Welcome messages") .. "\\" .. gettext ("Force welcome message for user"), table_cmnds.wmforce .. " %[line:<" .. gettext ("type") .. ">] %[line:<" .. gettext ("nick") .. ">]")
sopmenitm (usr, gettext ("Welcome messages") .. "\\" .. gettext ("Welcome message list"), table_cmnds.wmlist)
smensep (usr)
sopmenitm (usr, gettext ("Welcome messages") .. "\\" .. gettext ("Delete user and his welcome messages"), table_cmnds.wmdel .. " %[line:<" .. gettext ("nick") .. ">]")
end

if ucl >= table_sets.welcomeclass then
if ucl >= table_sets.mincommandclass then
smensep (usr)
end

susmenitm (usr, gettext ("Welcome messages") .. "\\" .. gettext ("Set your welcome message"), table_cmnds.wmset .. " %[line:<" .. gettext ("type") .. ">] %[line:<" .. gettext ("message") .. ">]")
--susmenitm (usr, gettext ("Welcome messages") .. "\\" .. gettext ("Set your welcome message"), table_cmnds.wmset .. " %[line:<" .. gettext ("type") .. ">]")
susmenitm (usr, gettext ("Welcome messages") .. "\\" .. gettext ("Show your welcome messages"), table_cmnds.wmshow)
end

	-- chatrooms
	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("Chatrooms") .. "\\" .. gettext ("Add chatroom"), table_cmnds.chatadd .. " %[line:<" .. gettext ("nick") .. ">] %[line:<" .. gettext ("description") .. ">] %[line:<" .. gettext ("minclass") .. ">] %[line:<" .. gettext ("maxclass") .. ">] %[line:<" .. gettext ("cc") .. ">]")
		sopmenitm (usr, gettext ("Chatrooms") .. "\\" .. gettext ("Chatroom list"), table_cmnds.chatlist)
		smensep (usr)
		sopmenitm (usr, gettext ("Chatrooms") .. "\\" .. gettext ("Delete chatroom"), table_cmnds.chatdel .. " %[line:<" .. gettext ("nick") .. ">]")
		smensep (usr)
		sopmenitm (usr, gettext ("Chatrooms") .. "\\" .. gettext ("Add automatic country chatroom entrance"), table_cmnds.acreadd .. " %[line:<" .. gettext ("cc") .. ">] %[line:<" .. gettext ("nick") .. ">]")
		sopmenitm (usr, gettext ("Chatrooms") .. "\\" .. gettext ("Automatic country chatroom entrance list"), table_cmnds.acrelist)
		smensep (usr)
		sopmenitm (usr, gettext ("Chatrooms") .. "\\" .. gettext ("Delete automatic country chatroom entrance"), table_cmnds.acredel .. " %[line:<" .. gettext ("identifier") .. ">]")
	end

-- reminders

if ucl >= table_sets.mincommandclass then
sopmenitm (usr, gettext ("Reminders") .. "\\" .. gettext ("Add reminder"), table_cmnds.remadd .. " %[line:<" .. gettext ("identifier") .. ">] %[line:<" .. gettext ("content") .. ">] %[line:<" .. gettext ("minclass") .. ">] %[line:<" .. gettext ("maxclass") .. ">] %[line:<" .. gettext ("destination") .. ">] %[line:<" .. gettext ("interval") .. ">]")
sopmenitm (usr, gettext ("Reminders") .. "\\" .. gettext ("Reminder list"), table_cmnds.remlist)
sopmenitm (usr, gettext ("Reminders") .. "\\" .. gettext ("Reminder preview"), table_cmnds.remshow .. " %[line:<" .. gettext ("identifier") .. ">]")
smensep (usr)
sopmenitm (usr, gettext ("Reminders") .. "\\" .. gettext ("Delete reminder"), table_cmnds.remdel .. " %[line:<" .. gettext ("identifier") .. ">]")
end

	-- triggers
	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("Triggers") .. "\\" .. gettext ("Add trigger"), table_cmnds.trigadd .. " %[line:<" .. gettext ("identifier") .. ">] \"%[line:<" .. gettext ("content") .. ">]\" %[line:<" .. gettext ("minclass") .. ">] %[line:<" .. gettext ("maxclass") .. ">]")
		sopmenitm (usr, gettext ("Triggers") .. "\\" .. gettext ("Trigger list"), table_cmnds.triglist)
		smensep (usr)
		sopmenitm (usr, gettext ("Triggers") .. "\\" .. gettext ("Delete trigger"), table_cmnds.trigdel .. " %[line:<" .. gettext ("identifier") .. ">]")
	end

	-- no pm
	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("Blocked PM") .. "\\" .. gettext ("Add blocked PM entry"), table_cmnds.nopmadd .. " %[line:<" .. gettext ("nick") .. ">] %[line:<" .. gettext ("action") .. ">] %[line:<" .. gettext ("maxclass") .. ">] %[line:<" .. gettext ("reason") .. ">]")
		sopmenitm (usr, gettext ("Blocked PM") .. "\\" .. gettext ("List of blocked PM entries"), table_cmnds.nopmlist)
		smensep (usr)
		sopmenitm (usr, gettext ("Blocked PM") .. "\\" .. gettext ("Delete blocked PM entry"), table_cmnds.nopmdel .. " %[line:<" .. gettext ("nick") .. ">]")
	end

	-- right click menu
	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("Right click menu") .. "\\" .. gettext ("Add right click menu item"), table_cmnds.rcmenuadd .. " \"%[line:<" .. gettext ("menu") .. ">]\" \"%[line:<" .. gettext ("command") .. ">]\" %[line:<" .. gettext ("type") .. ">] %[line:<" .. gettext ("context") .. ">] %[line:<" .. gettext ("order") .. ">] %[line:<" .. gettext ("minclass") .. ">] %[line:<" .. gettext ("maxclass") .. ">]")
		sopmenitm (usr, gettext ("Right click menu") .. "\\" .. gettext ("List of right click menu items"), table_cmnds.rcmenulist)
		smensep (usr)
		sopmenitm (usr, gettext ("Right click menu") .. "\\" .. gettext ("Reorder right click menu item"), table_cmnds.rcmenuord .. " %[line:<" .. gettext ("identifier") .. ">] %[line:<" .. gettext ("order") .. ">]")
		sopmenitm (usr, gettext ("Right click menu") .. "\\" .. gettext ("Disable or enable right click menu item"), table_cmnds.rcmenuoff .. " %[line:<" .. gettext ("identifier") .. ">]")
		smensep (usr)
		sopmenitm (usr, gettext ("Right click menu") .. "\\" .. gettext ("Delete right click menu item"), table_cmnds.rcmenudel .. " %[line:<" .. gettext ("identifier") .. ">]")
	end

	-- ip watch
	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("IP watch") .. "\\" .. gettext ("Add IP watch entry"), table_cmnds.ipwatadd .. " %[line:<" .. gettext ("lre") .. ">] \"%[line:<" .. gettext ("reason") .. ">]\" %[line:<" .. gettext ("result") .. ">]")
		sopmenitm (usr, gettext ("IP watch") .. "\\" .. gettext ("List of IP watch entries"), table_cmnds.ipwatlist)
		smensep (usr)
		sopmenitm (usr, gettext ("IP watch") .. "\\" .. gettext ("Delete IP watch entry"), table_cmnds.ipwatdel .. " %[line:<" .. gettext ("lre") .. ">]")
	end

	-- hard ip ban
	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("Hard IP bans") .. "\\" .. gettext ("Add hard IP ban entry"), table_cmnds.hban .. " %[line:<" .. gettext ("lre") .. ">] \"%[line:<" .. gettext ("reason") .. ">]\"")
		sopmenitm (usr, gettext ("Hard IP bans") .. "\\" .. gettext ("List of hard IP ban entries"), table_cmnds.hbans)
		smensep (usr)
		sopmenitm (usr, gettext ("Hard IP bans") .. "\\" .. gettext ("Delete hard IP ban entry"), table_cmnds.hunban .. " %[line:<" .. gettext ("lre") .. ">]")
	end

	-- hub news
	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("Hub news") .. "\\" .. gettext ("Add news item"), table_cmnds.newsadd .. " %[line:<" .. gettext ("string") .. ">]")
		smensep (usr)
		sopmenitm (usr, gettext ("Hub news") .. "\\" .. gettext ("Delete news items"), table_cmnds.newsdel .. " %[line:<" .. gettext ("date") .. ">]")
	end

	if ucl >= table_sets.newsclass then
		if ucl >= table_sets.mincommandclass then
			smensep (usr)
		end

		susmenitm (usr, gettext ("Hub news") .. "\\" .. gettext ("Read hub news"), table_cmnds.hubnews .. " %[line:<" .. gettext ("lines") .. ">]")
	end

	-- chat replacer

	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("Chat replacer") .. "\\" .. gettext ("Add chat replacer"), table_cmnds.repladd .. " \"%[line:<" .. gettext ("lre") .. ">]\" \"%[line:<" .. gettext ("replace") .. ">]\" %[line:<" .. gettext ("maxclass") .. ">] %[line:<" .. gettext ("flags") .. ">]")
		sopmenitm (usr, gettext ("Chat replacer") .. "\\" .. gettext ("Chat replacer list"), table_cmnds.repllist)
		smensep (usr)
		sopmenitm (usr, gettext ("Chat replacer") .. "\\" .. gettext ("Delete chat replacer"), table_cmnds.repldel .. " %[line:<" .. gettext ("identifier") .. ">]")
		smensep (usr)
		sopmenitm (usr, gettext ("Chat replacer") .. "\\" .. gettext ("Add chat replacer exception"), table_cmnds.replexadd .. " %[line:<" .. gettext ("item") .. ">] %[line:<" .. gettext ("type") .. ">]")
		sopmenitm (usr, gettext ("Chat replacer") .. "\\" .. gettext ("Chat replacer exception list"), table_cmnds.replexlist)
		smensep (usr)
		sopmenitm (usr, gettext ("Chat replacer") .. "\\" .. gettext ("Delete chat replacer exception"), table_cmnds.replexdel .. " %[line:<" .. gettext ("item") .. ">]")
	end

	-- chat responder

	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("Chat responder") .. "\\" .. gettext ("Add chat responder"), table_cmnds.respadd .. " \"%[line:<" .. gettext ("lre") .. ">]\" \"%[line:<" .. gettext ("reply") .. ">]\" %[line:<" .. gettext ("maxclass") .. ">]")
		sopmenitm (usr, gettext ("Chat responder") .. "\\" .. gettext ("Main chat responder list"), table_cmnds.resplist)
		smensep (usr)
		sopmenitm (usr, gettext ("Chat responder") .. "\\" .. gettext ("Delete chat responder"), table_cmnds.respdel .. " %[line:<" .. gettext ("identifier") .. ">]")
		smensep (usr)
		sopmenitm (usr, gettext ("Chat responder") .. "\\" .. gettext ("Add chat responder exception"), table_cmnds.respexadd .. " %[line:<" .. gettext ("nick") .. " " .. gettext ("or") .. " " .. gettext ("ip") .. ">]")
		sopmenitm (usr, gettext ("Chat responder") .. "\\" .. gettext ("Chat responder exception list"), table_cmnds.respexlist)
		smensep (usr)
		sopmenitm (usr, gettext ("Chat responder") .. "\\" .. gettext ("Delete chat responder exception"), table_cmnds.respexdel .. " %[line:<" .. gettext ("nick") .. " " .. gettext ("or") .. " " .. gettext ("ip") .. ">]")
	end

	-- releases

	if ucl >= table_sets.relmodclass then
		susmenitm (usr, gettext ("Releases") .. "\\" .. gettext ("Add new release"), table_cmnds.reladd .. " \"%[line:<" .. gettext ("name") .. ">]\" \"%[line:<" .. gettext ("category") .. ">]\" %[line:<" .. gettext ("tth") .. ">]")
		--susmenitm (usr, gettext ("Releases") .. "\\" .. gettext ("Add new release"), table_cmnds.reladd .. " \"%[line:<" .. gettext ("name") .. ">]\" \"%[line:<" .. gettext ("category") .. ">]\"")
		smensep (usr)
		susmenitm (usr, gettext ("Releases") .. "\\" .. gettext ("Delete releases"), table_cmnds.reldel .. " %[line:<" .. gettext ("type") .. ">] %[line:<" .. gettext ("name") .. ">]")
	end

	if ucl >= table_sets.reluseclass then
		if ucl >= table_sets.relmodclass then
			smensep (usr)
		end

		susmenitm (usr, gettext ("Releases") .. "\\" .. gettext ("List of available releases"), table_cmnds.rellist .. " %[line:<" .. gettext ("type") .. ">] %[line:<" .. gettext ("lines") .. ">] %[line:<" .. gettext ("category") .. " " .. gettext ("or") .. " " .. gettext ("publisher") .. ">]")
		--susmenitm (usr, gettext ("Releases") .. "\\" .. gettext ("List of available releases"), table_cmnds.rellist .. " %[line:<" .. gettext ("type") .. ">] %[line:<" .. gettext ("lines") .. ">]")
		susmenitm (usr, gettext ("Releases") .. "\\" .. gettext ("Find release by name or category"), table_cmnds.relfind .. " %[line:<" .. gettext ("name") .. ">]")
	end

-- offline messenger

if ucl >= table_sets.mincommandclass then
sopmenitm (usr, gettext ("Offline messenger") .. "\\" .. gettext ("List stored offline messages"), table_cmnds.offlist)
smensep (usr)
sopmenitm (usr, gettext ("Offline messenger") .. "\\" .. gettext ("Delete offline messages by date"), table_cmnds.offdel .. " %[line:<" .. gettext ("date") .. ">]")
sopmenitm (usr, gettext ("Offline messenger") .. "\\" .. gettext ("Delete all offline messages"), table_cmnds.offclean)
end

if ucl >= table_sets.offmsgclass then
if ucl >= table_sets.mincommandclass then
smensep (usr)
end

susmenitm (usr, gettext ("Offline messenger") .. "\\" .. gettext ("Offline message to user"), table_cmnds.offmsg .. " %[line:<" .. gettext ("nick") .. ">] %[line:<" .. gettext ("message") .. ">]")
end

	-- chat history

	if ucl >= table_sets.mchistclass and table_sets.histlimit > 0 then
		susmenitm (usr, gettext ("Chat history") .. "\\" .. gettext ("Main chat history"), table_cmnds.history .. " %[line:<" .. gettext ("lines") .. ">]")
		susmenitm (usr, gettext ("Chat history") .. "\\" .. gettext ("Your main chat history"), table_cmnds.myhistory .. " %[line:<" .. gettext ("lines") .. ">]")
	end

	if ucl >= 3 then
		if ucl >= table_sets.mchistclass then
			smensep (usr)
		end

		sopmenitm (usr, gettext ("Chat history") .. "\\" .. gettext ("Operator chat history"), table_cmnds.ophistory .. " %[line:<" .. gettext ("lines") .. ">]")
	end

	if ucl >= table_sets.mincommandclass then
		if ucl >= table_sets.mchistclass or ucl >= 3 then
			smensep (usr)
		end

		sopmenitm (usr, gettext ("Chat history") .. "\\" .. gettext ("Delete history messages by text"), table_cmnds.histdel .. " %[line:<" .. gettext ("text") .. ">]")
		sopmenitm (usr, gettext ("Chat history") .. "\\" .. gettext ("Delete all history messages"), table_cmnds.histclean)
	end

-- commands

if ucl >= table_sets.mincommandclass then
sopmenitm (usr, gettext ("Commands") .. "\\" .. gettext ("Customize script command"), table_cmnds.cmndset .. " %[line:<" .. gettext ("command") .. ">] %[line:<" .. gettext ("command") .. ">]")
sopmenitm (usr, gettext ("Commands") .. "\\" .. gettext ("Show custom script commands"), table_cmnds.cmndshow)
smensep (usr)
sopmenitm (usr, gettext ("Commands") .. "\\" .. gettext ("Reset all custom commands"), table_cmnds.cmndreset)
smensep (usr)
sopmenitm (usr, gettext ("Commands") .. "\\" .. gettext ("Command logger"), table_cmnds.clog .. " %[line:<" .. gettext ("lines") .. ">]")
smensep (usr)
sopmenitm (usr, gettext ("Commands") .. "\\" .. gettext ("Add command permission"), table_cmnds.cmndadd .. " %[line:<" .. gettext ("lre") .. ">] %[line:<" .. gettext ("class") .. ">]")
sopmenitm (usr, gettext ("Commands") .. "\\" .. gettext ("Command permission list"), table_cmnds.cmndlist)
smensep (usr)
sopmenitm (usr, gettext ("Commands") .. "\\" .. gettext ("Delete command permission"), table_cmnds.cmnddel .. " %[line:<" .. gettext ("lre") .. ">]")
smensep (usr)
sopmenitm (usr, gettext ("Commands") .. "\\" .. gettext ("Add command notification exception"), table_cmnds.cmndexadd .. " %[line:<" .. gettext ("lre") .. ">]")
sopmenitm (usr, gettext ("Commands") .. "\\" .. gettext ("Command notification exception list"), table_cmnds.cmndexlist)
smensep (usr)
sopmenitm (usr, gettext ("Commands") .. "\\" .. gettext ("Delete command notification exception"), table_cmnds.cmndexdel .. " %[line:<" .. gettext ("lre") .. ">]")
end

	-- custom nicks

	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("Custom nicks") .. "\\" .. gettext ("Force custom nick for user"), table_cmnds.rename .. " %[line:<" .. gettext ("real") .. ">] %[line:<" .. gettext ("nick") .. ">]")
		smensep (usr)
		sopmenitm (usr, gettext ("Custom nicks") .. "\\" .. gettext ("Delete custom nick"), table_cmnds.custdel .. " %[line:<" .. gettext ("nick") .. ">]")
	end

	if ucl >= table_sets.custnickclass then
		if ucl >= table_sets.mincommandclass then
			smensep (usr)
		end

		susmenitm (usr, gettext ("Custom nicks") .. "\\" .. gettext ("Set custom nick for yourself"), table_cmnds.nick .. " %[line:<" .. gettext ("nick") .. ">]")
		--susmenitm (usr, gettext ("Custom nicks") .. "\\" .. gettext ("Reset your custom nick"), table_cmnds.nick)
	end

	if ucl >= table_sets.custlistclass then
		susmenitm (usr, gettext ("Custom nicks") .. "\\" .. gettext ("Get user's real nick"), table_cmnds.realnick .. " %[line:<" .. gettext ("nick") .. ">]")
		susmenitm (usr, gettext ("Custom nicks") .. "\\" .. gettext ("Custom nick list"), table_cmnds.custlist)
	end

-- registered users

if ucl >= table_sets.mincommandclass then
sopmenitm (usr, gettext ("Registered users") .. "\\" .. gettext ("Change nick of a registered user"), table_cmnds.regname .. " %[line:<" .. gettext ("nick") .. ">] %[line:<" .. gettext ("nick") .. ">]")
sopmenitm (usr, gettext ("Registered users") .. "\\" .. gettext ("List of registered users by class"), table_cmnds.reglist .. " %[line:<" .. gettext ("class") .. ">] %[line:<" .. gettext ("offset") .. ">]")
sopmenitm (usr, gettext ("Registered users") .. "\\" .. gettext ("Search in registered users list"), table_cmnds.regfind .. " %[line:<" .. gettext ("nick") .. ">]")
sopmenitm (usr, gettext ("Registered users") .. "\\" .. gettext ("Registered users list statistics"), table_cmnds.regstats)
end

-- hublist

if ucl >= table_sets.mincommandclass then
sopmenitm (usr, gettext ("Hublist") .. "\\" .. gettext ("Add friendly hub"), table_cmnds.hubadd .. " %[line:<" .. gettext ("address") .. ">] \"%[line:<" .. gettext ("name") .. ">]\" \"%[line:<" .. gettext ("owner") .. ">]\"")
smensep (usr)
sopmenitm (usr, gettext ("Hublist") .. "\\" .. gettext ("Delete friendly hub"), table_cmnds.hubdel .. " %[line:<" .. gettext ("address") .. ">]")
end

if ucl >= table_sets.minusrcommandclass then
if ucl >= table_sets.mincommandclass then
smensep (usr)
end

susmenitm (usr, gettext ("Hublist") .. "\\" .. gettext ("Show friendly hubs"), table_cmnds.showhubs)
end

	-- chat
	if ucl >= table_sets.chatmodeclass then
		if ucl >= table_sets.mincommandclass then
			sopmenitm (usr, gettext ("Chat") .. "\\" .. gettext ("Force chat mode for user"), table_cmnds.mode .. " %[line:<" .. gettext ("lre") .. ">] %[line:<" .. gettext ("mode") .. ">]")
			sopmenitm (usr, gettext ("Chat") .. "\\" .. gettext ("Chat mode user list"), table_cmnds.mode)
		end

		susmenitm (usr, gettext ("Chat") .. "\\" .. gettext ("Set your chat mode"), table_cmnds.mode .. " %[line:<" .. gettext ("mode") .. ">]")
	end

	if ucl >= table_sets.sayclass then
		if ucl >= table_sets.chatmodeclass and ucl >= table_sets.mincommandclass then
			smensep (usr)
		end

		sopmenitm (usr, gettext ("Chat") .. "\\" .. gettext ("Speak from other nick"), table_cmnds.say .. " %[line:<" .. gettext ("nick") .. ">] %[line:<" .. gettext ("message") .. ">]")
	end

	if ucl >= table_sets.clearclass then
		smensep (usr)
		sopmenitm (usr, gettext ("Chat") .. "\\" .. gettext ("Clear main chat"), table_cmnds.clear)
	end

	-- ip gag
	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("IP gag") .. "\\" .. gettext ("Add IP gag"), table_cmnds.gagipadd .. " %[line:<" .. gettext ("lre") .. ">] %[line:<" .. gettext ("flags") .. ">]")
		sopmenitm (usr, gettext ("IP gag") .. "\\" .. gettext ("IP gag list"), table_cmnds.gagiplist)
		smensep (usr)
		sopmenitm (usr, gettext ("IP gag") .. "\\" .. gettext ("Delete IP gag"), table_cmnds.gagipdel .. " %[line:<" .. gettext ("lre") .. " " .. gettext ("or") .. " *>]")
	end

	-- cc gag
	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("Country code gag") .. "\\" .. gettext ("Add country code gag"), table_cmnds.gagccadd .. " %[line:<" .. gettext ("lre") .. ">] %[line:<" .. gettext ("flags") .. ">]")
		sopmenitm (usr, gettext ("Country code gag") .. "\\" .. gettext ("Country code gag list"), table_cmnds.gagcclist)
		smensep (usr)
		sopmenitm (usr, gettext ("Country code gag") .. "\\" .. gettext ("Delete country code gag"), table_cmnds.gagccdel .. " %[line:<" .. gettext ("lre") .. " " .. gettext ("or") .. " *>]")
	end

	-- user logger

	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("User logger") .. "\\" .. gettext ("User information"), table_cmnds.userinfo .. " %[line:<" .. gettext ("nick") .. ">]")
		sopmenitm (usr, gettext ("User logger") .. "\\" .. gettext ("IP information"), table_cmnds.ipinfo .. " %[line:<" .. gettext ("ip") .. ">]")
		sopmenitm (usr, gettext ("User logger") .. "\\" .. gettext ("Search in user log"), table_cmnds.ulog .. " %[line:<" .. gettext ("type") .. ">] %[line:<" .. gettext ("string") .. ">] %[line:<" .. gettext ("lines") .. ">]")
		sopmenitm (usr, gettext ("User logger") .. "\\" .. gettext ("%s user lookup"):format ("http://www.te-home.net/?do=hublist"), table_cmnds.seen .. " %[line:<" .. gettext ("type") .. ">] %[line:<" .. gettext ("text") .. ">]")
	end

	-- todo: no pm
	-- todo: rc menu

	-- antivirus
	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("Antivirus") .. "\\" .. gettext ("Antivirus statistics"), table_cmnds.avstats)
		sopmenitm (usr, gettext ("Antivirus") .. "\\" .. gettext ("Force infected user detection"), table_cmnds.avdetforce .. " %[line:<" .. gettext ("nick") .. ">]")
		sopmenitm (usr, gettext ("Antivirus") .. "\\" .. gettext ("Search in %s"):format ("AVDB"), table_cmnds.avdbfind .. " %[line:<" .. gettext ("type") .. ">] %[line:<" .. gettext ("item") .. ">]")
	end

	-- other
	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("Other") .. "\\" .. gettext ("Drop users with IP"), table_cmnds.dropip .. " %[line:<" .. gettext ("ip") .. ">]")
		smensep (usr)
		sopmenitm (usr, gettext ("Other") .. "\\" .. gettext ("Clean up tables"), table_cmnds.oldclean .. " %[line:<" .. gettext ("type") .. ">] %[line:<" .. gettext ("days") .. " " .. gettext ("or") .. " *>] %[line:<" .. gettext ("class") .. ">]")
		--sopmenitm (usr, gettext ("Other") .. "\\" .. gettext ("Clean up tables"), table_cmnds.oldclean .. " %[line:<" .. gettext ("type") .. ">] %[line:<" .. gettext ("days") .. ">]")
		sopmenitm (usr, gettext ("Other") .. "\\" .. gettext ("Read hub logs"), table_cmnds.readlog .. " %[line:<" .. gettext ("file") .. ">] %[line:<" .. gettext ("lines") .. ">]")
		smensep (usr)
		sopmenitm (usr, gettext ("Other") .. "\\" .. gettext ("Convert LRE to plain text"), table_cmnds.lretoplain .. " %[line:<" .. gettext ("lre") .. ">]")
	end

	if ucl >= table_sets.minusrcommandclass then
		if ucl >= table_sets.mincommandclass then
			smensep (usr)
		end

		susmenitm (usr, gettext ("Other") .. "\\" .. gettext ("Calculate an equation"), table_cmnds.calculate .. " %[line:<" .. gettext ("equation") .. ">]")
		susmenitm (usr, gettext ("Other") .. "\\" .. gettext ("Current topic"), table_cmnds.showtopic)
	end

	-- general
	if ucl >= table_sets.mincommandclass then
		sopmenitm (usr, gettext ("Configuration") .. "\\" .. gettext ("Script configuration variables"), table_cmnds.ledoconf)
		sopmenitm (usr, gettext ("Configuration") .. "\\" .. gettext ("Change configuration variable"), table_cmnds.ledoset .. " %[line:<" .. gettext ("variable") .. ">] %[line:<" .. gettext ("value") .. ">]")
		sopmenitm (usr, gettext ("Configuration") .. "\\" .. gettext ("Perform script update"), table_cmnds.ledover)
		sopmenitm (usr, gettext ("Configuration") .. "\\" .. gettext ("This list of commands"), table_cmnds.ledohelp)
		sopmenitm (usr, gettext ("Configuration") .. "\\" .. gettext ("%s statistics"):format ("Ledokol"), table_cmnds.ledostats)
	end
end

----- ---- --- -- -

function sopmenitm (usr, txt, cmd)
VH:SendToUser ("$UserCommand 1 3 " .. table_sets.usermenuname .. "\\.:: " .. txt .. " $<%[mynick]> " .. getconfig ("cmd_start_op"):sub (1, 1) .. cmd .. "&#124;|", usr)
end

----- ---- --- -- -

function susmenitm (usr, txt, cmd)
VH:SendToUser ("$UserCommand 1 3 " .. table_sets.usermenuname .. "\\.:: " .. txt .. " $<%[mynick]> " .. getconfig ("cmd_start_user"):sub (1, 1) .. cmd .. "&#124;|", usr)
end

----- ---- --- -- -

function smensep (usr)
VH:SendToUser ("$UserCommand 0 3|", usr)
end

----- ---- --- -- -

function sethubconf (nick, ucl, var, val)
	if var == "hub_security" then
		if val ~= "" then
			table_othsets.botnick = val

			if table_sets.addledobot == 0 then
				table_othsets.sendfrom = val
			end
		end

	elseif var == "opchat_name" then
		if val == "" then
			if table_sets.addledobot == 0 then
				setledoconf (nick, ucl, "addledobot 1")
			end
		else
			if table_sets.addledobot == 0 and table_sets.useextrafeed == 0 then
				table_othsets.feednick = val
			end
		end

		table_othsets.opchatnick = val

	elseif var == "cmd_start_op" then
		if val ~= "" then
			table_othsets.optrig = "["

			for pos = 1, # val do
				table_othsets.optrig = table_othsets.optrig .. "%" .. val:sub (pos, pos)
			end

			table_othsets.optrig = table_othsets.optrig .. "]"
		end

	elseif var == "cmd_start_user" then
		if val ~= "" then
			table_othsets.ustrig = "["

			for pos = 1, # val do
				table_othsets.ustrig = table_othsets.ustrig .. "%" .. val:sub (pos, pos)
			end

			table_othsets.ustrig = table_othsets.ustrig .. "]"
		end
	end
end

----- ---- --- -- -

function getledoconf (var)
	local _, rows = VH:SQLQuery ("select `value` from `" .. tbl_sql.conf .. "` where `variable` = '" .. repsqlchars (var) .. "' limit 1")

	if rows > 0 then
		local _, cfg = VH:SQLFetch (0)
		return tonumber (cfg) or cfg
	else
		return
	end
end

----- ---- --- -- -

function setledocmd (nick, ucls, line)
local _, _, orig, cnew = line:find ("^(%S+) (%S+)$")

if not table_cmnds [orig] then
	commandanswer (nick, gettext ("Unknown script command: %s"):format (orig))
else
	table_cmnds [orig] = cnew
	VH:SQLQuery ("update `" .. tbl_sql.ledocmd .. "` set `new` = '" .. repsqlchars (cnew) .. "' where `original` = '" .. repsqlchars (orig) .. "' limit 1")
	commandanswer (nick, gettext ("Customized script command: %s => %s"):format (orig, cnew))
	opsnotify (table_sets.classnoticom, gettext ("%s with class %d customized script command: %s => %s"):format (nick, ucls, orig, cnew))
end
end

----- ---- --- -- -

function showledocmd (nick)
local list = ""
local c = 1

for k, v in pairs (table_cmnds) do
	if v ~= k then
		list = list .. " " .. c..". " .. k.." => " .. v.."\r\n"
		c = c + 1
	end
end

if list == "" then
	commandanswer (nick, gettext ("Custom script command list is empty."))
else
	commandanswer (nick, gettext ("Custom script command list") .. ":\r\n\r\n" .. list)
end
end

----- ---- --- -- -

function resetledocmd (nick)
local cnum = 0

for k, v in pairs (table_cmnds) do
	if v ~= k then
		cnum = cnum + 1
		table_cmnds [k] = k
		k = repsqlchars (k)
		VH:SQLQuery ("update `" .. tbl_sql.ledocmd .. "` set `new` = '" .. k.."' where `original` = '" .. k.."' limit 1")
	end
end

commandanswer (nick, gettext ("%d custom commands were reset."):format (cnum))
end

----- ---- --- -- -

function setledoconf (nick, ucls, line)
	local tvar, setto = line:match ("^(%S+) (.*)$")
	local num, ok = true, false

	if tonumber (setto) then
		setto = tonumber (setto)
	else
		num = false
	end

	----- ---- --- -- -

	if tvar == "enableantispam" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "antispamdebug" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "checkcmdspam" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "allowspamtoops" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "kickunkusers" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "unkbeforelogin" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

elseif tvar == "chatrunning" then
if num then
if setto == 0 or setto == 1 then
ok = true

if table_sets [tvar] ~= setto then
if setto == 0 then
uninstallchatrooms ()
else
installchatrooms ()
end
end

else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "ccroomrunning" then
		if num then
			if setto == 0 or setto == 1 then
				if setto == 1 and not table_refu.GetUserCC then
					commandanswer (nick, gettext ("This feature requires %s or later installed on your system."):format ("Verlihub 0.9.8e"))
				else
					if setto == 0 and table_sets [tvar] ~= setto then -- clean up
						uninstallccrooms ()

						if table_sets.chathistlimit > 0 then -- delete history
							cleanccroomhistory (nick)
						end
					end

					ok = true
				end
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

elseif tvar == "roomusernotify" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "chathistlimit" then
		if num then
			if setto >= 0 and setto <= 10000 then
				if setto ~= table_sets [tvar] then -- clean up
					cleanroomhistory (nil, nick, setto, true, ucls)
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 10000"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "chathistbotmsg" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "chathistipclass" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

elseif tvar == "ccroomautocls" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5 " .. gettext ("or") .. " 10"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "ccroommancls" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5 " .. gettext ("or") .. " 10"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "ccroomstyle" then
		if # setto > 0 then
			if not setto:match ("<cc>") and not setto:match ("<cn>") then
				commandanswer (nick, gettext ("Missing %s in configuration variable."):format ("<cc> " .. gettext ("or") .. " <cn>"))
			else
				setto = setto:gsub (string.char (32), string.char (160)) -- space to non-breaking space

				if setto ~= table_sets [tvar] and table_sets.ccroomrunning == 1 then -- clean up, todo: recreate chatrooms
					uninstallccrooms ()

					if table_sets.chathistlimit > 0 then
						renameccroomhistory (table_sets [tvar], setto)
					end
				end

				ok = true
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "codetext" then
		if # setto > 0 then
			if not setto:find ("<code>") then
				commandanswer (nick, gettext ("Missing %s in configuration variable."):format ("<code>"))
			else
				ok = true
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "thirdacttime" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "sixthactaddr" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "ninthactrepmsg" then
	if # setto > 0 then
		ok = true
	else
		commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
	end

----- ---- --- -- -

	elseif tvar == "seventhacttime" then
		ok = true

----- ---- --- -- -

	elseif tvar == "codecharsep" then
		ok = true

----- ---- --- -- -

	elseif tvar == "codecharlist" then
		if # setto > 0 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
		end

----- ---- --- -- -

	elseif tvar == "unktbantime" then
		ok = true

----- ---- --- -- -

elseif tvar == "unkkickreason" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "enablesearfilt" then
		if num then
			if setto == 0 or setto == 1 then
				if setto == 0 then -- clean up
					table_sefi = {}
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "sefiblockdel" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "avfilediff" then
		if num then
			if setto >= 0 and setto <= 10240 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 10240"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "avfilecount" then
		if num then
			if setto >= 5 and setto <= 300 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "5 " .. gettext ("to") .. " 300"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "avfeedverb" then
		if num then
			if setto >= 0 and setto <= 3 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1 " .. gettext ("or") .. " 3"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "avsearchint" then
		if num then
			if setto >= 0 and setto <= 900 then
				if setto == 0 then
					avsearservstop (nick)
					table_avse = {} -- clear
					table_avus = {}
					table_avbl = {}
					table_othsets.avnextitem = 1
					table_othsets.avrandstr = ""
				else
					if table_sets.avsearservaddr ~= "" then
						avsearservstart (nil, nil, nick)
					end

					loadavstr ()
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 900"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "avuserfree" then
		if num then
			if setto >= 1 and setto <= 1440 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "1 " .. gettext ("to") .. " 1440"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "avsendtodb" then
		if num then
			if setto == 0 or setto == 1 then
				if setto == 1 then
					if not table_othsets.ver_curl then
						commandanswer (nick, gettext ("This feature requires following binary installed on your system: %s"):format ("cURL"))
					else
						commandanswer (nick, gettext ("In order to send infected user information to AVDB you need to ask maintainer of this script to add your server IP address to AVDB access list."))
						ok = true
					end
				else
					ok = true
				end
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "avdbloadint" then
		if num then
			if setto == 0 or (setto >= 30 and setto <= 1440) then
				if setto == 0 then
					table_avlo = {} -- clear
					table_othsets.avlastloadtime = 0
					table_othsets.avloadvercount = 0
					table_othsets.avloaddelcount = 0
					ok = true
				else
					if not table_othsets.ver_curl then
						commandanswer (nick, gettext ("This feature requires following binary installed on your system: %s"):format ("cURL"))
					else
						ok = true
					end
				end
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 30 " .. gettext ("to") .. " 1440"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "avrandrequest" then
		if num then
			if setto == 0 or setto == 1 then
				if setto == 0 then
					table_othsets.avrandstr = ""
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "avsearservaddr" then
		if setto == "" then
			avsearservstop (nick)
			ok = true
		elseif setto:find ("^%d+%.%d+%.%d+%.%d+$") then
			if not table_othsets.mod_sock then
				commandanswer (nick, gettext ("This feature requires following module installed on your system: %s"):format ("LuaSocket"))
			else
				if table_sets.avsearchint > 0 then
					avsearservstop (nick)
					avsearservstart (setto, table_sets.avsearservport, nick)
				end

				ok = true
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "<" .. gettext ("ip") .. ">"))
		end

	----- ---- --- -- -

	elseif tvar == "avsearservport" then
		if num then
			if setto >= 1 and setto <= 65535 then
				if table_sets.avsearchint > 0 and table_sets.avsearservaddr ~= "" then
					avsearservstop (nick)
					avsearservstart (table_sets.avsearservaddr, setto, nick)
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "1 " .. gettext ("to") .. " 65535"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "avdetaction" then
		if num then
			if setto == 0 then
				ok = true
			elseif setto == 1 then
				table_avbl = {} -- clear
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "avkicktext" then
		if # setto > 0 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
		end

	----- ---- --- -- -

elseif tvar == "scanbelowclass" then
if num then
if (setto >= 1 and setto <= 5) or setto == 10 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "1, 2, 3, 4, 5 " .. gettext ("or") .. " 10"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "antibelowclass" then
		if num then
			if (setto >= 1 and setto <= 5) or setto == 10 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "1, 2, 3, 4, 5 " .. gettext ("or") .. " 10"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

	elseif tvar == "regkickaction" then
		if num then
			if setto >= 0 and setto <= 2 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1 " .. gettext ("or") .. " 2"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "chatuptime" then
		if num then
			if setto >= 0 and setto <= 86400 then
				if setto > 0 and table_sets.showuseruptime == 0 then
					commandanswer (nick, gettext ("In order to use this feature you need to set %s to: %d"):format ("showuseruptime", 1))
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 86400"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "chatuptimeact" then
		if num then
			if setto >= 0 and setto <= 3 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2 " .. gettext ("or") .. " 3"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "regmechatcnt" then
		if num then
			if setto >= 0 and setto <= 100 then
				if setto == 0 then table_regm = {} end
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 100"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "regmeuptime" then
		if num then
			if setto >= 0 and setto <= 86400 then
				if setto > 0 and table_sets.showuseruptime == 0 then
					commandanswer (nick, gettext ("In order to use this feature you need to set %s to: %d"):format ("showuseruptime", 1))
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 86400"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "searchuptime" then
		if num then
			if setto >= 0 and setto <= 86400 then
				if setto > 0 and table_sets.showuseruptime == 0 then
					commandanswer (nick, gettext ("In order to use this feature you need to set %s to: %d"):format ("showuseruptime", 1))
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 86400"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "searuptimeact" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

elseif tvar == "showtopicowner" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "ipconantiflint" then
if num then
if setto >= 0 and setto <= 3600 then
ok = true
if setto == 0 then table_rcnn = {} end -- flush
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 3600"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "statscollint" then
	if num then
		if setto >= 0 and setto <= 1440 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 1440"))
		end

	else
		commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
	end

----- ---- --- -- -

elseif tvar == "userrecmsg" then
	if # setto > 0 then
		if not setto:find ("<new>") then
			commandanswer (nick, gettext ("Missing %s in configuration variable."):format ("<new>"))
		else
			ok = true
		end

	else
		commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
	end

----- ---- --- -- -

elseif tvar == "sharerecmsg" then
	if # setto > 0 then
		if not setto:find ("<new>") then
			commandanswer (nick, gettext ("Missing %s in configuration variable."):format ("<new>"))
		else
			ok = true
		end

	else
		commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
	end

	----- ---- --- -- -

	elseif tvar == "chatfloodcount" then
		if num then
			if setto >= 0 and setto <= 100 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 100"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "chatfloodallcount" then
		if num then
			if setto >= 0 and setto <= 250 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 250"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "chatfloodallint" then
		if num then
			if setto >= 0 and setto <= 3600 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 3600"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "chatfloodonecount" then
		if num then
			if setto >= 0 and setto <= 250 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 250"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "chatfloodoneint" then
		if num then
			if setto >= 0 and setto <= 3600 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 3600"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "protofloodctmcnt" then
		if num then
			if setto >= 0 and setto <= 1000 then
				if setto == 0 then table_prfl.ctm = {} end -- flush
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 1000"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "chatfloodint" then
		if num then
			if setto >= 0 and setto <= 3600 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 3600"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "protofloodctmact" then
		if num then
			if setto >= 0 and setto <= 3 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 3"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "protofloodctmint" then
		if num then
			if setto >= 1 and setto <= 3600 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "1 " .. gettext ("to") .. " 3600"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

	elseif tvar == "codelength" then
		if num then
			if setto >= 1 and setto <= 25 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "1 " .. gettext ("to") .. " 25"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "pmminclass" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5 " .. gettext ("or") .. " 10"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

	elseif tvar == "ctmminclass" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5 " .. gettext ("or") .. " 10"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

	elseif tvar == "ctmmsginterval" then
		if num then
			if setto >= 0 and setto <= 3600 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 3600"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

	elseif tvar == "ctmblockmsg" then
		if # setto > 0 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "chatmodeclass" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "chatcodeon" then
		if num then
			if setto >= 0 and setto <= 2 then
				if setto == 0 then -- clear
					table_code = {}
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 2"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "chatcodeflag" then
		if num then
			if setto >= 0 and setto <= 2 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1 " .. gettext ("or") .. " 2"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

elseif tvar == "codemaxclass" then
if num then
if setto >= 0 and setto <= 2 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 2"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

	elseif tvar == "enableuserlog" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

	elseif tvar == "ulogautoclean" then
		if num then
			if setto >= 0 and setto <= 365 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 365"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

	elseif tvar == "enableipwatch" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "chatantiflood" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true

				if setto == 0 then -- flush
					table_flod = {["addr"] = {}, ["nick"] = {}}
					table_othsets.chflallcount = 0
					table_othsets.chflalltime = os.time ()
					table_othsets.chflonenick = ""
					table_othsets.chflonecount = 0
					table_othsets.chflonetime = os.time ()
				end
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "enablehardban" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

	elseif tvar == "useblacklist" then
		if num then
			if setto == 0 or setto == 1 then
				if setto == 0 then
					table_blst = {} -- flush
					ok = true
				elseif table_sets [tvar] == 0 then -- load
					commandanswer (nick, gettext ("Loading %s in memory .. ."):format ("blacklist.txt"))

					if loadblacklist () then
						ok = true
						commandanswer (nick, gettext ("Finished loading %s in memory."):format ("blacklist.txt"))
					else
						commandanswer (nick, gettext ("Unable to locate %s in hub configuration directory."):format ("blacklist.txt"))
					end
				end
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

	elseif tvar == "chatfloodcmdgag" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "chatfloodaction" then
		if num then
			if setto >= 0 and setto <= 5 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4 " .. gettext ("or") .. " 5"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

elseif tvar == "logallmyinfos" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "funrandomchat" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

	elseif tvar == "useripsupport" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "useripinchat" then
	if num then
		if setto >= 0 and setto <= 2 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1 " .. gettext ("or") .. " 2"))
		end

	else
		commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
	end

----- ---- --- -- -

elseif tvar == "enablecmdlog" then
	if num then
		if setto >= 0 and setto <= 2 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1 " .. gettext ("or") .. " 2"))
		end

	else
		commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
	end

	----- ---- --- -- -

	elseif tvar == "instusermenu" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "instrcmenu" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	--[[

	----- ---- --- -- -

	elseif tvar == "hublistpingint" then
		if num then
			if setto >= 0 and setto <= 1440 then
				ok = true

				if setto > 0 and not table_othsets.mod_sock then
					commandanswer (nick, gettext ("This feature requires following module installed on your system: %s"):format ("LuaSocket"))
				end

				if setto == 0 then -- reset
					VH:SQLQuery ("update `" .. tbl_sql.hubs .. "` set `status` = 0")
				end
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 1440"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "hubpingtimeout" then
		if num then
			if setto >= 0 and setto <= 10 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 10"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	]]--

----- ---- --- -- -

elseif tvar == "chatrankclass" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
if setto > table_sets [tvar] then cleantablebyclass (setto, tbl_sql.chran) end
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "oprankclass" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
if setto > table_sets [tvar] then cleantablebyclass (setto, tbl_sql.opran) end
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "searrankclass" then
	if num then
		if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
		end

	else
		commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
	end

----- ---- --- -- -

elseif tvar == "sharerankclass" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
if setto > table_sets [tvar] then cleantablebyclass (setto, tbl_sql.shran) end
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "wordrankclass" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "ccstatsclass" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				if setto < 11 then
					if not table_refu.GetUserCC then
						commandanswer (nick, gettext ("This feature requires %s or later installed on your system."):format ("Verlihub 0.9.8e"))
					end

					if not table_refu.GetUserCity then
						commandanswer (nick, gettext ("This feature requires %s or later installed on your system."):format ("Verlihub 1.0.0"))
					end
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

elseif tvar == "savecchistory" then
if num then
if setto == 0 or setto == 1 then
ok = true

if setto == 1 then -- set first date
if not table_refu.GetUserCC then
commandanswer (nick, gettext ("This feature requires %s or later installed on your system."):format ("Verlihub 0.9.8e"))
else
VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('date_ccstats', " .. (os.time () + table_sets.srvtimediff) .. ")")
end
end

else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

	elseif tvar == "showuseruptime" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true

				if setto == 0 then -- flush
					table_usup = {}
				end
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "ranklimit" then
if num then
if setto >= 1 and setto <= 1000 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "1 " .. gettext ("to") .. " 1000"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "shareranmin" then
if num then
if setto >= 1 and setto <= 102400 then
ok = true

if setto > table_sets [tvar] then
VH:SQLQuery ("delete from `" .. tbl_sql.shran .. "` where `rank` < " .. (setto * 1073741824))
end

else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "1 " .. gettext ("to") .. " 1024"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "wordranmin" then
if num then
if setto >= 1 and setto <= 25 then
ok = true
if setto > table_sets [tvar] then cleanwordrank (setto, 0) end
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "1 " .. gettext ("to") .. " 25"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "wordranmax" then
if num then
if setto >= 1 and setto <= 100 then
ok = true

if setto < table_sets [tvar] then
cleanwordrank (setto, 1)
end

else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "1 " .. gettext ("to") .. " 100"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "classnotianti" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "classnotiex" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "classnotisefi" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "classnotiav" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "classnotimich" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "classnotiflood" then
	if num then
		if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
		end

	else
		commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
	end

----- ---- --- -- -

elseif tvar == "classnotigagip" then
	if num then
		if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
		end

	else
		commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
	end

	----- ---- --- -- -

	elseif tvar == "classnotilowupreg" then
		if num then
			if setto >= 0 and setto <= 5 or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "classnotilowupsear" then
		if num then
			if setto >= 0 and setto <= 5 or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "classnotilowupchat" then
		if num then
			if setto >= 0 and setto <= 5 or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

elseif tvar == "classnoticom" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "classnotisay" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "classnotirepl" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "classnotikick" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "classnotiban" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "classnotireg" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "classnoticonfig" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "classnotiredir" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "classnotibadctm" then
	if num then
		if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
		end

	else
		commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
	end

----- ---- --- -- -

elseif tvar == "classnotiunk" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "classnotioff" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "classnotiledoact" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

	elseif tvar == "classnotiprotoflood" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "classnotiauth" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "classnotiwelcome" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "classnotibotpm" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

	elseif tvar == "classnotihardban" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

	elseif tvar == "classnotiipwatch" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

	elseif tvar == "classnotiblist" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "classnoticust" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "classnotipeakts" then
	if num then
		if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
		end

	else
		commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
	end

----- ---- --- -- -

elseif tvar == "classnotipeakuc" then
	if num then
		if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
		end

	else
		commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
	end

----- ---- --- -- -

elseif tvar == "mincommandclass" then
if num then
if (setto >= 3 and setto <= 5) or setto == 10 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "3, 4, 5 " .. gettext ("or") .. " 10"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "minusrcommandclass" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5 " .. gettext ("or") .. " 10"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "custnickclass" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true

				if setto > table_sets [tvar] then
					cleancustnick (setto, 1)
				end
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "custlistclass" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "welcomeclass" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true

				if setto > table_sets [tvar] then
					cleantablebyclass (setto, tbl_sql.wm)
				end
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

elseif tvar == "opkeyclass" then
	if num then
		if (setto >= 0 and setto <= 2) or setto == 11 then
			if setto == 11 then -- flush
				for k, v in pairs (table_opks) do
					if v == 1 then -- class
						table_opks [k] = nil
					end
				end
			end

			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2 " .. gettext ("or") .. " 11"))
		end
	else
		commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
	end

----- ---- --- -- -

	elseif tvar == "opkeyself" then
		if num then
			if (setto >= 0 and setto <= 2) or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "opkeyshare" then
	if num then
		if setto >= 0 and setto <= 10240 then
			if setto == 0 then -- flush
				for k, v in pairs (table_opks) do
					if v == 2 then -- share
						table_opks [k] = nil
					end
				end
			end

			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 10240"))
		end

	else
		commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
	end

	----- ---- --- -- -

	elseif tvar == "relmodclass" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "reluseclass" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

elseif tvar == "antimessage" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "usermenuname" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "authmessage" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end


----- ---- --- -- -

elseif tvar == "authrunning" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "regnewpubenable" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "regnewpubmsgreg" then
		ok = true

	----- ---- --- -- -

	elseif tvar == "regnewpubmsgvip" then
		ok = true

	----- ---- --- -- -

	elseif tvar == "regnewpubmsgop" then
		ok = true

	----- ---- --- -- -

	elseif tvar == "regnewpubmsgcheef" then
		ok = true

	----- ---- --- -- -

	elseif tvar == "regnewpubmsgadmin" then
		ok = true

	----- ---- --- -- -

	elseif tvar == "regnewpubmsgmaster" then
		ok = true

	----- ---- --- -- -

elseif tvar == "searfiltmsg" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "antikreason" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "sefireason" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "savecustnicks" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "remrunning" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "trigrunning" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "replrunning" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "replprotect" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "resprunning" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true

				if setto == 0 then -- flush
					table_resp = {}
				end
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "respdelay" then
		if num then
			if setto >= 1 and setto <= 60 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "1 " .. gettext ("to") .. " 60"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "respskiplast" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true

				if setto == 0 then -- flush
					table_lars = {}
				end
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

elseif tvar == "custmaxlen" then
if num then
if setto >= 3 and setto <= 64 then
ok = true
if setto < table_sets [tvar] then cleancustnick (setto, 0) end
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "3 " .. gettext ("to") .. " 64"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "micheck" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "micallall" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "michnick" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "michdesc" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "michtag" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "michconn" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "michemail" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "michshare" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "michip" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "michdns" then
		if num then
			if setto == 0 or setto == 1 then
				if setto == 1 and getconfig ("dns_lookup") == 0 then
					commandanswer (nick, gettext ("In order to use this feature you need to enable DNS lookup. Do it by setting hub configuration variable %s to %d. Please note: Enabling DNS lookup might slow your hub performance down."):format ("dns_lookup", 1))
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "michsup" then
		if num then
			if setto == 0 or setto == 1 then
				if setto == 1 and not table_refu.GetUserSupports then
					commandanswer (nick, gettext ("Latest version of %s is required in order to use this feature."):format ("Verlihub"))
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "michver" then
		if num then
			if setto == 0 or setto == 1 then
				if setto == 1 and not table_refu.GetUserVersion then
					commandanswer (nick, gettext ("Latest version of %s is required in order to use this feature."):format ("Verlihub"))
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

	elseif tvar == "michcc" then
		if num then
			if setto == 0 or setto == 1 then
				if setto == 1 and not table_refu.GetUserCC then
					commandanswer (nick, gettext ("This feature requires %s or later installed on your system."):format ("Verlihub 0.9.8e"))
				--else
					--ok = true
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

	elseif tvar == "michfakenum" then
		if num then
			if (setto >= 4 and setto <= 15) or setto == 0 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "4 " .. gettext ("to") .. " 15 " .. gettext ("or") .. " 0"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

	elseif tvar == "michfakediv" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

	elseif tvar == "michclone" then
		if num then
			if setto >= 0 and setto <= 2 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 2"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "michsameip" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "enablevipkick" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "votekickclass" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				if setto == 11 then
					table_voki = {} -- clear
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "votekickcount" then
		if num then
			if setto >= 1 and setto <= 100 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "1 " .. gettext ("to") .. " 100"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "mitbantime" then
		ok = true

	----- ---- --- -- -

	elseif tvar == "miclonekicktime" then
		ok = true

----- ---- --- -- -

elseif tvar == "minickmessage" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "midescmessage" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "mitagmessage" then
		if # setto > 0 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
		end

	----- ---- --- -- -

elseif tvar == "miconnmessage" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "miemailmessage" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "misharemessage" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "miipmessage" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "midnsmessage" then
		if # setto > 0 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "misupmessage" then
		if # setto > 0 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "mivermessage" then
		if # setto > 0 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "miccmessage" then
		if # setto > 0 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "mifakemessage" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "miclonemessage" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "misameipmessage" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "offmsgclass" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "mchistclass" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

elseif tvar == "sayclass" then
if num then
if (setto >= 3 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

	elseif tvar == "clearclass" then
		if num then
			if (setto >= 3 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "newsclass" then
if num then
if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "histbotmsg" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "histautolines" then
		if num then
			if setto >= 0 and setto <= 100 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 100"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "ophistautolines" then
		if num then
			if setto >= 0 and setto <= 100 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 100"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "histdeflines" then
		if num then
			if setto >= 1 and setto <= 1000 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "1 " .. gettext ("to") .. " 1000"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "histautonewlinedel" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "histshowipclass" then
		if num then
			if (setto >= 0 and setto <= 5) or setto == 10 or setto == 11 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0, 1, 2, 3, 4, 5, 10 " .. gettext ("or") .. " 11"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "histautolinemax" then
		if num then
			if setto >= 0 and setto <= 1000 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 1000"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "autoupdcheck" then
		if num then
			if setto >= 0 and setto <= 168 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 168"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "newsautolines" then
if num then
if setto >= 0 and setto <= 100 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 100"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "newsdeflines" then
		if num then
			if setto >= 1 and setto <= 1000 then
				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "1 " .. gettext ("to") .. " 1000"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "histlimit" then
		if num then
			if setto >= 0 and setto <= 10000 then
				if setto ~= table_sets [tvar] then -- clean up
					cleanhistory (nick, setto, true, ucls)
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 10000"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

elseif tvar == "translitmode" then
if num then
if setto >= 0 and setto <= 2 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 2"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "tolowcharcase" then
	if num then
		if setto == 0 or setto == 1 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
		end

	else
		commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
	end

	----- ---- --- -- -

	elseif tvar == "langfileprefix" then
		setto = setto:lower ()

		if # setto > 0 and setto ~= "en" and setto ~= "l1" and setto ~= "p1" and setto ~= "a1" and setto ~= "a2" and setto ~= "o1" and setto ~= "eu" and setto ~= "ap" then
			for code, name in pairs (cc_names) do
				local lowcode, lowname = code:lower (), name:lower ()

				if setto == lowcode or setto == lowname then
					setto = lowcode
					loadlangfile (nick, setto)
					ok = true
					break
				end
			end

			if not ok then
				commandanswer (nick, gettext ("Specified country code isn't valid: %s"):format (setto))
			end
		else
			loadlangfile (nick, "en")
			ok = true
		end

	----- ---- --- -- -

elseif tvar == "srvtimediff" then
if num then
if setto >= -43200 and setto <= 43200 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "-43200 " .. gettext ("to") .. " 43200"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "longdateformat" then
		if # setto > 0 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "dateformat" then
		if # setto > 0 then
			ok = true
		else
			commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "timeformat" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "shrtuptimefmt" then
if # setto > 0 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "timebotint" then
if num then
if setto >= 0 and setto <= 86400 then
ok = true

if table_sets [tvar] ~= setto and setto == 0 and table_othsets.lasttimenick then
	if table_sets.fasttimebot == 1 then
		VH:SendToClass ("$Quit " .. table_othsets.lasttimenick .. "|", 0, 10)
	else
		delhubrobot (table_othsets.lasttimenick)
	end

	table_othsets.lasttimenick = nil
end

else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 86400"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "rolltopicint" then
if num then
if setto >= 0 and setto <= 3600 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 3600"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "rolltopicspace" then
if num then
if setto >= 0 and setto <= 10 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("to") .. " 10"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "timebotnick" then
if # setto > 0 then
setto = repnickchars (setto)

if setto == table_sets [tvar] or getstatus (setto) == 1 then
-- isbot (setto)
commandanswer (nick, gettext ("Specified nick is already in use."))
return
end

ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "fasttimebot" then
if num then
if setto == 0 or setto == 1 then
ok = true

if table_sets [tvar] ~= setto and table_othsets.lasttimenick then
	if table_sets [tvar] == 1 then
		VH:SendToClass ("$Quit " .. table_othsets.lasttimenick .. "|", 0, 10)
	else
		delhubrobot (table_othsets.lasttimenick)
	end

	table_othsets.lasttimenick = nil
end

else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

	----- ---- --- -- -

	elseif tvar == "addledobot" then
		if num then
			if setto == 0 or setto == 1 then
				ok = true

				if table_sets [tvar] ~= setto then
					if setto == 0 then
						if table_sets.useextrafeed == 0 then
							table_othsets.feednick = table_othsets.opchatnick
						end

						table_othsets.sendfrom = table_othsets.botnick
						delhubrobot (table_sets.ledobotnick)
					else
						addhubrobot (table_sets.ledobotnick, table_othsets.ledobotdesc .. table_othsets.ledobottag, 2, table_sets.ledobotmail, getownsize (true, table_sets.ledobotsize))

						if table_sets.useextrafeed == 0 then
							table_othsets.feednick = table_sets.ledobotnick
						end

						table_othsets.sendfrom = table_sets.ledobotnick
					end
				end
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "ledobotsize" then
		if num then
			if setto >= -1 and setto <= 21990232555520 then
				if table_sets.addledobot == 1 then
					delhubrobot (table_sets.ledobotnick)
					addhubrobot (table_sets.ledobotnick, table_othsets.ledobotdesc .. table_othsets.ledobottag, 2, table_sets.ledobotmail, getownsize (true, setto))
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "-1 " .. gettext ("to") .. " 21990232555520"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "addspecialver" then
		if num then
			if setto == 0 or setto == 1 then
				if setto ~= table_sets [tvar] and setto == 0 then
					VH:SetConfig ((VH.ConfName or "config"), "hub_version_special", "")
				elseif setto == 1 then
					VH:SetConfig ((VH.ConfName or "config"), "hub_version_special", gettext ("Powered by %s"):format ("Ledokol " .. ver_ledo .. "." .. bld_ledo))
				end

				ok = true
			else
				commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
		end

	----- ---- --- -- -

	elseif tvar == "ledobotnick" then
		if # setto > 0 then
			setto = repnickchars (setto)

			if setto == table_sets [tvar] or getstatus (setto) == 1 then
				-- isbot (setto)
				commandanswer (nick, gettext ("Specified nick is already in use."))
				return
			end

			ok = true

			if table_sets.addledobot == 1 then
				delhubrobot (table_sets [tvar])
				addhubrobot (setto, table_othsets.ledobotdesc .. table_othsets.ledobottag, 2, table_sets.ledobotmail, getownsize (true, table_sets.ledobotsize))
				if table_sets.useextrafeed == 0 then table_othsets.feednick = setto end
				table_othsets.sendfrom = setto
			end
		else
			commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
		end

----- ---- --- -- -

elseif tvar == "ledobotmail" then
ok = true

----- ---- --- -- -

elseif tvar == "useextrafeed" then
if num then
if setto == 0 or setto == 1 then
ok = true

if setto == 1 then
table_othsets.feednick = table_sets.extrafeednick
else

if table_sets.addledobot == 0 then
table_othsets.feednick = table_othsets.opchatnick
else
table_othsets.feednick = table_sets.ledobotnick
end
end

else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "extrafeednick" then
if # setto > 0 then
ok = true
setto = repnickchars (setto)
if table_sets.useextrafeed == 1 then table_othsets.feednick = setto end
else
commandanswer (nick, gettext ("Configuration variable %s can't be empty."):format (tvar))
end

----- ---- --- -- -

elseif tvar == "commandstopm" then
if num then
if setto == 0 or setto == 1 then
ok = true
else
commandanswer (nick, gettext ("Configuration variable %s can only be set to: %s"):format (tvar, "0 " .. gettext ("or") .. " 1"))
end

else
commandanswer (nick, gettext ("Configuration variable %s must be a number."):format (tvar))
end

----- ---- --- -- -

else -- unknown variable
commandanswer (nick, gettext ("Unknown configuration variable: %s"):format (tvar))
end

if ok then -- finalize
commandanswer (nick, gettext ("Changed configuration variable %s: %s => %s"):format (tvar, table_sets [tvar], setto))
opsnotify (table_sets.classnoticonfig, gettext ("%s with class %d changed configuration variable %s: %s => %s"):format (nick, ucls, tvar, table_sets [tvar], setto))
VH:SQLQuery ("update `" .. tbl_sql.conf .. "` set `value` = '" .. repsqlchars (setto) .. "' where `variable` = '" .. tvar .. "' limit 1")
table_sets [tvar] = setto
oprankaccept (nick, ucls)
end
end

----- ---- --- -- -

function checkblacklist (ip)
	for _, bld in pairs (table_blst) do
		if ipinrange (bld.r, ip) then
			opsnotify (table_sets.classnotiblist, gettext ("Blacklisted connection from IP %s dropped: %s"):format (ip .. tryipcc (ip), repnmdcoutchars (bld.d))) -- notify
			return true
		end
	end

	return false
end

----- ---- --- -- -

function loadblacklist ()
	local f = io.open (table_othsets.cfgdir .. "blacklist.txt")

	if f then
		f:close ()

		for l in io.lines (table_othsets.cfgdir .. "blacklist.txt") do
			local p = l:find (":")

			if p then
				table.insert (table_blst, {d = l:sub (1, p - 1), r = l:sub (p + 1)})
			end
		end
	else
		return false
	end

	return true
end

----- ---- --- -- -

function sendhelp (nick)
	local help = "\r\n\r\n .:: " .. gettext ("%s operator commands"):format ("Ledokol") .. ":\r\n\r\n"
	local optrig = getconfig ("cmd_start_op"):sub (1, 1)

	-- antispam
	help = help .. " " .. optrig .. table_cmnds.antiadd .. " <" .. gettext ("lre") .. "> <" .. gettext ("priority") .. "> <" .. gettext ("action") .. "> <" .. gettext ("flags") .. "> - " .. gettext ("Add antispam entry") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.antilist .. " - " .. gettext ("Antispam list") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.antidel .. " <" .. gettext ("lre") .. "> - " .. gettext ("Delete antispam entry") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.antiexadd .. " <" .. gettext ("lre") .. "> - " .. gettext ("Add antispam exception entry") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.antiexlist .. " - " .. gettext ("Antispam exception list") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.antiexdel .. " <" .. gettext ("lre") .. "> - " .. gettext ("Delete antispam exception entry") .. "\r\n\r\n"

	-- search filter
	help = help .. " " .. optrig .. table_cmnds.sefiadd .. " <" .. gettext ("lre") .. "> <" .. gettext ("priority") .. "> <" .. gettext ("action") .. "> <" .. gettext ("type") .. "> - " .. gettext ("Add search filter") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.sefilist .. " - " .. gettext ("Search filter list") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.sefidel .. " <" .. gettext ("lre") .. "> - " .. gettext ("Delete search filter") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.sefiexadd .. " <" .. gettext ("lre") .. "> - " .. gettext ("Add search filter exception entry") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.sefiexlist .. " - " .. gettext ("Search filter exception list") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.sefiexdel .. " <" .. gettext ("lre") .. "> - " .. gettext ("Delete search filter exception entry") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.sefibllist .. " - " .. gettext ("Search filter block list") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.sefibldel .. " <" .. gettext ("nick") .. "> - " .. gettext ("Delete search filter block list entry") .. "\r\n\r\n"

	-- myinfo check
	help = help .. " " .. optrig .. table_cmnds.myinfadd .. " <" .. gettext ("type") .. "> <\"" .. gettext ("lre") .. "\"> [\"" .. gettext ("time") .. "\"] [\"" .. gettext ("note") .. "\"] - " .. gettext ("Add MyINFO entry") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.myinflist .. " <" .. gettext ("type") .. "> - " .. gettext ("MyINFO list") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.myinfdel .. " <" .. gettext ("type") .. "> <" .. gettext ("lre") .. "> - " .. gettext ("Delete MyINFO entry") .. "\r\n\r\n"

-- protection list
help = help .. " " .. optrig .. table_cmnds.protadd .. " <" .. gettext ("lre") .. "> - " .. gettext ("Add protection entry") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.protlist .. " - " .. gettext ("Protection list") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.protdel .. " <" .. gettext ("lre") .. "> - " .. gettext ("Delete protection entry") .. "\r\n\r\n"

-- ip authorization
help = help .. " " .. optrig .. table_cmnds.authadd .. " <" .. gettext ("nick") .. "> <" .. gettext ("lre") .. "> - " .. gettext ("Add IP authorization entry") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.authmod .. " <" .. gettext ("identifier") .. "> <" .. gettext ("lre") .. "> - " .. gettext ("Modify IP authorization entry") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.authlist .. " - " .. gettext ("IP authorization list") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.authdel .. " <" .. gettext ("identifier") .. "> - " .. gettext ("Delete authorization entry") .. "\r\n\r\n"

-- ranks
help = help .. " " .. optrig .. table_cmnds.myoprank .. " - " .. gettext ("Your operator rank") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.ranexadd .. " <" .. gettext ("nick") .. "> - " .. gettext ("Add rank exception") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.ranexlist .. " - " .. gettext ("Rank exception list") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.ranexdel .. " <" .. gettext ("nick") .. "> - " .. gettext ("Delete rank exception") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.randel .. " <" .. gettext ("type") .. "> <" .. gettext ("value") .. "> - " .. gettext ("Remove user or word from rank list") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.ranclean .. " <" .. gettext ("type") .. "> <" .. gettext ("limit") .. "> - " .. gettext ("Clean up ranks") .. "\r\n\r\n"

-- welcome messages
help = help .. " " .. optrig .. table_cmnds.wmforce .. " <" .. gettext ("type") .. "> <" .. gettext ("nick") .. "> [" .. gettext ("message") .. "] - " .. gettext ("Force welcome message for user") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.wmlist .. " - " .. gettext ("Welcome message list") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.wmdel .. " <" .. gettext ("nick") .. "> - " .. gettext ("Delete user and his welcome messages") .. "\r\n\r\n"

	-- chatrooms
	help = help .. " " .. optrig .. table_cmnds.chatadd .. " <" .. gettext ("nick") .. "> <" .. gettext ("description") .. "> <" .. gettext ("minclass") .. "> <" .. gettext ("maxclass") .. "> <" .. gettext ("cc") .. "> - " .. gettext ("Add chatroom") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.chatlist .. " - " .. gettext ("Chatroom list") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.chatdel .. " <" .. gettext ("nick") .. "> - " .. gettext ("Delete chatroom") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.acreadd .. " <" .. gettext ("cc") .. "> <" .. gettext ("nick") .. "> - " .. gettext ("Add automatic country chatroom entrance") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.acrelist .. " - " .. gettext ("Automatic country chatroom entrance list") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.acredel .. " <" .. gettext ("identifier") .. "> - " .. gettext ("Delete automatic country chatroom entrance") .. "\r\n\r\n"

-- reminders
help = help .. " " .. optrig .. table_cmnds.remadd .. " <" .. gettext ("identifier") .. "> <" .. gettext ("content") .. "> <" .. gettext ("minclass") .. "> <" .. gettext ("maxclass") .. "> <" .. gettext ("destination") .. "> <" .. gettext ("interval") .. "> - " .. gettext ("Add reminder") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.remlist .. " - " .. gettext ("Reminder list") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.remshow .. " <" .. gettext ("identifier") .. "> - " .. gettext ("Reminder preview") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.remdel .. " <" .. gettext ("identifier") .. "> - " .. gettext ("Delete reminder") .. "\r\n\r\n"

	-- triggers
	help = help .. " " .. optrig .. table_cmnds.trigadd .. " <" .. gettext ("identifier") .. "> <\"" .. gettext ("content") .. "\"> <" .. gettext ("minclass") .. "> <" .. gettext ("maxclass") .. "> - " .. gettext ("Add trigger") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.triglist .. " - " .. gettext ("Trigger list") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.trigdel .. " <" .. gettext ("identifier") .. "> - " .. gettext ("Delete trigger") .. "\r\n\r\n"

	-- no pm
	help = help .. " " .. optrig .. table_cmnds.nopmadd .. " <" .. gettext ("nick") .. "> <" .. gettext ("action") .. "> <" .. gettext ("maxclass") .. "> <" .. gettext ("reason") .. "> - " .. gettext ("Add blocked PM entry") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.nopmlist .. " - " .. gettext ("List of blocked PM entries") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.nopmdel .. " <" .. gettext ("nick") .. "> - " .. gettext ("Delete blocked PM entry") .. "\r\n\r\n"

	-- right click menu
	help = help .. " " .. optrig .. table_cmnds.rcmenuadd .. " <\"" .. gettext ("menu") .. "\"> <\"" .. gettext ("command") .. "\"> <" .. gettext ("type") .. "> <" .. gettext ("context") .. "> <" .. gettext ("order") .. "> <" .. gettext ("minclass") .. "> <" .. gettext ("maxclass") .. "> - " .. gettext ("Add right click menu item") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.rcmenulist .. " - " .. gettext ("List of right click menu items") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.rcmenudel .. " <" .. gettext ("identifier") .. "> - " .. gettext ("Delete right click menu item") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.rcmenuord .. " <" .. gettext ("identifier") .. "> <" .. gettext ("order") .. "> - " .. gettext ("Reorder right click menu item") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.rcmenuoff .. " <" .. gettext ("identifier") .. "> - " .. gettext ("Disable or enable right click menu item") .. "\r\n\r\n"

	-- ip watch
	help = help .. " " .. optrig .. table_cmnds.ipwatadd .. " <" .. gettext ("lre") .. "> <\"" .. gettext ("reason") .. "\"> <" .. gettext ("result") .. "> - " .. gettext ("Add IP watch entry") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.ipwatlist .. " - " .. gettext ("List of IP watch entries") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.ipwatdel .. " <" .. gettext ("lre") .. "> - " .. gettext ("Delete IP watch entry") .. "\r\n\r\n"

	-- hard ban
	help = help .. " " .. optrig .. table_cmnds.hban .. " <" .. gettext ("lre") .. "> <\"" .. gettext ("reason") .. "\"> - " .. gettext ("Add hard IP ban entry") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.hbans .. " - " .. gettext ("List of hard IP ban entries") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.hunban .. " <" .. gettext ("lre") .. "> - " .. gettext ("Delete hard IP ban entry") .. "\r\n\r\n"

-- news
help = help .. " " .. optrig .. table_cmnds.newsadd .. " <" .. gettext ("string") .. "> - " .. gettext ("Add news item") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.newsdel .. " <" .. gettext ("date") .. "> - " .. gettext ("Delete news items") .. "\r\n\r\n"

	-- chat replacer
	help = help .. " " .. optrig .. table_cmnds.repladd .. " <\"" .. gettext ("lre") .. "\"> <\"" .. gettext ("replace") .. "\"> <" .. gettext ("maxclass") .. "> [" .. gettext ("flags") .. "] - " .. gettext ("Add chat replacer") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.repllist .. " - " .. gettext ("Chat replacer list") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.repldel .. " <" .. gettext ("identifier") .. "> - " .. gettext ("Delete chat replacer") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.replexadd .. " <" .. gettext ("item") .. "> <" .. gettext ("type") .. "> - " .. gettext ("Add chat replacer exception") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.replexlist .. " - " .. gettext ("Chat replacer exception list") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.replexdel .. " <" .. gettext ("item") .. "> - " .. gettext ("Delete chat replacer exception") .. "\r\n\r\n"

	-- chat responder
	help = help .. " " .. optrig .. table_cmnds.respadd .. " <\"" .. gettext ("lre") .. "\"> <\"" .. gettext ("reply") .. "\"> <" .. gettext ("maxclass") .. "> - " .. gettext ("Add chat responder") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.resplist .. " [" .. gettext ("lre") .. "] - " .. gettext ("Main chat responder list") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.respdel .. " <" .. gettext ("identifier") .. "> - " .. gettext ("Delete chat responder") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.respexadd .. " <" .. gettext ("nick") .. " " .. gettext ("or") .. " " .. gettext ("ip") .. "> - " .. gettext ("Add chat responder exception") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.respexlist .. " - " .. gettext ("Chat responder exception list") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.respexdel .. " <" .. gettext ("nick") .. " " .. gettext ("or") .. " " .. gettext ("ip") .. "> - " .. gettext ("Delete chat responder exception") .. "\r\n\r\n"

-- offline messenger
help = help .. " " .. optrig .. table_cmnds.offlist .. " - " .. gettext ("List stored offline messages") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.offdel .. " <" .. gettext ("date") .. "> - " .. gettext ("Delete offline messages by date") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.offclean .. " - " .. gettext ("Delete all offline messages") .. "\r\n\r\n"

	-- history
	help = help .. " " .. optrig .. table_cmnds.ophistory .. " [" .. gettext ("lines") .. "=" .. _tostring (table_sets.histdeflines) .. "] - " .. gettext ("Operator chat history") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.histdel .. " <" .. gettext ("text") .. "> - " .. gettext ("Delete history messages by text") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.histclean .. " - " .. gettext ("Delete all history messages") .. "\r\n\r\n"

-- commands
help = help .. " " .. optrig .. table_cmnds.cmndset .. " <" .. gettext ("command") .. "> <" .. gettext ("command") .. "> - " .. gettext ("Customize script command") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.cmndshow .. " - " .. gettext ("Show custom script commands") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.cmndreset .. " - " .. gettext ("Reset all custom commands") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.clog .. " <" .. gettext ("lines") .. "> - " .. gettext ("Command logger") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.cmndadd .. " <" .. gettext ("lre") .. "> <" .. gettext ("class") .. "> - " .. gettext ("Add command permission") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.cmndlist .. " - " .. gettext ("Command permission list") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.cmnddel .. " <" .. gettext ("lre") .. "> - " .. gettext ("Delete command permission") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.cmndexadd .. " <" .. gettext ("lre") .. "> - " .. gettext ("Add command notification exception") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.cmndexlist .. " - " .. gettext ("Command notification exception list") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.cmndexdel .. " <" .. gettext ("lre") .. "> - " .. gettext ("Delete command notification exception") .. "\r\n\r\n"

	-- custom nicks
	help = help .. " " .. optrig .. table_cmnds.rename .. " <" .. gettext ("real") .. "> <" .. gettext ("nick") .. "> - " .. gettext ("Force custom nick for user") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.custdel .. " <" .. gettext ("nick") .. "> - " .. gettext ("Delete custom nick") .. "\r\n\r\n"

-- registered users
help = help .. " " .. optrig .. table_cmnds.regname .. " <" .. gettext ("nick") .. "> <" .. gettext ("nick") .. "> - " .. gettext ("Change nick of a registered user") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.reglist .. " <" .. gettext ("class") .. "> <" .. gettext ("offset") .. "> - " .. gettext ("List of registered users by class") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.regfind .. " <" .. gettext ("nick") .. "> - " .. gettext ("Search in registered users list") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.regstats .. " - " .. gettext ("Registered users list statistics") .. "\r\n\r\n"

-- hublist
help = help .. " " .. optrig .. table_cmnds.hubadd .. " <" .. gettext ("address") .. "> <\"" .. gettext ("name") .. "\"> <\"" .. gettext ("owner") .. "\"> - " .. gettext ("Add friendly hub") .. "\r\n"
help = help .. " " .. optrig .. table_cmnds.hubdel .. " <" .. gettext ("address") .. "> - " .. gettext ("Delete friendly hub") .. "\r\n\r\n"

	-- chat
	help = help .. " " .. optrig .. table_cmnds.mode .. " <" .. gettext ("lre") .. "> <" .. gettext ("mode") .. "> - " .. gettext ("Force chat mode for user") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.mode .. " - " .. gettext ("Chat mode user list") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.say .. " <" .. gettext ("nick") .. "> <" .. gettext ("message") .. "> - " .. gettext ("Speak from other nick") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.clear .. " - " .. gettext ("Clear main chat") .. "\r\n\r\n"

	-- ip gag
	help = help .. " " .. optrig .. table_cmnds.gagipadd .. " <" .. gettext ("lre") .. "> <" .. gettext ("flags") .. "> - " .. gettext ("Add IP gag") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.gagiplist .. " - " .. gettext ("IP gag list") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.gagipdel .. " <" .. gettext ("lre") .. " " .. gettext ("or") .. " *> - " .. gettext ("Delete IP gag") .. "\r\n\r\n"

	-- cc gag
	help = help .. " " .. optrig .. table_cmnds.gagccadd .. " <" .. gettext ("lre") .. "> <" .. gettext ("flags") .. "> - " .. gettext ("Add country code gag") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.gagcclist .. " - " .. gettext ("Country code gag list") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.gagccdel .. " <" .. gettext ("lre") .. " " .. gettext ("or") .. " *> - " .. gettext ("Delete country code gag") .. "\r\n\r\n"

	-- user logger
	help = help .. " " .. optrig .. table_cmnds.userinfo .. " <" .. gettext ("nick") .. "> - " .. gettext ("User information") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.ipinfo .. " <" .. gettext ("ip") .. "> - " .. gettext ("IP information") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.ulog .. " <" .. gettext ("type") .. "> <" .. gettext ("string") .. "> <" .. gettext ("lines") .. "> - " .. gettext ("Search in user log") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.seen .. " <" .. gettext ("type") .. "> <" .. gettext ("text") .. "> - " .. gettext ("%s user lookup"):format ("http://www.te-home.net/?do=hublist") .. "\r\n\r\n"

	-- vote kick
	help = help .. " " .. optrig .. table_cmnds.votekickdel .. " <" .. gettext ("nick") .. "> - " .. gettext ("Clear kick votes for user") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.votekicklist .. " - " .. gettext ("Vote kick list") .. "\r\n\r\n"

	-- antivirus
	help = help .. " " .. optrig .. table_cmnds.avstats .. " [" .. gettext ("nick") .. "] - " .. gettext ("Antivirus statistics") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.avdetforce .. " <" .. gettext ("nick") .. "> - " .. gettext ("Force infected user detection") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.avdbfind .. " <" .. gettext ("type") .. "> <" .. gettext ("item") .. "> - " .. gettext ("Search in %s"):format ("AVDB") .. "\r\n\r\n"

	-- other
	help = help .. " " .. optrig .. table_cmnds.dropip .. " <" .. gettext ("ip") .. "> - " .. gettext ("Drop users with IP") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.oldclean .. " <" .. gettext ("type") .. "> <" .. gettext ("days") .. " " .. gettext ("or") .. " *> [" .. gettext ("class") .. "] - " .. gettext ("Clean up tables") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.readlog .. " <" .. gettext ("file") .. "> [" .. gettext ("lines") .. "=" .. _tostring (table_othsets.logdeflines) .. "] - " .. gettext ("Read hub logs") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.lretoplain .. " <" .. gettext ("lre") .. "> - " .. gettext ("Convert LRE to plain text") .. "\r\n\r\n"

	-- general
	help = help .. " " .. optrig .. table_cmnds.ledoconf .. " - " .. gettext ("Script configuration variables") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.ledoset .. " <" .. gettext ("variable") .. "> <" .. gettext ("value") .. "> - " .. gettext ("Change configuration variable") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.ledover .. " [force&#124;dev] - " .. gettext ("Perform script update") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.ledohelp .. " - " .. gettext ("This list of commands") .. "\r\n"
	help = help .. " " .. optrig .. table_cmnds.ledostats .. " - " .. gettext ("%s statistics"):format ("Ledokol") .. "\r\n\r\n"

	-- experts only commands
	if getclass (nick) == 10 then
		help = help .. " .:: " .. gettext ("Experts only") .. ":\r\n\r\n"

		if getledoconf ("allow_sql") == 1 then
			help = help .. " " .. optrig .. table_cmnds.ledosql .. " <" .. gettext ("query") .. "> - " .. gettext ("Execute MySQL query") .. "\r\n"
		end

		if getledoconf ("allow_shell") == 1 then
			help = help .. " " .. optrig .. table_cmnds.ledoshell .. " <" .. gettext ("command") .. "> - " .. gettext ("Execute shell command") .. "\r\n"
		end

		help = help .. " " .. optrig .. table_cmnds.ledokoluninstallisconfirmed .. " - " .. gettext ("Remove all %s tables and files"):format ("Ledokol") .. "\r\n\r\n"
	end

	help = help .. " .:: " .. gettext ("%s user commands"):format ("Ledokol") .. ":\r\n\r\n"

	local ustrig = getconfig ("cmd_start_user"):sub (1, 1)

-- ranks
help = help .. " " .. ustrig .. table_cmnds.mychatrank .. " - " .. gettext ("Your chat rank") .. "\r\n"
help = help .. " " .. ustrig .. table_cmnds.mysharerank .. " - " .. gettext ("Your share rank") .. "\r\n"
help = help .. " " .. ustrig .. table_cmnds.chatranks .. " - " .. gettext ("Top %d chat rankers"):format (table_sets.ranklimit) .. "\r\n"
help = help .. " " .. ustrig .. table_cmnds.shareranks .. " - " .. gettext ("Top %d share rankers"):format (table_sets.ranklimit) .. "\r\n"
help = help .. " " .. ustrig .. table_cmnds.opranks .. " - " .. gettext ("Top %d operator rankers"):format (table_sets.ranklimit) .. "\r\n"
help = help .. " " .. ustrig .. table_cmnds.searranks .. " - " .. gettext ("Top %d search requests"):format (table_sets.ranklimit) .. "\r\n"
help = help .. " " .. ustrig .. table_cmnds.wordranks .. " - " .. gettext ("Top %d used words"):format (table_sets.ranklimit) .. "\r\n"
	help = help .. " " .. ustrig .. table_cmnds.cclive .. " - " .. gettext ("Live user location statistics by country") .. "\r\n"
	help = help .. " " .. ustrig .. table_cmnds.citylive .. " <" .. gettext ("cc") .. "> - " .. gettext ("Live user location statistics by city") .. "\r\n"
	help = help .. " " .. ustrig .. table_cmnds.cchist .. " - " .. gettext ("All time user location statistics") .. "\r\n\r\n"

	-- releases
	help = help .. " " .. ustrig .. table_cmnds.reladd .. " <\"" .. gettext ("name") .. "\"> <\"" .. gettext ("category") .. "\"> [" .. gettext ("tth") .. "] - " .. gettext ("Add new release") .. "\r\n"
	help = help .. " " .. ustrig .. table_cmnds.reldel .. " <" .. gettext ("type") .. "> <" .. gettext ("name") .. "> - " .. gettext ("Delete releases") .. "\r\n"
	help = help .. " " .. ustrig .. table_cmnds.rellist .. " <" .. gettext ("type") .. "> <" .. gettext ("lines") .. "> [" .. gettext ("category") .. " " .. gettext ("or") .. " " .. gettext ("publisher") .. "] - " .. gettext ("List of available releases") .. "\r\n"
	help = help .. " " .. ustrig .. table_cmnds.relfind .. " <" .. gettext ("name") .. "> - " .. gettext ("Find release by name or category") .. "\r\n\r\n"

-- welcome messages
help = help .. " " .. ustrig .. table_cmnds.wmset .. " <" .. gettext ("type") .. "> [" .. gettext ("message") .. "] - " .. gettext ("Set your welcome message") .. "\r\n"
help = help .. " " .. ustrig .. table_cmnds.wmshow .. " - " .. gettext ("Show your welcome messages") .. "\r\n\r\n"

-- custom nicks
help = help .. " " .. ustrig .. table_cmnds.nick .. " [" .. gettext ("nick") .. "] - " .. gettext ("Set custom nick for yourself") .. "\r\n"
help = help .. " " .. ustrig .. table_cmnds.realnick .. " <" .. gettext ("nick") .. "> - " .. gettext ("Get user's real nick") .. "\r\n"
help = help .. " " .. ustrig .. table_cmnds.custlist .. " - " .. gettext ("Custom nick list") .. "\r\n\r\n"

	-- chat history
	help = help .. " " .. ustrig .. table_cmnds.history .. " [" .. gettext ("lines") .. "=" .. _tostring (table_sets.histdeflines) .. "] - " .. gettext ("Main chat history") .. "\r\n"
	help = help .. " " .. ustrig .. table_cmnds.myhistory .. " [" .. gettext ("lines") .. "=" .. _tostring (table_sets.histdeflines) .. "] - " .. gettext ("Your main chat history") .. "\r\n\r\n"

	-- other

	help = help .. " " .. ustrig .. table_cmnds.votekick .. " <" .. gettext ("nick") .. "> - " .. gettext ("Vote for user to be kicked") .. "\r\n"
	help = help .. " " .. ustrig .. table_cmnds.mode .. " <" .. gettext ("mode") .. "> - " .. gettext ("Set your chat mode") .. "\r\n"
	help = help .. " " .. ustrig .. table_cmnds.offmsg .. " <" .. gettext ("nick") .. "> <" .. gettext ("message") .. "> - " .. gettext ("Offline message to user") .. "\r\n"
	help = help .. " " .. ustrig .. table_cmnds.calculate .. " <" .. gettext ("equation") .. "> - " .. gettext ("Calculate an equation") .. "\r\n"
	help = help .. " " .. ustrig .. table_cmnds.hubnews .. " [" .. gettext ("lines") .. "=" .. _tostring (table_sets.newsdeflines) .. "] - " .. gettext ("Read hub news") .. "\r\n"
	help = help .. " " .. ustrig .. table_cmnds.showtopic .. " - " .. gettext ("Current topic") .. "\r\n"
	help = help .. " " .. ustrig .. table_cmnds.showhubs .. " - " .. gettext ("Show friendly hubs") .. "\r\n\r\n"

	help = help .. " .:: " .. gettext ("Chatroom user commands") .. ":\r\n\r\n"

	-- chatroom commands
	help = help .. chatroomhelp () .. "\r\n"

	-- help notes
	help = help .. " .:: " .. gettext ("Help notes") .. ":\r\n\r\n"

	help = help .. " " .. gettext ("Command parameters %s are always required, while %s are optional."):format ("<" .. gettext ("parameter") .. ">", "[" .. gettext ("parameter") .. "]") .. "\r\n"
	help = help .. " " .. gettext ("Quoted parameters %s or %s must be used with quotes."):format ("<\"" .. gettext ("parameter") .. "\">", "[\"" .. gettext ("parameter") .. "\"]") .. "\r\n\r\n"

help = help .. " .:: " .. gettext ("Additional help") .. ":\r\n\r\n"

	-- additional help
	help = help .. " " .. table_othsets.vazhub .. " - VAZ\r\n"

commandanswer (nick, help)
end

----- ---- --- -- -

function sendstats (nick)
	local entchatran = counttable (tbl_sql.chran)
	local cntchatran = countranks (tbl_sql.chran)
	local mesperuser = 0

	if entchatran > 0 then
		mesperuser = cntchatran / entchatran
	end

	local stats = "\r\n\r\n .:: " .. gettext ("%s statistics"):format ("Ledokol") .. ":\r\n"
	stats = stats .. "\r\n " .. gettext ("Script version: %s"):format (ver_ledo .. "." .. bld_ledo .. "." .. table_othsets.langver)
	stats = stats .. "\r\n " .. gettext ("%s version: %s"):format ("Verlihub", (getconfig ("hub_version") or gettext ("Unknown")))
	stats = stats .. "\r\n " .. gettext ("%s plugin version: %s"):format ("Lua", (table_othsets.ver_luaplug or gettext ("Unknown")))
	stats = stats .. "\r\n " .. gettext ("%s library version: %s"):format ("Lua", (table_othsets.ver_lua or gettext ("Unknown")))
	stats = stats .. "\r\n " .. gettext ("%s module version: %s"):format ("LuaSocket", (table_othsets.ver_sock or gettext ("Not installed")))
	--stats = stats .. "\r\n " .. gettext ("%s module version: %s"):format ("LTN12", (table_othsets.ver_ltn12 or gettext ("Unknown")))
	stats = stats .. "\r\n " .. gettext ("%s version: %s"):format ("MySQL", (table_othsets.ver_sql or gettext ("Unknown")))
	stats = stats .. "\r\n " .. gettext ("%s version: %s"):format ("cURL", (table_othsets.ver_curl or gettext ("Unknown")))
	--stats = stats .. "\r\n " .. gettext ("%s version: %s"):format ("iConv", (table_othsets.ver_iconv or gettext ("Unknown")))
	stats = stats .. "\r\n"
	stats = stats .. "\r\n " .. gettext ("Script uptime: %s"):format (formatuptime (table_othsets.uptime, false))
	local mu = makesize (getmemusg ()) -- memory

if table_sets.statscollint > 0 then
	local _, rows = VH:SQLQuery ("select `count` from `" .. tbl_sql.stat .. "` where `type` = 'memory_peak' limit 1")

	if rows > 0 then
		local _, pmu = VH:SQLFetch (0)
		mu = mu .. " ][ " .. makesize (pmu)
	end
end

stats = stats .. "\r\n " .. gettext ("Script memory usage: %s"):format (mu)
stats = stats .. "\r\n " .. gettext ("Script size: %d lines in %s"):format (getownlinecnt (), makesize (getownsize (false, nil)))

if table_refu.GetUpTime then -- hub uptime
	local ut = formatuptime ((os.time () - getuptime ()), true)

	if table_sets.statscollint > 0 then
		local _, rows = VH:SQLQuery ("select `count` from `" .. tbl_sql.stat .. "` where `type` = 'uptime_peak' limit 1")

		if rows > 0 then
			local _, put = VH:SQLFetch (0)
			ut = ut .. " ][ " .. formatuptime ((os.time () - tonumber (put)), true)
		end
	end

	stats = stats .. "\r\n " .. gettext ("Hub uptime: %s"):format (ut)
end

	-- users

	local uc = getusercount ()
	local val = _tostring (uc)

	if table_sets.statscollint > 0 then
		local _, rows = VH:SQLQuery ("select `count` from `" .. tbl_sql.stat .. "` where `type` = 'users_peak' limit 1")

		if rows > 0 then
			local _, puc = VH:SQLFetch (0)
			puc = tonumber (puc) or 0
			val = val .. " ][ " .. _tostring (puc)
		end
	end

	stats = stats .. "\r\n " .. gettext ("User count: %s"):format (val)

	-- total share

	local ts = gettotsharesize ()
	val = makesize (ts)

	if table_sets.statscollint > 0 then
		local _, rows = VH:SQLQuery ("select `count` from `" .. tbl_sql.stat .. "` where `type` = 'share_peak' limit 1")

		if rows > 0 then
			local _, pts = VH:SQLFetch (0)
			val = val .. " ][ " .. makesize (tonumber (pts))
		end
	end

	stats = stats .. "\r\n " .. gettext ("Total share: %s"):format (val)

	-- average share per user

	if uc > 0 and ts > 0 then
		val = makesize (roundint ((ts / uc), 0))

		if table_sets.statscollint > 0 then
			local _, rows = VH:SQLQuery ("select `count` from `" .. tbl_sql.stat .. "` where `type` = 'avgshare_peak' limit 1")

			if rows > 0 then
				local _, pavg = VH:SQLFetch (0)
				pavg = tonumber (pavg) or 0
				val = val .. " ][ " .. makesize (pavg)
			end
		end

		stats = stats .. "\r\n " .. gettext ("Average share per user: %s"):format (val)
	end

stats = stats .. "\r\n " .. gettext ("Configuration directory: %s"):format (table_othsets.cfgdir)
stats = stats .. "\r\n " .. gettext ("Open files limit: %d"):format ((getulimit () or 0))
stats = stats .. "\r\n"
stats = stats .. "\r\n " .. gettext ("Total chat rank points: %d"):format (cntchatran)
stats = stats .. "\r\n " .. gettext ("Total share rank size: %s"):format (makesize (countranks (tbl_sql.shran)))
stats = stats .. "\r\n " .. gettext ("Total operator rank points: %d"):format (countranks (tbl_sql.opran))
stats = stats .. "\r\n " .. gettext ("Total search rank points: %d"):format (countranks (tbl_sql.srran))
stats = stats .. "\r\n " .. gettext ("Total word rank points: %d"):format (countranks (tbl_sql.wdran))
stats = stats .. "\r\n " .. gettext ("Average message count per user: %.2f"):format (mesperuser)
stats = stats .. "\r\n"
stats = stats .. "\r\n " .. gettext ("Size of kicks table: %d [ %s: %d @ %s ]"):format (counttable ("kicklist"), "C", (getledoconf ("limcleankick") or 0), fromunixtime ((getledoconf ("lastcleankick") or 0), true))
stats = stats .. "\r\n " .. gettext ("Size of bans table: %d [ %s: %d @ %s ]"):format (counttable ("banlist"), "C", (getledoconf ("limcleanban") or 0), fromunixtime ((getledoconf ("lastcleanban") or 0), true))
stats = stats .. "\r\n " .. gettext ("Size of unbans table: %d [ %s: %d @ %s ]"):format (counttable ("unbanlist"), "C", (getledoconf ("limcleanunban") or 0), fromunixtime ((getledoconf ("lastcleanunban") or 0), true))
stats = stats .. "\r\n " .. gettext ("Size of registered users table: %d [ %s: %d @ %s ]"):format (counttable ("reglist"), "C", (getledoconf ("limcleanreg") or 0), fromunixtime ((getledoconf ("lastcleanreg") or 0), true))
	stats = stats .. "\r\n " .. gettext ("Size of user log table: %d [ %s: %d @ %s ]"):format (counttable (tbl_sql.ulog), "C", (getledoconf ("limcleanulog") or 0), fromunixtime ((getledoconf ("lastcleanulog") or 0), true))
stats = stats .. "\r\n " .. gettext ("Size of command log table: %d [ %s: %d @ %s ]"):format (counttable (tbl_sql.clog), "C", (getledoconf ("limcleanclog") or 0), fromunixtime ((getledoconf ("lastcleanclog") or 0), true))
stats = stats .. "\r\n " .. gettext ("Size of release table: %d [ %s: %d @ %s ]"):format (counttable (tbl_sql.rel), "C", (getledoconf ("limcleanrel") or 0), fromunixtime ((getledoconf ("lastcleanrel") or 0), true))
stats = stats .. "\r\n " .. gettext ("Size of chat ranks table: %d [ %s: %d @ %s ]"):format (counttable (tbl_sql.chran), "C", (getledoconf ("limcleanchran") or 0), fromunixtime ((getledoconf ("lastcleanchran") or 0), true))
stats = stats .. "\r\n " .. gettext ("Size of share ranks table: %d [ %s: %d @ %s ]"):format (counttable (tbl_sql.shran), "C", (getledoconf ("limcleanshran") or 0), fromunixtime ((getledoconf ("lastcleanshran") or 0), true))
stats = stats .. "\r\n " .. gettext ("Size of operator ranks table: %d [ %s: %d @ %s ]"):format (counttable (tbl_sql.opran), "C", (getledoconf ("limcleanopran") or 0), fromunixtime ((getledoconf ("lastcleanopran") or 0), true))
stats = stats .. "\r\n " .. gettext ("Size of search ranks table: %d [ %s: %d @ %s ]"):format (counttable (tbl_sql.srran), "C", (getledoconf ("limcleansrran") or 0), fromunixtime ((getledoconf ("lastcleansrran") or 0), true))
stats = stats .. "\r\n " .. gettext ("Size of word ranks table: %d [ %s: %d @ %s ]"):format (counttable (tbl_sql.wdran), "C", (getledoconf ("limcleanwdran") or 0), fromunixtime ((getledoconf ("lastcleanwdran") or 0), true))
stats = stats .. "\r\n " .. gettext ("Size of user location statistics table: %d [ %s: %s ]"):format (counttable (tbl_sql.ccstat), "C", fromunixtime ((getledoconf ("date_ccstats") or 0), true))
stats = stats .. "\r\n " .. gettext ("Size of IP logger plugin table: %d [ %s: %d @ %s ]"):format (counttable ("pi_iplog"), "C", (getledoconf ("limcleaniplog") or 0), fromunixtime ((getledoconf ("lastcleaniplog") or 0), true))
stats = stats .. "\r\n " .. gettext ("Size of statistics plugin table: %d [ %s: %d @ %s ]"):format (counttable ("pi_stats"), "C", (getledoconf ("limcleanstats") or 0), fromunixtime ((getledoconf ("lastcleanstats") or 0), true)) .. "\r\n"

commandanswer (nick, stats)
end

----- ---- --- -- -

function showledoconf (nick)
	local conf = gettext ("Script configuration variables") .. ":\r\n"

	conf = conf .. "\r\n [::] mincommandclass = " .. _tostring (table_sets.mincommandclass)
	conf = conf .. "\r\n [::] minusrcommandclass = " .. _tostring (table_sets.minusrcommandclass)
	conf = conf .. "\r\n [::] commandstopm = " .. _tostring (table_sets.commandstopm)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] scanbelowclass = " .. _tostring (table_sets.scanbelowclass)
	conf = conf .. "\r\n [::] thirdacttime = " .. _tostring (table_sets.thirdacttime)
	conf = conf .. "\r\n [::] seventhacttime = " .. _tostring (table_sets.seventhacttime)
	conf = conf .. "\r\n [::] sixthactaddr = " .. _tostring (table_sets.sixthactaddr)
	conf = conf .. "\r\n [::] ninthactrepmsg = " .. _tostring (table_sets.ninthactrepmsg)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] enableantispam = " .. _tostring (table_sets.enableantispam)
	conf = conf .. "\r\n [::] antispamdebug = " .. _tostring (table_sets.antispamdebug)
	conf = conf .. "\r\n [::] antibelowclass = " .. _tostring (table_sets.antibelowclass)
	conf = conf .. "\r\n [::] allowspamtoops = " .. _tostring (table_sets.allowspamtoops)
	conf = conf .. "\r\n [::] checkcmdspam = " .. _tostring (table_sets.checkcmdspam)
	conf = conf .. "\r\n [::] antikreason = " .. _tostring (table_sets.antikreason)
	conf = conf .. "\r\n [::] antimessage = " .. _tostring (table_sets.antimessage)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] enablesearfilt = " .. _tostring (table_sets.enablesearfilt)
	conf = conf .. "\r\n [::] sefiblockdel = " .. _tostring (table_sets.sefiblockdel)
	conf = conf .. "\r\n [::] sefireason = " .. _tostring (table_sets.sefireason)
	conf = conf .. "\r\n [::] searfiltmsg = " .. _tostring (table_sets.searfiltmsg)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] avsearchint = " .. _tostring (table_sets.avsearchint)
	conf = conf .. "\r\n [::] avfilediff = " .. _tostring (table_sets.avfilediff)
	conf = conf .. "\r\n [::] avfilecount = " .. _tostring (table_sets.avfilecount)
	conf = conf .. "\r\n [::] avuserfree = " .. _tostring (table_sets.avuserfree)
	conf = conf .. "\r\n [::] avfeedverb = " .. _tostring (table_sets.avfeedverb)
	conf = conf .. "\r\n [::] avsendtodb = " .. _tostring (table_sets.avsendtodb)
	conf = conf .. "\r\n [::] avdbloadint = " .. _tostring (table_sets.avdbloadint)
	conf = conf .. "\r\n [::] avrandrequest = " .. _tostring (table_sets.avrandrequest)
	conf = conf .. "\r\n [::] avsearservaddr = " .. _tostring (table_sets.avsearservaddr)
	conf = conf .. "\r\n [::] avsearservport = " .. _tostring (table_sets.avsearservport)
	conf = conf .. "\r\n [::] avdetaction = " .. _tostring (table_sets.avdetaction)
	conf = conf .. "\r\n [::] avkicktext = " .. _tostring (table_sets.avkicktext)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] classnotianti = " .. _tostring (table_sets.classnotianti)
	conf = conf .. "\r\n [::] classnotiex = " .. _tostring (table_sets.classnotiex)
	conf = conf .. "\r\n [::] classnotisefi = " .. _tostring (table_sets.classnotisefi)
	conf = conf .. "\r\n [::] classnotiav = " .. _tostring (table_sets.classnotiav)
	conf = conf .. "\r\n [::] classnotimich = " .. _tostring (table_sets.classnotimich)
	conf = conf .. "\r\n [::] classnotiflood = " .. _tostring (table_sets.classnotiflood)
	conf = conf .. "\r\n [::] classnotigagip = " .. _tostring (table_sets.classnotigagip)
	conf = conf .. "\r\n [::] classnotilowupreg = " .. _tostring (table_sets.classnotilowupreg)
	conf = conf .. "\r\n [::] classnotilowupsear = " .. _tostring (table_sets.classnotilowupsear)
	conf = conf .. "\r\n [::] classnotilowupchat = " .. _tostring (table_sets.classnotilowupchat)
	conf = conf .. "\r\n [::] classnoticom = " .. _tostring (table_sets.classnoticom)
	conf = conf .. "\r\n [::] classnotisay = " .. _tostring (table_sets.classnotisay)
	conf = conf .. "\r\n [::] classnotirepl = " .. _tostring (table_sets.classnotirepl)
	conf = conf .. "\r\n [::] classnotikick = " .. _tostring (table_sets.classnotikick)
	conf = conf .. "\r\n [::] classnotiban = " .. _tostring (table_sets.classnotiban)
	conf = conf .. "\r\n [::] classnotireg = " .. _tostring (table_sets.classnotireg)
	conf = conf .. "\r\n [::] classnoticonfig = " .. _tostring (table_sets.classnoticonfig)
	conf = conf .. "\r\n [::] classnotiredir = " .. _tostring (table_sets.classnotiredir)
	conf = conf .. "\r\n [::] classnotibadctm = " .. _tostring (table_sets.classnotibadctm)
	conf = conf .. "\r\n [::] classnotiunk = " .. _tostring (table_sets.classnotiunk)
	conf = conf .. "\r\n [::] classnotioff = " .. _tostring (table_sets.classnotioff)
	conf = conf .. "\r\n [::] classnotiledoact = " .. _tostring (table_sets.classnotiledoact)
	conf = conf .. "\r\n [::] classnotiprotoflood = " .. _tostring (table_sets.classnotiprotoflood)
	conf = conf .. "\r\n [::] classnotiauth = " .. _tostring (table_sets.classnotiauth)
	conf = conf .. "\r\n [::] classnotiwelcome = " .. _tostring (table_sets.classnotiwelcome)
	conf = conf .. "\r\n [::] classnotibotpm = " .. _tostring (table_sets.classnotibotpm)
	conf = conf .. "\r\n [::] classnotihardban = " .. _tostring (table_sets.classnotihardban)
	conf = conf .. "\r\n [::] classnotiipwatch = " .. _tostring (table_sets.classnotiipwatch)
	conf = conf .. "\r\n [::] classnotiblist = " .. _tostring (table_sets.classnotiblist)
	conf = conf .. "\r\n [::] classnoticust = " .. _tostring (table_sets.classnoticust)
	conf = conf .. "\r\n [::] classnotipeakuc = " .. _tostring (table_sets.classnotipeakuc)
	conf = conf .. "\r\n [::] classnotipeakts = " .. _tostring (table_sets.classnotipeakts)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] micheck = " .. _tostring (table_sets.micheck)
	conf = conf .. "\r\n [::] micallall = " .. _tostring (table_sets.micallall)
	conf = conf .. "\r\n [::] michnick = " .. _tostring (table_sets.michnick)
	conf = conf .. "\r\n [::] michdesc = " .. _tostring (table_sets.michdesc)
	conf = conf .. "\r\n [::] michtag = " .. _tostring (table_sets.michtag)
	conf = conf .. "\r\n [::] michconn = " .. _tostring (table_sets.michconn)
	conf = conf .. "\r\n [::] michemail = " .. _tostring (table_sets.michemail)
	conf = conf .. "\r\n [::] michshare = " .. _tostring (table_sets.michshare)
	conf = conf .. "\r\n [::] michip = " .. _tostring (table_sets.michip)
	conf = conf .. "\r\n [::] michcc = " .. _tostring (table_sets.michcc)
	conf = conf .. "\r\n [::] michdns = " .. _tostring (table_sets.michdns)
	conf = conf .. "\r\n [::] michsup = " .. _tostring (table_sets.michsup)
	conf = conf .. "\r\n [::] michver = " .. _tostring (table_sets.michver)
	conf = conf .. "\r\n [::] michfakenum = " .. _tostring (table_sets.michfakenum)
	conf = conf .. "\r\n [::] michfakediv = " .. _tostring (table_sets.michfakediv)
	conf = conf .. "\r\n [::] michclone = " .. _tostring (table_sets.michclone)
	conf = conf .. "\r\n [::] michsameip = " .. _tostring (table_sets.michsameip)
	conf = conf .. "\r\n [::] minickmessage = " .. _tostring (table_sets.minickmessage)
	conf = conf .. "\r\n [::] midescmessage = " .. _tostring (table_sets.midescmessage)
	conf = conf .. "\r\n [::] mitagmessage = " .. _tostring (table_sets.mitagmessage)
	conf = conf .. "\r\n [::] miconnmessage = " .. _tostring (table_sets.miconnmessage)
	conf = conf .. "\r\n [::] miemailmessage = " .. _tostring (table_sets.miemailmessage)
	conf = conf .. "\r\n [::] misharemessage = " .. _tostring (table_sets.misharemessage)
	conf = conf .. "\r\n [::] miipmessage = " .. _tostring (table_sets.miipmessage)
	conf = conf .. "\r\n [::] miccmessage = " .. _tostring (table_sets.miccmessage)
	conf = conf .. "\r\n [::] midnsmessage = " .. _tostring (table_sets.midnsmessage)
	conf = conf .. "\r\n [::] misupmessage = " .. _tostring (table_sets.misupmessage)
	conf = conf .. "\r\n [::] mivermessage = " .. _tostring (table_sets.mivermessage)
	conf = conf .. "\r\n [::] mifakemessage = " .. _tostring (table_sets.mifakemessage)
	conf = conf .. "\r\n [::] miclonemessage = " .. _tostring (table_sets.miclonemessage)
	conf = conf .. "\r\n [::] misameipmessage = " .. _tostring (table_sets.misameipmessage)
	conf = conf .. "\r\n [::] mitbantime = " .. _tostring (table_sets.mitbantime)
	conf = conf .. "\r\n [::] miclonekicktime = " .. _tostring (table_sets.miclonekicktime)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] kickunkusers = " .. _tostring (table_sets.kickunkusers)
	conf = conf .. "\r\n [::] unkbeforelogin = " .. _tostring (table_sets.unkbeforelogin)
	conf = conf .. "\r\n [::] unktbantime = " .. _tostring (table_sets.unktbantime)
	conf = conf .. "\r\n [::] unkkickreason = " .. _tostring (table_sets.unkkickreason)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] authrunning = " .. _tostring (table_sets.authrunning)
	conf = conf .. "\r\n [::] authmessage = " .. _tostring (table_sets.authmessage)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] regnewpubenable = " .. _tostring (table_sets.regnewpubenable)
	conf = conf .. "\r\n [::] regnewpubmsgreg = " .. _tostring (table_sets.regnewpubmsgreg)
	conf = conf .. "\r\n [::] regnewpubmsgvip = " .. _tostring (table_sets.regnewpubmsgvip)
	conf = conf .. "\r\n [::] regnewpubmsgop = " .. _tostring (table_sets.regnewpubmsgop)
	conf = conf .. "\r\n [::] regnewpubmsgcheef = " .. _tostring (table_sets.regnewpubmsgcheef)
	conf = conf .. "\r\n [::] regnewpubmsgadmin = " .. _tostring (table_sets.regnewpubmsgadmin)
	conf = conf .. "\r\n [::] regnewpubmsgmaster = " .. _tostring (table_sets.regnewpubmsgmaster)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] regkickaction = " .. _tostring (table_sets.regkickaction)
	conf = conf .. "\r\n [::] chatuptime = " .. _tostring (table_sets.chatuptime)
	conf = conf .. "\r\n [::] chatuptimeact = " .. _tostring (table_sets.chatuptimeact)
	conf = conf .. "\r\n [::] regmechatcnt = " .. _tostring (table_sets.regmechatcnt)
	conf = conf .. "\r\n [::] regmeuptime = " .. _tostring (table_sets.regmeuptime)
	conf = conf .. "\r\n [::] searchuptime = " .. _tostring (table_sets.searchuptime)
	conf = conf .. "\r\n [::] searuptimeact = " .. _tostring (table_sets.searuptimeact)
	conf = conf .. "\r\n [::] showuseruptime = " .. _tostring (table_sets.showuseruptime)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] custnickclass = " .. _tostring (table_sets.custnickclass)
	conf = conf .. "\r\n [::] custlistclass = " .. _tostring (table_sets.custlistclass)
	conf = conf .. "\r\n [::] custmaxlen = " .. _tostring (table_sets.custmaxlen)
	conf = conf .. "\r\n [::] savecustnicks = " .. _tostring (table_sets.savecustnicks)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] opkeyclass = " .. _tostring (table_sets.opkeyclass)
	conf = conf .. "\r\n [::] opkeyshare = " .. _tostring (table_sets.opkeyshare)
	conf = conf .. "\r\n [::] opkeyself = " .. _tostring (table_sets.opkeyself)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] enablevipkick = " .. _tostring (table_sets.enablevipkick)
	conf = conf .. "\r\n [::] votekickclass = " .. _tostring (table_sets.votekickclass)
	conf = conf .. "\r\n [::] votekickcount = " .. _tostring (table_sets.votekickcount)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] reluseclass = " .. _tostring (table_sets.reluseclass)
	conf = conf .. "\r\n [::] relmodclass = " .. _tostring (table_sets.relmodclass)
	conf = conf .. "\r\n [::] welcomeclass = " .. _tostring (table_sets.welcomeclass)
	conf = conf .. "\r\n [::] offmsgclass = " .. _tostring (table_sets.offmsgclass)
	conf = conf .. "\r\n [::] mchistclass = " .. _tostring (table_sets.mchistclass)
	conf = conf .. "\r\n [::] chatmodeclass = " .. _tostring (table_sets.chatmodeclass)
	conf = conf .. "\r\n [::] sayclass = " .. _tostring (table_sets.sayclass)
	conf = conf .. "\r\n [::] clearclass = " .. _tostring (table_sets.clearclass)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] chatrunning = " .. _tostring (table_sets.chatrunning)
	conf = conf .. "\r\n [::] ccroomrunning = " .. _tostring (table_sets.ccroomrunning)
	conf = conf .. "\r\n [::] ccroomstyle = " .. _tostring (table_sets.ccroomstyle)
	conf = conf .. "\r\n [::] ccroomautocls = " .. _tostring (table_sets.ccroomautocls)
	conf = conf .. "\r\n [::] ccroommancls = " .. _tostring (table_sets.ccroommancls)
	conf = conf .. "\r\n [::] roomusernotify = " .. _tostring (table_sets.roomusernotify)
	conf = conf .. "\r\n [::] chathistlimit = " .. _tostring (table_sets.chathistlimit)
	conf = conf .. "\r\n [::] chathistbotmsg = " .. _tostring (table_sets.chathistbotmsg)
	conf = conf .. "\r\n [::] chathistipclass = " .. _tostring (table_sets.chathistipclass)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] remrunning = " .. _tostring (table_sets.remrunning)
	conf = conf .. "\r\n [::] trigrunning = " .. _tostring (table_sets.trigrunning)
	conf = conf .. "\r\n [::] replrunning = " .. _tostring (table_sets.replrunning)
	conf = conf .. "\r\n [::] replprotect = " .. _tostring (table_sets.replprotect)
	conf = conf .. "\r\n [::] resprunning = " .. _tostring (table_sets.resprunning)
	conf = conf .. "\r\n [::] respdelay = " .. _tostring (table_sets.respdelay)
	conf = conf .. "\r\n [::] respskiplast = " .. _tostring (table_sets.respskiplast)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] newsclass = " .. _tostring (table_sets.newsclass)
	conf = conf .. "\r\n [::] newsautolines = " .. _tostring (table_sets.newsautolines)
	conf = conf .. "\r\n [::] newsdeflines = " .. _tostring (table_sets.newsdeflines)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] chatrankclass = " .. _tostring (table_sets.chatrankclass)
	conf = conf .. "\r\n [::] sharerankclass = " .. _tostring (table_sets.sharerankclass)
	conf = conf .. "\r\n [::] shareranmin = " .. _tostring (table_sets.shareranmin)
	conf = conf .. "\r\n [::] oprankclass = " .. _tostring (table_sets.oprankclass)
	conf = conf .. "\r\n [::] searrankclass = " .. _tostring (table_sets.searrankclass)
	conf = conf .. "\r\n [::] wordrankclass = " .. _tostring (table_sets.wordrankclass)
	conf = conf .. "\r\n [::] wordranmin = " .. _tostring (table_sets.wordranmin)
	conf = conf .. "\r\n [::] wordranmax = " .. _tostring (table_sets.wordranmax)
	conf = conf .. "\r\n [::] ranklimit = " .. _tostring (table_sets.ranklimit)
	conf = conf .. "\r\n [::] ccstatsclass = " .. _tostring (table_sets.ccstatsclass)
	conf = conf .. "\r\n [::] savecchistory = " .. _tostring (table_sets.savecchistory)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] histlimit = " .. _tostring (table_sets.histlimit)
	conf = conf .. "\r\n [::] histbotmsg = " .. _tostring (table_sets.histbotmsg)
	conf = conf .. "\r\n [::] histautolines = " .. _tostring (table_sets.histautolines)
	conf = conf .. "\r\n [::] ophistautolines = " .. _tostring (table_sets.ophistautolines)
	conf = conf .. "\r\n [::] histautolinemax = " .. _tostring (table_sets.histautolinemax)
	conf = conf .. "\r\n [::] histautonewlinedel = " .. _tostring (table_sets.histautonewlinedel)
	conf = conf .. "\r\n [::] histdeflines = " .. _tostring (table_sets.histdeflines)
	conf = conf .. "\r\n [::] histshowipclass = " .. _tostring (table_sets.histshowipclass)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] autoupdcheck = " .. _tostring (table_sets.autoupdcheck)
	conf = conf .. "\r\n [::] addspecialver = " .. _tostring (table_sets.addspecialver)
	conf = conf .. "\r\n [::] addledobot = " .. _tostring (table_sets.addledobot)
	conf = conf .. "\r\n [::] ledobotnick = " .. _tostring (table_sets.ledobotnick)
	conf = conf .. "\r\n [::] ledobotmail = " .. _tostring (table_sets.ledobotmail)
	conf = conf .. "\r\n [::] ledobotsize = " .. _tostring (table_sets.ledobotsize)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] useextrafeed = " .. _tostring (table_sets.useextrafeed)
	conf = conf .. "\r\n [::] extrafeednick = " .. _tostring (table_sets.extrafeednick)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] timebotint = " .. _tostring (table_sets.timebotint)
	conf = conf .. "\r\n [::] timebotnick = " .. _tostring (table_sets.timebotnick)
	conf = conf .. "\r\n [::] fasttimebot = " .. _tostring (table_sets.fasttimebot)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] srvtimediff = " .. _tostring (table_sets.srvtimediff)
	conf = conf .. "\r\n [::] longdateformat = " .. _tostring (table_sets.longdateformat)
	conf = conf .. "\r\n [::] dateformat = " .. _tostring (table_sets.dateformat)
	conf = conf .. "\r\n [::] timeformat = " .. _tostring (table_sets.timeformat)
	conf = conf .. "\r\n [::] shrtuptimefmt = " .. _tostring (table_sets.shrtuptimefmt)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] statscollint = " .. _tostring (table_sets.statscollint)
	conf = conf .. "\r\n [::] userrecmsg = " .. _tostring (table_sets.userrecmsg)
	conf = conf .. "\r\n [::] sharerecmsg = " .. _tostring (table_sets.sharerecmsg)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] rolltopicint = " .. _tostring (table_sets.rolltopicint)
	conf = conf .. "\r\n [::] rolltopicspace = " .. _tostring (table_sets.rolltopicspace)
	conf = conf .. "\r\n [::] showtopicowner = " .. _tostring (table_sets.showtopicowner)
	conf = conf .. "\r\n"

	--conf = conf .. "\r\n [::] hublistpingint = " .. _tostring (table_sets.hublistpingint)
	--conf = conf .. "\r\n [::] hubpingtimeout = " .. _tostring (table_sets.hubpingtimeout)
	--conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] chatantiflood = " .. _tostring (table_sets.chatantiflood)
	conf = conf .. "\r\n [::] chatfloodallcount = " .. _tostring (table_sets.chatfloodallcount)
	conf = conf .. "\r\n [::] chatfloodallint = " .. _tostring (table_sets.chatfloodallint)
	conf = conf .. "\r\n [::] chatfloodonecount = " .. _tostring (table_sets.chatfloodonecount)
	conf = conf .. "\r\n [::] chatfloodoneint = " .. _tostring (table_sets.chatfloodoneint)
	conf = conf .. "\r\n [::] chatfloodcount = " .. _tostring (table_sets.chatfloodcount)
	conf = conf .. "\r\n [::] chatfloodint = " .. _tostring (table_sets.chatfloodint)
	conf = conf .. "\r\n [::] chatfloodaction = " .. _tostring (table_sets.chatfloodaction)
	conf = conf .. "\r\n [::] chatfloodcmdgag = " .. _tostring (table_sets.chatfloodcmdgag)
	conf = conf .. "\r\n [::] ipconantiflint = " .. _tostring (table_sets.ipconantiflint)
	conf = conf .. "\r\n [::] enablehardban = " .. _tostring (table_sets.enablehardban)
	conf = conf .. "\r\n [::] useblacklist = " .. _tostring (table_sets.useblacklist)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] protofloodctmcnt = " .. _tostring (table_sets.protofloodctmcnt)
	conf = conf .. "\r\n [::] protofloodctmint = " .. _tostring (table_sets.protofloodctmint)
	conf = conf .. "\r\n [::] protofloodctmact = " .. _tostring (table_sets.protofloodctmact)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] enableuserlog = " .. _tostring (table_sets.enableuserlog)
	conf = conf .. "\r\n [::] ulogautoclean = " .. _tostring (table_sets.ulogautoclean)
	conf = conf .. "\r\n [::] logallmyinfos = " .. _tostring (table_sets.logallmyinfos)
	conf = conf .. "\r\n [::] enableipwatch = " .. _tostring (table_sets.enableipwatch)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] chatcodeon = " .. _tostring (table_sets.chatcodeon)
	conf = conf .. "\r\n [::] chatcodeflag = " .. _tostring (table_sets.chatcodeflag)
	conf = conf .. "\r\n [::] codemaxclass = " .. _tostring (table_sets.codemaxclass)
	conf = conf .. "\r\n [::] codelength = " .. _tostring (table_sets.codelength)
	conf = conf .. "\r\n [::] codecharlist = " .. _tostring (table_sets.codecharlist)
	conf = conf .. "\r\n [::] codecharsep = " .. _tostring (table_sets.codecharsep)
	conf = conf .. "\r\n [::] codetext = " .. _tostring (table_sets.codetext)
	conf = conf .. "\r\n [::] pmminclass = " .. _tostring (table_sets.pmminclass)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] ctmminclass = " .. _tostring (table_sets.ctmminclass)
	conf = conf .. "\r\n [::] ctmmsginterval = " .. _tostring (table_sets.ctmmsginterval)
	conf = conf .. "\r\n [::] ctmblockmsg = " .. _tostring (table_sets.ctmblockmsg)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] instusermenu = " .. _tostring (table_sets.instusermenu)
	conf = conf .. "\r\n [::] instrcmenu = " .. _tostring (table_sets.instrcmenu)
	conf = conf .. "\r\n [::] usermenuname = " .. _tostring (table_sets.usermenuname)
	conf = conf .. "\r\n [::] enablecmdlog = " .. _tostring (table_sets.enablecmdlog)
	conf = conf .. "\r\n"

	conf = conf .. "\r\n [::] funrandomchat = " .. _tostring (table_sets.funrandomchat)
	conf = conf .. "\r\n [::] useripsupport = " .. _tostring (table_sets.useripsupport)
	conf = conf .. "\r\n [::] useripinchat = " .. _tostring (table_sets.useripinchat)
	conf = conf .. "\r\n [::] tolowcharcase = " .. _tostring (table_sets.tolowcharcase)
	conf = conf .. "\r\n [::] translitmode = " .. _tostring (table_sets.translitmode)
	conf = conf .. "\r\n [::] langfileprefix = " .. _tostring (table_sets.langfileprefix)
	conf = conf .. "\r\n"

	commandanswer (nick, conf)
end

----- ---- --- -- -

function createtables ()
-- settings
VH:SQLQuery ("create table if not exists `" .. tbl_sql.conf .. "` (`variable` varchar(255) not null, `value` text not null, primary key (`variable`)) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- antispam
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.anti .. "` (`antispam` varchar(255) not null, `occurred` bigint(20) unsigned not null default 0, `priority` tinyint(1) unsigned not null default 0, `action` tinyint(2) unsigned not null default 0, `flags` tinyint(1) unsigned not null default 3, primary key (`antispam`)) engine = myisam default character set utf8 collate utf8_unicode_ci")
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.antiex .. "` (`exception` varchar(255) not null, `occurred` bigint(20) unsigned not null default 0, primary key (`exception`)) engine = myisam default character set utf8 collate utf8_unicode_ci")

-- search filter
VH:SQLQuery ("create table if not exists `" .. tbl_sql.sefi .. "` (`filter` varchar(255) not null, `occurred` bigint(20) unsigned not null default 0, `priority` tinyint(1) unsigned not null default 0, `action` tinyint(1) unsigned not null default 0, `type` tinyint(1) unsigned not null default 1, primary key (`filter`)) engine = myisam default character set utf8 collate utf8_unicode_ci")
VH:SQLQuery ("create table if not exists `" .. tbl_sql.sefiex .. "` (`exception` varchar(255) not null, `occurred` bigint(20) unsigned not null default 0, primary key (`exception`)) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- myinfo
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.minick .. "` (`nick` varchar(255) not null primary key, `time` varchar(10) null, `occurred` bigint(20) unsigned not null default 0, `note` varchar(255) null) engine = myisam default character set utf8 collate utf8_unicode_ci")
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.midesc .. "` (`description` varchar(255) not null primary key, `time` varchar(10) null, `occurred` bigint(20) unsigned not null default 0, `note` varchar(255) null) engine = myisam default character set utf8 collate utf8_unicode_ci")
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.mitag .. "` (`tag` varchar(255) not null primary key, `time` varchar(10) null, `occurred` bigint(20) unsigned not null default 0, `note` varchar(255) null) engine = myisam default character set utf8 collate utf8_unicode_ci")
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.miconn .. "` (`connection` varchar(255) not null primary key, `time` varchar(10) null, `occurred` bigint(20) unsigned not null default 0, `note` varchar(255) null) engine = myisam default character set utf8 collate utf8_unicode_ci")
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.miemail .. "` (`email` varchar(255) not null primary key, `time` varchar(10) null, `occurred` bigint(20) unsigned not null default 0, `note` varchar(255) null) engine = myisam default character set utf8 collate utf8_unicode_ci")
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.mishare .. "` (`share` varchar(255) not null primary key, `time` varchar(10) null, `occurred` bigint(20) unsigned not null default 0, `note` varchar(255) null) engine = myisam default character set utf8 collate utf8_unicode_ci")
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.miip .. "` (`ip` varchar(255) not null primary key, `time` varchar(10) null, `occurred` bigint(20) unsigned not null default 0, `note` varchar(255) null) engine = myisam default character set utf8 collate utf8_unicode_ci")
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.micc .. "` (`cc` varchar(255) not null primary key, `time` varchar(10) null, `occurred` bigint(20) unsigned not null default 0, `note` varchar(255) null) engine = myisam default character set utf8 collate utf8_unicode_ci")
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.midns .. "` (`dns` varchar(255) not null primary key, `time` varchar(10) null, `occurred` bigint(20) unsigned not null default 0, `note` varchar(255) null) engine = myisam default character set utf8 collate utf8_unicode_ci")
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.misup .. "` (`supports` varchar(255) not null primary key, `time` varchar(10) null, `occurred` bigint(20) unsigned not null default 0, `note` varchar(255) null) engine = myisam default character set utf8 collate utf8_unicode_ci")
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.miver .. "` (`version` varchar(255) not null primary key, `time` varchar(10) null, `occurred` bigint(20) unsigned not null default 0, `note` varchar(255) null) engine = myisam default character set utf8 collate utf8_unicode_ci")
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.miex .. "` (`exception` varchar(255) not null primary key, `occurred` bigint(20) unsigned not null default 0, `note` varchar(255) null) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- welcome messages
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.wm .. "` (`nick` varchar(255) not null primary key, `in` text null default null, `out` text null default null) engine = myisam default character set utf8 collate utf8_unicode_ci")

-- custom nicks
VH:SQLQuery ("create table if not exists `" .. tbl_sql.cust .. "` (`nick` varchar(255) not null, `custom` varchar(255) not null, primary key (`nick`)) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- chatrooms
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.chat .. "` (`room` varchar(255) not null, `description` varchar(255) not null, `minclass` tinyint(2) unsigned not null default 0, `maxclass` tinyint(2) unsigned not null default 10, `cc` varchar(2) not null default '*', primary key (`room`)) engine = myisam default character set utf8 collate utf8_unicode_ci")
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.acre .. "` (`id` bigint(20) unsigned not null auto_increment primary key, `cc` varchar(2) not null, `nick` varchar(255) not null) engine = myisam default character set utf8 collate utf8_unicode_ci")

-- reminders
VH:SQLQuery ("create table if not exists `" .. tbl_sql.rem .. "` (`id` varchar(255) not null, `content` text not null, `minclass` tinyint(2) unsigned not null default 0, `maxclass` tinyint(2) unsigned not null default 10, `dest` tinyint(1) unsigned not null default 0, `interval` smallint(5) unsigned not null default 10080, `timer` smallint(5) unsigned not null default 0, primary key (`id`)) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- triggers
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.trig .. "` (`id` varchar(255) not null primary key, `content` text not null, `minclass` tinyint(2) unsigned not null default 0, `maxclass` tinyint(2) unsigned not null default 10) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- news
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.news .. "` (`id` bigint(20) unsigned not null auto_increment primary key, `date` bigint(20) unsigned not null, `by` varchar(255) not null, `item` text not null) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- chat replacer
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.chatrepl .. "` (`id` bigint(20) unsigned not null auto_increment primary key, `message` varchar(255) not null, `replace` text not null, `maxclass` tinyint(2) unsigned not null default 10, `flags` tinyint(1) unsigned not null default 1, `occurred` bigint(20) unsigned not null default 0) engine = myisam default character set utf8 collate utf8_unicode_ci")
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.replex .. "` (`exception` varchar(255) not null primary key, `type` tinyint(1) not null default 0, `occurred` bigint(20) unsigned not null default 0) engine = myisam default character set utf8 collate utf8_unicode_ci")

-- chat responder
VH:SQLQuery ("create table if not exists `" .. tbl_sql.mcresp .. "` (`id` bigint(20) unsigned not null auto_increment, `message` varchar(255) not null, `reply` text not null, `maxclass` tinyint(2) unsigned not null default 10, `occurred` bigint(20) unsigned not null default 0, primary key (`id`)) engine = myisam default character set utf8 collate utf8_unicode_ci")
VH:SQLQuery ("create table if not exists `" .. tbl_sql.respex .. "` (`exception` varchar(255) not null, `occurred` bigint(20) unsigned not null default 0, primary key (`exception`)) engine = myisam default character set utf8 collate utf8_unicode_ci")

-- ip authorization
VH:SQLQuery ("create table if not exists `" .. tbl_sql.auth .. "` (`id` bigint(20) unsigned not null auto_increment, `nick` varchar(255) not null, `ip` varchar(255) not null, `badip` varchar(15) not null default '0.0.0.0', `good` bigint(20) unsigned not null default 0, `bad` bigint(20) unsigned not null default 0, primary key (`id`)) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- releases
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.rel .. "` (`release` varchar(255) not null primary key, `category` varchar(255) not null, `tth` varchar(255) not null, `by` varchar(255) not null, `date` bigint(20) unsigned not null) engine = myisam default character set utf8 collate utf8_unicode_ci")

-- ranks
VH:SQLQuery ("create table if not exists `" .. tbl_sql.chran .. "` (`nick` varchar(255) not null, `rank` bigint(20) unsigned not null default 1, primary key (`nick`)) engine = myisam default character set utf8 collate utf8_unicode_ci")
VH:SQLQuery ("create table if not exists `" .. tbl_sql.opran .. "` (`nick` varchar(255) not null, `rank` bigint(20) unsigned not null default 1, primary key (`nick`)) engine = myisam default character set utf8 collate utf8_unicode_ci")
VH:SQLQuery ("create table if not exists `" .. tbl_sql.shran .. "` (`nick` varchar(255) not null, `rank` bigint(20) unsigned not null default 1, primary key (`nick`)) engine = myisam default character set utf8 collate utf8_unicode_ci")
VH:SQLQuery ("create table if not exists `" .. tbl_sql.srran .. "` (`search` varchar(255) not null, `rank` bigint(20) unsigned not null default 1, primary key (`search`)) engine = myisam default character set utf8 collate utf8_unicode_ci")
VH:SQLQuery ("create table if not exists `" .. tbl_sql.wdran .. "` (`word` varchar(255) not null, `rank` bigint(20) unsigned not null default 1, primary key (`word`)) engine = myisam default character set utf8 collate utf8_unicode_ci")
VH:SQLQuery ("create table if not exists `" .. tbl_sql.ccstat .. "` (`nick` varchar(255) not null, `cc` varchar(2) not null, primary key (`nick`)) engine = myisam default character set utf8 collate utf8_unicode_ci")
VH:SQLQuery ("create table if not exists `" .. tbl_sql.ranex .. "` (`nick` varchar(255) not null, `occurred` bigint(20) unsigned not null default 0, primary key (`nick`)) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- offline messenger
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.off .. "` (`id` bigint(20) unsigned not null auto_increment primary key, `from` varchar(255) not null, `ip` varchar(15) not null, `to` varchar(255) not null, `date` bigint(20) unsigned not null, `message` text not null) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- chat history
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.mchist .. "` (`id` bigint(20) unsigned not null auto_increment primary key, `realnick` varchar(255) not null, `nick` varchar(255) not null, `ip` varchar(15) null, `date` bigint(20) unsigned not null, `message` text not null) engine = myisam default character set utf8 collate utf8_unicode_ci")
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.ophist .. "` (`id` bigint(20) unsigned not null auto_increment primary key, `nick` varchar(255) not null, `date` bigint(20) unsigned not null, `message` text not null, `class` tinyint(2) unsigned not null default 10) engine = myisam default character set utf8 collate utf8_unicode_ci")
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.crhist .. "` (`id` bigint(20) unsigned not null auto_increment primary key, `room` varchar(255) not null, `realnick` varchar(255) not null, `nick` varchar(255) not null, `ip` varchar(15) null, `date` bigint(20) unsigned not null, `message` text not null) engine = myisam default character set utf8 collate utf8_unicode_ci")

-- commands
VH:SQLQuery ("create table if not exists `" .. tbl_sql.ledocmd .. "` (`original` varchar(255) not null, `new` varchar(255) not null, primary key (`original`)) engine = myisam default character set utf8 collate utf8_unicode_ci")
VH:SQLQuery ("create table if not exists `" .. tbl_sql.cmd .. "` (`command` varchar(255) not null, `class` tinyint(2) unsigned not null default 11, `occurred` bigint(20) unsigned not null default 0, primary key (`command`)) engine = myisam default character set utf8 collate utf8_unicode_ci")
VH:SQLQuery ("create table if not exists `" .. tbl_sql.cmdex .. "` (`exception` varchar(255) not null, `occurred` bigint(20) unsigned not null default 0, primary key (`exception`)) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- user log
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.ulog .. "` (`id` bigint(20) unsigned not null auto_increment primary key, `time` bigint(20) unsigned not null, `nick` varchar(255) not null, `ip` varchar(15) not null, `cc` varchar(2) null, `desc` varchar(255) null, `tag` varchar(255) null, `conn` varchar(255) null, `email` varchar(255) null, `share` bigint(20) unsigned not null default 0) engine = myisam default character set utf8 collate utf8_unicode_ci")

-- command log
VH:SQLQuery ("create table if not exists `" .. tbl_sql.clog .. "` (`id` bigint(20) unsigned not null auto_increment, `time` bigint(20) unsigned not null, `nick` varchar(255) not null, `class` tinyint(2) unsigned not null, `command` text not null, primary key (`id`)) engine = myisam default character set utf8 collate utf8_unicode_ci")

-- hublist
VH:SQLQuery ("create table if not exists `" .. tbl_sql.hubs .. "` (`address` varchar(255) not null, `name` varchar(255) not null, `owner` varchar(255) not null, `status` tinyint(1) not null default 0, primary key (`address`)) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- protected list
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.prot .. "` (`protected` varchar(255) not null primary key, `occurred` bigint(20) unsigned not null default 0) engine = myisam default character set utf8 collate utf8_unicode_ci")

-- statistics
VH:SQLQuery ("create table if not exists `" .. tbl_sql.stat .. "` (`type` varchar(255) not null, `time` bigint(20) unsigned not null default 0, `count` text not null, primary key (`type`)) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- no pm
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.nopm .. "` (`nick` varchar(255) not null, `action` tinyint(1) unsigned not null default 0, `maxclass` tinyint(2) unsigned not null default 2, `password` varchar(255) not null, `reason` text not null, primary key (`nick`)) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- hard ban
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.hban .. "` (`ip` varchar(255) not null, `reason` text not null, primary key (`ip`)) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- ip watch
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.ipwa .. "` (`ip` varchar(255) not null, `reason` text not null, `result` tinyint(1) unsigned not null default 0, primary key (`ip`)) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- ip gag
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.ipgag .. "` (`ip` varchar(255) not null, `flag` tinyint(1) unsigned not null default 0, primary key (`ip`)) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- cc gag
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.ccgag .. "` (`item` varchar(255) not null primary key, `flag` tinyint(1) unsigned not null default 0) engine = myisam default character set utf8 collate utf8_unicode_ci")

	-- right click menu
	VH:SQLQuery ("create table if not exists `" .. tbl_sql.rcmenu .. "` (`id` bigint(20) unsigned not null auto_increment primary key, `menu` varchar(255) not null, `command` varchar(255) not null, `type` tinyint(3) unsigned not null default 1, `cont` tinyint(2) unsigned not null default 3, `order` smallint(5) unsigned not null default 0, `minclass` tinyint(2) unsigned not null default 0, `maxclass` tinyint(2) unsigned not null default 10, `off` tinyint(1) unsigned not null default 0) engine = myisam default character set utf8 collate utf8_unicode_ci")
end

----- ---- --- -- -

function droptables ()
for _, v in pairs (tbl_sql) do
	VH:SQLQuery ("drop table `" .. v.."`")
end
end

----- ---- --- -- -

function renametables ()
VH:SQLQuery ("alter table `script_ledokol_settings` rename to `" .. tbl_sql.conf .. "`")
VH:SQLQuery ("alter table `script_ledokol_antispam` rename to `" .. tbl_sql.anti .. "`")
VH:SQLQuery ("alter table `script_ledokol_exceptions` rename to `" .. tbl_sql.antiex .. "`")
VH:SQLQuery ("alter table `script_ledokol_searchfilter` rename to `" .. tbl_sql.sefi .. "`")
VH:SQLQuery ("alter table `script_ledokol_sefiexceptions` rename to `" .. tbl_sql.sefiex .. "`")
	VH:SQLQuery ("alter table `script_ledokol_nicks` rename to `" .. tbl_sql.minick .. "`")
	VH:SQLQuery ("alter table `script_ledokol_descriptions` rename to `" .. tbl_sql.midesc .. "`")
	VH:SQLQuery ("alter table `script_ledokol_tags` rename to `" .. tbl_sql.mitag .. "`")
	VH:SQLQuery ("alter table `script_ledokol_connections` rename to `" .. tbl_sql.miconn .. "`")
	VH:SQLQuery ("alter table `script_ledokol_emails` rename to `" .. tbl_sql.miemail .. "`")
	VH:SQLQuery ("alter table `script_ledokol_shares` rename to `" .. tbl_sql.mishare .. "`")
	VH:SQLQuery ("alter table `script_ledokol_miips` rename to `" .. tbl_sql.miip .. "`")
	VH:SQLQuery ("alter table `script_ledokol_myinfoexceptions` rename to `" .. tbl_sql.miex .. "`")
VH:SQLQuery ("alter table `script_ledokol_authorization` rename to `" .. tbl_sql.auth .. "`")
	VH:SQLQuery ("alter table `script_ledokol_releases` rename to `" .. tbl_sql.rel .. "`")
	VH:SQLQuery ("alter table `script_ledokol_welcomemessages` rename to `" .. tbl_sql.wm .. "`")
VH:SQLQuery ("alter table `script_ledokol_customnicks` rename to `" .. tbl_sql.cust .. "`")
VH:SQLQuery ("alter table `script_ledokol_chatrooms` rename to `" .. tbl_sql.chat .. "`")
VH:SQLQuery ("alter table `script_ledokol_reminders` rename to `" .. tbl_sql.rem .. "`")
	VH:SQLQuery ("alter table `script_ledokol_hubnews` rename to `" .. tbl_sql.news .. "`")
VH:SQLQuery ("alter table `script_ledokol_mcresponder` rename to `" .. tbl_sql.mcresp .. "`")
VH:SQLQuery ("alter table `script_ledokol_respexceptions` rename to `" .. tbl_sql.respex .. "`")
VH:SQLQuery ("alter table `script_ledokol_chatranks` rename to `" .. tbl_sql.chran .. "`")
VH:SQLQuery ("alter table `script_ledokol_opranks` rename to `" .. tbl_sql.opran .. "`")
VH:SQLQuery ("alter table `script_ledokol_shareranks` rename to `" .. tbl_sql.shran .. "`")
VH:SQLQuery ("alter table `script_ledokol_wordranks` rename to `" .. tbl_sql.wdran .. "`")
VH:SQLQuery ("alter table `script_ccstats` rename to `" .. tbl_sql.ccstat .. "`")
VH:SQLQuery ("alter table `script_ledokol_rankexceptions` rename to `" .. tbl_sql.ranex .. "`")
	VH:SQLQuery ("alter table `script_ledokol_offline` rename to `" .. tbl_sql.off .. "`")
	VH:SQLQuery ("alter table `script_ledokol_mchistory` rename to `" .. tbl_sql.mchist .. "`")
	VH:SQLQuery ("alter table `script_ledokol_ophistory` rename to `" .. tbl_sql.ophist .. "`")
VH:SQLQuery ("alter table `script_ledokol_ledocommands` rename to `" .. tbl_sql.ledocmd .. "`")
VH:SQLQuery ("alter table `script_ledokol_commands` rename to `" .. tbl_sql.cmd .. "`")
VH:SQLQuery ("alter table `script_ledokol_cmdexceptions` rename to `" .. tbl_sql.cmdex .. "`")
	VH:SQLQuery ("alter table `script_ledokol_userlog` rename to `" .. tbl_sql.ulog .. "`")
	VH:SQLQuery ("alter table `lua_ledo_mcrepl` rename to `" .. tbl_sql.chatrepl .. "`")
end

----- ---- --- -- -

function altertables ()
-- todo: alter tables to default character set utf8 collate utf8_unicode_ci

-- settings
VH:SQLQuery ("alter table `" .. tbl_sql.conf .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.conf .. "` change column `variable` `variable` varchar(255) not null") -- variable
VH:SQLQuery ("alter table `" .. tbl_sql.conf .. "` change column `value` `value` text not null") -- value

-- antispam
VH:SQLQuery ("alter table `" .. tbl_sql.anti .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.anti .. "` change column `antispam` `antispam` varchar(255) not null") -- antispam
VH:SQLQuery ("alter table `" .. tbl_sql.anti .. "` change column `occured` `occurred` bigint(20) unsigned not null default 0") -- occurred
VH:SQLQuery ("alter table `" .. tbl_sql.anti .. "` add column `priority` tinyint(1) unsigned not null default 0 after `occurred`") -- priority
VH:SQLQuery ("alter table `" .. tbl_sql.anti .. "` change column `action` `action` tinyint(2) unsigned not null default 0") -- action
VH:SQLQuery ("alter table `" .. tbl_sql.anti .. "` add column `flags` tinyint(1) unsigned not null default 3 after `action`") -- flags

VH:SQLQuery ("alter table `" .. tbl_sql.antiex .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.antiex .. "` change column `exception` `exception` varchar(255) not null") -- exception
VH:SQLQuery ("alter table `" .. tbl_sql.antiex .. "` change column `occured` `occurred` bigint(20) unsigned not null default 0") -- occurred

-- search filter
VH:SQLQuery ("alter table `" .. tbl_sql.sefi .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.sefi .. "` change column `filter` `filter` varchar(255) not null") -- filter
VH:SQLQuery ("alter table `" .. tbl_sql.sefi .. "` change column `occured` `occurred` bigint(20) unsigned not null default 0") -- occurred
VH:SQLQuery ("alter table `" .. tbl_sql.sefi .. "` add column `priority` tinyint(1) unsigned not null default 0 after `occurred`") -- priority
VH:SQLQuery ("alter table `" .. tbl_sql.sefi .. "` change column `action` `action` tinyint(1) unsigned not null default 0") -- action
VH:SQLQuery ("alter table `" .. tbl_sql.sefi .. "` add column `type` tinyint(1) unsigned not null default 1 after `action`") -- type

VH:SQLQuery ("alter table `" .. tbl_sql.sefiex .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.sefiex .. "` change column `exception` `exception` varchar(255) not null") -- exception
VH:SQLQuery ("alter table `" .. tbl_sql.sefiex .. "` change column `occurred` `occurred` bigint(20) unsigned not null default 0") -- occurred

	-- myinfo check
	VH:SQLQuery ("alter table `" .. tbl_sql.minick .. "` engine = myisam") -- engine
	VH:SQLQuery ("alter table `" .. tbl_sql.minick .. "` change column `nick` `nick` varchar(255) not null") -- nick
	VH:SQLQuery ("alter table `" .. tbl_sql.minick .. "` add column `time` varchar(10) null after `nick`") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.minick .. "` change column `time` `time` varchar(10) null") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.minick .. "` change column `occured` `occurred` bigint(20) unsigned not null default 0") -- occurred
	VH:SQLQuery ("alter table `" .. tbl_sql.minick .. "` add column `note` varchar(255) null after `occurred`") -- note

	VH:SQLQuery ("alter table `" .. tbl_sql.midesc .. "` engine = myisam") -- engine
	VH:SQLQuery ("alter table `" .. tbl_sql.midesc .. "` change column `description` `description` varchar(255) not null") -- description
	VH:SQLQuery ("alter table `" .. tbl_sql.midesc .. "` add column `time` varchar(10) null after `description`") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.midesc .. "` change column `time` `time` varchar(10) null") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.midesc .. "` change column `occured` `occurred` bigint(20) unsigned not null default 0") -- occurred
	VH:SQLQuery ("alter table `" .. tbl_sql.midesc .. "` add column `note` varchar(255) null after `occurred`") -- note

	VH:SQLQuery ("alter table `" .. tbl_sql.mitag .. "` engine = myisam") -- engine
	VH:SQLQuery ("alter table `" .. tbl_sql.mitag .. "` change column `tag` `tag` varchar(255) not null") -- tag
	VH:SQLQuery ("alter table `" .. tbl_sql.mitag .. "` add column `time` varchar(10) null after `tag`") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.mitag .. "` change column `time` `time` varchar(10) null") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.mitag .. "` change column `occured` `occurred` bigint(20) unsigned not null default 0") -- occurred
	VH:SQLQuery ("alter table `" .. tbl_sql.mitag .. "` add column `note` varchar(255) null after `occurred`") -- note

	VH:SQLQuery ("alter table `" .. tbl_sql.miconn .. "` engine = myisam") -- engine
	VH:SQLQuery ("alter table `" .. tbl_sql.miconn .. "` change column `connection` `connection` varchar(255) not null") -- connection
	VH:SQLQuery ("alter table `" .. tbl_sql.miconn .. "` add column `time` varchar(10) null after `connection`") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.miconn .. "` change column `time` `time` varchar(10) null") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.miconn .. "` change column `occured` `occurred` bigint(20) unsigned not null default 0") -- occurred
	VH:SQLQuery ("alter table `" .. tbl_sql.miconn .. "` add column `note` varchar(255) null after `occurred`") -- note

	VH:SQLQuery ("alter table `" .. tbl_sql.miemail .. "` engine = myisam") -- engine
	VH:SQLQuery ("alter table `" .. tbl_sql.miemail .. "` change column `email` `email` varchar(255) not null") -- email
	VH:SQLQuery ("alter table `" .. tbl_sql.miemail .. "` add column `time` varchar(10) null after `email`") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.miemail .. "` change column `time` `time` varchar(10) null") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.miemail .. "` change column `occured` `occurred` bigint(20) unsigned not null default 0") -- occurred
	VH:SQLQuery ("alter table `" .. tbl_sql.miemail .. "` add column `note` varchar(255) null after `occurred`") -- note

	VH:SQLQuery ("alter table `" .. tbl_sql.mishare .. "` engine = myisam") -- engine
	VH:SQLQuery ("alter table `" .. tbl_sql.mishare .. "` change column `share` `share` varchar(255) not null") -- share
	VH:SQLQuery ("alter table `" .. tbl_sql.mishare .. "` add column `time` varchar(10) null after `share`") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.mishare .. "` change column `time` `time` varchar(10) null") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.mishare .. "` change column `occured` `occurred` bigint(20) unsigned not null default 0") -- occurred
	VH:SQLQuery ("alter table `" .. tbl_sql.mishare .. "` add column `note` varchar(255) null after `occurred`") -- note

	VH:SQLQuery ("alter table `" .. tbl_sql.miip .. "` engine = myisam") -- engine
	VH:SQLQuery ("alter table `" .. tbl_sql.miip .. "` change column `ip` `ip` varchar(255) not null") -- ip
	VH:SQLQuery ("alter table `" .. tbl_sql.miip .. "` add column `time` varchar(10) null after `ip`") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.miip .. "` change column `time` `time` varchar(10) null") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.miip .. "` change column `occured` `occurred` bigint(20) unsigned not null default 0") -- occurred
	VH:SQLQuery ("alter table `" .. tbl_sql.miip .. "` add column `note` varchar(255) null after `occurred`") -- note

	VH:SQLQuery ("alter table `" .. tbl_sql.micc .. "` change column `time` `time` varchar(10) null") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.micc .. "` add column `note` varchar(255) null after `occurred`") -- note

	VH:SQLQuery ("alter table `" .. tbl_sql.midns .. "` add column `time` varchar(10) null after `dns`") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.midns .. "` change column `time` `time` varchar(10) null") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.midns .. "` add column `note` varchar(255) null after `occurred`") -- note

	VH:SQLQuery ("alter table `" .. tbl_sql.misup .. "` change column `time` `time` varchar(10) null") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.misup .. "` add column `note` varchar(255) null after `occurred`") -- note

	VH:SQLQuery ("alter table `" .. tbl_sql.miver .. "` change column `time` `time` varchar(10) null") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.miver .. "` add column `note` varchar(255) null after `occurred`") -- note

	VH:SQLQuery ("alter table `" .. tbl_sql.miex .. "` engine = myisam") -- engine
	VH:SQLQuery ("alter table `" .. tbl_sql.miex .. "` change column `exception` `exception` varchar(255) not null") -- exception
	VH:SQLQuery ("alter table `" .. tbl_sql.miex .. "` change column `occured` `occurred` bigint(20) unsigned not null default 0") -- occurred
	VH:SQLQuery ("alter table `" .. tbl_sql.miex .. "` add column `note` varchar(255) null after `occurred`") -- note

-- ip authorization
VH:SQLQuery ("alter table `" .. tbl_sql.auth .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.auth .. "` drop primary key")
VH:SQLQuery ("alter table `" .. tbl_sql.auth .. "` add column `id` bigint(20) unsigned auto_increment first, add primary key (`id`)") -- id
VH:SQLQuery ("alter table `" .. tbl_sql.auth .. "` change column `nick` `nick` varchar(255) not null") -- nick
VH:SQLQuery ("alter table `" .. tbl_sql.auth .. "` change column `ip` `ip` varchar(255) not null") -- ip
VH:SQLQuery ("alter table `" .. tbl_sql.auth .. "` add column `badip` varchar(15) not null default '0.0.0.0' after `ip`") -- badip
VH:SQLQuery ("alter table `" .. tbl_sql.auth .. "` change column `badip` `badip` varchar(15) not null default '0.0.0.0'") -- badip
VH:SQLQuery ("alter table `" .. tbl_sql.auth .. "` change column `good` `good` bigint(20) unsigned not null default 0") -- good
VH:SQLQuery ("alter table `" .. tbl_sql.auth .. "` change column `bad` `bad` bigint(20) unsigned not null default 0") -- bad

	-- releases
	VH:SQLQuery ("alter table `" .. tbl_sql.rel .. "` engine = myisam") -- engine
	VH:SQLQuery ("alter table `" .. tbl_sql.rel .. "` change column `release` `release` varchar(255) not null") -- release
	VH:SQLQuery ("alter table `" .. tbl_sql.rel .. "` change column `category` `category` varchar(255) not null") -- category
	VH:SQLQuery ("alter table `" .. tbl_sql.rel .. "` add column `tth` varchar(255) not null after `category`") -- tth
	VH:SQLQuery ("alter table `" .. tbl_sql.rel .. "` change column `by` `by` varchar(255) not null") -- by
	VH:SQLQuery ("alter table `" .. tbl_sql.rel .. "` change column `date` `date` bigint(20) unsigned not null") -- date

	-- welcome messages
	VH:SQLQuery ("alter table `" .. tbl_sql.wm .. "` engine = myisam") -- engine
	VH:SQLQuery ("alter table `" .. tbl_sql.wm .. "` change column `nick` `nick` varchar(255) not null") -- nick
	VH:SQLQuery ("alter table `" .. tbl_sql.wm .. "` change column `in` `in` text null default null") -- in
	VH:SQLQuery ("update `" .. tbl_sql.wm .. "` set `in` = null where `in` = ''")
	VH:SQLQuery ("alter table `" .. tbl_sql.wm .. "` change column `out` `out` text null default null") -- out
	VH:SQLQuery ("update `" .. tbl_sql.wm .. "` set `out` = null where `out` = ''")

-- custom nicks
VH:SQLQuery ("alter table `" .. tbl_sql.cust .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.cust .. "` change column `nick` `nick` varchar(255) not null") -- nick
VH:SQLQuery ("alter table `" .. tbl_sql.cust .. "` change column `custom` `custom` varchar(255) not null") -- custom

-- chatrooms
VH:SQLQuery ("alter table `" .. tbl_sql.chat .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.chat .. "` change column `room` `room` varchar(255) not null") -- room
VH:SQLQuery ("alter table `" .. tbl_sql.chat .. "` change column `description` `description` varchar(255) not null") -- description
VH:SQLQuery ("alter table `" .. tbl_sql.chat .. "` change column `minclass` `minclass` tinyint(2) unsigned not null default 0") -- minclass
VH:SQLQuery ("alter table `" .. tbl_sql.chat .. "` change column `maxclass` `maxclass` tinyint(2) unsigned not null default 10") -- maxclass
VH:SQLQuery ("alter table `" .. tbl_sql.chat .. "` add column `cc` varchar(2) not null default '*' after `maxclass`") -- cc

-- reminders
VH:SQLQuery ("alter table `" .. tbl_sql.rem .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.rem .. "` change column `id` `id` varchar(255) not null") -- id
VH:SQLQuery ("alter table `" .. tbl_sql.rem .. "` change column `content` `content` text not null") -- content
VH:SQLQuery ("alter table `" .. tbl_sql.rem .. "` change column `minclass` `minclass` tinyint(2) unsigned not null default 0") -- minclass
VH:SQLQuery ("alter table `" .. tbl_sql.rem .. "` change column `maxclass` `maxclass` tinyint(2) unsigned not null default 10") -- maxclass
VH:SQLQuery ("alter table `" .. tbl_sql.rem .. "` change column `pm` `dest` tinyint(1) unsigned not null default 0") -- dest
VH:SQLQuery ("alter table `" .. tbl_sql.rem .. "` change column `interval` `interval` smallint(5) unsigned not null default 10080") -- interval
VH:SQLQuery ("alter table `" .. tbl_sql.rem .. "` change column `timer` `timer` smallint(5) unsigned not null default 0") -- timer

	-- news
	VH:SQLQuery ("alter table `" .. tbl_sql.news .. "` engine = myisam") -- engine
	VH:SQLQuery ("alter table `" .. tbl_sql.news .. "` change column `id` `id` bigint(20) unsigned auto_increment") -- id
	VH:SQLQuery ("alter table `" .. tbl_sql.news .. "` change column `date` `date` bigint(20) unsigned not null") -- date
	VH:SQLQuery ("alter table `" .. tbl_sql.news .. "` change column `by` `by` varchar(255) not null") -- by
	VH:SQLQuery ("alter table `" .. tbl_sql.news .. "` change column `item` `item` text not null") -- item

	-- chat replacer
	VH:SQLQuery ("alter table `" .. tbl_sql.chatrepl .. "` add column `flags` tinyint(1) unsigned not null default 1 after `maxclass`") -- flags
	VH:SQLQuery ("alter table `" .. tbl_sql.replex .. "` add column `type` tinyint(1) not null default 0 after `exception`") -- type

-- chat responder
VH:SQLQuery ("alter table `" .. tbl_sql.mcresp .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.mcresp .. "` drop primary key")
VH:SQLQuery ("alter table `" .. tbl_sql.mcresp .. "` add column `id` bigint(20) unsigned auto_increment first, add primary key (`id`)") -- id
VH:SQLQuery ("alter table `" .. tbl_sql.mcresp .. "` change column `message` `message` varchar(255) not null") -- message
VH:SQLQuery ("alter table `" .. tbl_sql.mcresp .. "` change column `reply` `reply` text not null") -- reply
VH:SQLQuery ("alter table `" .. tbl_sql.mcresp .. "` add column `maxclass` tinyint(2) unsigned not null default 10 after `reply`") -- maxclass
VH:SQLQuery ("alter table `" .. tbl_sql.mcresp .. "` change column `occurred` `occurred` bigint(20) unsigned not null default 0") -- occurred

VH:SQLQuery ("alter table `" .. tbl_sql.respex .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.respex .. "` change column `nick` `exception` varchar(255) not null") -- exception
VH:SQLQuery ("alter table `" .. tbl_sql.respex .. "` change column `occurred` `occurred` bigint(20) unsigned not null default 0") -- occurred

-- ranks
VH:SQLQuery ("alter table `" .. tbl_sql.chran .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.chran .. "` change column `nick` `nick` varchar(255) not null") -- nick
VH:SQLQuery ("alter table `" .. tbl_sql.chran .. "` change column `rank` `rank` bigint(20) unsigned not null default 1") -- rank

VH:SQLQuery ("alter table `" .. tbl_sql.opran .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.opran .. "` change column `nick` `nick` varchar(255) not null") -- nick
VH:SQLQuery ("alter table `" .. tbl_sql.opran .. "` change column `rank` `rank` bigint(20) unsigned not null default 1") -- rank

VH:SQLQuery ("alter table `" .. tbl_sql.shran .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.shran .. "` change column `nick` `nick` varchar(255) not null") -- nick
VH:SQLQuery ("alter table `" .. tbl_sql.shran .. "` change column `rank` `rank` bigint(20) unsigned not null default 1") -- rank

-- search ranks
-- not added

VH:SQLQuery ("alter table `" .. tbl_sql.wdran .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.wdran .. "` change column `word` `word` varchar(255) not null") -- word
VH:SQLQuery ("alter table `" .. tbl_sql.wdran .. "` change column `rank` `rank` bigint(20) unsigned not null default 1") -- rank

-- user location statistics
-- not added

VH:SQLQuery ("alter table `" .. tbl_sql.ranex .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.ranex .. "` change column `nick` `nick` varchar(255) not null") -- nick
VH:SQLQuery ("alter table `" .. tbl_sql.ranex .. "` add column `occurred` bigint(20) unsigned not null default 0 after `nick`") -- occurred

	-- offline messenger
	VH:SQLQuery ("alter table `" .. tbl_sql.off .. "` engine = myisam") -- engine
	VH:SQLQuery ("alter table `" .. tbl_sql.off .. "` change column `id` `id` bigint(20) unsigned auto_increment") -- id
	VH:SQLQuery ("alter table `" .. tbl_sql.off .. "` change column `from` `from` varchar(255) not null") -- from
	VH:SQLQuery ("alter table `" .. tbl_sql.off .. "` change column `ip` `ip` varchar(15) not null") -- ip
	VH:SQLQuery ("alter table `" .. tbl_sql.off .. "` change column `to` `to` varchar(255) not null") -- to
	VH:SQLQuery ("alter table `" .. tbl_sql.off .. "` change column `date` `date` bigint(20) unsigned not null") -- date
	VH:SQLQuery ("alter table `" .. tbl_sql.off .. "` change column `message` `message` text not null") -- message

	-- chat history
	VH:SQLQuery ("alter table `" .. tbl_sql.mchist .. "` engine = myisam") -- engine
	VH:SQLQuery ("alter table `" .. tbl_sql.mchist .. "` change column `id` `id` bigint(20) unsigned auto_increment") -- id
	VH:SQLQuery ("alter table `" .. tbl_sql.mchist .. "` add column `realnick` varchar(255) not null after `id`") -- realnick
	VH:SQLQuery ("alter table `" .. tbl_sql.mchist .. "` change column `nick` `nick` varchar(255) not null") -- nick
	VH:SQLQuery ("alter table `" .. tbl_sql.mchist .. "` add column `ip` varchar(15) null after `nick`") -- ip
	VH:SQLQuery ("alter table `" .. tbl_sql.mchist .. "` change column `date` `date` bigint(20) unsigned not null") -- date
	VH:SQLQuery ("alter table `" .. tbl_sql.mchist .. "` change column `message` `message` text not null") -- message

	-- opchat history
	VH:SQLQuery ("alter table `" .. tbl_sql.ophist .. "` engine = myisam") -- engine
	VH:SQLQuery ("alter table `" .. tbl_sql.ophist .. "` change column `id` `id` bigint(20) unsigned auto_increment") -- id
	VH:SQLQuery ("alter table `" .. tbl_sql.ophist .. "` change column `nick` `nick` varchar(255) not null") -- nick
	VH:SQLQuery ("alter table `" .. tbl_sql.ophist .. "` change column `date` `date` bigint(20) unsigned not null") -- date
	VH:SQLQuery ("alter table `" .. tbl_sql.ophist .. "` change column `message` `message` text not null") -- message
	VH:SQLQuery ("alter table `" .. tbl_sql.ophist .. "` add column `class` tinyint(2) unsigned not null default 10 after `message`") -- class

-- commands
VH:SQLQuery ("alter table `" .. tbl_sql.ledocmd .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.ledocmd .. "` change column `original` `original` varchar(255) not null") -- original
VH:SQLQuery ("alter table `" .. tbl_sql.ledocmd .. "` change column `new` `new` varchar(255) not null") -- new

VH:SQLQuery ("alter table `" .. tbl_sql.cmd .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.cmd .. "` change column `command` `command` varchar(255) not null") -- command
VH:SQLQuery ("alter table `" .. tbl_sql.cmd .. "` change column `class` `class` tinyint(2) unsigned not null default 11") -- class
VH:SQLQuery ("alter table `" .. tbl_sql.cmd .. "` add column `occurred` bigint(20) unsigned not null default 0 after `class`") -- occurred

VH:SQLQuery ("alter table `" .. tbl_sql.cmdex .. "` engine = myisam") -- engine
VH:SQLQuery ("alter table `" .. tbl_sql.cmdex .. "` change column `exception` `exception` varchar(255) not null") -- exception
VH:SQLQuery ("alter table `" .. tbl_sql.cmdex .. "` change column `occurred` `occurred` bigint(20) unsigned not null default 0") -- occurred

	-- user log
	VH:SQLQuery ("alter table `" .. tbl_sql.ulog .. "` change column `time` `time` bigint(20) unsigned not null") -- time
	VH:SQLQuery ("alter table `" .. tbl_sql.ulog .. "` add column `cc` varchar(2) null after `ip`") -- cc
	VH:SQLQuery ("alter table `" .. tbl_sql.ulog .. "` change column `desc` `desc` varchar(255) null") -- desc
	VH:SQLQuery ("alter table `" .. tbl_sql.ulog .. "` change column `tag` `tag` varchar(255) null") -- tag
	VH:SQLQuery ("alter table `" .. tbl_sql.ulog .. "` change column `conn` `conn` varchar(255) null") -- conn
	VH:SQLQuery ("alter table `" .. tbl_sql.ulog .. "` change column `email` `email` varchar(255) null") -- email
	VH:SQLQuery ("alter table `" .. tbl_sql.ulog .. "` change column `share` `share` bigint(20) unsigned not null default 0") -- share

-- command log
-- not added

-- hublist
-- not added

-- protected list
-- not added

-- statistics
VH:SQLQuery ("alter table `" .. tbl_sql.stat .. "` change column `count` `count` text not null") -- count

	-- no pm
	VH:SQLQuery ("alter table `" .. tbl_sql.nopm .. "` add column `maxclass` tinyint(2) unsigned not null default 2 after `action`") -- maxclass
	VH:SQLQuery ("alter table `" .. tbl_sql.nopm .. "` add column `password` varchar(255) not null after `maxclass`") -- password

	-- hard ban
	-- not added

	-- ip watch
	-- not added

	-- ip gag
	-- not added

	-- cc gag
	VH:SQLQuery ("alter table `" .. tbl_sql.ccgag .. "` change column `cc` `item` varchar(255) not null") -- item

	-- right click menu
	VH:SQLQuery ("alter table `" .. tbl_sql.rcmenu .. "` add column `off` tinyint(1) unsigned not null default 0 after `maxclass`") -- off
end

----- ---- --- -- -

function createsettings ()
	for k, v in pairs (table_sets) do -- create settings
		VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('" .. repsqlchars (k) .. "', '" .. repsqlchars (v) .. "')")
	end

	for k, v in pairs (table_cmnds) do -- create commands
		VH:SQLQuery ("insert ignore into `" .. tbl_sql.ledocmd .. "` (`original`, `new`) values ('" .. repsqlchars (k) .. "', '" .. repsqlchars (v) .. "')")
	end

	-- own stuff

	--local _, rows = VH:SQLQuery ("select `variable` from `" .. tbl_sql.conf .. "` where `variable` = 'cmdinstalled' limit 1") -- add commands i prefer to forbid

	--if rows == 0 then
		--VH:SQLQuery ("insert ignore into `" .. tbl_sql.cmd .. "` (`command`) values " ..
		--"('" .. repsqlchars ("^$") .. "')")
	--end

	if not getledoconf ("cmdexinstalled") then -- add commands i prefer to except
		VH:SQLQuery ("insert ignore into `" .. tbl_sql.cmdex .. "` (`exception`) values " ..
		"('" .. repsqlchars ("^" .. table_othsets.optrig .. "drop .+$") .. "'), " ..
		"('" .. repsqlchars ("^" .. table_othsets.optrig .. "rpass .+$") .. "'), " ..
		"('" .. repsqlchars ("^" .. table_othsets.optrig .. "rpasswd .+$") .. "'), " ..
		"('" .. repsqlchars ("^" .. table_othsets.optrig .. "regpass .+$") .. "'), " ..
		"('" .. repsqlchars ("^" .. table_othsets.optrig .. "regpasswd .+$") .. "'), " ..
		"('" .. repsqlchars ("^" .. table_othsets.ustrig .. "msgsend .+$") .. "'), " ..
		"('" .. repsqlchars ("^" .. table_othsets.ustrig .. "report .+$") .. "'), " ..
		"('" .. repsqlchars ("^" .. table_othsets.ustrig .. "passwd .*$") .. "'), " ..
		"('" .. repsqlchars ("^" .. table_othsets.ustrig .. "regme") .. "')")
	end

	if not getledoconf ("defmyinfnick") then -- add nicks i prefer to forbid
		VH:SQLQuery ("insert ignore into `" .. tbl_sql.minick .. "` (`nick`) values ('" .. repsqlchars ("%" .. string.char (173)) .. "')")
	end

	-- update hidden variables

	local tm = os.time () + table_sets.srvtimediff
	VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('cmdinstalled', 1)")
	VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('cmdexinstalled', 1)")
	VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('defmyinfnick', 1)")
	VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('allow_shell', 0)")
	VH:SQLQuery ("insert ignore into `" .. tbl_sql.conf .. "` (`variable`, `value`) values ('allow_sql', 0)")
	VH:SQLQuery ("insert into `" .. tbl_sql.stat .. "` (`type`, `time`, `count`) values ('ver_ledo', " .. _tostring (tm) .. ", '" .. ver_ledo .. "') on duplicate key update `time` = " .. _tostring (tm) .. ", `count` = '" .. ver_ledo .. "'")
end

----- ---- --- -- -

function loadsettings ()
	for k, _ in pairs (table_sets) do -- load settings
		local val = getledoconf (k)

		if val then
			table_sets [k] = val
		end
	end

	for k, _ in pairs (table_cmnds) do -- load commands
		local _, rows = VH:SQLQuery ("select `new` from `" .. tbl_sql.ledocmd .. "` where `original` = '" .. repsqlchars (k) .. "' limit 1")

		if rows > 0 then
			local _, val = VH:SQLFetch (0)
			table_cmnds [k] = val
		end
	end

	if table_sets.useblacklist == 1 then -- blacklist
		if not loadblacklist () then
			table_sets.useblacklist = 0
		end
	end
end

----- ---- --- -- -

function loadcachelists ()
	-- protected list
	local _, rows = VH:SQLQuery ("select `protected` from `" .. tbl_sql.prot .. "`")

	if rows > 0 then
		for x = 0, rows - 1 do
			local _, prot = VH:SQLFetch (x)
			table.insert (cache_prot, prot)
		end
	end
end

----- ---- --- -- -

function loadlangfile (nick, pref)
	local lang = pref or table_sets.langfileprefix

	if lang == "" or lang == "en" then
		table_lang = {}
		table_othsets.langver = "EN"
		return
	end

	local lafi = table_othsets.langfilefmt:format (lang)
	local file, err = io.open (table_othsets.cfgdir .. "scripts/" .. lafi, "r")
	local data = ""

	if file then
		data = file:read ("*all")
		file:close ()

		if nick and (not data or data == "") then
			commandanswer (nick, gettext ("Failed to load translation file %s: %s"):format (lafi, gettext ("File is empty.")))
		end
	else -- try to download
		if nick then
			commandanswer (nick, gettext ("Downloading translation file: %s"):format (lafi))
		end

		local res, err = false, nil
		res, err, data = getcurl (table_othsets.updservlang .. lafi, nil, true)

		if res then
			if data ~= "" and data:match ("# Version: %d%.%d%.%d") then
				if nick then
					commandanswer (nick, gettext ("Moving file: %s"):format (lafi))
				end

				local res, err = os.execute ("mv -f \"" .. table_othsets.cfgdir .. table_othsets.tmpfile .. "\" \"" .. table_othsets.cfgdir .. "scripts/" .. lafi .. "\"")

				if not res then
					os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)

					if nick then
						commandanswer (nick, gettext ("Failed to move file: %s"):format (repnmdcoutchars (err or gettext ("No error message specified."))))
					end
				end
			else
				os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)

				if nick then
					commandanswer (nick, gettext ("File not found on update server: %s"):format (lafi))
				end
			end
		elseif nick then
			commandanswer (nick, err)
		end
	end

	if data and data ~= "" then
		for line in data:gmatch ("[^\r\n]+") do
			if # line > 1 and line:sub (1, 1) ~= "#" then
				local orig, tran = line:match ("^(.+)|(.*)$")

				if orig and tran and # orig > 0 and # tran > 0 then
					local _, cori = orig:gsub ("%%[%.%dsdf]+", "")
					local _, ctra = tran:gsub ("%%[%.%dsdf]+", "")

					if cori == ctra then
						table_lang [orig] = repnmdcoutchars (tran)
					else
						opsnotify (table_sets.classnotiledoact, gettext ("Parameter count mismatch detected in following translation string: %s"):format (repnmdcoutchars (tran)))
					end
				end
			end
		end

		table_othsets.langver = lang:upper ()

		if nick then
			commandanswer (nick, gettext ("Translation file loaded: %s"):format (lafi))
		end
	else
		table_lang = {}
		table_othsets.langver = "EN"
	end
end

----- ---- --- -- -

function gettext (data)
	return table_lang [data] or data -- own data is always safe
end

----- ---- --- -- -

function convtranslit (str, mode)
local cnv = str

for _, v in pairs (tbl_cyrlet) do
	if mode == 1 then -- cyr -> lat
		cnv = cnv:gsub (string.char (v.cyr), reprexpchars (v.lat))
	elseif mode == 2 then -- lat -> cyr
		cnv = cnv:gsub (v.lat, reprexpchars (string.char (v.cyr)))
	end
end

return cnv
end

----- ---- --- -- -

function convcaps (str, to)
local cnv = str

for _, v in pairs (tbl_cyrlet) do -- cyrillic conversion
	if v.low then
		if to then
			cnv = cnv:gsub (string.char (v.cyr), reprexpchars (string.char (v.low)))
		else
			cnv = cnv:gsub (string.char (v.low), reprexpchars (string.char (v.cyr)))
		end
	end
end

if to then return cnv:lower () else return cnv:upper () end
end

----- ---- --- -- -

function addhubrobot (nick, desc, away, mail, share)
	VH:RegBot (nick, 3, desc, string.char (away), mail, share)
	--VH:SendToClass ("$UserIP " .. nick .. " 127.0.0.1$$|", 0, 10)
end

----- ---- --- -- -

function edithubrobot (nick, desc, away, mail, share)
	VH:EditBot (nick, 3, desc, string.char (away), mail, share)
end

----- ---- --- -- -

function delhubrobot (nick)
	VH:UnRegBot (nick)
end

----- ---- --- -- -

function ipinrange (r, i)
	local _, _, a1, b1, c1, d1, a2, b2, c2, d2 = r:find ("^(%d+)%.(%d+)%.(%d+)%.(%d+)%-(%d+)%.(%d+)%.(%d+)%.(%d+)$")

	if a1 and a2 and b1 and b2 and c1 and c2 and d1 and d2 then
		local _, _, a3, b3, c3, d3 = i:find ("^(%d+)%.(%d+)%.(%d+)%.(%d+)$")

		if a3 and b3 and c3 and d3 then
			a1, a2, a3 = tonumber (a1), tonumber (a2), tonumber (a3)
			b1, b2, b3 = tonumber (b1), tonumber (b2), tonumber (b3)
			c1, c2, c3 = tonumber (c1), tonumber (c2), tonumber (c3)
			d1, d2, d3 = tonumber (d1), tonumber (d2), tonumber (d3)

			if a3 >= a1 and a3 <= a2 and b3 >= b1 and b3 <= b2 and c3 >= c1 and c3 <= c2 and d3 >= d1 and d3 <= d2 then
				return true
			end
		end
	end

	return false
end

----- ---- --- -- -

function getownsize (bm, bs)
	if bm and bs >= 0 then
		return bs
	else
		local sz = 0
		local f = io.open (table_othsets.cfgdir .. "scripts/" .. table_othsets.luafile, "r")

		if f then
			sz = f:seek ("end")
			f:close ()
		end

		return sz
	end
end

----- ---- --- -- -

function getownlinecnt ()
local f = io.open (table_othsets.cfgdir .. "scripts/" .. table_othsets.luafile, "r")
local ln = 0

if f then
	f:close ()

	for x in io.lines (table_othsets.cfgdir .. "scripts/" .. table_othsets.luafile) do
		ln = ln + 1
	end
end

return ln
end

----- ---- --- -- -

function getmemusg ()
	table_othsets.collgarb = os.time ()
	local sz, _ = 0, 0

	if table_othsets.ver_lua:sub (1, 3) == "5.0" then
		collectgarbage ()
		sz, _ = gcinfo ()
	else
		collectgarbage ("collect")
		sz = collectgarbage ("count")
	end

	return sz * 1024 -- return in bytes
end

----- ---- --- -- -

function repurlchars (data)
	local back = data
	back = back:gsub ("\\", "\\\\")
	back = back:gsub ("\"", "\\\"")
	back = back:gsub (string.char (96), "\\" .. string.char (96))
	return back
end

----- ---- --- -- -

function getstrpart (name, file)
	for part in file:gmatch ("[^ ]+") do
		if not name:find (part, 1, true) then -- plain text
			return false
		end
	end

	return true
end

----- ---- --- -- -

function getitemcount (list)
	local back = 0

	for name, _ in pairs (list) do
		if # name > 0 then
			back = back + 1
		end
	end

	return back
end

----- ---- --- -- -

function loadavstr ()
	table_avse = {}

	for _, ext in pairs (table_avex) do
		for _, file in pairs (table_avfi) do
			local item = file:gsub (" ", "$")
			table.insert (table_avse, item .. "$" .. ext)
		end
	end
end

----- ---- --- -- -

function loadavdb (st)
	local res, err, avdb, head = getcurl (table_othsets.avdbloadurl .. "&vers=" .. _tostring (table_othsets.avloadvercount) .. "&time=" .. _tostring (table_othsets.avlastloadtime) .. "&cotime=0&nosort=1", nil, false, true)

	if res then
		if head ~= "" then -- parse headers
			local have = 0

			for heli in head:gmatch ("[^\r\n]+") do
				local _, _, hena, heva = heli:find ("^Avdb%-(%a+)%-Count: (%d+)$")

				if hena and heva then
					heva = tonumber (heva)

					if hena == "Version" then
						table_othsets.avloadvercount = heva -- update version counter
						have = have + 1
					elseif hena == "Delete" then
						if table_othsets.avloaddelcount > 0 and table_othsets.avloaddelcount < heva then -- only if not first time
							table_avlo = {}
							table_othsets.avlastloadtime = 0
							table_othsets.avloadvercount = 0
							table_othsets.avloaddelcount = heva
							return loadavdb (st) -- items were removed, get fresh list from scratch
						end

						table_othsets.avloaddelcount = heva -- update delete counter
						have = have + 1
					end

					if have >= 2 then -- we have all headers
						break
					end
				end
			end
		end

		table_othsets.avlastloadtime = st

		if avdb ~= "" and avdb ~= "0" and avdb ~= "-" then
			local loco, loal = 0, 0

			for avli in avdb:gmatch ("[^\r\n]+") do
				local _, _, avni, avip, avsi = avli:find ("^([^ ]+)|(%d+%.%d+%.%d+%.%d+)|(%d+)$")

				if avni and avip and avsi then
					avsi = tonumber (avsi)
					local ok = true

					for id, data in pairs (table_avlo) do
						if data ["nick"] == avni and data ["addr"] == avip then -- update if already exists
							if data ["size"] ~= avsi then
								table_avlo [id]["size"] = avsi
								loco = loco + 1
							end

							ok = false
							break
						end
					end

					if ok then -- add if doesnt exist
						table.insert (table_avlo, {
							["nick"] = avni,
							["addr"] = avip,
							["size"] = avsi
						})

						loco = loco + 1
					end

					loal = loal + 1
				end
			end

			if table_sets.avfeedverb == 3 then
				if loco > 0 then
					opsnotify (table_sets.classnotiav, gettext ("Loaded %d of %d with totally %d items: %s"):format (loco, loal, # table_avlo, "AVDB"))
					avdbcheckall () -- check all users when we get fresh db
				elseif loal > 0 then
					opsnotify (table_sets.classnotiav, gettext ("Loaded none of %d with totally %d items: %s"):format (loal, # table_avlo, "AVDB"))
				else
					opsnotify (table_sets.classnotiav, gettext ("Loaded none with totally %d items: %s"):format (# table_avlo, "AVDB"))
				end
			end
		elseif table_sets.avfeedverb == 3 then
			opsnotify (table_sets.classnotiav, gettext ("Loaded none with totally %d items: %s"):format (# table_avlo, "AVDB"))
		end
	elseif table_sets.avfeedverb == 3 then
		opsnotify (table_sets.classnotiav, gettext ("Failed to load information from %s: %s"):format ("AVDB", err))
	end
end

----- ---- --- -- -

function avdbreport (nick, addr, size, info, path, spec)
	if table_sets.avsendtodb == 0 or not table_othsets.ver_curl then
		return
	end

	local shar = size

	if not info then
		shar = parsemyinfoshare (getmyinfo (nick))
	end

	if shar > 0 then
		local uenc = {
			[string.char (110, 105, 99, 107)] = nick
		}

		if path and # path > 0 then
			uenc [string.char (112, 97, 116, 104)] = path
		end

		if not spec then
			local data = getmysqlmd5 (string.char (97, 118, 100, 98, 45, 115, 101, 110, 100, 58, 76, 101, 100, 111, 107, 111, 108, 47) .. string.char (ver_ledo:byte (1, # ver_ledo)) .. string.char (46) .. string.char (bld_ledo:byte (1, # bld_ledo)))
			local num = math.random (1, 9)

			for pos = 2, num do
				data = getmysqlmd5 (data)
			end

			uenc [string.char (108, 111, 99, 107)] = data .. string.char (48) .. string.char (_tostring (num):byte ()) .. genrandhex (num)
		end

		local res, err, avre = getcurl (table_othsets.avdbsendurl .. "&size=" .. _tostring (shar) .. "&addr=" .. addr, uenc)

		if res then
			if avre == "1" then
				if table_sets.avfeedverb == 3 then
					opsnotify (table_sets.classnotiav, gettext ("Infected user information sent to %s: %s"):format ("AVDB", nick))
				end
			elseif avre == "0" then
				if not spec then
					table_sets.avsendtodb = 0
					VH:SQLQuery ("update `" .. tbl_sql.conf .. "` set `value` = '0' where `variable` = 'avsendtodb'")
					opsnotify (table_sets.classnotiav, gettext ("Sadly I don't have access to send infected user information to AVDB, please ask maintainer of this script to add your server IP address to access list. AVDB reporting feature has been automatically disabled."))
				elseif table_sets.avfeedverb == 3 then
					opsnotify (table_sets.classnotiav, gettext ("Failed to send information to %s: %s"):format ("AVDB", gettext ("Access is restricted.")))
				end
			elseif table_sets.avfeedverb == 3 then
				opsnotify (table_sets.classnotiav, gettext ("Failed to send information to %s: %s"):format ("AVDB", gettext ("Server didn't reply with expected status code.")))
			end
		elseif table_sets.avfeedverb == 3 then
			opsnotify (table_sets.classnotiav, gettext ("Failed to send information to %s: %s"):format ("AVDB", err))
		end
	end
end

----- ---- --- -- -

function avdbcheckall ()
	for nick in getnicklist ():gmatch ("([^%$ ]+)") do
		local class = getclass (nick)

		if class >= 0 and class < table_sets.scanbelowclass then
			local addr = getip (nick)

			if addr ~= "0.0.0.0" and not isprotected (nick, addr) then
				local size = parsemyinfoshare (getmyinfo (nick))

				if size > 0 then
					for _, data in pairs (table_avlo) do
						if (nick == data ["nick"] and addr == data ["addr"]) or (nick == data ["nick"] and size == data ["size"]) or (addr == data ["addr"] and size == data ["size"]) then -- nick + ip, nick + share, ip + share
							opsnotify (table_sets.classnotiav, gettext ("Infected user found with IP %s and share %s: %s"):format (addr .. tryipcc (addr, nick), makesize (size), nick))
							avdbreport (nick, addr, size, true) -- antivirus database

							if table_sets.avdetaction == 0 then
								table_avbl [nick] = true
								opsnotify (table_sets.classnotiav, gettext ("Connection requests to following user will be blocked: %s"):format (nick))
							else
								VH:KickUser (table_othsets.sendfrom, nick, table_sets.avkicktext)
							end

							break
						end
					end
				end
			end
		end
	end
end

----- ---- --- -- -

function showavstats (nick, user)
	local stats = ""

	if # user == 0 then -- general mode
		stats = gettext ("Antivirus statistics") .. ":\r\n\r\n"
		stats = stats .. " " .. gettext ("File names used for search") .. ":\r\n\r\n"

		local sext = table_avse [table_othsets.avnextitem]:gsub ("%$", " ")
		local _, _, sextfi, sextex = sext:find ("^(.+) (% .. +)$")

		for _, avfi in pairs (table_avfi) do
			stats = stats .. "\t" .. avfi

			if sextfi and sextfi == avfi then
				stats = stats .. " *"
			end

			stats = stats .. "\r\n"
		end

		stats = stats .. "\r\n " .. gettext ("File extensions used for search") .. ":\r\n\r\n"

		for _, avex in pairs (table_avex) do
			stats = stats .. "\t" .. avex

			if sextex and sextex == avex then
				stats = stats .. " *"
			end

			stats = stats .. "\r\n"
		end

		local usli = "" -- possibly infected users

		for usni, data in pairs (table_avus) do
			if getstatus (usni) == 0 then
				table_avus [usni] = nil
			else
				local fint = 0

				for dapa, dafi in pairs (data) do
					if fint >= 5 then
						break
					end

					if # dapa > 0 then
						fint = 0

						for fina, _ in pairs (dafi) do
							if fint >= 5 then
								break
							end

							if # fina > 0 then
								fint = fint + 1
							end
						end
					end
				end

				if fint >= 5 then
					usli = usli .. "\t" .. gettext ("Nick: %s"):format (usni) .. " &#124; " .. gettext ("Spent time: %s"):format (formatuptime (data [""], false)) .. "\r\n"
				end
			end
		end

		if # usli > 0 then
			stats = stats .. "\r\n " .. gettext ("Possibly infected users") .. ":\r\n\r\n" .. usli
		end

		if table_sets.avdetaction == 0 then -- blocked infected users
			local blli = ""

			for blni, act in pairs (table_avbl) do
				if getstatus (blni) == 0 then
					table_avbl [blni] = nil
				elseif act then
					blli = blli .. "\t" .. blni .. "\r\n"
				end
			end

			if # blli > 0 then
				stats = stats .. "\r\n " .. gettext ("Blocked infected users") .. ":\r\n\r\n" .. blli
			end
		end

		if table_sets.avdbloadint > 0 then
			stats = stats .. "\r\n " .. gettext ("Size of %s: %d @ %s"):format ("AVDB", # table_avlo, os.date (table_sets.timeformat, table_othsets.avlastloadtick + table_sets.srvtimediff)) .. "\r\n"
		end

	elseif table_avus [user] then -- user mode
		if getstatus (user) == 0 then
			table_avus [user] = nil
			stats = gettext ("User not in list: %s"):format (user)
		else
			local addr = getip (user)
			stats = gettext ("Antivirus statistics") .. ":\r\n\r\n"
			stats = stats .. " " .. gettext ("Nick: %s"):format (user) .. "\r\n"
			stats = stats .. " " .. gettext ("IP: %s"):format (addr .. tryipcc (addr, user)) .. "\r\n"
			stats = stats .. " " .. gettext ("Share: %s"):format (makesize (parsemyinfoshare (getmyinfo (user)))) .. "\r\n"
			stats = stats .. " " .. gettext ("Spent time: %s"):format (formatuptime (table_avus [user][""], false)) .. "\r\n"
			stats = stats .. " " .. gettext ("Found files") .. ":\r\n\r\n"

			for path, file in pairs (table_avus [user]) do
				if # path > 0 then
					stats = stats .. " " .. repnmdcoutchars (path) .. "\r\n"
					local plen = # path

					for fame, fize in pairs (file) do
						if # fame > 0 then
							fame = fame:gsub ("[\r\n]", " ")
							stats = stats .. " " .. string.rep (" ", plen) .. repnmdcoutchars (fame) .. " &#124; " .. makesize (fize) .. "\r\n"
						end
					end
				end
			end
		end

	else -- not in list
		stats = gettext ("User not in list: %s"):format (user)
	end

	commandanswer (nick, stats)
end

----- ---- --- -- -

function avdetforce (nick, user)
	if getstatus (user) == 0 then
		commandanswer (nick, gettext ("User not in list: %s"):format (user))
	elseif getclass (user) >= getclass (nick) then
		if table_sets.avdetaction == 0 then
			commandanswer (nick, gettext ("You can't block user whose class is higher or equals your own: %s"):format (user))
		else
			commandanswer (nick, gettext ("You can't kick user whose class is higher or equals your own: %s"):format (user))
		end
	else
		local addr = getip (user)

		if isprotected (user, addr) then
			commandanswer (nick, gettext ("User you're trying to kick or redirect is protected: %s"):format (user))
		elseif table_sets.avdetaction == 0 and table_avbl [user] then
			commandanswer (nick, gettext ("User already blocked: %s"):format (user))
		else
			local size = parsemyinfoshare (getmyinfo (user))

			if size == 0 then
				if table_sets.avdetaction == 0 then
					commandanswer (nick, gettext ("You can't block user who don't share anything: %s"):format (user))
				else
					commandanswer (nick, gettext ("You can't kick user who don't share anything: %s"):format (user))
				end
			else
				local spent = os.time ()

				if table_sets.avsearchint > 0 and table_avus [user] then
					spent = table_avus [user][""]
				end

				opsnotify (table_sets.classnotiav, gettext ("Infected user detected with nick %s and IP %s and share %s and spent time: %s"):format (user, addr .. tryipcc (addr, user), makesize (size), formatuptime (spent, false)))
				avdbreport (user, addr, size, true, nil, true) -- report

				if table_sets.avdetaction == 0 then
					table_avbl [user] = true
					opsnotify (table_sets.classnotiav, gettext ("Connection requests to following user will be blocked: %s"):format (user))
				else
					VH:KickUser (nick, user, table_sets.avkicktext)
				end

				if table_sets.avsearchint > 0 then
					table_avus [user] = nil
				end
			end
		end
	end
end

----- ---- --- -- -

function avdbfinditems (nick, data)
	local _, _, ityp, item = data:find ("^(%S+) (.+)$")

	if ityp == "nick" or ityp == "addr" or ityp == "size" or ityp == "path" then
		commandanswer (nick, gettext ("Searching for %s in %s: %s"):format (ityp, "AVDB", item))
		local res, err, avdb = getcurl (table_othsets.avdbfindurl .. "&copath=1", {[ityp] = item})

		if res then
			if avdb ~= "" and avdb ~= "0" then
				local back, count = "", 0

				for avli in avdb:gmatch ("[^\r\n]+") do
					local _, _, avni, avad, avsi, avti, avpa = avli:find ("^([^ ]+)|(%d+%.%d+%.%d+%.%d+)|(%d+)|(%d+)|(.*)$")

					if avni and avad and avsi and avti and avpa then
						avsi = tonumber (avsi)
						avti = tonumber (avti)
						back = back .. " [ N: " .. repnmdcoutchars (avni) .. " ] [ I: " .. repnmdcoutchars (avad) .. " ] [ S: " .. _tostring (avsi) .. " &#124; " .. makesize (avsi) .. " ] [ T: " .. fromunixtime (avti, false, table_sets.longdateformat .. " " .. table_sets.timeformat) .. " ]"

						if avpa ~= "" then
							back = back .. " [ P: " .. repnmdcoutchars (avpa) .. " ]"
						end

						back = back .. "\r\n"
						count = count + 1
					end
				end

				if count > 0 then
					commandanswer (nick, gettext ("Showing %d results from %s"):format (count, "AVDB") .. ":\r\n\r\n" .. back)
				else
					commandanswer (nick, gettext ("Nothing was found in: %s"):format ("AVDB"))
				end
			else
				commandanswer (nick, gettext ("Nothing was found in: %s"):format ("AVDB"))
			end
		else
			commandanswer (nick, gettext ("Failed to load information from %s: %s"):format ("AVDB", err))
		end
	else -- unknown type
		commandanswer (nick, gettext ("Known types are: %s"):format ("nick, addr, size " .. gettext ("and") .. " path"))
	end
end

----- ---- --- -- -

function avsearservstart (addr, port, nick)
	if not table_othsets.mod_sock or table_othsets.serv_udp then -- already running
		return
	end

	local udp, err = table_othsets.mod_sock.udp ()

	if not udp then
		if nick then
			commandanswer (nick, gettext ("Failed to start antivirus search server: %s"):format (repnmdcoutchars (err or gettext ("No error message specified."))))
		else
			opsnotify (table_sets.classnotiav, gettext ("Failed to start antivirus search server: %s"):format (repnmdcoutchars (err or gettext ("No error message specified."))))
		end

		return
	end

	udp:settimeout (0)
	local res, err = udp:setsockname ((addr or table_sets.avsearservaddr), (port or table_sets.avsearservport))

	if not res then
		if nick then
			commandanswer (nick, gettext ("Failed to start antivirus search server: %s"):format (repnmdcoutchars (err or gettext ("No error message specified."))))
		else
			opsnotify (table_sets.classnotiav, gettext ("Failed to start antivirus search server: %s"):format (repnmdcoutchars (err or gettext ("No error message specified."))))
		end

		udp:close ()
		return
	end

	table_othsets.serv_udp = udp

	if nick then
		commandanswer (nick, gettext ("Started antivirus search server: %s"):format ((addr or table_sets.avsearservaddr) .. ":" .. _tostring (port or table_sets.avsearservport)))
	else
		opsnotify (table_sets.classnotiav, gettext ("Started antivirus search server: %s"):format ((addr or table_sets.avsearservaddr) .. ":" .. _tostring (port or table_sets.avsearservport)))
	end
end

----- ---- --- -- -

function avsearservstop (nick)
	if not table_othsets.mod_sock or not table_othsets.serv_udp then -- not running
		return
	end

	table_othsets.serv_udp:close ()
	table_othsets.serv_udp = nil

	if nick then
		commandanswer (nick, gettext ("Stopped antivirus search server: %s"):format (table_sets.avsearservaddr .. ":" .. _tostring (table_sets.avsearservport)))
	else
		opsnotify (table_sets.classnotiav, gettext ("Stopped antivirus search server: %s"):format (table_sets.avsearservaddr .. ":" .. _tostring (table_sets.avsearservport)))
	end
end

----- ---- --- -- -

function avsearservread ()
	if not table_othsets.mod_sock or not table_othsets.serv_udp then -- not running
		return
	end

	local runc, runm = 0, 10 -- dc++ sends only 10 search results

	while runc < runm do
		runc = runc + 1
		local data, addr, port = table_othsets.serv_udp:receivefrom ()

		if data and addr and port and data ~= "" and addr ~= "" and addr ~= "timeout" then
			local id = addr .. ":" .. _tostring (port)

			if table_avss [id] then -- rest buffer
				data = table_avss [id] .. data
				table_avss [id] = nil
			end

			while true do
				local poss, pose = data:find ("|", 1, true) -- parse by pipe

				if poss then
					local _, stop = avparsesr (data:sub (1, poss - 1), nil, addr)

					if stop then -- bad user or he got detected
						table_avss [id] = nil
						return
					end

					data = data:sub (pose + 1)

					if data == "" then -- nothing else to do
						break
					end
				else
					local dale = # data

					if dale >= 65536 then -- drop this crap
						table_avss [id] = nil
					elseif dale > 0 then -- save rest buffer
						table_avss [id] = (table_avss [id] or "") .. data
					end

					break
				end

				table_othsets.mod_sock.sleep (0.001) -- sleep for 1 ms to minimize cpu load
			end
		else -- no more data available
			break
		end

		table_othsets.mod_sock.sleep (0.001) -- sleep for 1 ms to minimize cpu load
	end
end

----- ---- --- -- -

function avparsesr (data, user, addr)
	local nick, usip = user, addr

	if not user then -- validate source when using search server
		if not addr then -- missing information
			return 0, true
		end

		local _, _, usni = data:find ("^%$SR ([^ ]+) .-[^\\]-" .. string.char (5) .. "%d+ .+")

		if not usni or getstatus (usni) == 0 then -- bad syntax or user not online
			return 0, true
		end

		usip = getip (usni)

		if addr ~= usip then -- ip dont match
			return 0, true
		end

		nick = usni
	else
		usip = getip (nick)
	end

	if table_sets.avsearchint > 0 then -- antivirus
		local class = getclass (nick)

		if class >= table_sets.scanbelowclass then
			if table_sets.enableipwatch == 1 and checkipwat (nick, usip, data) then -- ip watch
				return 0
			end

			return 1
		elseif isprotected (nick, usip) then
			if table_sets.enableipwatch == 1 and checkipwat (nick, usip, data) then -- ip watch
				return 0
			end

			return 1
		elseif table_sets.avdetaction == 0 and table_avbl [nick] then -- block infected user
			if table_sets.enableipwatch == 1 then -- ip watch
				checkipwat (nick, usip, data) -- we will return 0 anyway
			end

			return 0
		end

		local _, _, path, name, size = data:find ("^%$SR [^ ]+ (.-)([^\\]-)" .. string.char (5) .. "(%d+) .+")

		if path and name and size and # path > 0 and # name > 0 and tonumber (size) > 0 then
			size = tonumber (size)

			if table_sets.avrandrequest == 1 and table_othsets.avrandstr ~= "" and name == table_othsets.avrandstr .. ".exe" then -- check special random request
				local shar = parsemyinfoshare (getmyinfo (nick))

				if table_sets.avfeedverb >= 2 then
					local feed = gettext ("Infected user detected") .. ":\r\n\r\n"
					feed = feed .. " " .. gettext ("Nick: %s"):format (nick) .. "\r\n"
					feed = feed .. " " .. gettext ("IP: %s"):format (usip .. tryipcc (usip, nick)) .. "\r\n"
					feed = feed .. " " .. gettext ("Share: %s"):format (makesize (shar)) .. "\r\n"
					feed = feed .. " " .. gettext ("Spent time: %s"):format (formatuptime (table_othsets.avlastseartick, false)) .. "\r\n"
					feed = feed .. " " .. gettext ("Found files") .. ":\r\n\r\n"
					feed = feed .. " " .. repnmdcoutchars (path) .. "\r\n " .. string.rep (" ", # path) .. repnmdcoutchars (name) .. " &#124; " .. makesize (size) .. "\r\n"

					opsnotify (table_sets.classnotiav, feed)
				elseif table_sets.avfeedverb == 1 then
					opsnotify (table_sets.classnotiav, gettext ("Infected user detected with nick %s and IP %s and share %s and spent time: %s"):format (nick, usip .. tryipcc (usip, nick), makesize (shar), formatuptime (table_othsets.avlastseartick, false)))
				end

				avdbreport (nick, usip, shar, true, path) -- antivirus database

				if table_sets.avdetaction == 0 then
					table_avbl [nick] = true
					opsnotify (table_sets.classnotiav, gettext ("Connection requests to following user will be blocked: %s"):format (nick))

					if table_sets.enableipwatch == 1 then -- ip watch
						checkipwat (nick, usip, data) -- we will return 0 anyway
					end
				else
					if table_sets.enableipwatch == 1 then -- ip watch
						checkipwat (nick, usip, data) -- we will return 0 anyway
					end

					VH:KickUser (table_othsets.sendfrom, nick, table_sets.avkicktext)
				end

				if table_avus [nick] then
					table_avus [nick] = nil
				end

				return 0, true
			end

			local lame = name:lower ()

			for _, ext in pairs (table_avex) do
				if lame:sub (-# ext) == ext then
					if ext == ".rar" and lame:find ("part%d+%.rar$") then
						if table_sets.enableipwatch == 1 and checkipwat (nick, usip, data) then -- ip watch
							return 0
						end

						return 1
					end

					for _, file in pairs (table_avfi) do
						if getstrpart (lame, file) then
							if table_avus [nick] then
								if table_avus [nick][path] then
									if not table_avus [nick][path][name] and math.abs (table_avus [nick][path][""] - size) <= table_sets.avfilediff then
										table_avus [nick][path][name] = size

										if getitemcount (table_avus [nick][path]) >= table_sets.avfilecount then
											local shar, haveshar = 0, false

											if table_sets.avfeedverb >= 2 then
												local feed, list = "", " " .. repnmdcoutchars (path) .. "\r\n"
												local plen = # path

												for fame, fize in pairs (table_avus [nick][path]) do
													if # fame > 0 then
														fame = fame:gsub ("[\r\n]", " ")
														list = list .. " " .. string.rep (" ", plen) .. repnmdcoutchars (fame) .. " &#124; " .. makesize (fize) .. "\r\n"
													end
												end

												if not haveshar then
													shar = parsemyinfoshare (getmyinfo (nick))
													haveshar = true
												end

												feed = gettext ("Infected user detected") .. ":\r\n\r\n"
												feed = feed .. " " .. gettext ("Nick: %s"):format (nick) .. "\r\n"
												feed = feed .. " " .. gettext ("IP: %s"):format (usip .. tryipcc (usip, nick)) .. "\r\n"
												feed = feed .. " " .. gettext ("Share: %s"):format (makesize (shar)) .. "\r\n"
												feed = feed .. " " .. gettext ("Spent time: %s"):format (formatuptime (table_avus [nick][""], false)) .. "\r\n"
												feed = feed .. " " .. gettext ("Found files") .. ":\r\n\r\n"
												feed = feed .. list

												opsnotify (table_sets.classnotiav, feed)
											elseif table_sets.avfeedverb == 1 then
												if not haveshar then
													shar = parsemyinfoshare (getmyinfo (nick))
													haveshar = true
												end

												opsnotify (table_sets.classnotiav, gettext ("Infected user detected with nick %s and IP %s and share %s and spent time: %s"):format (nick, usip .. tryipcc (usip, nick), makesize (shar), formatuptime (table_avus [nick][""], false)))
											end

											avdbreport (nick, usip, shar, haveshar, path) -- antivirus database

											if table_sets.avdetaction == 0 then
												table_avbl [nick] = true
												opsnotify (table_sets.classnotiav, gettext ("Connection requests to following user will be blocked: %s"):format (nick))

												if table_sets.enableipwatch == 1 then -- ip watch
													checkipwat (nick, usip, data) -- we will return 0 anyway
												end
											else
												if table_sets.enableipwatch == 1 then -- ip watch
													checkipwat (nick, usip, data) -- we will return 0 anyway
												end

												VH:KickUser (table_othsets.sendfrom, nick, table_sets.avkicktext)
											end

											table_avus [nick] = nil
											return 0, true
										end
									end

									table_avus [nick][path][""] = size
								else
									table_avus [nick][path] = {
										[""] = size,
										[name] = size
									}
								end
							else
								table_avus [nick] = {
									[""] = os.time (),
									[path] = {
										[""] = size,
										[name] = size
									}
								}
							end

							if table_sets.enableipwatch == 1 and checkipwat (nick, usip, data) then -- ip watch
								return 0
							end

							return 1
						end
					end
				end
			end
		end
	end

	if table_sets.enableipwatch == 1 and checkipwat (nick, usip, data) then -- ip watch
		return 0
	end
end

----- ---- --- -- -

function loadcomponents ()
	local _, paths = 0, {"", "/usr/local/bin/", "/usr/bin/"} -- prepare

	-- configuration directory

	if VH.GetVHCfgDir then
		_, table_othsets.cfgdir = VH:GetVHCfgDir ()
	else
		VH:SendToClass ("<" .. table_sets.ledobotnick .. "> Warning: Unable to run VH:GetVHCfgDir|", 5, 10)
		table_othsets.cfgdir = os.getenv ("VERLIHUB_CFG")

		if not table_othsets.cfgdir then
			VH:SendToClass ("<" .. table_sets.ledobotnick .. "> Warning: Unable to get VERLIHUB_CFG|", 5, 10)

			for _, v in pairs (paths) do
				local res = os.execute (v .. "vh_getcfg > \"./" .. table_othsets.tmpfile .. "\"")

				if res then
					local f = io.open ("./" .. table_othsets.tmpfile, "r")

					if f then
						local line = f:read ("*line") -- read first line
						f:close ()
						os.remove ("./" .. table_othsets.tmpfile)

						if line and (# line > 0) then
							table_othsets.cfgdir = line
							break
						end
					end
				end
			end

			if not table_othsets.cfgdir or # table_othsets.cfgdir == 0 then
				VH:SendToClass ("<" .. table_sets.ledobotnick .. "> Error: Unable to run vh_getcfg.sh|", 5, 10)
				return true
			end
		end
	end

	if table_othsets.cfgdir:sub (# table_othsets.cfgdir) ~= "/" then -- small modification
		table_othsets.cfgdir = table_othsets.cfgdir .. "/"
	end

	-- nicklist

	if not VH.GetNickList then
		VH:SendToClass ("<" .. table_sets.ledobotnick .. "> Error: Unable to run VH:GetNickList|", 5, 10)
		return true
	end

	-- plugin version

	table_othsets.ver_luaplug = _PLUGINVERSION

	if not table_othsets.ver_luaplug then
		VH:SendToClass ("<" .. table_sets.ledobotnick .. "> Warning: Unable to detect Lua plugin version|", 5, 10)
	end

	-- lua version

	for _, v in pairs (paths) do
		local res = os.execute (v .. "lua -v > \"" .. table_othsets.cfgdir .. table_othsets.tmpfile .. "\" 2>&1")

		if res then
			local f = io.open (table_othsets.cfgdir .. table_othsets.tmpfile, "r")

			if f then
				local ver = f:read ("*line") -- read first line
				f:close ()
				os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)

				if ver and (# ver > 0) then
					_, _, table_othsets.ver_lua = ver:find ("(%d+[%.%d]+)")

					if table_othsets.ver_lua then
						break
					end
				end
			end
		end
	end

	if not table_othsets.ver_lua then
		VH:SendToClass ("<" .. table_sets.ledobotnick .. "> Warning: Unable to run \"lua -v\"|", 5, 10)
		table_othsets.ver_lua = _VERSION:sub (5)
	end

	if not table_othsets.ver_lua then
		VH:SendToClass ("<" .. table_sets.ledobotnick .. "> Warning: Unable to detect Lua library version|", 5, 10)
	else
		if table_othsets.ver_lua:sub (1, 3) == "5.0" then
			string.gmatch = string.gfind -- lua 5.0 fix
		end
	end

	-- mysql version

	VH:SQLQuery ("select version()")
	_, table_othsets.ver_sql = VH:SQLFetch (0)

	if not table_othsets.ver_sql then
		VH:SendToClass ("<" .. table_sets.ledobotnick .. "> Warning: Unable to detect MySQL version|", 5, 10)
	end

	-- curl version

	if os.execute ("curl -s --version > \"" .. table_othsets.cfgdir .. table_othsets.tmpfile .. "\" 2>&1") then
		local file = io.open (table_othsets.cfgdir .. table_othsets.tmpfile, "r")

		if file then
			local cuve = file:read ("*line") -- read first line
			file:close ()
			os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)

			if cuve and cuve ~= "" then
				_, _, table_othsets.ver_curl = cuve:find ("(%d+[%.%d]+)")
			end
		end
	end

	if not table_othsets.ver_curl then
		VH:SendToClass ("<" .. table_sets.ledobotnick .. "> Warning: Unable to run \"curl --version\"|", 5, 10)
	end

	--[[

	-- iconv version

	if os.execute ("iconv -s --version > \"" .. table_othsets.cfgdir .. table_othsets.tmpfile .. "\" 2>&1") then
		local f = io.open (table_othsets.cfgdir .. table_othsets.tmpfile, "r")

		if f then
			local ver = f:read ("*line") -- read first line
			f:close ()
			os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)

			if ver and (# ver > 0) then
				_, _, table_othsets.ver_iconv = ver:find ("(%d+[%.%d]+)")
			end
		end
	end

	if not table_othsets.ver_iconv then
		VH:SendToClass ("<" .. table_sets.ledobotnick .. "> Warning: Unable to run \"iconv --version\"|", 5, 10)
	end

	]]--

	local res, err = pcall ( -- load socket
		function ()
			table_othsets.mod_sock = require ("socket")
		end
	)

	if not res or not table_othsets.mod_sock then
		VH:SendToClass ("<" .. table_sets.ledobotnick .. "> Warning: Unable to load LuaSocket module: " .. repnmdcoutchars (err or gettext ("No error message specified.")) .. "|", 5, 10)
	else
		table_othsets.ver_sock = table_othsets.mod_sock._VERSION:sub (11) -- luasocket version

		if not table_othsets.ver_sock or table_othsets.ver_sock == "" then
			VH:SendToClass ("<" .. table_sets.ledobotnick .. "> Warning: Unable to detect LuaSocket module version|", 5, 10)
		end

		--[[

		local res, err = pcall ( -- load socket.http
			function ()
				table_othsets.mod_http = require ("socket.http")
			end
		)

		if not res or not table_othsets.mod_http then
			VH:SendToClass ("<" .. table_sets.ledobotnick .. "> Warning: Unable to load LuaSocket.HTTP module: " .. repnmdcoutchars (err or gettext ("No error message specified.")) .. "|", 5, 10)
		end

		local res, err = pcall ( -- load ltn12
			function ()
				table_othsets.mod_ltn12 = require ("ltn12")
			end
		)

		if not res or not table_othsets.mod_ltn12 then
			VH:SendToClass ("<" .. table_sets.ledobotnick .. "> Warning: Unable to load LuaSocket.LTN12 module: " .. repnmdcoutchars (err or gettext ("No error message specified.")) .. "|", 5, 10)
		else
			table_othsets.ver_ltn12 = table_othsets.mod_ltn12._VERSION:sub (7) -- ltn12 version

			if not table_othsets.ver_ltn12 or table_othsets.ver_ltn12 == "" then
				VH:SendToClass ("<" .. table_sets.ledobotnick .. "> Warning: Unable to detect LuaSocket.LTN12 module version|", 5, 10)
			end
		end

		]]--
	end

	-- check required functions

	for name, _ in pairs (table_refu) do
		if VH [name] then
			table_refu [name] = true
		else
			VH:SendToClass ("<" .. table_sets.ledobotnick .. "> " .. gettext ("Please note, following function is required for features available in this version of %s and is currently not available in running version of %s but is available in latest update: %s"):format ("Ledokol", "Verlihub", name) .. "|", 5, 10)
		end
	end

	return false
end

----- ---- --- -- -

function catchfinderror (data, lre)
	return pcall (string.find, data, lre)
end

----- ---- --- -- -

function getstatus (nick)
	local lusr = nick:lower ()

	for user in getnicklist ():gmatch ("([^%$ ]+)") do
		if user:lower () == lusr then
			return 1
		end
	end

	return 0
end

----- ---- --- -- -

function getcsnick (nick)
	local lusr = tolow (nick)

	for user in getnicklist ():gmatch ("([^%$ ]+)") do
		if tolow (user) == lusr then
			return user
		end
	end

	return
end

----- ---- --- -- -

function getrandomnick ()
	local users = {}

	for user in getnicklist ():gmatch ("([^$]+)%$%$") do
		table.insert (users, user)
	end

	return users [math.random (# users)]
end

----- ---- --- -- -

function getregclass (nick)
	local _, rows = VH:SQLQuery ("select `class` from `reglist` where `nick` = '" .. repsqlchars (nick) .. "' limit 1")

	if rows > 0 then
		local _, val = VH:SQLFetch (0)
		return tonumber (val) or -2
	else
		return
	end
end

----- ---- --- -- -

function getclass (nick)
	local _, cls = VH:GetUserClass (nick)

	if cls then
		return tonumber (cls) or -2
	else
		return -2
	end
end

----- ---- --- -- -

function getclassname (class)
	if class == -1 then
		return gettext ("Pinger")
	elseif class == 0 then
		return gettext ("Guest")
	elseif class == 1 then
		return gettext ("Registered")
	elseif class == 2 then
		return gettext ("VIP")
	elseif class == 3 then
		return gettext ("Operator")
	elseif class == 4 then
		return gettext ("Cheef")
	elseif class == 5 then
		return gettext ("Administrator")
	elseif class == 10 then
		return gettext ("Master")
	else
		return gettext ("Unknown")
	end
end

----- ---- --- -- -

function getmyinfo (nick)
	local _, info = VH:GetMyINFO (nick)

	if info and # info > 0 then
		return info
	else
		return
	end
end

----- ---- --- -- -

function getusercount ()
local _, cnt = VH:GetUsersCount ()

if cnt then
	return tonumber (cnt) or 0
else
	return 0
end
end

----- ---- --- -- -

function gettotsharesize ()
	local back = 0
	local _, size = VH:GetTotalShareSize ()

	if size then
		back = tonumber (size) or 0
	end

	return back
end

----- ---- --- -- -

function getuptime ()
local _, sec = VH:GetUpTime ()

if sec then
	return tonumber (sec) or 0
else
	return 0
end
end

----- ---- --- -- -

function getnicklist ()
local _, nl = VH:GetNickList ()

if nl and (# nl > 13) then
	return nl:sub (11)
else
	return
end
end

----- ---- --- -- -

function getip (nick)
	local _, ip = VH:GetUserIP (nick)

	if ip and # ip >= 7 and # ip <= 15 then
		return ip
	else
		return "0.0.0.0"
	end
end

----- ---- --- -- -

function getusersbyip (ip, class)
	local ul = {}

	for user in getnicklist ():gmatch ("([^$]+)%$%$") do
		if user ~= "" then
			if getip (user) == ip then
				if not class or (class and getclass (user) < class) then
					table.insert (ul, user)
				end
			end
		end
	end

	return ul
end

----- ---- --- -- -

function dropallbyip (ip)
	local ul = getusersbyip (ip, table_sets.scanbelowclass)

	for _, u in pairs (ul) do
		VH:Disconnect (u)
	end

	return # ul
end

----- ---- --- -- -

function kickallbyip (ip, rsn)
	local ul = getusersbyip (ip, table_sets.scanbelowclass)

	for _, u in pairs (ul) do
		VH:KickUser (table_othsets.sendfrom, u, rsn)
	end

	return ul
end

----- ---- --- -- -

function getcc (nick)
	local res, cc = VH:GetUserCC (nick)

	if not res or not cc or cc == "User not found" then
		return
	elseif cc == "" then
		return "--"
	else
		return cc:upper ()
	end
end

----- ---- --- -- -

function tryipcc (addr, nick)
	if nick then
		local res, code = VH:GetUserCC (nick)

		if res and code then
			if code == "--" then
				return ""
			else
				return "." .. code
			end
		end
	end

	if table_refu.GetIPCC then
		local res, code = VH:GetIPCC (addr)

		if res and code then
			if code == "--" then
				return ""
			else
				return "." .. code
			end
		end
	end

	return ""
end

----- ---- --- -- -

function getusercity (nick)
	local res, city = VH:GetUserCity (nick)

	if not res or not city then
		return
	elseif city == "" then
		return "--"
	else
		return city
	end
end

----- ---- --- -- -

function gethost (nick)
local _, host = VH:GetUserHost (nick)

if host and (# host > 0) then
	return host
else
	return "[unknown]"
end
end

----- ---- --- -- -

function getconfig (var)
	local ok, cfg = VH:GetConfig ((VH.ConfName or "config"), var)

	if ok and cfg then
		if cfg == "Error calling GetConfig API" then
			return
		else
			return tonumber (cfg) or cfg
		end
	else
		return
	end
end

----- ---- --- -- -

function getextconfig (grp, var)
	local _, cfg = VH:GetConfig (grp, var)

	if cfg then
		if cfg == "Error calling GetConfig API" then
			return
		else
			return tonumber (cfg) or cfg
		end
	else
		return
	end
end

----- ---- --- -- -

function getulimit ()
local res = os.execute ("ulimit -n > \"" .. table_othsets.cfgdir .. table_othsets.tmpfile .. "\"") -- open files limit

if res then
	local f = io.open (table_othsets.cfgdir .. table_othsets.tmpfile, "r")

	if f then
		local ulim = f:read ("*line") -- read first line
		f:close ()
		os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)

		if ulim and tonumber (ulim) then
			return tonumber (ulim)
		end
	end
end

return
end

----- ---- --- -- -

function getcurl (url, enc, del, reh)
	if not table_othsets.ver_curl then
		return false, gettext ("This feature requires following binary installed on your system: %s"):format ("cURL"), nil, nil
	end

	local urlenc = ""

	if enc then
		for id, val in pairs (enc) do
			urlenc = urlenc .. " --data-urlencode \"" .. id .. "=" .. repurlchars (val) .. "\""
		end
	end

	os.remove (table_othsets.cfgdir .. table_othsets.tmpfile) -- remove old files in case they exist, temporary file

	if reh then -- header file
		os.remove (table_othsets.cfgdir .. table_othsets.headfile)
	end

	local face = getconfig ("listen_ip") -- use local address

	if face and # face >= 7 and # face <= 15 and face ~= "0.0.0.0" then
		face = " --interface " .. face
	else
		face = ""
	end

	local rehreq = ""

	if reh then -- get response headers
		rehreq = " -D \"" .. table_othsets.cfgdir .. table_othsets.headfile .. "\""
	end

	local res, err, code = os.execute ("curl -G -L --max-redirs 1 --retry 3 --connect-timeout 5 -m 30" .. face .. " -A \"Ledokol/" .. ver_ledo .. "." .. bld_ledo .. "\" -s -o \"" .. table_othsets.cfgdir .. table_othsets.tmpfile .. "\"" .. rehreq .. urlenc .. " \"" .. url .. "\"")

	if res then
		local head = ""

		if reh then -- get response headers
			local file, err = io.open (table_othsets.cfgdir .. table_othsets.headfile, "r") -- make use of err, it could be permission

			if file then
				head = file:read ("*all")
				file:close ()
				os.remove (table_othsets.cfgdir .. table_othsets.headfile)
			end
		end

		local file, err = io.open (table_othsets.cfgdir .. table_othsets.tmpfile, "r") -- make use of err, it could be permission

		if file then
			local data = file:read ("*all")
			file:close ()

			if not del then -- temporary file deletion is handled here
				os.remove (table_othsets.cfgdir .. table_othsets.tmpfile)
			end

			return true, nil, (data or ""), (head or "")
		else
			return true, nil, "", (head or "")
		end
	else
		if code ~= nil then
			code = tonumber (code) or -1
		end

		if code ~= nil and code ~= -1 then -- http://curl.haxx.se/docs/manpage.html
			return false, gettext ("Failed to execute %s with code: %d"):format ("cURL", code), nil, nil
		elseif err and err ~= "" then
			return false, gettext ("Failed to execute %s with error: %s"):format ("cURL", repnmdcoutchars (err)), nil, nil
		else
			return false, gettext ("Failed to execute %s without code and error."):format ("cURL"), nil, nil
		end
	end
end

----- ---- --- -- -

function genchatcode ()
	local vcode, code = "", ""

	for x = 1, table_sets.codelength do
		--local num, chr = math.random (0, 1), ""
		local ran = math.random (1, # table_sets.codecharlist)
		local chr = table_sets.codecharlist:sub (ran, ran)

		--if num == 1 then
			--chr = math.random (48, 57)
		--elseif num == 0 then
			--chr = math.random (65, 90)
		--end

		if x == table_sets.codelength then -- end
			vcode = vcode .. chr -- string.char (chr)
		else
			vcode = vcode .. chr .. table_sets.codecharsep -- string.char (chr)
		end

		code = code .. chr -- string.char (chr)
	end

	return vcode, code
end

----- ---- --- -- -

function genrandstr (size)
	local list = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz123456789"
	local data = ""

	for x = 1, size do
		local rand = math.random (1, # list)
		data = data .. list:sub (rand, rand)
	end

	return data
end

----- ---- --- -- -

function genrandhex (size)
	local list = "0123456789abcdef"
	local data = ""

	for x = 1, size do
		local rana = math.random (1, # list)
		local ranb = math.random (1, # list)
		data = data .. list:sub (rana, rana) .. list:sub (ranb, ranb)
	end

	return data
end

----- ---- --- -- -

function getmysqlmd5 (data)
	local _, rows = VH:SQLQuery ("select md5('" .. repsqlchars (data) .. "')")

	if rows > 0 then
		local _, back = VH:SQLFetch (0)

		if back and # back == 32 then
			return back:lower ()
		end
	end

	return data
end

----- ---- --- -- -

function repexdots (str)
	local ret = str
	ret = ret:gsub ("%.", "%%.")
	return ret
end

----- ---- --- -- -

function repsqlchars (txt)
	local ret = _tostring (txt)
	ret = ret:gsub (string.char (92), string.char (92, 92)) -- backslash
	ret = ret:gsub (string.char (34), string.char (92, 34)) -- double quote
	ret = ret:gsub (string.char (39), string.char (92, 39)) -- single quote
	return ret
end

----- ---- --- -- -

function repdatechars (txt)
	local str = txt:gsub ("%-", "%%-")
	return str
end

----- ---- --- -- -

function reprexpchars (s)
	local r = s:gsub ("%%", "%%%%")
	return r
end

----- ---- --- -- -

function reppatchars (data)
	local safe = data
	safe = safe:gsub ("%%", "%%%%")
	safe = safe:gsub ("%^", "%%^")
	safe = safe:gsub ("%$", "%%$")
	safe = safe:gsub ("%(", "%%(")
	safe = safe:gsub ("%)", "%%)")
	safe = safe:gsub ("%.", "%%.")
	safe = safe:gsub ("%[", "%%[")
	safe = safe:gsub ("%]", "%%]")
	safe = safe:gsub ("%*", "%%*")
	safe = safe:gsub ("%+", "%%+")
	safe = safe:gsub ("%-", "%%-")
	safe = safe:gsub ("%?", "%%?")
	return safe
end

----- ---- --- -- -

function tolow (s)
	local r = s

	for _, v in pairs (tbl_cyrlet) do -- cyrillic
		if v.low then
			r = r:gsub (string.char (v.cyr), reprexpchars (string.char (v.low)))
		end
	end

	r = r:lower () -- latin
	return r
end

----- ---- --- -- -

function repsrchchars (txt)
	local str = txt:gsub ("%$", " ")
	return str
end

----- ---- --- -- -

function repnmdcoutchars (txt)
	local ret = txt:gsub ("%$", "&#36;")
	ret = ret:gsub ("|", "&#124;")
	return ret
end

----- ---- --- -- -

function repnmdcinchars (txt)
	local ret = txt:gsub ("&#36;", "$")
	ret = ret:gsub ("&#124;", "|")
	return ret
end

----- ---- --- -- -

function repnickchars (txt)
	local ret = txt:gsub ("<", "_")
	ret = ret:gsub (">", "_")
	ret = ret:gsub (string.char (32), string.char (160)) -- space to non-breaking space
	return ret
end

----- ---- --- -- -

function repwordranchars (s, stage)
	local r = ""

	if stage == 0 then
		r = s:gsub (string.char (190), "$") -- three fourths
		r = r:gsub (string.char (189), "$") -- one half
		r = r:gsub (string.char (188), "$") -- one fourth
		r = r:gsub (string.char (187), "$") -- right angle quote
		r = r:gsub (string.char (182), "$") -- paragraph sign
		r = r:gsub (string.char (174), "$") -- registered trademark
		r = r:gsub (string.char (171), "$") -- left angle quote
		r = r:gsub (string.char (169), "$") -- copyright
		r = r:gsub (string.char (167), "$") -- section sign
		r = r:gsub (string.char (166), "$") -- broken vertical bar
		r = r:gsub (string.char (164), "$") -- general currency sign
		r = r:gsub (string.char (163), "$") -- pound sterling
		r = r:gsub (string.char (162), "$") -- cent sign
		r = r:gsub (string.char (126), "$") -- tilde
		r = r:gsub (string.char (125), "$") -- right curly brace
		r = r:gsub (string.char (124), "$") -- vertical bar
		r = r:gsub (string.char (123), "$") -- left curly brace
		r = r:gsub ("%" .. string.char (94), "$") -- caret
		r = r:gsub ("%" .. string.char (93), "$") -- right square bracket
		r = r:gsub (string.char (92), "$") -- backslash
		r = r:gsub ("%" .. string.char (91), "$") -- left square bracket
		r = r:gsub (string.char (64), "$") -- at sign
		r = r:gsub ("%" .. string.char (63), "$") -- question mark
		r = r:gsub (string.char (62), "$") -- greater than sign
		r = r:gsub (string.char (61), "$") -- equals sign
		r = r:gsub (string.char (60), "$") -- less than sign
		r = r:gsub (string.char (59), "$") -- semicolon
		r = r:gsub (string.char (58), "$") -- colon
		r = r:gsub (string.char (47), "$") -- slash
		r = r:gsub (string.char (44), "$") -- comma
		r = r:gsub ("%" .. string.char (43), "$") -- plus sign
		r = r:gsub ("%" .. string.char (42), "$") -- asterisk
		r = r:gsub ("%" .. string.char (41), "$") -- right parenthesis
		r = r:gsub ("%" .. string.char (40), "$") -- left parenthesis
		r = r:gsub ("%" .. string.char (37), "$") -- percent sign
		r = r:gsub (string.char (35), "$") -- number sign
		r = r:gsub (string.char (34), "$") -- double quotation mark
		r = r:gsub (string.char (33), "$") -- exclamation mark
		r = r:gsub (string.char (32), "$") -- space
		r = r:gsub ("\r\n", "$")
		r = r:gsub ("\r", "$")
		r = r:gsub ("\n", "$")
		r = r:gsub ("\t", "$")
	else
		r = s:gsub ("^[" .. string.char (160) .. "]+", "") -- non-breaking space
		r = r:gsub ("[" .. string.char (160) .. "]+$", "")
		r = r:gsub ("^[" .. string.char (95) .. "]+", "") -- underscore
		r = r:gsub ("[" .. string.char (95) .. "]+$", "")
		r = r:gsub ("^[%" .. string.char (46) .. "]+", "") -- period
		r = r:gsub ("[%" .. string.char (46) .. "]+$", "")
		r = r:gsub ("^[%" .. string.char (45) .. "]+", "") -- hyphen
		r = r:gsub ("[%" .. string.char (45) .. "]+$", "")
		r = r:gsub ("^[" .. string.char (38) .. "]+", "") -- ampersand
		r = r:gsub ("[" .. string.char (38) .. "]+$", "")
		r = r:gsub ("%" .. string.char (36), "") -- dollar sign
	end

	return r
end

----- ---- --- -- -

function reptextvars (str, vick, vata)
	local ntime = os.time () + table_sets.srvtimediff -- current time
	local txt = str

	if vick then -- user data is available
		local vlass = getclass (vick)

		if txt:find ("<nick>", 1, true) then
			txt = txt:gsub ("<nick>", reprexpchars (vick))
		end

		if txt:find ("<custnick>", 1, true) and table_sets.custnickclass < 11 then
			txt = txt:gsub ("<custnick>", reprexpchars (getcustnick (vick) or vick))
		end

		if txt:find ("<class>", 1, true) then
			txt = txt:gsub ("<class>", reprexpchars (_tostring (vlass)))
		end

		if txt:find ("<classname>", 1, true) then
			txt = txt:gsub ("<classname>", reprexpchars (getclassname (vlass)))
		end

		if txt:find ("<uuptshrt>", 1, true) and table_sets.showuseruptime == 1 and table_usup [vick] then
			txt = txt:gsub ("<uuptshrt>", reprexpchars (formatuptime (table_usup [vick], true)))
		end

		if txt:find ("<uuptlong>", 1, true) and table_sets.showuseruptime == 1 and table_usup [vick] then
			txt = txt:gsub ("<uuptlong>", reprexpchars (formatuptime (table_usup [vick], false)))
		end

		if txt:find ("<userhost>", 1, true) and getconfig ("dns_lookup") == 1 then
			txt = txt:gsub ("<userhost>", reprexpchars (gethost (vick)))
		end

		if txt:find ("<userip>", 1, true) then
			txt = txt:gsub ("<userip>", reprexpchars (getip (vick)))
		end

		local nogeo = true

		if table_refu.GetUserGeoIP then
			local on, geoip = VH:GetUserGeoIP (vick)

			if on and geoip and geoip ["host"] then
				nogeo = false

				if txt:find ("<geoiprange>", 1, true) and geoip ["range_low"] and geoip ["range_high"] then
					txt = txt:gsub ("<geoiprange>", reprexpchars (string.format ("%s - %s", geoip ["range_low"], geoip ["range_high"])))
				end

				if txt:find ("<geoipcity>", 1, true) and geoip ["city"] then
					txt = txt:gsub ("<geoipcity>", reprexpchars (geoip ["city"]))
				end

				if txt:find ("<geoipregcode>", 1, true) and geoip ["region_code"] then
					txt = txt:gsub ("<geoipregcode>", reprexpchars (geoip ["region_code"]))
				end

				if txt:find ("<geoipregname>", 1, true) and geoip ["region"] then
					txt = txt:gsub ("<geoipregname>", reprexpchars (geoip ["region"]))
				end

				if txt:find ("<geoipcc>", 1, true) and geoip ["country_code"] then
					txt = txt:gsub ("<geoipcc>", reprexpchars (geoip ["country_code"]))
				end

				if txt:find ("<geoipcn>", 1, true) and geoip ["country"] then
					txt = txt:gsub ("<geoipcn>", reprexpchars (geoip ["country"]))
				end

				if txt:find ("<geoipconcode>", 1, true) and geoip ["continent_code"] then
					txt = txt:gsub ("<geoipconcode>", reprexpchars (geoip ["continent_code"]))
				end

				if txt:find ("<geoipconname>", 1, true) and geoip ["continent"] then
					txt = txt:gsub ("<geoipconname>", reprexpchars (geoip ["continent"]))
				end

				if txt:find ("<geoiptz>", 1, true) and geoip ["time_zone"] then
					txt = txt:gsub ("<geoiptz>", reprexpchars (geoip ["time_zone"]))
				end

				if txt:find ("<geoipcoord>", 1, true) and geoip ["latitude"] and geoip ["longitude"] then
					txt = txt:gsub ("<geoipcoord>", reprexpchars (string.format ("%f %f", geoip ["latitude"], geoip ["longitude"])))
				end

				if txt:find ("<geoippost>", 1, true) and geoip ["postal_code"] then
					txt = txt:gsub ("<geoippost>", reprexpchars (geoip ["postal_code"]))
				end

				if txt:find ("<geoipmetro>", 1, true) and geoip ["metro_code"] and geoip ["metro_code"] > 0 then
					txt = txt:gsub ("<geoipmetro>", reprexpchars (geoip ["metro_code"]))
				end

				if txt:find ("<geoiparea>", 1, true) and geoip ["area_code"] and geoip ["area_code"] > 0 then
					txt = txt:gsub ("<geoiparea>", reprexpchars (geoip ["area_code"]))
				end
			end
		end

		if nogeo and table_refu.GetUserCC then
			local cc = getcc (vick)

			if txt:find ("<geoipcc>", 1, true) then
				txt = txt:gsub ("<geoipcc>", reprexpchars (cc))
			end

			if txt:find ("<geoipcn>", 1, true) then
				txt = txt:gsub ("<geoipcn>", reprexpchars (cc_names [cc] or gettext ("Unknown country")))
			end

			if txt:find ("<geoipcity>", 1, true) and table_refu.GetUserCity then
				txt = txt:gsub ("<geoipcity>", reprexpchars (getusercity (vick)))
			end
		end

		local myinfo = getmyinfo (vick)

		if myinfo then
			local desc, tag, conn, sts, email, share = parsemyinfo (vick, myinfo)

			if txt:find ("<myinfodesc>", 1, true) then
				txt = txt:gsub ("<myinfodesc>", reprexpchars (desc))
			end

			if txt:find ("<myinfotag>", 1, true) then
				txt = txt:gsub ("<myinfotag>", reprexpchars (tag))
			end

			if # tag > 0 then
				local res = parsetag (tag)

				if txt:find ("<tagclient>", 1, true) and res ["cl"] then
					txt = txt:gsub ("<tagclient>", reprexpchars (res ["cl"]))
				end

				if txt:find ("<tagversion>", 1, true) and res ["ve"] then
					txt = txt:gsub ("<tagversion>", reprexpchars (res ["ve"]))
				end

				if txt:find ("<tagmode>", 1, true) and res ["mo"] then
					txt = txt:gsub ("<tagmode>", reprexpchars (res ["mo"]))
				end

				if txt:find ("<taghubs>", 1, true) and res ["hu"] then
					txt = txt:gsub ("<taghubs>", reprexpchars (res ["hu"]))
				end

				if txt:find ("<tagslots>", 1, true) and res ["sl"] then
					txt = txt:gsub ("<tagslots>", reprexpchars (res ["sl"]))
				end

				if txt:find ("<taglimit>", 1, true) and res ["li"] then
					txt = txt:gsub ("<taglimit>", reprexpchars (res ["li"]))
				end
			end

			if txt:find ("<myinfoconn>", 1, true) then
				txt = txt:gsub ("<myinfoconn>", reprexpchars (conn))
			end

			if txt:find ("<myinfostat>", 1, true) then
				txt = txt:gsub ("<myinfostat>", reprexpchars (statustostr (sts)))
			end

			if txt:find ("<myinfomail>", 1, true) then
				txt = txt:gsub ("<myinfomail>", reprexpchars (email))
			end

			if txt:find ("<myinfoshare>", 1, true) then
				txt = txt:gsub ("<myinfoshare>", reprexpchars (makesize (share)))
			end

			if txt:find ("<myinfoexshar>", 1, true) then
				txt = txt:gsub ("<myinfoexshar>", reprexpchars (_tostring (share)))
			end
		end

		if txt:find ("<myinfosupport>", 1, true) and table_refu.GetUserSupports then
			local on, sup = VH:GetUserSupports (vick)

			if on and sup then
				txt = txt:gsub ("<myinfosupport>", reprexpchars (sup))
			end
		end

		if txt:find ("<myinfonmdcver>", 1, true) and table_refu.GetUserVersion then
			local on, ver = VH:GetUserVersion (vick)

			if on and ver then
				txt = txt:gsub ("<myinfonmdcver>", reprexpchars (ver))
			end
		end

		if txt:find ("<message>", 1, true) then
			txt = txt:gsub ("<message>", reprexpchars (vata or ""))
		end
	end

if txt:find ("<randnick>") then
	local rnick = getrandomnick ()
	txt = txt:gsub ("<randnick>", reprexpchars (getcustnick (rnick) or rnick))
end

if txt:find ("<date>") then
	local var_date = os.date (table_sets.dateformat, ntime)
	txt = txt:gsub ("<date>", reprexpchars (var_date))
end

if txt:find ("<time>") then
	local var_time = os.date (table_sets.timeformat, ntime)
	txt = txt:gsub ("<time>", reprexpchars (var_time))
end

if txt:find ("<hubname>") then
	txt = txt:gsub ("<hubname>", reprexpchars (getconfig ("hub_name")))
end

	if txt:find ("<topic>") then
		local topic = table_othsets.topicvalue

		if table_refu.GetTopic then
			topic = VH:GetTopic ()
		end

		txt = txt:gsub ("<topic>", reprexpchars (topic or ""))
	end

if txt:find ("<hubdesc>") then
	txt = txt:gsub ("<hubdesc>", reprexpchars (getconfig ("hub_desc")))
end

if txt:find ("<hubcat>") then
	txt = txt:gsub ("<hubcat>", reprexpchars (getconfig ("hub_category")))
end

if txt:find ("<hubown>") then
	txt = txt:gsub ("<hubown>", reprexpchars (getconfig ("hub_owner")))
end

if txt:find ("<hubver>") then
	txt = txt:gsub ("<hubver>", reprexpchars (getconfig ("hub_version")))
end

if txt:find ("<optrig>") then
	txt = txt:gsub ("<optrig>", reprexpchars (getconfig ("cmd_start_op"):sub (1, 1)))
end

if txt:find ("<ustrig>") then
	txt = txt:gsub ("<ustrig>", reprexpchars (getconfig ("cmd_start_user"):sub (1, 1)))
end

if txt:find ("<hubbot>") then
	txt = txt:gsub ("<hubbot>", reprexpchars (table_othsets.botnick))
end

if txt:find ("<hubopch>") then
	txt = txt:gsub ("<hubopch>", reprexpchars (table_othsets.opchatnick))
end

if txt:find ("<hubhost>") then
	txt = txt:gsub ("<hubhost>", reprexpchars (getconfig ("hub_host")))
end

if txt:find ("<hubport>") then
	txt = txt:gsub ("<hubport>", reprexpchars (getconfig ("listen_port")))
end

if txt:find ("<hubmaxusr>") then
	txt = txt:gsub ("<hubmaxusr>", reprexpchars (getconfig ("max_users")))
end

if txt:find ("<hubminsh>") then
	txt = txt:gsub ("<hubminsh>", reprexpchars (makesize (getconfig ("min_share") * 1048576)))
end

if txt:find ("<hubmaxsh>") then
	txt = txt:gsub ("<hubmaxsh>", reprexpchars (makesize (getconfig ("max_share") * 1048576)))
end

	if txt:match ("<ledover>") then
		txt = txt:gsub ("<ledover>", reprexpchars (ver_ledo .. "." .. bld_ledo))
	end

if txt:find ("<suptshrt>") then
	txt = txt:gsub ("<suptshrt>", reprexpchars (formatuptime (table_othsets.uptime, true)))
end

if txt:find ("<suptlong>") then
	txt = txt:gsub ("<suptlong>", reprexpchars (formatuptime (table_othsets.uptime, false)))
end

if table_refu.GetUpTime then -- hub uptime
	local ut = os.time () - getuptime ()

	if txt:find ("<huptshrt>") then
		txt = txt:gsub ("<huptshrt>", reprexpchars (formatuptime (ut, true)))
	end

	if txt:find ("<huptlong>") then
		txt = txt:gsub ("<huptlong>", reprexpchars (formatuptime (ut, false)))
	end

	local _, rows = VH:SQLQuery ("select `time`, `count` from `" .. tbl_sql.stat .. "` where `type` = 'uptime_peak' limit 1")
	local ptm, put = ntime, 0

	if rows > 0 then
		_, ptm, put = VH:SQLFetch (0)
		put = os.time () - tonumber (put)
	end

	if txt:find ("<peakhuptshrt>") then
		txt = txt:gsub ("<peakhuptshrt>", reprexpchars (formatuptime (put, true)))
	end

	if txt:find ("<peakhuptlong>") then
		txt = txt:gsub ("<peakhuptlong>", reprexpchars (formatuptime (put, false)))
	end

	if txt:find ("<peakhupttime>") then
		txt = txt:gsub ("<peakhupttime>", reprexpchars (fromunixtime (ptm, false)))
	end

	if txt:find ("<peakhuptshrttime>") then
		txt = txt:gsub ("<peakhuptshrttime>", reprexpchars (fromunixtime (ptm, true)))
	end
end

if txt:find ("<usercnt>") then
	txt = txt:gsub ("<usercnt>", reprexpchars (getusercount ()))
end

if txt:find ("<peakusers>") then
	local _, rows = VH:SQLQuery ("select `time`, `count` from `" .. tbl_sql.stat .. "` where `type` = 'users_peak' limit 1")
	local ptm, puc = ntime, 0

	if rows > 0 then
		_, ptm, puc = VH:SQLFetch (0)
	end

	txt = txt:gsub ("<peakusers>", reprexpchars (puc))

	if txt:find ("<peakuserstime>") then
		txt = txt:gsub ("<peakuserstime>", reprexpchars (fromunixtime (ptm, false)))
	end

	if txt:find ("<peakusersshrttime>") then
		txt = txt:gsub ("<peakusersshrttime>", reprexpchars (fromunixtime (ptm, true)))
	end
end

	-- total share

	if txt:find ("<totshare>") then
		txt = txt:gsub ("<totshare>", reprexpchars (makesize (gettotsharesize ())))
	end

	if txt:find ("<peakshare>") then
		local _, rows = VH:SQLQuery ("select `time`, `count` from `" .. tbl_sql.stat .. "` where `type` = 'share_peak' limit 1")
		local ptm, pts = ntime, 0

		if rows > 0 then
			_, ptm, pts = VH:SQLFetch (0)
			ptm = tonumber (ptm) or 0
			pts = tonumber (pts) or 0
		end

		txt = txt:gsub ("<peakshare>", reprexpchars (makesize (pts)))

		if txt:find ("<peaksharetime>") then
			txt = txt:gsub ("<peaksharetime>", reprexpchars (fromunixtime (ptm, false)))
		end

		if txt:find ("<peakshareshrttime>") then
			txt = txt:gsub ("<peakshareshrttime>", reprexpchars (fromunixtime (ptm, true)))
		end
	end

	-- average share per user

	if txt:find ("<avgshare>") then
		local uc = getusercount ()
		local ts = gettotsharesize ()

		if uc > 0 and ts > 0 then
			txt = txt:gsub ("<avgshare>", reprexpchars (makesize (roundint ((ts / uc), 0))))
		else
			txt = txt:gsub ("<avgshare>", reprexpchars (makesize (0)))
		end
	end

	if txt:find ("<peakavgshare>") then
		local _, rows = VH:SQLQuery ("select `time`, `count` from `" .. tbl_sql.stat .. "` where `type` = 'avgshare_peak' limit 1")
		local pavgtm, pavg = ntime, 0

		if rows > 0 then
			_, pavgtm, pavg = VH:SQLFetch (0)
			pavgtm = tonumber (pavgtm) or 0
			pavg = tonumber (pavg) or 0
		end

		txt = txt:gsub ("<peakavgshare>", reprexpchars (makesize (pavg)))

		if txt:find ("<peakavgsharetime>") then
			txt = txt:gsub ("<peakavgsharetime>", reprexpchars (fromunixtime (pavgtm, false)))
		end

		if txt:find ("<peakavgshareshrttime>") then
			txt = txt:gsub ("<peakavgshareshrttime>", reprexpchars (fromunixtime (pavgtm, true)))
		end
	end

	-- memory usage

if txt:find ("<memusg>") then
	txt = txt:gsub ("<memusg>", reprexpchars (makesize (getmemusg ())))
end

if txt:find ("<peakmemusg>") then
	local _, rows = VH:SQLQuery ("select `time`, `count` from `" .. tbl_sql.stat .. "` where `type` = 'memory_peak' limit 1")
	local ptm, pmu = ntime, 0

	if rows > 0 then
		_, ptm, pmu = VH:SQLFetch (0)
	end

	txt = txt:gsub ("<peakmemusg>", reprexpchars (makesize (pmu)))

	if txt:find ("<peakmemusgtime>") then
		txt = txt:gsub ("<peakmemusgtime>", reprexpchars (fromunixtime (ptm, false)))
	end

	if txt:find ("<peakmemusgshrttime>") then
		txt = txt:gsub ("<peakmemusgshrttime>", reprexpchars (fromunixtime (ptm, true)))
	end
end

return txt
end

----- ---- --- -- -

function statustostr (sts)
if sts == 1 then
	return gettext ("Normal")
elseif sts == 2 then
	return gettext ("Away")
elseif sts == 3 then
	return gettext ("Normal away")
elseif sts == 4 then
	return gettext ("Fileserver")
elseif sts == 5 then
	return gettext ("Normal fileserver")
elseif sts == 6 then
	return gettext ("Away fileserver")
elseif sts == 7 then
	return gettext ("Normal away fileserver")
elseif sts == 8 then
	return gettext ("Fireball")
elseif sts == 9 then
	return gettext ("Normal fireball")
elseif sts == 10 then
	return gettext ("Away fireball")
elseif sts == 11 then
	return gettext ("Normal away fireball")
elseif sts == 12 then
	return gettext ("Fileserver fireball")
elseif sts == 13 then
	return gettext ("Normal fileserver fireball")
elseif sts == 14 then
	return gettext ("Away fileserver fireball")
elseif sts == 15 then
	return gettext ("Normal away fileserver fireball")
elseif sts == 16 then
	return gettext ("TLS")
elseif sts == 17 then
	return gettext ("Normal TLS")
elseif sts == 18 then
	return gettext ("Away TLS")
elseif sts == 19 then
	return gettext ("Normal away TLS")
elseif sts == 20 then
	return gettext ("Fileserver TLS")
elseif sts == 21 then
	return gettext ("Normal fileserver TLS")
elseif sts == 22 then
	return gettext ("Away fileserver TLS")
elseif sts == 23 then
	return gettext ("Normal away fileserver TLS")
elseif sts == 24 then
	return gettext ("Fireball TLS")
elseif sts == 25 then
	return gettext ("Normal fireball TLS")
elseif sts == 26 then
	return gettext ("Away fireball TLS")
elseif sts == 27 then
	return gettext ("Normal away fireball TLS")
elseif sts == 28 then
	return gettext ("Fileserver fireball TLS")
elseif sts == 29 then
	return gettext ("Normal fileserver fireball TLS")
elseif sts == 30 then
	return gettext ("Away fileserver fireball TLS")
elseif sts == 31 then
	return gettext ("Normal away fileserver fireball TLS")
else
	return sts
end
end

----- ---- --- -- -

function fromunixtime (sec, shrt, ldate)
	local ntm = tonumber (sec) or 0

	if shrt then
		return os.date (ldate or table_sets.dateformat, ntm)
	else
		return os.date (ldate or table_sets.dateformat .. " " .. table_sets.timeformat, ntm)
	end
end

----- ---- --- -- -

function prezero (ml, cl)
	local zr = ""

	for x = 1, ml - # _tostring (cl) do
		zr = zr .. "0"
	end

	return zr .. _tostring (cl)
end

----- ---- --- -- -

function roundint (int, num)
	local nint = tonumber (string.format ("%." .. (num or 0) .. "f", int))
	return nint
end

----- ---- --- -- -

function valor (val, bad)
	if val == bad then
		return
	else
		return val
	end
end

----- ---- --- -- -

function sqlemptnull (val, cc)
	if not val or val == "" or (cc and val == "--") then
		return "null"
	else
		return "'" .. repsqlchars (val) .. "'"
	end
end

----- ---- --- -- -

function makesize (bytes)
	local b = tonumber (bytes) or 0

	if b >= 1152921504606846976 then -- eib
		return roundint (b / 1152921504606846976, 2) .. " " .. gettext ("EiB")
	end

	if b >= 1125899906842624 then -- pib
		return roundint (b / 1125899906842624, 2) .. " " .. gettext ("PiB")
	end

	if b >= 1099511627776 then -- tib
		return roundint (b / 1099511627776, 2) .. " " .. gettext ("TiB")
	end

	if b >= 1073741824 then -- gib
		return roundint (b / 1073741824, 2) .. " " .. gettext ("GiB")
	end

	if b >= 1048576 then -- mib
		return roundint (b / 1048576, 2) .. " " .. gettext ("MiB")
	end

	if b >= 1024 then -- kib
		return roundint (b / 1024, 2) .. " " .. gettext ("KiB")
	end

	return _tostring (b) .. " " .. gettext ("B")
end

----- ---- --- -- -

function formatuptime (uptime, fmt)
	local t = os.date ("!*t", os.time () - uptime)
	t.month = t.month - 1
	t.day = t.day - 1
	local ret = ""

	if fmt then -- short
		ret = table_sets.shrtuptimefmt:format (prezero (2, t.month), prezero (2, t.day), prezero (2, t.hour), prezero (2, t.min), prezero (2, t.sec))
	else -- long
		if t.month > 0 then
			if t.month == 1 then
				ret = ret .. _tostring (t.month) .. " " .. gettext ("month") .. " "
			else
				ret = ret .. _tostring (t.month) .. " " .. gettext ("months") .. " "
			end
		end

		if t.day > 0 then
			if t.day == 1 then
				ret = ret .. _tostring (t.day) .. " " .. gettext ("day") .. " "
			else
				ret = ret .. _tostring (t.day) .. " " .. gettext ("days") .. " "
			end
		end

		if t.hour > 0 then
			if t.hour == 1 then
				ret = ret .. _tostring (t.hour) .. " " .. gettext ("hour") .. " "
			else
				ret = ret .. _tostring (t.hour) .. " " .. gettext ("hours") .. " "
			end
		end

		if t.min > 0 then
			if t.min == 1 then
				ret = ret .. _tostring (t.min) .. " " .. gettext ("minute") .. " "
			else
				ret = ret .. _tostring (t.min) .. " " .. gettext ("minutes") .. " "
			end
		end

		local ren = # ret

		if ren == 0 or t.sec > 0 then
			if t.sec == 1 then
				ret = ret .. _tostring (t.sec) .. " " .. gettext ("second")
			else
				ret = ret .. _tostring (t.sec) .. " " .. gettext ("seconds")
			end
		elseif ren > 0 then
			ret = ret:sub (1, -2) -- get rid of the space
		end
	end

	return ret
end

----- ---- --- -- -

function counttable (tbl, where)
	local sql = "select count(*) from `" .. tbl .. "`"

	if where and where ~= "" then
		sql = sql .. " where " .. where
	end

	local _, rows = VH:SQLQuery (sql)
	local num = 0

	if type (rows) == "number" and rows > 0 then
		_, num = VH:SQLFetch (0)
	end

	return tonumber (num or 0) or 0
end

----- ---- --- -- -

function cleantablebyclass (limit, tbl)
local _, rows = VH:SQLQuery ("select `nick` from `" .. tbl .. "`")

if rows > 0 then
	local t = {}

	for x = 0, rows - 1 do
		local _, usr = VH:SQLFetch (x)

		if getclass (usr) < limit then
			t [usr] = x
		end
	end

	for k, _ in pairs (t) do
		VH:SQLQuery ("delete from `" .. tbl .. "` where `nick` = '" .. repsqlchars (k) .. "' limit 1")
	end
end
end

----- ---- --- -- -

function isbot (nick)
if nick == table_othsets.botnick then return true end -- security bot
if nick == table_othsets.opchatnick then return true end -- operators chat

if table_refu.GetLuaBots then
	local bots = VH:GetLuaBots () -- other registered bots
	if not bots then return false end

	for _, v in pairs (bots) do
		if nick == v ["sNick"] then
			return true
		end
	end
else
	if nick == table_othsets.lasttimenick or nick == table_sets.ledobotnick or ischatroom (nick) then return true end
end

return false
end

----- ---- --- -- -

function antiscan (nick, class, data, where, to, status)
	--[[

		where
			1 = main chat
			2 = private message
			3 = offline message
			4 = report command

	]]--

	if table_sets.enableantispam == 0 then
		return 1
	end

	if class >= table_sets.antibelowclass then
		return 1
	end

	if # data == 0 then
		return 1
	end

	local toclass = getclass (to)

	if (where == 2 or where == 3) and table_sets.allowspamtoops == 1 and toclass >= 3 then
		return 1
	end

	local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.antiex .. "`")
	local exlist = {}

	for x = 0, rows - 1 do
		local _, entry = VH:SQLFetch (x)
		table.insert (exlist, entry)
	end

	local lowdata = tolow (repnmdcinchars (data))
	local flag = 1

	if where == 2 or where == 3 then
		flag = 2
	end

	local _, rows = VH:SQLQuery ("select `antispam`, `priority`, `action` from `" .. tbl_sql.anti .. "` where `flags` = " .. _tostring (flag) .. " or `flags` = 3 order by `priority` desc, `occurred` desc")

	for x = 0, rows - 1 do
		local _, entry, priority, action = VH:SQLFetch (x)
		local fres, fval = catchfinderror (lowdata, entry)

		if not fres then
			local ferr = gettext ("There is an error in following antispam entry pattern") .. ":\r\n\r\n"
			ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (entry) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
			opsnotify (table_sets.classnotiledoact, ferr)
		elseif fval then
			VH:SQLQuery ("update `" .. tbl_sql.anti .. "` set `occurred` = `occurred` + 1 where `antispam` = '" .. repsqlchars (entry) .. "' limit 1")

			if tonumber (priority) < 7 then -- skip exlist for 7, 8 and 9
				for _, value in pairs (exlist) do
					local fres, fval = catchfinderror (lowdata, value)

					if not fres then
						local ferr = gettext ("There is an error in following antispam exception entry pattern") .. ":\r\n\r\n"
						ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (value) .. "\r\n"
						ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
						ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
						opsnotify (table_sets.classnotiledoact, ferr)
					elseif fval then
						VH:SQLQuery ("update `" .. tbl_sql.antiex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (value) .. "' limit 1")
						local note = "Spam exception from %s with IP %s and class %d in MC: %s"

						if where == 2 then
							note = "Spam exception from %s with IP %s and class %d in PM to %s with IP %s and class %d: %s"
						elseif where == 3 then
							note = "Spam exception from %s with IP %s and class %d in offline message: %s"
						elseif where == 4 then
							note = "Spam exception from %s with IP %s and class %d in report: %s"
						end

						local mtip = getip (nick)
						local toip = getip (to)

						if where == 2 then
							opsnotify (table_sets.classnotiex, gettext (note):format (nick, mtip .. tryipcc (mtip, nick), class, to, toip .. tryipcc (toip, to), toclass, data))
						else
							opsnotify (table_sets.classnotiex, gettext (note):format (nick, mtip .. tryipcc (mtip, nick), class, data))
						end

						if table_sets.antispamdebug == 1 then -- debug
							opsnotify (table_sets.classnotianti, gettext ("Entry used in detection: %s"):format (repnmdcoutchars (entry)))
							opsnotify (table_sets.classnotianti, gettext ("Exception used in detection: %s"):format (repnmdcoutchars (value)))
						end

						return 1
					end
				end
			end

			action = tonumber (action)

			if action == 5 then
				local note = "Spam notification from %s with IP %s and class %d in MC: %s"

				if where == 2 then
					note = "Spam notification from %s with IP %s and class %d in PM to %s with IP %s and class %d: %s"
				elseif where == 3 then
					note = "Spam notification from %s with IP %s and class %d in offline message: %s"
				elseif where == 4 then
					note = "Spam notification from %s with IP %s and class %d in report: %s"
				end

				local mtip = getip (nick)
				local toip = getip (to)

				if where == 2 then
					opsnotify (table_sets.classnotianti, gettext (note):format (nick, mtip .. tryipcc (mtip, nick), class, to, toip .. tryipcc (toip, to), toclass, data))
				else
					opsnotify (table_sets.classnotianti, gettext (note):format (nick, mtip .. tryipcc (mtip, nick), class, data))
				end

				if table_sets.antispamdebug == 1 then -- debug
					opsnotify (table_sets.classnotianti, gettext ("Entry used in detection: %s"):format (repnmdcoutchars (entry)))
				end

				return 1
			end

			if action == 4 then -- special action
				if where == 1 then
					maintoself (nick, data)
				elseif where == 3 then
					if status == 1 then
						commandanswer (nick, gettext ("User %s is online. Sending message directly."):format (to))
					else
						commandanswer (nick, gettext ("Your offline message stored for user: %s"):format (to))
					end
				end

			elseif action == 9 then -- replace with ninthactrepmsg
				if where == 1 then
					local custnick = nick

					if table_sets.custnickclass < 11 then
						custnick = getcustnick (nick) or nick
					end

					VH:SendToClass ("<" .. custnick .. "> " .. table_sets.ninthactrepmsg .. "|", 0, 10)
					addmchistoryline (custnick, nick, table_sets.ninthactrepmsg)
				elseif where == 2 then
					local custnick = nick

					if table_sets.custnickclass < 11 then
						custnick = getcustnick (nick) or nick
					end

					VH:SendToUser ("$To: " .. to .. " From: " .. nick .. " $<" .. custnick .. "> " .. table_sets.ninthactrepmsg .. "|", to)
				elseif where == 3 or where == 4 then
					commandanswer (nick, table_sets.antimessage)
				end

			else
				if where == 1 then
					maintouser (nick, table_sets.antimessage)
				elseif where == 2 then
					pmtouser (nick, to, table_sets.antimessage)
				elseif where == 3 or where == 4 then
					commandanswer (nick, table_sets.antimessage)
				end
			end

			local note = "Spam from %s with IP %s and class %d in MC: %s"

			if where == 2 then
				note = "Spam from %s with IP %s and class %d in PM to %s with IP %s and class %d: %s"
			elseif where == 3 then
				note = "Spam from %s with IP %s and class %d in offline message: %s"
			elseif where == 4 then
				note = "Spam from %s with IP %s and class %d in report: %s"
			end

			local ip = getip (nick)
			local toip = getip (to)

			if where == 2 then
				opsnotify (table_sets.classnotianti, gettext (note):format (nick, ip .. tryipcc (ip, nick), class, to, toip .. tryipcc (toip, to), toclass, data))
			else
				opsnotify (table_sets.classnotianti, gettext (note):format (nick, ip .. tryipcc (ip, nick), class, data))
			end

			if action == 1 then -- drop
				opsnotify (table_sets.classnotianti, gettext ("User dropped due to spam: %s"):format (nick))
				VH:Disconnect (nick)

			elseif action == 2 then -- kick
				local reason = table_sets.antikreason:gsub ("%*", reprexpchars (data))
				VH:KickUser (table_othsets.sendfrom, nick, reason)

			elseif action == 3 then -- temporary ban, kick using thirdacttime
				local reason = table_sets.antikreason:gsub ("%*", reprexpchars (data))
				VH:KickUser (table_othsets.sendfrom, nick, reason .. "     #_ban_" .. table_sets.thirdacttime)

			elseif action == 4 then -- spam to self
				opsnotify (table_sets.classnotianti, gettext ("User received own message: %s"):format (nick))

			elseif action == 6 then -- redirect to sixthactaddr
				opsnotify (table_sets.classnotianti, gettext ("User redirected due to spam: %s"):format (nick))
				VH:SendToUser ("$ForceMove " .. table_sets.sixthactaddr .. "|", nick)
				VH:Disconnect (nick)

			elseif action == 7 then -- permanent ban, kick using seventhacttime
				local reason = table_sets.antikreason:gsub ("%*", reprexpchars (data))
				VH:KickUser (table_othsets.sendfrom, nick, reason .. "     #_ban_" .. table_sets.seventhacttime)

			elseif action == 8 then -- gag ip
				gagipadd (nil, ip .. " " .. _tostring (where))
				opsnotify (table_sets.classnotianti, gettext ("Added %s to IP gag list, %d users in total."):format (ip .. tryipcc (ip, nick), # getusersbyip (ip, table_sets.scanbelowclass)))

			elseif action == 9 then -- replace
				if where == 1 then -- mc
					opsnotify (table_sets.classnotianti, gettext ("Main chat message replaced for user: %s"):format (nick))
				elseif where == 2 then -- pm
					opsnotify (table_sets.classnotianti, gettext ("Private message replaced for user: %s"):format (nick))
				end

			elseif action == 10 then -- hard ban
				addhban (nil, repexdots (ip) .. "$ \"" .. repnmdcoutchars (entry) .. "\"")
				opsnotify (table_sets.classnotianti, gettext ("Added %s to hard ban list, %d users in total."):format (ip, # getusersbyip (ip, table_sets.scanbelowclass)))
				VH:Disconnect (nick)
			end

			if table_sets.antispamdebug == 1 then -- debug
				opsnotify (table_sets.classnotianti, gettext ("Entry used in detection: %s"):format (repnmdcoutchars (entry)))
			end

			return 0
		end
	end

	return 1
end

----- ---- --- -- -

function sefiscan (nick, srch, cls, ip)
	local tp, str = srch:match ("^%$Search .* .*%?.*%?.*%?(.*)%?(.*)$")

	if not str or # str == 0 then
		return false
	end

	tp = tonumber (tp or 1) or 1

	if tp < 1 or tp > 9 then
		tp = 1
	end

	local _, rows = VH:SQLQuery ("select `exception` from `" .. tbl_sql.sefiex .. "`")
	local exlist = {}

	for x = 0, rows - 1 do
		local _, ent = VH:SQLFetch (x)
		table.insert (exlist, ent)
	end

	if tp == 9 and str:sub (1, 4):lower () == "tth:" then -- remove "TTH:"
		str = str:sub (5)
	end

	str = repsrchchars (str)
	local lsr = str

	if tp ~= 9 then
		lsr = tolow (lsr)
	end

	local _, rows = VH:SQLQuery ("select `filter`, `priority`, `action` from `" .. tbl_sql.sefi .. "` where `type` = " .. _tostring (tp) .. " or `type` = 1 order by `priority` desc, `occurred` desc")

	for x = 0, rows - 1 do
		local _, ent, prio, act = VH:SQLFetch (x)
		local fres, fval = catchfinderror (lsr, ent)

		if not fres then
			local ferr = gettext ("There is an error in following search filter pattern") .. ":\r\n\r\n"
			ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (ent) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
			ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
			opsnotify (table_sets.classnotiledoact, ferr)
		elseif fval then
			VH:SQLQuery ("update `" .. tbl_sql.sefi .. "` set `occurred` = `occurred` + 1 where `filter` = '" .. repsqlchars (ent) .. "'")

			if (tonumber (prio or 0) or 0) < 7 then -- skip for 7, 8 and 9
				for _, v in pairs (exlist) do
					local fres, fval = catchfinderror (lsr, v)

					if not fres then
						local ferr = gettext ("There is an error in following search filter exception pattern") .. ":\r\n\r\n"
						ferr = ferr .. " " .. gettext ("Pattern") .. ": " .. repnmdcoutchars (v) .. "\r\n"
						ferr = ferr .. " " .. gettext ("Error") .. ": " .. repnmdcoutchars (fval or gettext ("No error message specified.")) .. "\r\n"
						ferr = ferr .. " " .. gettext ("Solution") .. ": http://www.lua.org/manual/5.2/manual.html#6.4.1\r\n"
						opsnotify (table_sets.classnotiledoact, ferr)
					elseif fval then
						VH:SQLQuery ("update `" .. tbl_sql.sefiex .. "` set `occurred` = `occurred` + 1 where `exception` = '" .. repsqlchars (v) .. "'")
						local note = "Search request exception from %s with IP %s and class %d as any file: %s"

						if tp == 2 then
							note = "Search request exception from %s with IP %s and class %d as audio file: %s"
						elseif tp == 3 then
							note = "Search request exception from %s with IP %s and class %d as compressed file: %s"
						elseif tp == 4 then
							note = "Search request exception from %s with IP %s and class %d as document: %s"
						elseif tp == 5 then
							note = "Search request exception from %s with IP %s and class %d as executable: %s"
						elseif tp == 6 then
							note = "Search request exception from %s with IP %s and class %d as picture: %s"
						elseif tp == 7 then
							note = "Search request exception from %s with IP %s and class %d as video: %s"
						elseif tp == 8 then
							note = "Search request exception from %s with IP %s and class %d as folder: %s"
						elseif tp == 9 then
							note = "Search request exception from %s with IP %s and class %d as TTH: %s"
						end

						opsnotify (table_sets.classnotiex, gettext (note):format (nick, ip .. tryipcc (ip, nick), cls, str))
						return false
					end
				end
			end

			act = tonumber (act or 0) or 0

			if act == 5 then
				local note = "Search request notification from %s with IP %s and class %d as any file: %s"

				if tp == 2 then
					note = "Search request notification from %s with IP %s and class %d as audio file: %s"
				elseif tp == 3 then
					note = "Search request notification from %s with IP %s and class %d as compressed file: %s"
				elseif tp == 4 then
					note = "Search request notification from %s with IP %s and class %d as document: %s"
				elseif tp == 5 then
					note = "Search request notification from %s with IP %s and class %d as executable: %s"
				elseif tp == 6 then
					note = "Search request notification from %s with IP %s and class %d as picture: %s"
				elseif tp == 7 then
					note = "Search request notification from %s with IP %s and class %d as video: %s"
				elseif tp == 8 then
					note = "Search request notification from %s with IP %s and class %d as folder: %s"
				elseif tp == 9 then
					note = "Search request notification from %s with IP %s and class %d as TTH: %s"
				end

				opsnotify (table_sets.classnotisefi, gettext (note):format (nick, ip .. tryipcc (ip, nick), cls, str))
				return false
			end

			if act ~= 4 and act ~= 8 then
				local rsn = table_sets.searfiltmsg:gsub ("%*", reprexpchars (str))
				commandanswer (nick, rsn)
			end

			local note = "Bad search request from %s with IP %s and class %d as any file: %s"

			if tp == 2 then
				note = "Bad search request from %s with IP %s and class %d as audio file: %s"
			elseif tp == 3 then
				note = "Bad search request from %s with IP %s and class %d as compressed file: %s"
			elseif tp == 4 then
				note = "Bad search request from %s with IP %s and class %d as document: %s"
			elseif tp == 5 then
				note = "Bad search request from %s with IP %s and class %d as executable: %s"
			elseif tp == 6 then
				note = "Bad search request from %s with IP %s and class %d as picture: %s"
			elseif tp == 7 then
				note = "Bad search request from %s with IP %s and class %d as video: %s"
			elseif tp == 8 then
				note = "Bad search request from %s with IP %s and class %d as folder: %s"
			elseif tp == 9 then
				note = "Bad search request from %s with IP %s and class %d as TTH: %s"
			end

			opsnotify (table_sets.classnotisefi, gettext (note):format (nick, ip .. tryipcc (ip, nick), cls, str))

			if act == 1 then -- drop
				opsnotify (table_sets.classnotisefi, gettext ("User dropped due to bad search request: %s"):format (nick))
				VH:Disconnect (nick)

			elseif act == 2 then -- kick
				local rsn = table_sets.sefireason:gsub ("%*", reprexpchars (str))
				VH:KickUser (table_othsets.sendfrom, nick, rsn)

			elseif act == 3 then -- temporary ban
				local rsn = table_sets.sefireason:gsub ("%*", reprexpchars (str))
				VH:KickUser (table_othsets.sendfrom, nick, rsn .. "     #_ban_" .. table_sets.thirdacttime)

			elseif act == 4 then -- silent skip
				opsnotify (table_sets.classnotisefi, gettext ("User didn't get any search results: %s"):format (nick))

			elseif act == 6 then -- redirect
				opsnotify (table_sets.classnotisefi, gettext ("User redirected due to bad search request: %s"):format (nick))
				VH:SendToUser ("$ForceMove " .. table_sets.sixthactaddr .. "|", nick)
				VH:Disconnect (nick)

			elseif act == 7 then -- permanent ban
				local rsn = table_sets.sefireason:gsub ("%*", reprexpchars (str))
				VH:KickUser (table_othsets.sendfrom, nick, rsn .. "     #_ban_" .. table_sets.seventhacttime)

			elseif act == 8 or act == 9 then -- block list
				opsnotify (table_sets.classnotisefi, gettext ("User added to search block list: %s"):format (nick))

				table_sefi [nick] = {
					sil = (act == 8), -- silent
					req = str,
					num = 1
				}
			end

			return true
		end
	end

	return false
end

----- ---- --- -- -

function maintoself (nick, data)
	VH:SendToUser ("<" .. nick .. "> " .. data .. "|", nick)
end

----- ---- --- -- -

function offlinepm (from, to, data)
	VH:SendToUser ("$To: " .. to .. " From: " .. from .. " $<" .. from .. "> " .. data .. "|", to)
end

----- ---- --- -- -

function pmtouser (to, from, data)
	VH:SendToUser ("$To: " .. to .. " From: " .. (from or table_othsets.sendfrom) .. " $<" .. table_othsets.sendfrom .. "> " .. data .. "|", to)
end

----- ---- --- -- -

function maintouser (to, data)
	VH:SendToUser ("<" .. table_othsets.sendfrom .. "> " .. data .. "|", to)
end

----- ---- --- -- -

function maintoall (data, micl, macl, refl)
	VH:SendToClass ("<" .. table_othsets.sendfrom .. "> " .. data .. "|", micl, macl)
	addmchistoryline (table_othsets.sendfrom, table_othsets.sendfrom, data, refl)
end

----- ---- --- -- -

function commandanswer (to, data) -- todo: replace nmdc characters here instead of each place that calls this function
	if table_sets.commandstopm == 0 then
		VH:SendToUser ("<" .. table_othsets.sendfrom .. "> " .. data .. "|", to)
	else
		VH:SendToUser ("$To: " .. to .. " From: " .. table_othsets.botnick .. " $<" .. table_othsets.sendfrom .. "> " .. data .. "|", to)
	end
end

----- ---- --- -- -

function opsnotify (micl, data) -- todo: replace nmdc characters here instead of each place that calls this function
	if micl == 11 then
		return
	end

	VH:SendPMToAll ("[" .. prezero (2, micl) .. "] " .. data, table_othsets.feednick, micl, 10)

	if table_sets.histbotmsg == 1 then -- table_sets.addledobot == 0 and table_sets.useextrafeed == 0
		addophistoryline (table_othsets.feednick, data, micl)
	end
end

---------------------------------------------------------------------
-- ledokol functions <<
---------------------------------------------------------------------

---------------------------------------------------------------------
-- end of file <<
---------------------------------------------------------------------