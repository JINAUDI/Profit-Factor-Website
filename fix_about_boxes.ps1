$index1Path = "c:\Users\pc\Downloads\seox-asp-net-core-mvc5-seo-digital-marketing-2025-07-12-10-59-00-utc\Seox-ASP.Net_v1.0\MVC\Seox\Views\Multi\Index1.cshtml"

$content = Get-Content $index1Path -Raw -Encoding UTF8

# Fix the duplicate style attributes in about boxes
$content = $content -replace 'class="about1-box box1" style="background: linear-gradient\(135deg, #0c2b47 0%, #3b5c78 100%\) !important; background-image: none !important" style="background: linear-gradient\(135deg, #0c2b47 0%, #3b5c78 100%\) !important; background-image: none !important white-heading mt-30"', 'class="about1-box box1 white-heading mt-30" style="background: linear-gradient(135deg, #0c2b47 0%, #3b5c78 100%) !important; background-image: none !important;"'

$content = $content -replace 'class="about1-box box2" style="background: linear-gradient\(135deg, #0c2b47 0%, #3b5c78 100%\) !important; background-image: none !important" style="background: linear-gradient\(135deg, #0c2b47 0%, #3b5c78 100%\) !important; background-image: none !important white-heading mt-30"', 'class="about1-box box2 white-heading mt-30" style="background: linear-gradient(135deg, #0c2b47 0%, #3b5c78 100%) !important; background-image: none !important;"'

$content = $content -replace 'class="about1-box box3" style="background: linear-gradient\(135deg, #0c2b47 0%, #3b5c78 100%\) !important; background-image: none !important" style="background: linear-gradient\(135deg, #0c2b47 0%, #3b5c78 100%\) !important; background-image: none !important white-heading mt-30"', 'class="about1-box box3 white-heading mt-30" style="background: linear-gradient(135deg, #0c2b47 0%, #3b5c78 100%) !important; background-image: none !important;"'

# Fix the third about box description  
$content = $content -replace 'Revenue Generated for Clients</h5>\s*<p class="mt-16">Partnering with companies in e-commerce, tech, retail, and services to unlock scalable growth\.', 'Revenue Generated for Clients</h5>
                            <p class="mt-16">Helping businesses accelerate revenue through intelligent performance marketing systems.'

# Update services section text
$content = $content -replace 'At SEOX, we provide tailored SEO and digital marketing solutions', 'At Profit Factor, we provide tailored performance marketing solutions'

Set-Content $index1Path $content -NoNewline -Encoding UTF8
Write-Host "Fixed about boxes and services text"
