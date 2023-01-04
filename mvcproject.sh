
file=${PWD##*/}
mkdir $file
cd $file
dotnet new sln
dotnet new mvc -lang C# -n $file
dotnet sln $file.sln add **/*.csproj
cd "$file"
dotnet add package Microsoft.EntityFrameworkCore.Tools --version 7.0.1
dotnet add package Microsoft.EntityFrameworkCore.SqlServer --version 7.0.1
mkdir Models/Entities
cd Models/Entities
echo "namespace $file.Models.Entities
{
    public class Product
    {
        public int ProductId { get; set; }
    }
}" > Product.cs

echo "namespace $file.Models.Entities
{
    public class Category
    {
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public string Description { get; set; }
    }
} " > Category.cs