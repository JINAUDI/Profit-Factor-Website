using Microsoft.AspNetCore.Mvc;

namespace Seox.Controllers
{
    public class ServiceController : Controller
    {
        public IActionResult Service1() => View();
    }
}