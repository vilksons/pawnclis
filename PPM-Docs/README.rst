How to use PPM?
===============

There are two modes in PawnCLIS: **Paw Mode** and **PPM Mode**.  
The difference between the two is that in Paw Mode, you cannot use PPM (package manager), and vice versa.  

Before using the command:

.. code-block:: shell

    $ ppm

you must first enter PPM Mode with:

.. code-block:: shell

    $ paw -M

Then, use:

.. code-block:: shell

    $ help

to list further commands.  

To exit PPM Mode, use:

.. code-block:: shell

    $ ppm -E

How to use PPM with Args?
===============

Example:

.. code-block:: shell

    $ ppm -S github.com/nexquery/samp-textdraw-streamer/releases/download/v2.0.3-hotfix/textdraw-streamer.zip

.. code-block:: shell

    $ install github.com/nexquery/samp-textdraw-streamer/releases/download/v2.0.3-hotfix/textdraw-streamer.zip

Remove:

.. code-block:: shell

    $ paw -r textdraw-streamer

.. code-block:: shell

    $ remove textdraw-streamer

Note
===============
PawnCLIS Package Manager (PPM) is an additional tool from PawnCLIS to be able to perform Package Manager more efficiently, including ``curl`` ``pycurl`` ``urllib3`` ``requests``. and PPM itself, you don't need to worry about the installation of ``.dll`` ``.so`` ``.inc`` because PawnCLIS Package Manager will adjust it. and you also don't need to worry about installing Advanced Includes like Y_LESS Include because PPM will also adjust it.