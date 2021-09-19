using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASOIU_Test1
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBoxRegLogin.Text = "";
            TextBoxRegName.Text = "";
            TextBoxRegPass.Text = "";
            TextBoxRegPass2.Text = "";

            TextBoxRegPost.Text = "";
            TextBoxRegTelephone.Text = "";
            TextBoxRegPasport.Text = "";
            TextBoxRegOtch.Text = "";
            TextBoxRegFami.Text = "";

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            //проверка срабатывания валидаторов
            //иначе данные не заполненой формы будут сохранены
            // Page.Validate(); можно добавить

            if ((TextBoxRegLogin.Text == "") || (TextBoxRegName.Text == "") || (TextBoxRegPass.Text == "") || (TextBoxRegPass2.Text == "") || (TextBoxRegPost.Text == "") || (TextBoxRegTelephone.Text == "") || (TextBoxRegPasport.Text == "") || (TextBoxRegOtch.Text == "") || (TextBoxRegFami.Text == ""))
            {
                Label2.Text = "Поля не заполнены";
                return;
            }

            if (TextBoxRegPass.Text != TextBoxRegPass2.Text)
            {
                Label2.Text = "Пароли различаются";
                return;
            }



            if (Page.IsValid)
            {
                try
                {
                    Покупатель cust = new Покупатель();
                    cust.Логин = TextBoxRegLogin.Text;
                    cust.Имя = TextBoxRegName.Text;
                    cust.Хеш_пароля = TextBoxRegPass.Text;

                    cust.Фамилия = TextBoxRegFami.Text;
                    cust.Отчество = TextBoxRegOtch.Text;
                    cust.Паспорт = TextBoxRegPasport.Text;

                    cust.Телефон = TextBoxRegTelephone.Text;
                    cust.Почта = TextBoxRegPost.Text;

                    //сведения о клиенте добавляются в таблицу
                    db.Покупатель.InsertOnSubmit(cust);
                    // в этой точке s_user объект добавляется в объектную модель
                    //изменения не будут выполнены пока не будет вызван метод SubmitChanges
                    db.SubmitChanges();
                    Label2.Text = "данные пользователя успешно внесены в БД";
                }
                catch
                {
                    Label2.Text = "ошибка";
                }
            }
        }
    }
}