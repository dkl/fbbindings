#pragma once

'' TODO: #define VFW_S_NO_MORE_ITEMS ((HRESULT)0x00040103)
'' TODO: #define VFW_S_DUPLICATE_NAME ((HRESULT)0x0004022D)
'' TODO: #define VFW_S_STATE_INTERMEDIATE ((HRESULT)0x00040237)
'' TODO: #define VFW_S_PARTIAL_RENDER ((HRESULT)0x00040242)
'' TODO: #define VFW_S_SOME_DATA_IGNORED ((HRESULT)0x00040245)
'' TODO: #define VFW_S_CONNECTIONS_DEFERRED ((HRESULT)0x00040246)
'' TODO: #define VFW_S_RESOURCE_NOT_NEEDED ((HRESULT)0x00040250)
'' TODO: #define VFW_S_MEDIA_TYPE_IGNORED ((HRESULT)0x00040254)
'' TODO: #define VFW_S_VIDEO_NOT_RENDERED ((HRESULT)0x00040257)
'' TODO: #define VFW_S_AUDIO_NOT_RENDERED ((HRESULT)0x00040258)
'' TODO: #define VFW_S_RPZA ((HRESULT)0x0004025A)
'' TODO: #define VFW_S_ESTIMATED ((HRESULT)0x00040260)
'' TODO: #define VFW_S_RESERVED ((HRESULT)0x00040263)
'' TODO: #define VFW_S_STREAM_OFF ((HRESULT)0x00040267)
'' TODO: #define VFW_S_CANT_CUE ((HRESULT)0x00040268)
'' TODO: #define VFW_S_NO_STOP_TIME ((HRESULT)0x00040270)
'' TODO: #define VFW_S_NOPREVIEWPIN ((HRESULT)0x0004027E)
'' TODO: #define VFW_S_DVD_NON_ONE_SEQUENTIAL ((HRESULT)0x00040280)
'' TODO: #define VFW_S_DVD_CHANNEL_CONTENTS_NOT_AVAILABLE ((HRESULT)0x0004028C)
'' TODO: #define VFW_S_DVD_NOT_ACCURATE ((HRESULT)0x0004028D)
'' TODO: #define VFW_E_INVALIDMEDIATYPE ((HRESULT)0x80040200)
'' TODO: #define VFW_E_INVALIDSUBTYPE ((HRESULT)0x80040201)
'' TODO: #define VFW_E_NEED_OWNER ((HRESULT)0x80040202)
'' TODO: #define VFW_E_ENUM_OUT_OF_SYNC ((HRESULT)0x80040203)
'' TODO: #define VFW_E_ALREADY_CONNECTED ((HRESULT)0x80040204)
'' TODO: #define VFW_E_FILTER_ACTIVE ((HRESULT)0x80040205)
'' TODO: #define VFW_E_NO_TYPES ((HRESULT)0x80040206)
'' TODO: #define VFW_E_NO_ACCEPTABLE_TYPES ((HRESULT)0x80040207)
'' TODO: #define VFW_E_INVALID_DIRECTION ((HRESULT)0x80040208)
'' TODO: #define VFW_E_NOT_CONNECTED ((HRESULT)0x80040209)
'' TODO: #define VFW_E_NO_ALLOCATOR ((HRESULT)0x8004020A)
'' TODO: #define VFW_E_RUNTIME_ERROR ((HRESULT)0x8004020B)
'' TODO: #define VFW_E_BUFFER_NOTSET ((HRESULT)0x8004020C)
'' TODO: #define VFW_E_BUFFER_OVERFLOW ((HRESULT)0x8004020D)
'' TODO: #define VFW_E_BADALIGN ((HRESULT)0x8004020E)
'' TODO: #define VFW_E_ALREADY_COMMITTED ((HRESULT)0x8004020F)
'' TODO: #define VFW_E_BUFFERS_OUTSTANDING ((HRESULT)0x80040210)
'' TODO: #define VFW_E_NOT_COMMITTED ((HRESULT)0x80040211)
'' TODO: #define VFW_E_SIZENOTSET ((HRESULT)0x80040212)
'' TODO: #define VFW_E_NO_CLOCK ((HRESULT)0x80040213)
'' TODO: #define VFW_E_NO_SINK ((HRESULT)0x80040214)
'' TODO: #define VFW_E_NO_INTERFACE ((HRESULT)0x80040215)
'' TODO: #define VFW_E_NOT_FOUND ((HRESULT)0x80040216)
'' TODO: #define VFW_E_CANNOT_CONNECT ((HRESULT)0x80040217)
'' TODO: #define VFW_E_CANNOT_RENDER ((HRESULT)0x80040218)
'' TODO: #define VFW_E_CHANGING_FORMAT ((HRESULT)0x80040219)
'' TODO: #define VFW_E_NO_COLOR_KEY_SET ((HRESULT)0x8004021A)
'' TODO: #define VFW_E_NOT_OVERLAY_CONNECTION ((HRESULT)0x8004021B)
'' TODO: #define VFW_E_NOT_SAMPLE_CONNECTION ((HRESULT)0x8004021C)
'' TODO: #define VFW_E_PALETTE_SET ((HRESULT)0x8004021D)
'' TODO: #define VFW_E_COLOR_KEY_SET ((HRESULT)0x8004021E)
'' TODO: #define VFW_E_NO_COLOR_KEY_FOUND ((HRESULT)0x8004021F)
'' TODO: #define VFW_E_NO_PALETTE_AVAILABLE ((HRESULT)0x80040220)
'' TODO: #define VFW_E_NO_DISPLAY_PALETTE ((HRESULT)0x80040221)
'' TODO: #define VFW_E_TOO_MANY_COLORS ((HRESULT)0x80040222)
'' TODO: #define VFW_E_STATE_CHANGED ((HRESULT)0x80040223)
'' TODO: #define VFW_E_NOT_STOPPED ((HRESULT)0x80040224)
'' TODO: #define VFW_E_NOT_PAUSED ((HRESULT)0x80040225)
'' TODO: #define VFW_E_NOT_RUNNING ((HRESULT)0x80040226)
'' TODO: #define VFW_E_WRONG_STATE ((HRESULT)0x80040227)
'' TODO: #define VFW_E_START_TIME_AFTER_END ((HRESULT)0x80040228)
'' TODO: #define VFW_E_INVALID_RECT ((HRESULT)0x80040229)
'' TODO: #define VFW_E_TYPE_NOT_ACCEPTED ((HRESULT)0x8004022A)
'' TODO: #define VFW_E_SAMPLE_REJECTED ((HRESULT)0x8004022B)
'' TODO: #define VFW_E_SAMPLE_REJECTED_EOS ((HRESULT)0x8004022C)
'' TODO: #define VFW_E_DUPLICATE_NAME ((HRESULT)0x8004022D)
'' TODO: #define VFW_E_TIMEOUT ((HRESULT)0x8004022E)
'' TODO: #define VFW_E_INVALID_FILE_FORMAT ((HRESULT)0x8004022F)
'' TODO: #define VFW_E_ENUM_OUT_OF_RANGE ((HRESULT)0x80040230)
'' TODO: #define VFW_E_CIRCULAR_GRAPH ((HRESULT)0x80040231)
'' TODO: #define VFW_E_NOT_ALLOWED_TO_SAVE ((HRESULT)0x80040232)
'' TODO: #define VFW_E_TIME_ALREADY_PASSED ((HRESULT)0x80040233)
'' TODO: #define VFW_E_ALREADY_CANCELLED ((HRESULT)0x80040234)
'' TODO: #define VFW_E_CORRUPT_GRAPH_FILE ((HRESULT)0x80040235)
'' TODO: #define VFW_E_ADVISE_ALREADY_SET ((HRESULT)0x80040236)
'' TODO: #define VFW_E_NO_MODEX_AVAILABLE ((HRESULT)0x80040238)
'' TODO: #define VFW_E_NO_ADVISE_SET ((HRESULT)0x80040239)
'' TODO: #define VFW_E_NO_FULLSCREEN ((HRESULT)0x8004023A)
'' TODO: #define VFW_E_IN_FULLSCREEN_MODE ((HRESULT)0x8004023B)
'' TODO: #define VFW_E_UNKNOWN_FILE_TYPE ((HRESULT)0x80040240)
'' TODO: #define VFW_E_CANNOT_LOAD_SOURCE_FILTER ((HRESULT)0x80040241)
'' TODO: #define VFW_E_FILE_TOO_SHORT ((HRESULT)0x80040243)
'' TODO: #define VFW_E_INVALID_FILE_VERSION ((HRESULT)0x80040244)
'' TODO: #define VFW_E_INVALID_CLSID ((HRESULT)0x80040247)
'' TODO: #define VFW_E_INVALID_MEDIA_TYPE ((HRESULT)0x80040248)
'' TODO: #define VFW_E_SAMPLE_TIME_NOT_SET ((HRESULT)0x80040249)
'' TODO: #define VFW_E_MEDIA_TIME_NOT_SET ((HRESULT)0x80040251)
'' TODO: #define VFW_E_NO_TIME_FORMAT_SET ((HRESULT)0x80040252)
'' TODO: #define VFW_E_MONO_AUDIO_HW ((HRESULT)0x80040253)
'' TODO: #define VFW_E_NO_DECOMPRESSOR ((HRESULT)0x80040255)
'' TODO: #define VFW_E_NO_AUDIO_HARDWARE ((HRESULT)0x80040256)
'' TODO: #define VFW_E_RPZA ((HRESULT)0x80040259)
'' TODO: #define VFW_E_PROCESSOR_NOT_SUITABLE ((HRESULT)0x8004025B)
'' TODO: #define VFW_E_UNSUPPORTED_AUDIO ((HRESULT)0x8004025C)
'' TODO: #define VFW_E_UNSUPPORTED_VIDEO ((HRESULT)0x8004025D)
'' TODO: #define VFW_E_MPEG_NOT_CONSTRAINED ((HRESULT)0x8004025E)
'' TODO: #define VFW_E_NOT_IN_GRAPH ((HRESULT)0x8004025F)
'' TODO: #define VFW_E_NO_TIME_FORMAT ((HRESULT)0x80040261)
'' TODO: #define VFW_E_READ_ONLY ((HRESULT)0x80040262)
'' TODO: #define VFW_E_BUFFER_UNDERFLOW ((HRESULT)0x80040264)
'' TODO: #define VFW_E_UNSUPPORTED_STREAM ((HRESULT)0x80040265)
'' TODO: #define VFW_E_NO_TRANSPORT ((HRESULT)0x80040266)
'' TODO: #define VFW_E_BAD_VIDEOCD ((HRESULT)0x80040269)
'' TODO: #define VFW_E_OUT_OF_VIDEO_MEMORY ((HRESULT)0x80040271)
'' TODO: #define VFW_E_VP_NEGOTIATION_FAILED ((HRESULT)0x80040272)
'' TODO: #define VFW_E_DDRAW_CAPS_NOT_SUITABLE ((HRESULT)0x80040273)
'' TODO: #define VFW_E_NO_VP_HARDWARE ((HRESULT)0x80040274)
'' TODO: #define VFW_E_NO_CAPTURE_HARDWARE ((HRESULT)0x80040275)
'' TODO: #define VFW_E_DVD_OPERATION_INHIBITED ((HRESULT)0x80040276)
'' TODO: #define VFW_E_DVD_INVALIDDOMAIN ((HRESULT)0x80040277)
'' TODO: #define VFW_E_DVD_NO_BUTTON ((HRESULT)0x80040278)
'' TODO: #define VFW_E_DVD_GRAPHNOTREADY ((HRESULT)0x80040279)
'' TODO: #define VFW_E_DVD_RENDERFAIL ((HRESULT)0x8004027A)
'' TODO: #define VFW_E_DVD_DECNOTENOUGH ((HRESULT)0x8004027B)
'' TODO: #define VFW_E_DDRAW_VERSION_NOT_SUITABLE ((HRESULT)0x8004027C)
'' TODO: #define VFW_E_COPYPROT_FAILED ((HRESULT)0x8004027D)
'' TODO: #define VFW_E_TIME_EXPIRED ((HRESULT)0x8004027F)
'' TODO: #define VFW_E_DVD_WRONG_SPEED ((HRESULT)0x80040281)
'' TODO: #define VFW_E_DVD_MENU_DOES_NOT_EXIST ((HRESULT)0x80040282)
'' TODO: #define VFW_E_DVD_CMD_CANCELLED ((HRESULT)0x80040283)
'' TODO: #define VFW_E_DVD_STATE_WRONG_VERSION ((HRESULT)0x80040284)
'' TODO: #define VFW_E_DVD_STATE_CORRUPT ((HRESULT)0x80040285)
'' TODO: #define VFW_E_DVD_STATE_WRONG_DISC ((HRESULT)0x80040286)
'' TODO: #define VFW_E_DVD_INCOMPATIBLE_REGION ((HRESULT)0x80040287)
'' TODO: #define VFW_E_DVD_NO_ATTRIBUTES ((HRESULT)0x80040288)
'' TODO: #define VFW_E_DVD_NO_GOUP_PGC ((HRESULT)0x80040289)
'' TODO: #define VFW_E_DVD_LOW_PARENTAL_LEVEL ((HRESULT)0x8004028A)
'' TODO: #define VFW_E_DVD_NOT_IN_KARAOKE_MODE ((HRESULT)0x8004028B)
'' TODO: #define VFW_E_FRAME_STEP_UNSUPPORTED ((HRESULT)0x8004028E)
'' TODO: #define VFW_E_DVD_STREAM_DISABLED ((HRESULT)0x8004028F)
'' TODO: #define VFW_E_DVD_TITLE_UNKNOWN ((HRESULT)0x80040290)
'' TODO: #define VFW_E_DVD_INVALID_DISC ((HRESULT)0x80040291)
'' TODO: #define VFW_E_DVD_NO_RESUME_INFORMATION ((HRESULT)0x80040292)
'' TODO: #define VFW_E_PIN_ALREADY_BLOCKED_ON_THIS_THREAD ((HRESULT)0x80040293)
'' TODO: #define VFW_E_PIN_ALREADY_BLOCKED ((HRESULT)0x80040294)
'' TODO: #define VFW_E_CERTIFICATION_FAILURE ((HRESULT)0x80040295)
'' TODO: #define VFW_E_VMR_NOT_IN_MIXER_MODE ((HRESULT)0x80040296)
'' TODO: #define VFW_E_VMR_NO_AP_SUPPLIED ((HRESULT)0x80040297)
'' TODO: #define VFW_E_VMR_NO_DEINTERLACE_HW ((HRESULT)0x80040298)
'' TODO: #define VFW_E_DVD_VMR9_INCOMPATIBLEDEC ((HRESULT)0x8004029A)
'' TODO: #define VFW_E_BAD_KEY ((HRESULT)0x800403F2)
'' TODO: #define E_PROP_ID_UNSUPPORTED ((HRESULT)0x80070490)
'' TODO: #define E_PROP_SET_UNSUPPORTED ((HRESULT)0x80070492)