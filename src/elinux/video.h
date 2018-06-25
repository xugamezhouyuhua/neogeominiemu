/******************************************************************************

	sound.c

	PSP サウンドスレッド

******************************************************************************/

#ifndef ELINUX_VIDEO_H
#define ELINUX_VIDEO_H

#define MAKECOL15(r, g, b)  (((b & 0xf8) << 7) | ((g & 0xf8) << 2) | ((r & 0xf8) >> 3))
#define GETR15(col)         (((col << 3) & 0xf8) | ((col >>  2) & 0x07))
#define GETG15(col)         (((col >> 2) & 0xf8) | ((col >>  7) & 0x07))
#define GETB15(col)         (((col >> 7) & 0xf8) | ((col >> 12) & 0x07))

#define MAKECOL32(r, g, b)  (0xff000000 | ((b & 0xff) << 16) | ((g & 0xff) << 8) | (r & 0xff))
#define GETR32(col)         ((col >>  0) & 0xff)
#define GETG32(col)         ((col >>  8) & 0xff)
#define GETB32(col)         ((col >> 16) & 0xff)

#define MAKECOL32A(r, g, b, a)  (((a & 0xff) << 24) | ((b & 0xff) << 16) | ((g & 0xff) << 8) | (r & 0xff))

#define CNVCOL15TO32(c)             (GETR15(c) | (GETG15(c) << 8) | (GETB15(c) << 16))
#define CNVCOL32TO15(c)             (((GETR32(c) & 0xf8) >> 3) | ((GETG32(c) & 0xf8) << 2) | ((GETB32(src[x]) & 0xf8) << 7))

#define SWIZZLED_8x8(tex, idx)      &tex[(idx) << 6]
#define SWIZZLED_16x16(tex, idx)    &tex[((idx & ~31) << 8) | ((idx & 31) << 7)]
#define SWIZZLED_32x32(tex, idx)    &tex[((idx & ~15) << 10) | ((idx & 15) << 8)]

#define NONE_SWIZZLED_8x8(tex, idx)     &tex[((idx & ~63) << 6) | ((idx & 63) << 3)]
#define NONE_SWIZZLED_16x16(tex, idx)   &tex[((idx & ~31) << 8) | ((idx & 31) << 4)]
#define NONE_SWIZZLED_32x32(tex, idx)   &tex[((idx & ~15) << 10) | ((idx & 15) << 5)]

#define SWIZZLED8_8x8(tex, idx)     &tex[((idx & ~1) << 6) | ((idx & 1) << 3)]
#define SWIZZLED8_16x16(tex, idx)   &tex[((idx & ~31) << 8) | ((idx & 31) << 7)]
#define SWIZZLED8_32x32(tex, idx)   &tex[((idx & ~15) << 10) | ((idx & 15) << 8)]

struct Vertex
{
    UINT16 u, v;
    UINT16 color;
    INT16 x, y, z;
};

typedef struct Vertex16_t
{
    UINT32 color;
    INT16 x, y, z;
} Vertex16;

typedef struct rect_t
{
    INT16 left;
    INT16 top;
    INT16 right;
    INT16 bottom;
} RECT;

#define NEOVIDEOBUFF_W 512
#define NEOVIDEOBUFF_H 240

#endif /* ELINUX_VIDEO_H */
