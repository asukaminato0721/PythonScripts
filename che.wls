#!/usr/bin/env wolframscript

While[True,
    text = StringTrim@InputString@"Input name: ";
    If[StringMatchQ[text, "*-*"],
    {data = text <> " site:https://www.sdfasf.space";
      name="n43a";
      weblist =
      { "https://www.google.com/search?q=" <> data,
        "http://www."<>name<>".com/cn/vl_searchbyid.php?keyword=" <> text,
        "https://avmask.com/cn/search/" <> text,
        "https://myhdjav.net/" <> text,
        "https://www5.javmost.com/" <> text,
        "https://www.google.com/search?q=" <> text
        };
    UsingFrontEnd@RunProcess@Join[
      {"C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe", "--incognito"}, weblist
      ];
    }
  ]
]

(*感谢 flaribbit 的热情帮助*)