
SUBDIRS = cmvspmvs-docker openmvg-docker potreeconverter-docker jpeg_metadata_size bin doxel-viewer

.PHONY: subdirs $(SUBDIRS)

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

INSTALLDIRS = $(SUBDIRS:%=install-%)

install: $(INSTALLDIRS)
$(INSTALLDIRS): 
	$(MAKE) -C $(@:install-%=%) install

.PHONY: install $(INSTALLDIRS)

