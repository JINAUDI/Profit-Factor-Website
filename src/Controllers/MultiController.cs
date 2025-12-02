using Microsoft.AspNetCore.Mvc;

namespace Seox.Controllers
{
    public class MultiController : Controller
    {
        public IActionResult Index1() => View();
    }
}