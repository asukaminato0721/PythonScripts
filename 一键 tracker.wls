#!/usr/bin/env wolframscript
(* ::Package:: *)
web="https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt";
"\n"<>StringReplace[Import@web,{"\n\n" -> "\n"}]//CopyToClipboard//UsingFrontEnd;
Print@"Newest tracks have been copied to clipboard successfully!"

