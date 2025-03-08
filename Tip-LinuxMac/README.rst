.. _linux_pawncc_install:

########################
 Installing PawnCC on Linux & macOS
########################

.. contents:: Table of Contents
   :depth: 2

Linux
=====
Before Step, Download this:
===========================

**Debian/Ubuntu** ::

    sudo dpkg --add-architecture i386
    sudo apt update && sudo apt install libc6:i386 libstdc++6:i386

**Arch Linux** ::

    sudo pacman -Syu && sudo pacman -S lib32-glibc

**OpenSUSE** ::

    sudo zypper install glibc-32bit libstdc++6-32bit

**Fedora** ::

    sudo dnf install glibc.i686 libstdc++.i686

**CentOS/RHEL** ::

    sudo yum install glibc.i686 libstdc++.i686

After that, Just Download `PawnCC <https://github.com/pawn-lang/compiler/releases>`_ - or install with ``$ paw -p``
=====================================================================

Extract and install all files from the "bin" folder into your main compilation directory.

For the libraries:
==================

Navigate to the directory where `libpawnc.so` is located:
=========================================================

.. code-block:: shell

    cd /path/to/libpawnc.so/

Copy `libpawnc.so` to `/usr/local/lib` with sudo permissions:
=============================================================

.. code-block:: shell

    sudo cp libpawnc.so /usr/local/lib/

Update the dynamic linker cache:
================================

.. code-block:: shell

    sudo ldconfig

Add the library path to `LD_LIBRARY_PATH`:
==========================================

.. code-block:: shell

    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

Persist the change by adding it to `~/.bashrc`:
===============================================

.. code-block:: shell

    echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib' >> ~/.bashrc
    source ~/.bashrc

Verify if `libpawnc.so` is recognized:
======================================

.. code-block:: shell

    ldconfig -p | grep libpawnc.so

**If `libpawnc.so` is not detected in this or in compiler, you can move it to `lib32`:**

.. code-block:: shell

    sudo mv /usr/local/lib/libpawnc.so /usr/lib32/

MacOS
=====
Installing `.dylib` on macOS:
=============================

Download and extract PawnCC as mentioned above.

Copy `libpawnc.dylib` to `/usr/local/lib`:
==========================================

.. code-block:: shell

    sudo cp libpawnc.dylib /usr/local/lib/

Verify the library path:
========================

.. code-block:: shell

    otool -L /usr/local/lib/libpawnc.dylib

If not recognized, add it to `DYLD_LIBRARY_PATH`:
=================================================

.. code-block:: shell

    export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/lib

Persist the change by adding it to `~/.zshrc` or `~/.bash_profile`:
===================================================================

.. code-block:: shell

    echo 'export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/lib' >> ~/.zshrc
    source ~/.zshrc

If the library is still not recognized, move it to `/usr/lib/`:
===============================================================

.. code-block:: shell

    sudo mv /usr/local/lib/libpawnc.dylib /usr/lib/

Check again:
============

.. code-block:: shell

    otool -L /usr/lib/libpawnc.dylib

