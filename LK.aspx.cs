using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASOIU_Test1
{
    public partial class LK : System.Web.UI.Page
    {
        String Login, Name, Pass, Fam, Otch, Pasport, Telephone, Post;

        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext db;
            Покупатель SelectedUser;

            if (!IsPostBack) // WARNING!!!
            {
                db = new DataClasses1DataContext();
                int IDUser = Convert.ToInt16(Session["iduser"]);

                if (IDUser == 0)
                    Response.Redirect("index.aspx");

                SelectedUser = (from item in db.Покупатель
                                where item.ID == IDUser
                                select item).Single();

                try
                {
                    Login = SelectedUser.Логин;
                    Name = SelectedUser.Имя;
                    Pass = SelectedUser.Хеш_пароля;

                    Fam = SelectedUser.Фамилия;
                    Otch = SelectedUser.Отчество;
                    Pasport = SelectedUser.Паспорт;

                    Telephone = SelectedUser.Телефон;
                    Post = SelectedUser.Почта;





                    TextBoxLogin.Text = Login;
                    TextBoxName.Text = Name;
                    //TextBoxPass.Text = Pass;
                    //TextBoxPass2.Text = Pass;

                    TextBoxPost.Text = Post;
                    TextBoxTelephone.Text = Telephone;
                    TextBoxPasport.Text = Pasport;
                    TextBoxOtch.Text = Otch;
                    TextBoxFami.Text = Fam;



                }
                catch (Exception ex)
                {

                }
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBoxLogin.Text = "";
            TextBoxName.Text = "";
            //TextBoxPass.Text = "";
            //TextBoxPass2.Text = "";

            TextBoxPost.Text = "";
            TextBoxTelephone.Text = "";
            TextBoxPasport.Text = "";
            TextBoxOtch.Text = "";
            TextBoxFami.Text = "";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((TextBoxLogin.Text == "") || (TextBoxName.Text == "") || (TextBoxPost.Text == "") || (TextBoxTelephone.Text == "") || (TextBoxPasport.Text == "") || (TextBoxOtch.Text == "") || (TextBoxFami.Text == ""))
            {
                Label2.Text = "Ошибка";
                return;
            }

            //if (TextBoxPass.Text != TextBoxPass2.Text)
            //{
            //    Label2.Text = "Ошибка";
            //    return;
            //}



            DataClasses1DataContext db = new DataClasses1DataContext();
            int IDUser = Convert.ToInt16(Session["iduser"]);
            var UpdateData = (from item in db.Покупатель
                              where item.ID == IDUser
                              select item).Single();

            try
            {

                UpdateData.Имя = TextBoxName.Text;
                UpdateData.Логин = TextBoxLogin.Text;
                //UpdateData.Хеш_пароля = TextBoxPass.Text;

                UpdateData.Почта = TextBoxPost.Text;
                UpdateData.Телефон = TextBoxTelephone.Text;
                UpdateData.Паспорт = TextBoxPasport.Text;

                UpdateData.Отчество = TextBoxOtch.Text;
                UpdateData.Фамилия = TextBoxFami.Text;

                db.SubmitChanges();

                Session["myuser"] = TextBoxName.Text;

                Label2.Text = "Изменено";
            }
            catch (Exception ex)
            {
                Label2.Text = "ошибка";
            }
        }
    }
}