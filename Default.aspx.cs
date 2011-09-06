using System;
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

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadProfileStats();
    }
    private void LoadProfileStats()
    {
       // invisible.Visible = false;
        int complete = 27;
        divPerCentComplete.Text = complete + "% profile completeness";
        divProgressBarInner.Style.Add("width", complete.ToString() + "%");
        Session["PerCent"] = divPerCentComplete.Text;
        string text = "<br>";

        for (int i = 0; i < 5; i++)
        {
            text += @"<li><a href=http://www.google.com/> " + i + "</a> (+" + i + "%" + ")</li>";
        }
        fullList.Text = text;
    }
    protected void OnClickMethod(Object sender, EventArgs e)
    {
    }
}
