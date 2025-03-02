using System.Text.Json;
using DevProxy.Abstractions;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;

namespace CustomPlugin;

public class QuoteOfTheDayHeader: BaseProxyPlugin
{
     public QuoteOfTheDayHeader(
        IPluginEvents pluginEvents,
        IProxyContext context,
        ILogger logger,
        ISet<UrlToWatch> UrlsToWatch,
        IConfigurationSection? configSection = null
    )
        : base(pluginEvents, context, logger, UrlsToWatch, configSection)
    {

    }

    private static readonly HttpClient _httpClient = new HttpClient();
    public override string Name => nameof(QuoteOfTheDayHeader);

    public override async Task RegisterAsync()
    {
        await base.RegisterAsync();
        PluginEvents.BeforeResponse += OnBeforeResponseAsync;
    }

    private async Task OnBeforeResponseAsync(object sender, ProxyResponseArgs args)
    {
        args.Session.HttpClient.Response.Headers.AddHeader("X-Quote-Of-The-Day", await GetQuoteOfTheDayAsync());
    }

    private async Task<string> GetQuoteOfTheDayAsync()
    {
        try
        {
            var response = await _httpClient.GetAsync("https://qapi.vercel.app/api/random");
            response.EnsureSuccessStatusCode();
            var json = await response.Content.ReadAsStringAsync();
            var qotd = JsonSerializer.Deserialize<QuoteOfTheDay>(json);
            return qotd?.quote ?? "no soup for you";
        }
        catch (System.Exception)
        {
            return "Error getting quote of the day";
        }
    }
}