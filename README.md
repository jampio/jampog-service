# jampog-service
systemd service for jampog

### installation
```shell
git clone https://github.com/jampio/jampog-service
cd jampog-service
make
sudo loginctl enable-linger $USER
systemctl --user enable $USER
```
