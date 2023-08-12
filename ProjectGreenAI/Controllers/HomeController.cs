using Microsoft.AspNetCore.Mvc;
using Microsoft.CognitiveServices.Speech;
using Microsoft.CognitiveServices.Speech.Audio;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using OpenAI.GPT3;
using OpenAI.GPT3.Extensions;
using OpenAI.GPT3.Interfaces;
using OpenAI.GPT3.Managers;
using OpenAI.GPT3.ObjectModels.RequestModels;
using OpenAI.GPT3.ObjectModels.SharedModels;
using ProjectGreenAI.Data;
using ProjectGreenAI.Models;
using ProjectGreenAI.ModelViews;
using System.Configuration;
using System.Diagnostics;
using System.Security.Claims;
using System.Text;
using System;
using System.IO;
using System.Threading.Tasks;

namespace ProjectGreenAI.Controllers
{
    public class HomeController : Controller
    {
        private readonly ApplicationDbContext _context;

        public HomeController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            string State = "";

            if (User.Identity != null && User.Identity.IsAuthenticated)
            {
                string currentUserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var currentuser = _context.Users.SingleOrDefault(u => u.Id == currentUserId);

                if (currentuser != null && _context.ProfilesDbset != null)
                {
                    string captureduserid_check = currentuser.Id;
                    var currentprofile_check = _context.ProfilesDbset.SingleOrDefault(s => s.UserId == captureduserid_check);
                    if (currentprofile_check != null)
                    {
                        State = "toggle-hide";
                    }
                    else
                    {
                        State = "toggle-show";
                    }
                }
                else
                {
                    State = "toggle-show";
                }
            }
            else
            {
                State = "toggle-hide";
            }

            ViewBag.State = State;

            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        public IActionResult Consultations()
        {
            if (User.Identity != null && User.Identity.IsAuthenticated)
            {
                string currentUserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var currentuser = _context.Users.SingleOrDefault(u => u.Id == currentUserId);
                var userid = currentuser?.Id;

                var profiledata = _context.ProfilesDbset?.Where(x => x.UserId == userid).FirstOrDefault();
                var firstname = profiledata?.FirstName;
                ViewBag.FirstName = firstname;

                string State = "";

                if (User.Identity != null && User.Identity.IsAuthenticated)
                {
                    string thecurrentUserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                    var thecurrentuser = _context.Users.SingleOrDefault(u => u.Id == thecurrentUserId);

                    if (thecurrentuser != null && _context.ProfilesDbset != null)
                    {
                        string captureduserid_check = thecurrentuser.Id;
                        var currentprofile_check = _context.ProfilesDbset.SingleOrDefault(s => s.UserId == captureduserid_check);
                        if (currentprofile_check != null)
                        {
                            State = "toggle-hide";
                        }
                        else
                        {
                            State = "toggle-show";
                        }
                    }
                    else
                    {
                        State = "toggle-show";
                    }
                }
                else
                {
                    State = "toggle-hide";
                }

                ViewBag.State = State;

                return View();
            }
            else
            {
                // This code redirects the user to the login page before allowing them to access the consultations page
                return RedirectToPage("/Account/Login", new { area = "Identity" });
            }
        }

        public JsonResult GetData()
        {
            if (_context.ConsultationsDbset != null)
            {
                string currentUserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var currentuser = _context.Users.SingleOrDefault(u => u.Id == currentUserId);
                var userid = currentuser?.Id;

                // Conversation Id is the user id and the date. This is to ensure that each user has a unique conversation.
                var data = _context.ConsultationsDbset
                    .Select(s => new {
                        Title = s.Title,
                        Identifier = s.ConversationId,
                        Count = _context.ConsultationsDbset.Count(x => x.ConversationId == s.ConversationId && x.UserId == userid)
                    })
                    .Where(x => x.Identifier == _context.ConsultationsDbset
                        .Where(y => y.ConversationId == x.Identifier && y.UserId == userid)
                        .Select(z => z.ConversationId)
                        .FirstOrDefault())
                    .Distinct();

                return Json(data);
            }
            else
            {
                var data = new { Title = "There are no conversations yet!" };

                return Json(data);
            }
        }

        public JsonResult LoadConvos(string identifier)
        {
            if (_context.ConsultationsDbset != null)
            {
                string currentUserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var currentuser = _context.Users.SingleOrDefault(u => u.Id == currentUserId);
                var userid = currentuser?.Id;

                // Conversation Id is the user id and the date. This is to ensure that each user has a unique conversation.
                var data = _context.ConsultationsDbset.AsEnumerable()
               .Where(x => x.ConversationId == identifier && x.UserId == userid)
               .OrderByDescending(x => x.DateofCreation)
               .Select(s => new { 
                   Title = s.Title, 
                   Id = s.Id,
                   Creation = s.DateofCreation,
                   Identifier = s.ConversationId, 
                   Speaker = s.Speaker, 
                   Speech = s.Speech 
               });

                return Json(data);
            }
            else
            {
                var data = new { Title = "There are no conversations yet!" };

                return Json(data);
            }
        }

        public JsonResult LoadLatestConvo()
        {
            if (_context.ConsultationsDbset != null)
            {
                string currentUserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var currentuser = _context.Users.SingleOrDefault(u => u.Id == currentUserId);
                var userid = currentuser?.Id;

                // Get the latest conversation
                var latestConsultation = _context.ConsultationsDbset.OrderByDescending(c => c.DateofCreation).FirstOrDefault();
                var conversationid = latestConsultation?.ConversationId;

                // Conversation Id is the user id and the date. This is to ensure that each user has a unique conversation.
                var data = _context.ConsultationsDbset.AsEnumerable()
               .Where(x => x.ConversationId == conversationid && x.UserId == userid)
               .OrderByDescending(x => x.DateofCreation)
               .Select(s => new { 
                   Title = s.Title, 
                   Id = s.Id,
                   Creation = s.DateofCreation,
                   Identifier = s.ConversationId, 
                   Speaker = s.Speaker, 
                   Speech = s.Speech 
               });

                return Json(data);
            }
            else
            {
                var data = new { Title = "There are no conversations yet!" };

                return Json(data);
            }
        }

        [HttpPost]
        public async Task<JsonResult> CreateUserPrompt([FromBody] Consultations consultations)
        {
            if (_context != null && _context.ConsultationsDbset != null && consultations != null && _context.ProfilesDbset != null)
            {
                string currentUserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var currentuser = _context.Users.SingleOrDefault(u => u.Id == currentUserId);

                var profiledata = _context.ProfilesDbset.Where(x => x.UserId == currentUserId).FirstOrDefault();

                consultations.UserId = currentUserId;
                consultations.UserName = currentuser?.UserName;
                consultations.FirstName = profiledata?.FirstName;
                consultations.LastName = profiledata?.LastName;
                consultations.DateofCreation = DateTime.Now.ToUniversalTime();

                string clientIp;
                if (HttpContext.Request.Headers.ContainsKey("X-Forwarded-For"))
                    clientIp = HttpContext.Request.Headers["X-Forwarded-For"].ToString();
                else
                    clientIp = HttpContext.Connection.RemoteIpAddress?.ToString() ?? "IP not available";

                var currentdate = DateTime.Now.ToString("dd MMMM yyyy");

                consultations.IPAddress = clientIp;               
                consultations.ConversationId = currentUserId + "-" + currentdate;
                consultations.Speaker = profiledata?.FirstName;

                _context.ConsultationsDbset.Add(consultations);
                await _context.SaveChangesAsync();
                return Json(new { message = "Success" });
            }
            else
            {
                return Json(new { message = "Error: _context or _context.ConsultationsDbset or consultations is null" });
            }
        }

        public async Task<JsonResult> GetAppResponse(string userprompt)
        {
            string validateduserprompt;

            if (userprompt == null)
            {
                validateduserprompt = "Habari Olivia?";
            } 
            else
            {
                validateduserprompt = userprompt;
            }

            var modelPrompt = "You are a helpful AI assistant named Olivia, who is a pediatrician and obstetrician-gynecologist. Your role as an AI assistant is to sensitize Kenyan women who are considering having a baby, are pregnant, or have a baby younger than 24 months old, about the benefits of immunization, prenatal care, pediatric care, gynecologic care, and obstetric care by sourcing information from reputable sources such as The Centers for Disease Control and Prevention and The World Health Organization. You are factual, empathetic, patient, attentive to detail, compassionate, and friendly. You always ask questions that help you learn more about the mother and her baby so that you can provide better assistance. As an AI assistant, your responses will be limited to your specific role. You speak Swahili and use the communication style of Dr. Fauci. You only respond in Swahili.";

            var openAiService = new OpenAIService(new OpenAiOptions()
            {
                ApiKey = "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"
            });

            var completionResult = await openAiService.ChatCompletion.CreateCompletion(new ChatCompletionCreateRequest
            {
                Messages = new List<ChatMessage>
                {
                    ChatMessage.FromSystem(modelPrompt),
                    ChatMessage.FromUser(validateduserprompt)
                },

                Temperature = 0,
                MaxTokens = 960,
                Model = OpenAI.GPT3.ObjectModels.Models.ChatGpt3_5Turbo
            });

            string? openResponse;

            if (completionResult.Successful)
            {
                if (completionResult?.Choices != null && completionResult.Choices.Any())
                {
                    openResponse = "Olivia: " + completionResult.Choices.First().Message.Content;
                }
                else
                {
                    openResponse = null;
                }
            }
            else
            {
                if (completionResult.Error == null)
                {
                    throw new Exception("Unknown Error");
                }
                var errorCode = completionResult.Error.Code;
                var errorMessage = completionResult.Error.Message;
                openResponse = errorCode + errorMessage;
            }

            return Json(openResponse);
        }

        [HttpPost]
        public async Task<JsonResult> CreateAppResponse([FromBody] Consultations consultations)
        {
            if (_context != null && _context.ConsultationsDbset != null && consultations != null && _context.ProfilesDbset != null)
            {
                string currentUserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var currentuser = _context.Users.SingleOrDefault(u => u.Id == currentUserId);

                var profiledata = _context.ProfilesDbset.Where(x => x.UserId == currentUserId).FirstOrDefault();

                consultations.UserId = currentUserId;
                consultations.UserName = currentuser?.UserName;
                consultations.FirstName = profiledata?.FirstName;
                consultations.LastName = profiledata?.LastName;
                consultations.DateofCreation = DateTime.Now.ToUniversalTime();

                string clientIp;
                if (HttpContext.Request.Headers.ContainsKey("X-Forwarded-For"))
                    clientIp = HttpContext.Request.Headers["X-Forwarded-For"].ToString();
                else
                    clientIp = HttpContext.Connection.RemoteIpAddress?.ToString() ?? "IP not available";

                var currentdate = DateTime.Now.ToString("dd MMMM yyyy");

                consultations.IPAddress = clientIp;
                consultations.ConversationId = currentUserId + "-" + currentdate;
                consultations.Speaker = "AI";

                _context.ConsultationsDbset.Add(consultations);
                await _context.SaveChangesAsync();
                return Json(new { message = "Success" });
            }
            else
            {
                return Json(new { message = "Error: _context or _context.ConsultationsDbset or consultations is null" });
            }
        }

        private async Task<(bool success, string? audioBase64, string? errorMessage)> SynthesizeTextToSpeechAsync(string text)
        {
            var config = SpeechConfig.FromSubscription("0c27aa4b3bbf49328561a54c6cae6193", "southafricanorth");
            config.SpeechSynthesisLanguage = "sw-KE";
            config.SpeechSynthesisVoiceName = "sw-KE-ZuriNeural";
            config.SetSpeechSynthesisOutputFormat(SpeechSynthesisOutputFormat.Audio16Khz32KBitRateMonoMp3);

            using var synthesizer = new SpeechSynthesizer(config);
            var result = await synthesizer.SpeakTextAsync(text);

            if (result.Reason == ResultReason.SynthesizingAudioCompleted)
            {
                var memoryStream = new MemoryStream();
                memoryStream.Write(result.AudioData, 0, result.AudioData.Length);
                memoryStream.Position = 0;
                return (true, Convert.ToBase64String(memoryStream.ToArray()), null);
            }
            else if (result.Reason == ResultReason.Canceled)
            {
                var cancellation = SpeechSynthesisCancellationDetails.FromResult(result);
                string errorMessage = $"CANCELED: Reason={cancellation.Reason}; ErrorDetails={cancellation.ErrorDetails}";
                Console.Error.WriteLine(errorMessage);
                return (false, null, errorMessage);
            }
            return (false, null, "Unknown error occurred.");
        }

        public async Task<JsonResult> SpeakText(string text)
        {
            string prefix = "Olivia: ";
            int prefixPosition = text.IndexOf(prefix);
            if (prefixPosition != -1)
            {
                text = text.Substring(prefixPosition + prefix.Length);
            }

            var result = await SynthesizeTextToSpeechAsync(text);

            if (result.success)
            {
                return Json(new { success = true, audioData = result.audioBase64 });
            }
            else
            {
                return Json(new { success = false, errorMessage = result.errorMessage });
            }
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}