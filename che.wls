While[True,
    text = StringTrim@InputString@"Input name: ";
    If[StringMatchQ[text, "*-*"],
    {
      weblist = {"https://www.google.com/search?q=" <> text};
    Join[{"C:/Program Files (x86)/Google/Chrome/Application/chrome.exe", "--incognito"}, weblist]
    //RunProcess
    //UsingFrontEnd
    }
  ]
]

(*感谢 flaribbit 的热情帮助*)