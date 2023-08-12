using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace ProjectGreenAI.Data.Migrations
{
    public partial class addlikesclass_V2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "DynamicId",
                table: "LikedResponsesDbset",
                type: "nvarchar(max)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DynamicId",
                table: "LikedResponsesDbset");
        }
    }
}
