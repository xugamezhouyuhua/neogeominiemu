
LIBS += -lm -lpthread -lSDL 

TARGET = mvsnjemu

INCS = -I./src 

CFLAGS  += ${INCS}
BINPATH    := /opt/74kf_hardfloat_fp32/bin

# set base program pointers and flags
CC       = ${BINPATH}/mipsel-linux-gnu-gcc
CXX      = ${BINPATH}/mipsel-linux-gnu-g++
STRIP	 = ${BINPATH}/mipsel-linux-gnu-strip -s

#CFLAGS += -g
#STRIP = true

SRCDIR = ./src
OBJDIR = _obj

# list of required source files for compilation

SOURCE = $(SRCDIR)/emumain.c \

SOURCE += \
	$(SRCDIR)/common/cache.s \
	$(SRCDIR)/common/loadrom.s \
	$(SRCDIR)/common/state.s 

#CPU
SOURCE += \
	$(SRCDIR)/cpu/m68000/c68k.c \
	$(SRCDIR)/cpu/m68000/m68000.c \
	$(SRCDIR)/cpu/z80/z80.c\
	$(SRCDIR)/cpu/z80/cz80.c 
#	$(SRCDIR)/cpu/z80/cz80_op.c \
	$(SRCDIR)/cpu/z80/cz80_opCB.c \
	$(SRCDIR)/cpu/z80/cz80_opED.c \
	$(SRCDIR)/cpu/z80/cz80_opXY.c \
	$(SRCDIR)/cpu/z80/cz80_XYCB.c 

#MVS
SOURCE += \
        $(SRCDIR)/mvs/biosmenu.s \
        $(SRCDIR)/mvs/dipsw.s \
        $(SRCDIR)/mvs/driver.s \
        $(SRCDIR)/mvs/inptport.s \
        $(SRCDIR)/mvs/memintrf.s \
        $(SRCDIR)/mvs/mvs.s \
        $(SRCDIR)/mvs/pd4990a.s \
        $(SRCDIR)/mvs/neocrypt.s \
        $(SRCDIR)/mvs/sprite.s \
        $(SRCDIR)/mvs/timer.s \
        $(SRCDIR)/mvs/vidhrdw.s 

#sound
SOURCE += \
        $(SRCDIR)/sound/2610intf.s \
        $(SRCDIR)/sound/sndintrf.s \
        $(SRCDIR)/sound/ym2610.s 

#zlib
SOURCE += \
        $(SRCDIR)/zlib/adler32.c \
        $(SRCDIR)/zlib/compress.c \
        $(SRCDIR)/zlib/crc32.c \
        $(SRCDIR)/zlib/deflate.c \
        $(SRCDIR)/zlib/inflate.c \
        $(SRCDIR)/zlib/inftrees.c \
        $(SRCDIR)/zlib/inffast.c \
        $(SRCDIR)/zlib/trees.c \
        $(SRCDIR)/zlib/zutil.c

#zip
SOURCE += \
        $(SRCDIR)/zip/zfile.c \
        $(SRCDIR)/zip/unzip.c

#ELINUX
SOURCE += \
        $(SRCDIR)/elinux/sound.s\
		$(SRCDIR)/elinux/video.s 


CFLAGS += \
    -O2 \
    -fomit-frame-pointer \
    -fno-strict-aliasing \
    -falign-functions=32 \
    -falign-loops \
    -falign-labels \
    -falign-jumps \
    -Wall \
    -Wundef \
    -Wpointer-arith  \
    -Wbad-function-cast \
    -Wwrite-strings \
    -Wmissing-prototypes \
    -Wsign-compare \
    -DZLIB_CONST

CFLAGS += -DRELEASE=1
CFLAGS += -DSAVE_STATE=1

CFLAGS += -DINLINE='static __inline' \
        -Dinline=__inline \
        -D__inline__=__inline 

# generate a list of object files to build, make a temporary directory for them
OBJECTS := $(patsubst $(SRCDIR)/%.s,   $(OBJDIR)/%.o, $(filter %.s,   $(SOURCE)))
OBJECTS += $(patsubst $(SRCDIR)/%.c,   $(OBJDIR)/%.o, $(filter %.c,   $(SOURCE)))
OBJECTS += $(patsubst $(SRCDIR)/%.cpp, $(OBJDIR)/%.o, $(filter %.cpp, $(SOURCE)))
OBJDIRS = $(dir $(OBJECTS))
$(shell mkdir -p $(OBJDIRS))

# build targets
all: $(TARGET)
	mv $(TARGET) bin

clean:
	$(RM) -rf $(TARGET) $(TARGET).exe $(SONAME) ./_obj

# build dependency files
CFLAGS += -MD
-include $(OBJECTS:.o=.d)

CXXFLAGS += $(CFLAGS)

# reduced compile output when running make without V=1
ifneq ($(findstring $(MAKEFLAGS),s),s)
ifndef V
	Q_CC  = @echo '    CC  '$@;
	Q_CXX = @echo '    CXX '$@;
	Q_LD  = @echo '    LD  '$@;
endif
endif

# build rules
$(TARGET): $(OBJECTS)
	$(Q_LD)$(CXX) $(LDFLAGS) $^ $(LIBS) -o $@
	$(STRIP) $@

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	$(Q_CXX)$(CXX) -o $@ $(CXXFLAGS) -c $<

$(OBJDIR)/%.o: $(SRCDIR)/%.c
	$(Q_CC)$(CC) -o $@ $(CFLAGS) -c $<

$(OBJDIR)/%.o: $(SRCDIR)/%.s
	$(Q_CC)$(CC) -o $@ $(CFLAGS) -c $<
