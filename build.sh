#!/bin/bash
if test "$OS" = "Windows_NT"
then
  cmd /C build.cmd
else
  dotnet tool restore
  dotnet tool run paket restore
  #dotnet fsi build.fsx -t Build $@
  dotnet tool run fake run build.fsx -t Build $@
fi