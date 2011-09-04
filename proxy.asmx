<%@ WebService Language="C#" Class="WebService1" %>

using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Web;
using System.Web.Services;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]
public class WebService1 : System.Web.Services.WebService 
{
    public WebService1()
    {
        //
        // TODO: Add any constructor code required
        //
    }
    
    [WebMethod]
    public string getMeTheDataFrom(string here)
    {
        using (var response = new System.Net.WebClient())
        {
            return response.DownloadString(here);
        }
    }
}
