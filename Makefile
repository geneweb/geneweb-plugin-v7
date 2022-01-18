.DEFAULT_GOAL = build

PREFIX=/usr
DISTRIB_DIR=distribution

BUILD_DIR=_build/default

build:
	dune build --release @plugin

distrib: build
	$(RM) -r $(DISTRIB_DIR)
	mkdir $(DISTRIB_DIR)
	if [ -f $(BUILD_DIR)/src/plugin_v7.cmxs ] ; then \
		mkdir $(DISTRIB_DIR)/v7; \
		cp $(BUILD_DIR)/src/plugin_v7.cmxs $(DISTRIB_DIR)/v7; \
		if [ -d $(BUILD_DIR)/src/assets ] ; then \
			cp -R $(BUILD_DIR)/src/assets $(DISTRIB_DIR)/v7; \
		fi; \
		if [ -f $(BUILD_DIR)/src/META ] ; then \
			cp $(BUILD_DIR)/src/META $(DISTRIB_DIR)/v7; \
		fi; \
	fi; \

clean:
	dune clean
