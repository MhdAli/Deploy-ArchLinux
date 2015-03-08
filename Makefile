PKG_LIST := cups virtualbox net-tools bash-completion xorg-server xorg-xinit xorg-utils xorg-server-utils xf86-input-synaptics nemo-fileroller gdm network-manager-aapplet dialog grub vim git firefox tmux fish terminology gnome-terminal sudo base-devel fakeroot lsb-release python rsync flashplugin dnsutils import keepassx
PACMAN := pacman --color auto --noconfirm -S

deploy: packages cups virtualbox

cinnamon:
	$(PACMAN) cinnamon
intel:
	$(PACMAN) xf86-video-intel
cups:
	$(PACMAN) cups
virtualbox:
	install -m644 virtualbox.conf /etc/modules-load.d/
yaourt:
aur: yaourt
	#google-talkplugin viber skype powerline asciidoc
packages:
	$(PACMAN) $(PKG_LIST)
ssh:
	$(PACMAN) openssh
docker:
	$(PACMAN) docker
i3:
	

.PHONY: deploy 
