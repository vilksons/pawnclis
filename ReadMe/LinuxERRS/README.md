:: "cannot execute: required file not found"
    [debian/ubuntu]
    -> sudo dpkg --add-architecture i386
    -> sudo apt update && sudo apt install libc6:i386 libstdc++6:i386
    [archlinux]
    -> sudo pacman -Syu && sudo pacman -S lib32-glibc lib32-gcc-libs
    [opensuse]
    -> sudo zypper install glibc-32bit libstdc++6-32bit
    [fedora]
    -> sudo dnf install glibc.i686 libstdc++.i686
    [centos/rhel]
    -> sudo yum install glibc.i686 libstdc++.i686

