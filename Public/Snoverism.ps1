function Get-Snoverism() {
    # https://www.reddit.com/r/PowerShell/comments/3bvf0x/whats_your_favorite_jeffrey_snover_quote/
    # https://twitter.com/search?q=snoverism&src=typed_query&f=live
    # https://web.archive.org/web/sitemap/snoverisms.com
    # https://twitter.com/jsnover
    [CmdletBinding()]
    param(
        # Path the the JSON data file. Default to the same directory as the script.
        [string]$SnoverismDataFile = "$($PSScriptRoot)/../Private/Snoverism-data.json"
    )
    try {
        # Using the Stop error action so any error in try block goes to catch.
        $oriEA = $ErrorActionPreference
        $ErrorActionPreference = 'Stop'

        Write-Verbose "[Get-Snoverism] Data file path: [$SnoverismDataFile]."

        return Get-Content -Path $SnoverismDataFile -Raw | ConvertFrom-Json | Get-Random
    } catch {
        Write-Warning -Message "[Get-Snoverism] Invalid data file: [$SnoverismDataFile], using default."

        return "As information expands, expertise narrows. As paradigms shift, expertise expires. Therefore, IT Pros need to be generalists and exhibit a growth mindset."

    } finally {
        # Resets the error action.
        $ErrorActionPreference = $oriEA
    }
}
