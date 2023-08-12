namespace ProjectGreenAI.Models
{
    public class UserSentiments
    {
        public int Id { get; set; }
        public string? ConversationId { get; set; }
        public string? DynamicId { get; set; }
        public string? UserId { get; set; }
        public string? SentimentStatus { get; set; }
        public DateTime? DateofCreation { get; set; }
        public DateTime? DateofStatusChange { get; set; }
        public string? IPAddress { get; set; }
    }
}
