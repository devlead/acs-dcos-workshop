using Microsoft.AspNet.Mvc;
using System;

namespace yoasp.Controllers
{
    
    public class JsonResponse
    {
        public int Counter { get; set; }
        public string Server { get; set; }
    }
    
    [Route("/")]
    public class CountController : Controller
    {
        
        //counter for number of calls made to this server instance
        static int calls = 0;

        //sync lock for the counter increment        
        static object theLock = new object();
        
        //unique id of this server instance
        static string serverId = Guid.NewGuid().ToString();
        
        
        //Thread safe increment
        static int GetAndIncrement() {
          lock (theLock) return ++calls;
        }


        [HttpGet]
        public object Get()
        {
            return new JsonResponse { Counter = GetAndIncrement(), Server = serverId};
        }

    }
}
