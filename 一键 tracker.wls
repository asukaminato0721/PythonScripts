#!/usr/bin/env wolframscript

web="https://raw.githubusercontent.com/DeSireFire/animeTrackerList/master/AT_all.txt";
"\n"<>StringReplace[Import@web,{"\n\n" -> "\n"}]//CopyToClipboard//UsingFrontEnd;
Print@"Newest tracks have been copied to clipboard successfully!"

