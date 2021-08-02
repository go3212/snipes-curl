# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := greet
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=greet' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DNAPI_DISABLE_CPP_EXCEPTIONS' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++14

INCS_Debug := \
	-I/home/go3212/.cache/node-gyp/16.5.0/include/node \
	-I/home/go3212/.cache/node-gyp/16.5.0/src \
	-I/home/go3212/.cache/node-gyp/16.5.0/deps/openssl/config \
	-I/home/go3212/.cache/node-gyp/16.5.0/deps/openssl/openssl/include \
	-I/home/go3212/.cache/node-gyp/16.5.0/deps/uv/include \
	-I/home/go3212/.cache/node-gyp/16.5.0/deps/zlib \
	-I/home/go3212/.cache/node-gyp/16.5.0/deps/v8/include \
	-I/mnt/c/Users/Fernando/Projects/snipes/node_modules/node-addon-api

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=greet' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DNAPI_DISABLE_CPP_EXCEPTIONS' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++14

INCS_Release := \
	-I/home/go3212/.cache/node-gyp/16.5.0/include/node \
	-I/home/go3212/.cache/node-gyp/16.5.0/src \
	-I/home/go3212/.cache/node-gyp/16.5.0/deps/openssl/config \
	-I/home/go3212/.cache/node-gyp/16.5.0/deps/openssl/openssl/include \
	-I/home/go3212/.cache/node-gyp/16.5.0/deps/uv/include \
	-I/home/go3212/.cache/node-gyp/16.5.0/deps/zlib \
	-I/home/go3212/.cache/node-gyp/16.5.0/deps/v8/include \
	-I/mnt/c/Users/Fernando/Projects/snipes/node_modules/node-addon-api

OBJS := \
	$(obj).target/$(TARGET)/src/greeting.o \
	$(obj).target/$(TARGET)/src/index.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS := \
	-lcurl

$(obj).target/greet.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/greet.node: LIBS := $(LIBS)
$(obj).target/greet.node: TOOLSET := $(TOOLSET)
$(obj).target/greet.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/greet.node
# Add target alias
.PHONY: greet
greet: $(builddir)/greet.node

# Copy this to the executable output path.
$(builddir)/greet.node: TOOLSET := $(TOOLSET)
$(builddir)/greet.node: $(obj).target/greet.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/greet.node
# Short alias for building this executable.
.PHONY: greet.node
greet.node: $(obj).target/greet.node $(builddir)/greet.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/greet.node

