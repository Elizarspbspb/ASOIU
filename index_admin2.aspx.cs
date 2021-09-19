using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASOIU_Test1
{
    public partial class index_admin2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            long iduser = Convert.ToInt64(Session["iduser1"]);

            if (iduser != 2)
                Response.Redirect("index.aspx");
        }
    }
}