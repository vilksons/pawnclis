PawnCLIS
========
always be updated with ``paw -S``.

Usage Instructions
==================

1. Renaming Your Files
----------------------
Before proceeding, rename your ``*.pwn`` files to one of the following formats:

- ``*.io.pwn``
- ``*.io.xyz``

2. Compiling with ``$ paw``
-----------------------
To compile using the default settings, run the following command:

.. code-block:: sh

    paw -c

Note
----
if you don't want to compile simultaneously and without using ``*.io.*`` you can use additional options (args) and input the name of your ``*.pwn`` file, the file to be compiled.

example
----
.. code-block:: sh

    paw -c mymode

3. Preparing the Configuration File (`data.json`)
-------------------------------------------------
Before compiling, ensure that a ``data.json`` file exists in the ``pawnclis`` directory.
This file should contain the necessary configuration settings. Below is an example of its structure:

.. code-block:: json

    {
        "amx_opt": "-d2 -Z+",

        "ppm_dir": "pawno",
        "ppm_subdir": "include",
        "ppm_type": "urllib3",

        "chatbot_token": "gsk_000000000000000000000000000000000000000000",
        "chatbot_model": "qwen-2.5-32b",
        "chatbot_biodata": "You is A.I with name john",
        "chatbot_json_get": "python3"
    }

Configuration Details
---------------------
- ``amx_opt``: Compilation optimization options (e.g., ``-d0`` for debugging).
- ``ppm_dir`` & ``ppm_subdir``: Specifies the directory structure for package management.
- ``ppm_type``: Determines the package manager type. You can choose from the following options:
  - ``curl``
  - ``pycurl``
  - ``urllib3``
  - ``requests``
  for installation of all four download methods. you can see: `here <https://github.com/vilksons/pawnclis/tree/main/ReadMe/Required>`_
- ``chatbot_token``, ``chatbot_model``, ``chatbot_biodata``, ``chatbot_json_get``: Reserved fields for AI-related `Groq.com <https://groq.com/>`_ - `Keys <https://console.groq.com/keys>`_ configurations.

Make sure this file is properly configured before running the compilation process.

Example using the A.I chatbot
-----------------------------
.. code-block:: 

    root@:~$ chatbot what's your name
    *sending...
    My name is John, as specified. How can I assist you with SA-MP today?
    ----------------------------------
    root@:~$ chatbot your hobby?
    *sending...
    As an AI focused on SA-MP (San Andreas Multiplayer), I don't have personal hobbies, but I can help you with information related to SA-MP such as commands, game mechanics, scripting, server management, and more. How can I assist you with SA-MP today?

