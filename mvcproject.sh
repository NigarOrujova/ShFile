
file=${PWD##*/}
mkdir $file
dotnet new mvc -lang C# -n $file

