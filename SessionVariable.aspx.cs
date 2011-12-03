using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class SessionVariable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //one way to pass a var
        //string text = (string)Session["PerCent"].ToString();
        //txtSessionVar.Text = text;

        //another way
        txtSessionVar.Text = (string)Request.QueryString["Percent"];
    }
    protected void GetRadioVar(object sender, EventArgs e)
    {
        string name = Request.Form["group1"];
    }

}
