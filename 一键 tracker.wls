web="https://raw.githubusercontent.com/DeSireFire/animeTrackerList/master/AT_all.txt";
"\n"<>StringReplace[Import@web,{"\n\n" -> "\n"}]//CopyToClipboard//UsingFrontEnd;
Print@"Newest trackers have been copied to clipboard successfully!"

