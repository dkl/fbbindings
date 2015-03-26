#pragma once

#include once "X11/Intrinsic.bi"
#include once "X11/Xfuncproto.bi"

extern "C"

#define _XMU_ATOMS_H_
type AtomPtr as _AtomRec ptr
extern _XA_ATOM_PAIR as AtomPtr
extern _XA_CHARACTER_POSITION as AtomPtr
extern _XA_CLASS as AtomPtr
extern _XA_CLIENT_WINDOW as AtomPtr
extern _XA_CLIPBOARD as AtomPtr
extern _XA_COMPOUND_TEXT as AtomPtr
extern _XA_DECNET_ADDRESS as AtomPtr
extern _XA_DELETE as AtomPtr
extern _XA_FILENAME as AtomPtr
extern _XA_HOSTNAME as AtomPtr
extern _XA_IP_ADDRESS as AtomPtr
extern _XA_LENGTH as AtomPtr
extern _XA_LIST_LENGTH as AtomPtr
extern _XA_NAME as AtomPtr
extern _XA_NET_ADDRESS as AtomPtr
extern _XA_NULL as AtomPtr
extern _XA_OWNER_OS as AtomPtr
extern _XA_SPAN as AtomPtr
extern _XA_TARGETS as AtomPtr
extern _XA_TEXT as AtomPtr
extern _XA_TIMESTAMP as AtomPtr
extern _XA_USER as AtomPtr
extern _XA_UTF8_STRING as AtomPtr

#define XA_ATOM_PAIR(d) XmuInternAtom(d, _XA_ATOM_PAIR)
#define XA_CHARACTER_POSITION(d) XmuInternAtom(d, _XA_CHARACTER_POSITION)
#define XA_CLASS(d) XmuInternAtom(d, _XA_CLASS)
#define XA_CLIENT_WINDOW(d) XmuInternAtom(d, _XA_CLIENT_WINDOW)
#define XA_CLIPBOARD(d) XmuInternAtom(d, _XA_CLIPBOARD)
#define XA_COMPOUND_TEXT(d) XmuInternAtom(d, _XA_COMPOUND_TEXT)
#define XA_DECNET_ADDRESS(d) XmuInternAtom(d, _XA_DECNET_ADDRESS)
#define XA_DELETE(d) XmuInternAtom(d, _XA_DELETE)
#define XA_FILENAME(d) XmuInternAtom(d, _XA_FILENAME)
#define XA_HOSTNAME(d) XmuInternAtom(d, _XA_HOSTNAME)
#define XA_IP_ADDRESS(d) XmuInternAtom(d, _XA_IP_ADDRESS)
#define XA_LENGTH(d) XmuInternAtom(d, _XA_LENGTH)
#define XA_LIST_LENGTH(d) XmuInternAtom(d, _XA_LIST_LENGTH)
#define XA_NAME(d) XmuInternAtom(d, _XA_NAME)
#define XA_NET_ADDRESS(d) XmuInternAtom(d, _XA_NET_ADDRESS)
#define XA_NULL(d) XmuInternAtom(d, _XA_NULL)
#define XA_OWNER_OS(d) XmuInternAtom(d, _XA_OWNER_OS)
#define XA_SPAN(d) XmuInternAtom(d, _XA_SPAN)
#define XA_TARGETS(d) XmuInternAtom(d, _XA_TARGETS)
#define XA_TEXT(d) XmuInternAtom(d, _XA_TEXT)
#define XA_TIMESTAMP(d) XmuInternAtom(d, _XA_TIMESTAMP)
#define XA_USER(d) XmuInternAtom(d, _XA_USER)
#define XA_UTF8_STRING(d) XmuInternAtom(d, _XA_UTF8_STRING)

declare function XmuGetAtomName(byval dpy as Display ptr, byval atom as Atom) as zstring ptr
declare function XmuInternAtom(byval dpy as Display ptr, byval atom_ptr as AtomPtr) as Atom
declare sub XmuInternStrings(byval dpy as Display ptr, byval names as String ptr, byval count as Cardinal, byval atoms_return as Atom ptr)
declare function XmuMakeAtom(byval name as const zstring ptr) as AtomPtr
declare function XmuNameOfAtom(byval atom_ptr as AtomPtr) as zstring ptr

end extern
