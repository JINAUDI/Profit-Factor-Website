$index1Path = "c:\Users\pc\Downloads\seox-asp-net-core-mvc5-seo-digital-marketing-2025-07-12-10-59-00-utc\Seox-ASP.Net_v1.0\MVC\Seox\Views\Multi\Index1.cshtml"

$content = Get-Content $index1Path -Raw -Encoding UTF8

# Fix testimonials
$content = $content -replace 'SEOX transformed our online presence', 'Profit Factor transformed our online presence'
$content = $content -replace 'Thanks to SEOX', 'Thanks to Profit Factor'

# Fix footer copyright
$content = $content -replace 'Copyright 2025 SEOX', 'Copyright 2025 Profit Factor'

Set-Content $index1Path $content -NoNewline -Encoding UTF8
Write-Host "Fixed remaining SEOX references"
