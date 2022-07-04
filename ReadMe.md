# Snoverism

The Snoverism PowerShell module is a tribute to the [PowerShell](https://en.wikipedia.org/wiki/PowerShell) inventor, [Jeffery Snover](https://en.wikipedia.org/wiki/Jeffrey_Snover).

The module collects varies quotes, which can be accessed with `Get-Snoverism` function.

The quotes collected in this module are from various and some indirect sources so may not be 100% accurate:
  - [WebArchive](https://web.archive.org/web/sitemap/snoverisms.com)
  - [Reddit](https://www.reddit.com/r/PowerShell/comments/3bvf0x/whats_your_favorite_jeffrey_snover_quote/)
  - [Twitter](https://twitter.com/search?q=snoverism&src=typed_query&f=live)

## Install & Usage

- Clone the Snoverism repo
- Import the module with`Import-Module`
- Run `Get-Snoverism`

```powershell
> Get-Snoverism
As information expands, expertise narrows. As paradigms shift, expertise expires. Therefore, IT Pros need to be generalists and exhibit a growth mindset.
```

## Appendix

The data JSON structure:

```json
{
  "Version": "Semantic version string. E.g: 0.1.0",
  "Description": "String of description. E.g.: Snoverism data file.",
  "Quotes": [
    {
      "Source": "String of the source of the quote.",
      "Quote": "String of the quote."
    }
  ]
}
```
