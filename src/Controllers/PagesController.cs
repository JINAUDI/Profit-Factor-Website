using Microsoft.AspNetCore.Mvc;

namespace Seox.Controllers
{
    public class PagesController : Controller
    {
        public IActionResult About() => View();
        public IActionResult Contact() => View();
        public IActionResult Faq() => View();
        public IActionResult Pricing() => NotFound();
        public IActionResult Team() => NotFound();
        public IActionResult Testimonial() => View();
    }
}