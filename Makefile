INSTALL ?= /usr/bin/install
.DEFAULT_GOAL := install

.PHONY: assets
assets:
	bin/steam.sh
	@wget https://github.com/jampio/jampog/releases/download/v1.01/jampgamei386.so -O ~/.local/share/jampog/base/jampgamei386.so
	$(INSTALL) server.cfg -D -t ~/.local/share/jampog/base/

.PHONY: service
service:
	$(INSTALL) jampog.service -D -t ~/.config/systemd/user/ && systemctl enable jampog --user && systemctl start jampog --user

