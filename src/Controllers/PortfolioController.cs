using Microsoft.AspNetCore.Mvc;

namespace Seox.Controllers
{
    public class PortfolioController : Controller
    {
        public IActionResult Details() => View();
        public IActionResult Index() => View();
    }
}