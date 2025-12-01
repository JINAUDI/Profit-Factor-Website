$basePath = "c:\Users\pc\Downloads\seox-asp-net-core-mvc5-seo-digital-marketing-2025-07-12-10-59-00-utc\Seox-ASP.Net_v1.0\MVC\Seox"
$index1 = "$basePath\Views\Multi\Index1.cshtml"

# Read the file
$content = Get-Content $index1 -Raw -Encoding UTF8

# ========== ABOUT US SECTION ==========
# Update About Us heading text
$content = $content -replace 'The Results Speak for Themselves', 'At Profit Factor, we focus on one core principle'
$content = $content -replace "We.re not just an SEO agency . we.re your partner in achieving measurable growth\. With our tailored strategies and cutting-edge tools, we.ve built a legacy of success\.", 'We believe that effective marketing is not defined by visibility alone, but by tangible results that drive business growth.'

# Update About Us box 1
$content = $content -replace 'Clients Served Worldwide', 'Brands Served Across Industries'
$content = $content -replace 'Partnering with businesses across the globe to achieve outstanding results\.', 'Partnering with companies in e-commerce, tech, retail, and services to unlock scalable growth.'
$content = $content -replace '<h3><span class="counter">500</span> \+</h3>', '<h3>27+</h3>'

# Update About Us box 2
$content = $content -replace 'Projects Successfully Completed', 'Campaigns Launched & Optimized'
$content = $content -replace 'Delivering customized campaigns that drive traffic and boost conversions\.', 'Designing high-performing campaigns that consistently drive traffic, conversions, and ROI.'
$content = $content -replace '<h3><span class="counter">700</span> \+</h3>', '<h3>150+</h3>'

# Update About Us box 3
$content = $content -replace 'Revenue Generated for Clients</h5>\s*<p class="mt-16">Partnering with businesses across the globe to achieve outstanding results\.', 'Revenue Generated for Clients</h5>
                            <p class="mt-16">Helping businesses accelerate revenue through intelligent performance marketing systems.'
$content = $content -replace '<h3>\$<span class="counter">200</span>M\+</h3>', '<h3>90%+ ROI</h3>'

# Apply gradient to about boxes - we need to add inline styles
$content = $content -replace 'class="about1-box box1', 'class="about1-box box1" style="background: linear-gradient(135deg, #0c2b47 0%, #3b5c78 100%) !important; background-image: none !important'
$content = $content -replace 'class="about1-box box2', 'class="about1-box box2" style="background: linear-gradient(135deg, #0c2b47 0%, #3b5c78 100%) !important; background-image: none !important'
$content = $content -replace 'class="about1-box box3', 'class="about1-box box3" style="background: linear-gradient(135deg, #0c2b47 0%, #3b5c78 100%) !important; background-image: none !important'

# ========== SERVICES SECTION ==========
# Update service 1 (now WhatsApp API Integration)
$content = $content -replace 'Search Engine Optimization \(SEO\)</a></h5>\s*<p class="mt-16">Enhance your website.s visibility on search engines with comprehensive SEO strategies including reserarch\.', 'WhatsApp API Integration</a></h5>
                            <p class="mt-16">Streamline Customer Communication With Automated, Secure WhatsApp Messaging Solutions To Improve Response Time, Support, And Conversions.'

# Update service 2 (now GMB)
$content = $content -replace 'Content Marketing</a></h5>\s*<p class="mt-16">Engage your audience with high-quality, relevant content that drives traffic  fosters customer\.', 'Google My Business (GMB)</a></h5>
                            <p class="mt-16">Enhance Your Local Visibility With Optimized Google My Business Management Designed To Increase Discoverability, Map Rankings, And Customer Engagement.'

# Update service 6 (Analytics) - keep as is since we remove it later
$content = $content -replace 'Analytics & Reporting</a></h5>\s*<p class="mt-16">Gain insights into your digital performance  detailed reporting to inform your strategy & reporting\.', 'Content Marketing</a></h5>
                            <p class="mt-16">Engage your audience with high-quality, relevant content that drives traffic and fosters customer loyalty.'

# ========== WHY CHOOSE US SECTION ==========
$content = $content -replace "Why We.re the Right Choice for Your Business", 'Why Choose Profit Factor'

# Box 1
$content = $content -replace 'Proven Track Record</a></h5>\s*<p class="mt-12">Hundreds of successful campaigns and satisfied clients\.', 'A Results-Oriented Mindset</a></h5>
                                        <p class="mt-12">We go beyond impressions and engagement metrics. Every strategy is designed to create measurable outcomes.'

# Box 2
$content = $content -replace 'Customized Strategies</a></h5>\s*<p class="mt-12">Tailored SEO and marketing plans that align with your unique\.', 'A Team that Understands the Modern Market</a></h5>
                                        <p class="mt-12">As a new-generation agency, we bring fresh perspectives backed by deep industry understanding.'

# Box 3
$content = $content -replace 'Expert team</a></h5>\s*<p class="mt-12">Certified professionals with extensive industry experience\.', 'Long-Term Partnerships</a></h5>
                                        <p class="mt-12">We grow with our clients by continuously optimizing strategies and adapting to evolving market dynamics.'

# Remove box 4 (Transparent Reporting) - we only need 3 boxes now
$content = $content -replace '<div class="col-md-6" data-aos="fade-up" data-aos-duration="900" data-aos-delay="500">\s*<div class="choose1-box mt-30">\s*<div class="">\s*<div class="num">\s*<p>4</p>\s*</div>\s*</div>\s*<div class="heading1">\s*<h5><a href=@Url\.Action\("Single1", "Service"\)>Transparent Reporting </a></h5>\s*<p class="mt-12">Clear, detailed reports to keep you informed every step of the way\.</p>\s*</div>\s*</div>\s*</div>', ''

# Save the file
Set-Content $index1 $content -NoNewline -Encoding UTF8
Write-Host "Index1.cshtml updates complete"
