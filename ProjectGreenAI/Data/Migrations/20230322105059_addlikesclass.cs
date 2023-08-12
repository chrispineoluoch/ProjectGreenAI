using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace ProjectGreenAI.Data.Migrations
{
    public partial class addlikesclass : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "LikedResponsesDbset",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ConversationId = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UserId = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    LikeStatus = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DateofCreation = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DateofStatusChange = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IPAddress = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LikedResponsesDbset", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "LikedResponsesDbset");
        }
    }
}
