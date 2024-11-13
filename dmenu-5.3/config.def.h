/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static const unsigned int alpha = 0x80;
static int centered = 1;                    /* -c option; centers dmenu on screen */
static int min_width = 400;                    /* minimum width when centered */
static const float menu_height_ratio = 2.0f;  /* This is the ratio used in the original calculation */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"monospace:style=Bold:size=13"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
			/*     fg         bg       */
	[SchemeNorm] = { "#FFF4B7", "#222222" },     /*normal*/
	[SchemeSel] = { "#222222", "#C68FE6" },         /*seleccion del dmenu*/
	[SchemeSelHighlight] = { "#ffffff", "#C68FE6" },  /*comparacion de seleccion*/
	[SchemeNormHighlight] = { "#ffffff", "#222222" },  /*coincidencias de letras*/
	[SchemeOut] = { "#ffffff", "#F52597" },          /*normal*/
};

static const unsigned int alphas[SchemeLast][2] = {
    [SchemeNorm] = { OPAQUE, alpha }, 
    [SchemeSel] = { OPAQUE, alpha },  
    [SchemeOut] = { OPAQUE, alpha },  
};

/* -l and -g options; controls number of lines and columns in grid if > 0 */
static unsigned int lines      = 12;
static unsigned int columns    = 1;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";

/* Size of the window border */
static unsigned int border_width = 5;
