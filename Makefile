INSTALL ?= /usr/bin/install

.PHONY: install
install:
	@mkdir -p ~/.local/share/jampog/base/ && \
	cp -n server.cfg ~/.local/share/jampog/base/ && \
	$(INSTALL) jampog.service -D -t ~/.config/systemd/user/

