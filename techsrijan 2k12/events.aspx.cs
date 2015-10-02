using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class events : System.Web.UI.Page
{
    public void Page_Init()
    {
        Page.Visible = false;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Visible = true;
    }
}