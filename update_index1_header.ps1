$index1Path = "c:\Users\pc\Downloads\seox-asp-net-core-mvc5-seo-digital-marketing-2025-07-12-10-59-00-utc\Seox-ASP.Net_v1.0\MVC\Seox\Views\Multi\Index1.cshtml"

$content = Get-Content $index1Path -Raw -Encoding UTF8

# Define the new simplified header
$newHeader = @'
<!--=====HEADER START=======-->

<header>

   <div id="vl-header-sticky" class="vl-header-area1 header-tranperent">
       <div class="container header1-bg">
           <div class="row align-items-center">
               <div class="col-lg-2 col-md-6 col-6">
                   <div class="vl-logo">
                       <a href=@Url.Action("Index1", "Multi") class="header1-logo-block"><img src="~/img/logo/white-logo.png" alt=""></a>
                   </div>
               </div>
               <div class="col-lg-7 d-none d-lg-block text-end">
                   <div class="vl-main-menu">
                       <nav class="vl-mobile-menu-active">
                           <ul>
                               <li>
                                   <a href=@Url.Action("Index1", "Multi")>Home</a>
                               </li>
 
                               <li class="has-dropdown"><a href="#">Portfolio <span><i class="fa-regular fa-angle-down"></i></span></a>
                                 <ul class="sub-menu">
                                     <li><a href=@Url.Action("Index", "Portfolio")> Portfolio</a></li>
                                     <li><a href=@Url.Action("Details", "Portfolio")> Portfolio Details</a></li>
                                 </ul>
                             </li>

                            <li>
                                <a href=@Url.Action("Service1", "Service")>Services</a>
                            </li>

                              <li class="has-dropdown"><a href="#">Pages <span><i class="fa-regular fa-angle-down"></i></span></a>
                                 <ul class="sub-menu">
                                   <li><a href=@Url.Action("About", "Pages")>About Us</a></li>
                                   <li><a href=@Url.Action("Team", "Pages")>Our Team</a></li>
                                   <li><a href=@Url.Action("Testimonial", "Pages")>Testimonials</a></li>
                                   <li><a href=@Url.Action("Faq", "Pages")>FAQ's</a></li>
                                   <li><a href=@Url.Action("Pricing", "Pages")>Pricing</a></li>
                                   <li><a href=@Url.Action("Contact", "Pages")>Contact Us</a></li>
                               </ul>
                              </li>

                           </ul>
                       </nav>
                   </div>
               </div>
               <div class="col-lg-3 col-md-6 col-6">
                  <div class="vl-header1-btns text-end d-none d-lg-block">
                     <div class="buttons">
                        <div class="vl-search1">
                           <button class="search-open-btn"><i class="fa-regular fa-magnifying-glass"></i></button>
                        </div>
                        <a href=@Url.Action("Contact", "Pages") class="theme-btn1">Contact Us</a>
                     </div>
                  </div>
                   <div class="vl-header-action-item d-block d-lg-none">
                       <button type="button" class="vl-offcanvas-toggle">
                           <i class="fa-duotone fa-solid fa-bars-staggered"></i>
                       </button>
                    </div>
               </div>
           </div>
       </div>
   </div>
 </header>
  <!--=====HEADER END =======-->
'@

# Find and replace the header section - use regex to match from HEADER START to HEADER END
$pattern = '<!--=====HEADER START=======-->[\s\S]*?<!--=====HEADER END =======-->'
$content = $content -replace $pattern, $newHeader

Set-Content $index1Path $content -NoNewline -Encoding UTF8
Write-Host "Index1 header navigation updated"
