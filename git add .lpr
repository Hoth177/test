[1mdiff --git a/Project1.exe b/Project1.exe[m
[1mindex 8176ede..d240e37 100644[m
Binary files a/Project1.exe and b/Project1.exe differ
[1mdiff --git a/Project1.lps b/Project1.lps[m
[1mindex a2ae14a..59168a4 100644[m
[1m--- a/Project1.lps[m
[1m+++ b/Project1.lps[m
[36m@@ -10,7 +10,7 @@[m
         <IsPartOfProject Value="True"/>[m
         <UnitName Value="L7"/>[m
         <IsVisibleTab Value="True"/>[m
[31m-        <CursorPos X="5" Y="18"/>[m
[32m+[m[32m        <CursorPos X="27" Y="21"/>[m
         <UsageCount Value="20"/>[m
         <Loaded Value="True"/>[m
       </Unit0>[m
[1mdiff --git a/Project1.pas b/Project1.pas[m
[1mindex 9a512a8..9995b44 100644[m
[1m--- a/Project1.pas[m
[1m+++ b/Project1.pas[m
[36m@@ -1,13 +1,16 @@[m
 program L7;[m
 uses SysUtils;[m
[32m+[m[32mconst CRLF=#13;[m
 function Chomp(s: string): string;[m
 var[m
   Length_s: Integer;[m
 begin[m
   result:='';[m
   Length_s:=Length(s);[m
[31m-  if Length_s>1 then begin[m
[31m-     result:=LeftStr(s,Length_s-1);[m
[32m+[m[32m  if (Length_s>length(CRLF))[m
[32m+[m[32m     and  (RightStr(s,length(CRLF))=CRLF)[m
[32m+[m[32m then begin[m
[32m+[m[32m     result:=LeftStr(s,Length_s-length(CRLF));[m
   end;[m
 end;[m
 var s:string;[m
