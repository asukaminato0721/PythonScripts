Print["processing data\n"];
today = {};
webname=Last@Import["http://zlibz.com/", "Images"] //RemoveAlphaChannel // TextRecognize;
(* webname="p42u"; *)
today~AppendTo~ "hot nowadays\n";
Block[{data, data1},
  data = Import["http://www."<>webname<>".com/cn/star_mostfav.php"];
  data1 = StringReplace[Snippet[data, 23 ;; 62], ("#" ~~ x_ -> "#0" ~~ x), 9];
  AppendTo[today, ToString@*Grid@(StringSplit[data1, "\n"]~Partition~2)];
  ];
func[web_, name_] := Block[{data, data1},
  data = Import[web];
  data1 = Snippet[data, 23 ;; 104];
  today~AppendTo~("\n---------------------------------------\n" <> name <> "\n");
  AppendTo[today, ToString@*Grid@Partition[StringSplit[data1, "\n"] /. (" " | "") -> Nothing, 2]
  ];
  ]
func["http://www."<>webname<>".com/cn/vl_mostwanted.php", "mostwanted of last month"];
func["http://www."<>webname<>".com/cn/vl_bestrated.php", "bestrated of last month"];
func["http://www."<>webname<>".com/cn/vl_bestrated.php?&mode=2&", "bestrated of all"];
func["http://www."<>webname<>".com/cn/vl_mostwanted.php?&mode=2&", "mostwanted of all"];
UsingFrontEnd@Export["D:\\wuyudi\\Desktop\\"<>DateString["ISODate"]<>".txt",today];
Print["done\n"];
(*UsingFrontEnd[SystemOpen["https://www.google.com/search?q="<>data<>"&oq="<>data]]*)
(*本代码要感谢 chy 的帮助*)