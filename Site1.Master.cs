using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASOIU_Test1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Visible_auth(bool auth)
        {
            //Label1.Visible = true ^ auth;

            LabelLog.Visible = true ^ auth;
            LabelPass.Visible = true ^ auth;
            TextBoxLogin.Visible = true ^ auth;
            TextBoxPass.Visible = true ^ auth;
            ButtonEntry.Visible = true ^ auth;
            ButtonReg.Visible = true ^ auth;

            LinkButtonBucket.Visible = false ^ auth;
            ButtonExit.Visible = false ^ auth;

            ButtonLK.Visible = false ^ auth;
        }






        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Main.aspx");

            long iduser = Convert.ToInt64(Session["iduser1"]);
            if (iduser == 2)
                Response.Redirect("index_admin2.aspx");
            /*if (iduser == 2)
                Response.Redirect("index_admin.aspx");
            else
                Response.Redirect("index.aspx");*/
            //Response.Redirect("Main.aspx");

            long iduser2 = Convert.ToInt64(Session["iduser"]);

            if (iduser2 != 0)
                Response.Redirect("index.aspx");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("P_News.aspx");
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("catalog.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            long iduser = Convert.ToInt64(Session["iduser1"]);
            long iduser2 = Convert.ToInt64(Session["iduser"]);
            if (iduser2 != 0 || iduser != 0)
                Response.Redirect("bucket.aspx");
        }







        protected void ButtonEntry_Click(object sender, EventArgs e)
        {
            string myuser;
            long iduser;
            string dd, qq;
            dd = TextBoxLogin.Text;
            qq = TextBoxPass.Text;
            DataClasses1DataContext db = new DataClasses1DataContext();
            Label1.Text = "";
            try
            {
                var SelectedUser = (from item in db.Покупатель
                                    where item.Логин == dd && item.Хеш_пароля == qq
                                    select item).Single();
                myuser = SelectedUser.Фамилия;
                Session["myuser"] = myuser;
                iduser = SelectedUser.ID;
                Session["iduser"] = iduser;
                //после автортзации выводим приветствие
                Label1.Text = "Hello" + myuser + " " + iduser;
                //прячем поля для ввода логина и пароля

                Visible_auth(true);
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void ButtonEntrySotrydnic_Click(object sender, EventArgs e)
        {
            string myuser1;
            long iduser1;
            string dd1, qq1;
            dd1 = TextBoxLogin.Text;
            qq1 = TextBoxPass.Text;
            DataClasses1DataContext db = new DataClasses1DataContext();
            Label1.Text = "";
            try
            {
                var SelectedUser1 = (from item in db.Сотрудники
                                    where item.Логин == dd1 && item.Хеш_пароля == qq1
                                    select item).Single();
                myuser1 = SelectedUser1.Фамилия;
                Session["myuser1"] = myuser1;
                iduser1 = SelectedUser1.ID;
                Session["iduser1"] = iduser1;
                //после автортзации выводим приветствие
                Label1.Text = "Hello" + myuser1 + " " + iduser1;
                //прячем поля для ввода логина и пароля

                if (iduser1 == 2)
                {
                    //Label1.Text = "Hello ADMIN";
                    //Response.Redirect("Main.aspx");
                    Response.Redirect("index_admin2.aspx");
                }

                Visible_auth(true);
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void ButtonExit_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Main.aspx");
        }
        protected void ButtonReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        }
        protected void ButtonLK_Click(object sender, EventArgs e)
        {
            Response.Redirect("LK.aspx");
        }




    }
}