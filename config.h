/*  
 *  dwm 
 *  config.h 
 */
#define COLOR_DARK "#191918"
#define COLOR_WHTE "#e5e5e4"
#define COLOR_GOLD "#ffeeaa"

/* appearance */
static const unsigned int borderpx  = 4;
static const unsigned int gappx     = 6;
static const unsigned int snap      = 32;
static const int showbar            = 1;
static const int topbar             = 1;
static const char *fonts[]          = { "terminus:size=12" };
static const char dmenufont[]       = "terminus:size=12";
static const char col_gray1[]       = "#222222";
static const char col_gray2[]       = "#444444";
static const char col_gray3[]       = "#bbbbbb";
static const char col_gray4[]       = COLOR_WHTE;
static const char col_cyan[]        = COLOR_DARK;
static const char *colors[SchemeLast][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel] =  { col_gray4, col_cyan,  col_cyan  },
};

/* tagging */
static const char *tags[] = { "§1", "§2", "§3"};
static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class     instance  title   tags mask  isfloating  monitor */
	{ "Firefox", NULL,     NULL,   1 << 8,     0,         -1 },
	{ "urxvt",   NULL,     NULL,   1 << 3,     1,         -1 },
};

/* layout(s) */
static const float mfact     = 0.65; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;
static const int resizehints = 0;

static const Layout layouts[] = {
/* symbol function */
	{ "Φ",   tile },    /* first is default */
	{ "¬",   NULL },    /* no layout, floating behavior */
	{ "[M]", monocle },
};

/* key definitions */
#define MODKEY Mod4Mask
#define MODKEY2 Mod1Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_cyan, "-sf", col_gray4, NULL };
static const char *termcmd[]  = { "urxvtc", "-name", ">_",  NULL };

static Key keys[] = {
	/* modifier           key        function        argument */
	{ MODKEY,             XK_d,      spawn,          {.v = dmenucmd } },
	{ MODKEY|ShiftMask,   XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY,             XK_b,      togglebar,      {0} },
	{ MODKEY,             XK_j,      focusstack,     {.i = +1 } },
	{ MODKEY,             XK_k,      focusstack,     {.i = -1 } },
	{ MODKEY,             XK_i,      incnmaster,     {.i = +1 } },
	{ MODKEY,             XK_4,      incnmaster,     {.i = -1 } },
	{ MODKEY,             XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,             XK_l,      setmfact,       {.f = +0.05} },
	{ MODKEY,             XK_5,      zoom,           {0} },
	{ MODKEY,             XK_Tab,    view,           {0} },
	{ MODKEY|ShiftMask,   XK_c,      killclient,     {0} },
	{ MODKEY,             XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY,             XK_f,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY,             XK_m,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY,             XK_space,  setlayout,      {0} },
	{ MODKEY|ShiftMask,   XK_space,  togglefloating, {0} },
	{ MODKEY,             XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,   XK_0,      tag,            {.ui = ~0 } },
	{ MODKEY,             XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,             XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,   XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,   XK_period, tagmon,         {.i = +1 } },
	{ MODKEY|ShiftMask,   XK_q,      quit,           {0} },
	TAGKEYS(              XK_1,                      0)
	TAGKEYS(              XK_2,                      1)
	TAGKEYS(              XK_3,                      2)
	//TAGKEYS(                XK_4,                      3)
	//TAGKEYS(                XK_5,                      4)
	//TAGKEYS(                XK_6,                      5)
	//TAGKEYS(                XK_7,                      6)
	//TAGKEYS(                XK_8,                      7)
	//TAGKEYS(                XK_9,                      8)
};

/* button definitions */
/* click can be ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY2,        Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

