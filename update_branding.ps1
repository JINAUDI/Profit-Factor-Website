$index1Path = "c:\Users\pc\Downloads\seox-asp-net-core-mvc5-seo-digital-marketing-2025-07-12-10-59-00-utc\Seox-ASP.Net_v1.0\MVC\Seox\Views\Multi\Index1.cshtml"

$content = Get-Content $index1Path -Raw -Encoding UTF8

# Update footer text
$content = $content -replace 'SEOX is a results-driven SEO and digital marketing agency', 'Profit Factor is a results-driven performance marketing agency'
$content = $content -replace 'Ready To Grow Your Business With SEOX', 'Ready To Grow Your Business With Profit Factor'
$content = $content -replace 'support@seoxagency\.com', 'support@profitfactor.com'

# Remove Blog section from footer
$content = $content -replace '<li><a href="blog">Blog</a></li>', ''

# Update blog section in the main content - replace with something else or remove
# For now, let's change the heading
$content = $content -replace 'Insights & Updates from the World of SEO Marketing Agency', 'Success Stories & Client Achievements'

Set-Content $index1Path $content -NoNewline -Encoding UTF8
Write-Host "Index1.cshtml footer/branding updated"
