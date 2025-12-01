$navbarPath = "c:\Users\pc\Downloads\seox-asp-net-core-mvc5-seo-digital-marketing-2025-07-12-10-59-00-utc\Seox-ASP.Net_v1.0\MVC\Seox\Views\Shared\Partials\_NavBar.cshtml"

$newNavbar = @'
@await Html.PartialAsync("~/Views/Shared/Partials/_SearchPopup.cshtml")
<header>
    <div id="vl-header-sticky" class="vl-header-area2 header-tranperent">
        <div class="container header2-bg">
            <div class="row align-items-center">
                <div class="col-lg-2 col-md-6 col-6">
                    <div class="vl-logo">
                        <a href=@Url.Action("Index1", "Multi") class="header1-logo-block"><img src="~/img/logo/black-logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-7 d-none d-lg-block text-end">
                    <div class="vl-main-menu">
                        <nav class="vl-mobile-menu-active">
                            <ul>
                                <li>
                                    <a href=@Url.Action("Index1", "Multi")>Home</a>
                                </li>

                                <li class="has-dropdown">
                                    <a href="#">Portfolio <span><i class="fa-regular fa-angle-down"></i></span></a>
                                    <ul class="sub-menu">
                                        <li><a href=@Url.Action("Index", "Portfolio")> Portfolio</a></li>
                                        <li><a href=@Url.Action("Details", "Portfolio")> Portfolio Details</a></li>
                                    </ul>
                                </li>

                                <li>
                                    <a href=@Url.Action("Service1", "Service")>Services</a>
                                </li>

                                <li class="has-dropdown">
                                    <a href="#">Pages <span><i class="fa-regular fa-angle-down"></i></span></a>
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
                    <div class="vl-header2-btns text-end d-none d-lg-block">
                        <div class="buttons">
                            <div class="vl-search2">
                                <button class="search-open-btn"><i class="fa-regular fa-magnifying-glass"></i></button>
                            </div>
                            <a class="theme-btn3" href=@Url.Action("Contact", "Pages")>Contact Us <span class="arrow1"><i class="fa-solid fa-arrow-right"></i></span><span class="arrow2"><i class="fa-solid fa-arrow-right"></i></span></a>
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
<!--===== MOBILE HEADER STARTS =======-->
<div class="vl-offcanvas vl-header-area1">
    <div class="vl-offcanvas-wrapper">
        <div class="vl-offcanvas-header d-flex justify-content-between align-items-center mb-90">
            <div class="vl-offcanvas-logo">
                <a href=@Url.Action("Index1", "Multi") class="header1-logo-block"><img src="~/img/logo/black-logo.png" alt=""></a>
            </div>
            <div class="vl-offcanvas-close">
                <button class="vl-offcanvas-close-toggle"><i class="fa-solid fa-xmark"></i></button>
            </div>
        </div>

        <div class="vl-offcanvas-menu d-lg-none mb-40">
            <nav></nav>
        </div>

        <div class="space20"></div>
        <div class="vl-footer-contact3 vl-footer-widget-black1 mb-20 sm:ml-0 md:ml-0">
            <h4>Contact Information</h4>
            <div class="single-contact-item">
                <div class="icon">
                    <img src="~/img/icons/footer-contact-icon1.svg" alt="">
                </div>
                <div class="text">
                    <a href="mail:support@profitfactor.com">support@profitfactor.com</a>
                </div>
            </div>

            <div class="single-contact-item">
                <div class="icon">
                    <img src="~/img/icons/footer-contact-icon2.svg" alt="">
                </div>
                <div class="text">
                    <a href="#">123 Digital Lane, <br> Marketing City, USA</a>
                </div>
            </div>

            <div class="single-contact-item">
                <div class="icon">
                    <img src="~/img/icons/footer-contact-icon3.svg" alt="">
                </div>
                <div class="text">
                    <a href="tel:123-456-7890">123-456-7890</a>
                </div>
            </div>

        </div>
        <div class="vl-offcanvas-social">
            <h4>Follow Us</h4>
            <div class="vl-copyright-social2 text-start">
                <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                <a href="#"><i class="fa-brands fa-instagram"></i></a>
                <a href="#"><i class="fa-brands fa-linkedin-in"></i></a>
                <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
            </div>
        </div>

    </div>
</div>
<div class="vl-offcanvas-overlay"></div>
'@

Set-Content $navbarPath $newNavbar -Encoding UTF8
Write-Host "Navbar updated"
