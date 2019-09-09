#!/usr/bin/env wolframscript
(* ::Package:: *)
Print["Loading\n---------------------------------------\n\nhot nowadays\n"];
Block[{data,data1,data2},
    data = Import["http://www.w35p.com/cn/star_mostfav.php"];
data1 = StringReplace[
   StringReplace[Snippet[data, 23 ;; 62], ("#" ~~ x_ -> "#0" ~~ x), 
    9], {"\[FilledUpTriangle]" -> "/\\", 
    "\[FilledDownTriangle]" -> "\\/"}];
Print@ToString@*Grid@(StringSplit[data1, "\n"]~Partition~2)
];
Print["\n---------------------------------------\n\n nowadays\n"];
Block[{data,data1,data2},
    data = Import["https://avmoo.asia/cn/popular/page/1"];
    data1 = StringTrim /@ StringSplit[Snippet[data, 18 ;; 100], "     "] /."" -> Nothing;
    data2 = StringSplit[#, {"\n", "/"}] & /@ data1;
    Print@ToString@*Grid@(Reverse /@ data2[[;; , {1, 2}]]);
];
Print@"\n---------------------------------------\nMost wanted of last month\n";(*最想要*)
Block[{data,data1},
    data = Import["http://www.w35p.com/cn/vl_mostwanted.php"];
    data1 = Snippet[data, 23 ;; 104];
    Print@ToString@*Grid@ Partition[StringSplit[data1, "\n"] /. Alternatives[" ", ""] -> Nothing, 2];
    ];
    Print@"\n---------------------------------------\nMost Rated of last month\n";(*得分最高*)
Block[
    {data,data1},
    data = Import["http://www.w35p.com/cn/vl_bestrated.php"];
    data1 = Snippet[data, 23 ;; 104];
    Print@ToString@*Grid@Partition[StringSplit[data1, "\n"] /. Alternatives[" ", ""] -> Nothing, 2];
    ];
    Print@"\n---------------------------------------\nrecent\n";(*最近更新中字*)
Block[
    {data},
    data = Import["https://www.sehuatang.net/forum-103-1.html"];
    Print@Select[StringSplit[Snippet[data, 56 ;; 85], " "],  StringMatchQ[#, "*-*"] &];
    Print@"";
    ]
UsingFrontEnd@CopyToClipboard[
    Import["https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt"]
    ];
Print@"Newest tracks have been copied to clipboard successfully!"
Print@"";
    Print["---------------------------------------"];

(*UsingFrontEnd[SystemOpen["https://www.google.com/search?q="<>data<>"&oq="<>data]]*)

(*本代码要感谢 chy 的帮助*)
(* ::Input:: *)
(**)