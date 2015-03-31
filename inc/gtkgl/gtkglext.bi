#pragma once

#ifdef __FB_WIN32__
	#inclib "gtkglext-win32-1.0"
#else
	#inclib "gtkglext-x11-1.0"
#endif

#include once "gdk/gdkgl.bi"
#include once "glib.bi"
#include once "gdk/gdk.bi"
#include once "gtk/gtkwidget.bi"

#ifdef __FB_WIN32__
#pragma push(msbitfields)
#endif

extern "C"

#define __GTK_GL_H__
#define __GTK_GL_DEFS_H__
#define __GTK_GL_VERSION_H__
const GTKGLEXT_MAJOR_VERSION = 1
const GTKGLEXT_MINOR_VERSION = 2
const GTKGLEXT_MICRO_VERSION = 0
const GTKGLEXT_INTERFACE_AGE = 0
const GTKGLEXT_BINARY_AGE = 0
#define GTKGLEXT_CHECK_VERSION(major, minor, micro) (((GTKGLEXT_MAJOR_VERSION > (major)) orelse ((GTKGLEXT_MAJOR_VERSION = (major)) andalso (GTKGLEXT_MINOR_VERSION > (minor)))) orelse (((GTKGLEXT_MAJOR_VERSION = (major)) andalso (GTKGLEXT_MINOR_VERSION = (minor))) andalso (GTKGLEXT_MICRO_VERSION >= (micro))))

#ifdef __FB_WIN32__
	extern import gtkglext_major_version as const guint
	extern import gtkglext_minor_version as const guint
	extern import gtkglext_micro_version as const guint
	extern import gtkglext_interface_age as const guint
	extern import gtkglext_binary_age as const guint
#else
	extern gtkglext_major_version as const guint
	extern gtkglext_minor_version as const guint
	extern gtkglext_micro_version as const guint
	extern gtkglext_interface_age as const guint
	extern gtkglext_binary_age as const guint
#endif

#define __GTK_GL_INIT_H__
declare function gtk_gl_parse_args(byval argc as long ptr, byval argv as zstring ptr ptr ptr) as gboolean
declare function gtk_gl_init_check(byval argc as long ptr, byval argv as zstring ptr ptr ptr) as gboolean
declare sub gtk_gl_init(byval argc as long ptr, byval argv as zstring ptr ptr ptr)
#define __GTK_GL_WIDGET_H__
declare function gtk_widget_set_gl_capability(byval widget as GtkWidget ptr, byval glconfig as GdkGLConfig ptr, byval share_list as GdkGLContext ptr, byval direct as gboolean, byval render_type as long) as gboolean
declare function gtk_widget_is_gl_capable(byval widget as GtkWidget ptr) as gboolean
declare function gtk_widget_get_gl_config(byval widget as GtkWidget ptr) as GdkGLConfig ptr
declare function gtk_widget_create_gl_context(byval widget as GtkWidget ptr, byval share_list as GdkGLContext ptr, byval direct as gboolean, byval render_type as long) as GdkGLContext ptr
declare function gtk_widget_get_gl_context(byval widget as GtkWidget ptr) as GdkGLContext ptr
declare function gtk_widget_get_gl_window(byval widget as GtkWidget ptr) as GdkGLWindow ptr
#define gtk_widget_get_gl_drawable(widget) GDK_GL_DRAWABLE(gtk_widget_get_gl_window(widget))

end extern

#ifdef __FB_WIN32__
#pragma pop(msbitfields)
#endif
