# Kinetic HackTool

For all intents and purposes, this is for a CTF Challenge.  This software
does absolutely nothing other than ask for a registration code and if
a correct one is provided you get a flag.

## Installation

There is no installation step.  Binaries/Web version are provided.  If
you wish to compile yourself, then you will need Godot version 4.7+.
Download the code, import into Godot, then use the project->export
menu commands to export to a format you would like.

### Running the Web Export

To run the web version, you will need to run a HTTP server.  The easiest
method to do that is with Python.  Open a terminal and navigate to the
directory where the web version is located on your machine.  Run the command
`python -m http.server` and if you want to run on a specific port then do
`python -m http.server <PORT>` where `<PORT>` is the port number you wish to 
run on.

### Running the Windows Binary

Simply double click the .exe file.

### Running the Linux Binary

Make sure the .x86_64 file has the execute property and then either run
from the terminal or double-click if you are able.

## Uninstalling

Delete the file/folder.

Author: Kinetic
