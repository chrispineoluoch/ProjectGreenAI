namespace ProjectGreenAI.Models
{
    public class Consultations
    {
        public int Id { get; set; }
        public string? UserId { get; set; }
        public string? UserName { get; set; }
        public string? Editor { get; set; }
        public string? FirstName { get; set; }
        public string? LastName { get; set; }
        public DateTime? DateofCreation { get; set; }
        public DateTime? DateofModification { get; set; }
        public string? IPAddress { get; set; }
        public string? ConversationId { get; set; }
        public string? Title { get; set; }
        public string? Speaker { get; set; }
        public string? Speech { get; set; }
    }
}
