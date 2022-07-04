function Get-Snoverism() {
    <#
    .SYNOPSIS
    Get-Snoverism returns a random Jeffery Snover quote.

    .NOTES
    Quote mainly collected from following sources:
    https://web.archive.org/web/sitemap/snoverisms.com
    https://www.reddit.com/r/PowerShell/comments/3bvf0x/whats_your_favorite_jeffrey_snover_quote/
    https://twitter.com/search?q=snoverism&src=typed_query&f=live

    .EXAMPLE
    > Get-Snoverism
    As information expands, expertise narrows. As paradigms shift, expertise expires. Therefore, IT Pros need to be generalists and exhibit a growth mindset.
    #>
    [CmdletBinding()]
    param(
        # Path the the JSON data file. Default to the <script-direcotry>/Data/Snoverism-data.json.
        [string]$SnoverismDataFile = "$($PSScriptRoot)/Data/Snoverism-data.json"
    )
    try {
        # Using the Stop error action so any error in try block goes to catch.
        $oriEA = $ErrorActionPreference
        $ErrorActionPreference = 'Stop'
        Write-Verbose "[Get-Snoverism] Data file path: [$SnoverismDataFile]."

        return (Get-Content -Path $SnoverismDataFile -Raw | ConvertFrom-Json).Quotes.Quote | Get-Random
    } catch {
        Write-Warning -Message "[Get-Snoverism] Invalid data file: [$SnoverismDataFile], using default."
        return "It's all about exploring."

    } finally {
        # Resets the error action.
        $ErrorActionPreference = $oriEA
    }
}
