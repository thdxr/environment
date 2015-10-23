FROM derjudge/archlinux
ENV user dax

RUN useradd -m $user
RUN echo "$user:changeme" | chpasswd
WORKDIR /home/$user/dev/environment

# Sync
RUN pacman -Syy


# Basics
RUN pacman -S --noconfirm zsh git make openssh sudo base-devel fakeroot jshon expac wget


# Docker
RUN pacman -S --noconfirm docker
VOLUME /var/lib/docker

# Locale
RUN locale -a
RUN echo "LANG=en_US.UTF-8" > /etc/locale.conf

ADD . .

# Wrap Docker
RUN ln -s /home/$user/dev/environment/wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker

# Generate Keys
ADD ./ssh /
RUN /bin/bash /configure.sh $user && rm /configure.sh

# Create User
RUN chsh -s /bin/zsh $user
RUN chown -R $user:$user /home/$user
RUN echo "$user ALL=(ALL:ALL) ALL" > /etc/sudoers

# Customize
USER $user
RUN /bin/bash ./shell/configure.sh $user

# Packer
# RUN wget https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer -O /tmp/PKGBUILD
# RUN cd /tmp && makepkg && pacman -U packer-*.pkg.tar.gz

USER root


EXPOSE 22

CMD ["wrapdocker"]
