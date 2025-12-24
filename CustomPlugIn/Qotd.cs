using DevProxy.Abstractions.Plugins;
using DevProxy.Abstractions.Proxy;
using Microsoft.Extensions.Logging;

namespace QuoteOfTheDayPlugin;

public sealed class QotdHeader(
    ILogger<QotdHeader> logger,
    ISet<UrlToWatch> urlsToWatch) : BasePlugin(logger, urlsToWatch)
{
    public override string Name => nameof(QotdHeader);

    public override Task BeforeRequestAsync(ProxyRequestArgs e, CancellationToken cancellationToken)
    {
        e.Session.HttpClient.Response.Headers.AddHeader("X-Quote-Of-The-Day", GetQuoteOfTheDayAsync());
        return Task.CompletedTask;
    }

    private string GetQuoteOfTheDayAsync()
    {
        try
        {
            string[] quotes = [
                "The only way to do great work is to love what you do. - Steve Jobs",
                "Innovation distinguishes between a leader and a follower. - Steve Jobs",
                "Code is like humor. When you have to explain it, it's bad. - Cory House",
                "First, solve the problem. Then, write the code. - John Johnson",
                "Experience is the name everyone gives to their mistakes. - Oscar Wilde",
                "In order to be irreplaceable, one must always be different. - Coco Chanel",
                "Java is to JavaScript what car is to Carpet. - Chris Heilmann",
                "Knowledge is power. - Francis Bacon",
                "Sometimes it pays to stay in bed on Monday, rather than spending the rest of the week debugging Monday's code. - Dan Salomon",
                "Perfection is achieved not when there is nothing more to add, but rather when there is nothing more to take away. - Antoine de Saint-Exupery",
                "Ruby is rubbish! PHP is phpantastic! - Nikita Popov",
                "Code never lies, comments sometimes do. - Ron Jeffries",
                "Simplicity is the soul of efficiency. - Austin Freeman",
                "Before software can be reusable it first has to be usable. - Ralph Johnson",
                "Make it work, make it right, make it fast. - Kent Beck",
                "Optimism is an occupational hazard of programming: feedback is the treatment. - Kent Beck",
                "The best error message is the one that never shows up. - Thomas Fuchs",
                "Any fool can write code that a computer can understand. Good programmers write code that humans can understand. - Martin Fowler",
                "Programming isn't about what you know; it's about what you can figure out. - Chris Pine",
                "The most disastrous thing that you can ever learn is your first programming language. - Alan Kay",
                "The only way to learn a new programming language is by writing programs in it. - Dennis Ritchie",
                "Measuring programming progress by lines of code is like measuring aircraft building progress by weight. - Bill Gates",
                "Controlling complexity is the essence of computer programming. - Brian Kernighan",
                "Talk is cheap. Show me the code. - Linus Torvalds",
                "Programs must be written for people to read, and only incidentally for machines to execute. - Harold Abelson",
                "Always code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live. - John Woods",
                "The function of good software is to make the complex appear to be simple. - Grady Booch",
                "Deleted code is debugged code. - Jeff Sickel",
                "There are only two hard things in Computer Science: cache invalidation and naming things. - Phil Karlton",
                "Walking on water and developing software from a specification are easy if both are frozen. - Edward V Berard"
            ];

            var dayOfYear = DateTime.Now.DayOfYear;
            var quoteIndex = dayOfYear % quotes.Length;
            
            return quotes[quoteIndex];
        }
        catch (System.Exception)
        {
            return "Error getting quote of the day";
        }
    }
}
