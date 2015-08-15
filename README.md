# -Prompts
コマンドプロンプトで入力を受け取るための簡単なモジュールです

# TODO
```D
import Prompts;

import std.stdio;
import std.string;

void main(){
  auto test1 = Prompts.YN("Please Input");
  writeln(test1);

  auto test3 = Prompts.Prompt("Please Input");
  writeln(test3);

  auto test2 = Prompts.YesNo("Please Input");
  writeln(test2);

  string[] list = ["test","test2","test3"];
  auto test4 = Prompts.Choose("Please Chose",list,"test");
  writeln(test4);

  auto test5 = Prompts.Password("Passworld");
  writeln(test5);
}

```
