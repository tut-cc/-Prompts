module Prompts;

extern (C) {
  char *getpass(const char *);
}


import std.stdio;
import std.string;
import std.conv;


string Prompt(string msg){
  write(msg," : ");
  string buf = readln();
  return chop(buf);
}

string Password(string msg){
  auto output = format("%s : ",msg);
  auto buf = getpass(toStringz(output));
  return to!string(buf);
}

string Choose(string msg,string[] list,string defa){
  write(msg," ", list ," (",defa,"): ");
  string buf = readln();
  string input = toLower(chop(buf));
  foreach(s; list){
    if(input == toLower(s)){
      return s;
    }
  }
  return defa;
}

bool YN(string msg){
  write(msg," [Y/N]: ");
  string buf = readln();
  if(toLower(buf[0]) == 'y'){
    return true;
  }
  return false;

}

bool YesNo(string msg){
  write(msg," [Yes/No]: ");
  string buf = readln();
  if(toLower(chop(buf)) == "yes"){
    return true;
  }
  return false;
}
