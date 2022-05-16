using System.Web;
using System.Web.Mvc;

namespace KT0720Duy_61133540
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
