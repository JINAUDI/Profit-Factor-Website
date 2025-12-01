$index1Path = "c:\Users\pc\Downloads\seox-asp-net-core-mvc5-seo-digital-marketing-2025-07-12-10-59-00-utc\Seox-ASP.Net_v1.0\MVC\Seox\Views\Multi\Index1.cshtml"

$content = Get-Content $index1Path -Raw -Encoding UTF8

# Update mobile header contact info
$content = $content -replace 'mail:support@seoxagency\.com', 'mail:support@profitfactor.com'
$content = $content -replace '>support@seoxagency\.com<', '>support@profitfactor.com<'

# Remove the blog section entirely from the homepage
$blogPattern = '<!--===== BLOG AREA START =====-->[\s\S]*?<!--===== BLOG AREA END =====-->'
$content = $content -replace $blogPattern, ''

Set-Content $index1Path $content -NoNewline -Encoding UTF8
Write-Host "Mobile header and blog section updated"
