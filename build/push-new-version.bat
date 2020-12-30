@echo off
del ..\source\ElasticsearchInside\bin\Release\*.nupkg
dotnet pack ..\source\ElasticsearchInside\ElasticsearchInside.csproj -c Release
tools\nuget push ..\source\ElasticsearchInside\bin\Release\*.nupkg -source https://www.nuget.org -Timeout 999999
