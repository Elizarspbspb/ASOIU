using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASOIU_Test1
{
    public partial class bucket : System.Web.UI.Page
    {
        /* protected void Page_Load(object sender, EventArgs e)
         {

         }*/



        void Update_name()
        {
            for (int i = 0; i < GridView2.Rows.Count; i++)
            {
                for (int j = 0; j < GridViewType.Rows.Count; j++)
                {
                    if (GridView2.Rows[i].Cells[4].Text == GridViewType.Rows[j].Cells[0].Text)
                    {
                        GridView2.Rows[i].Cells[4].Text = GridViewType.Rows[j].Cells[1].Text;
                        break;
                    }
                }

                for (int j = 0; j < GridViewMan.Rows.Count; j++)
                {
                    if (GridView2.Rows[i].Cells[5].Text == GridViewMan.Rows[j].Cells[0].Text)
                    {
                        GridView2.Rows[i].Cells[5].Text = GridViewMan.Rows[j].Cells[1].Text;
                        break;
                    }
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            for (int i = 0; i < GridView2.Rows.Count; i++)
                GridView2.Rows[i].Visible = false;

           /* for (int j = 0; ; j++)
            {
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    if (GridView2.Rows[j].Cells[1].Text == GridView1.Rows[i].Cells[0].Text)
                    {
                        GridView2.Rows[j].Visible = true;
                        GridView2.Rows[j].Cells[7].Text = GridView1.Rows[i].Cells[2].Text;
                        break;
                    }
                }

                if (j == (GridView2.Rows.Count - 1))
                    break;
            }*/

            string req = "SELECT [ID], [Цена], [Площадь], [Этаж], [Застройщик], [Картинки] FROM [Апартаменты] WHERE ([ID] IN ( ";
              for (int i = 0; i < GridView1.Rows.Count; i++)
              {
                  req += GridView1.Rows[i].Cells[0].Text;
                  if (i != GridView1.Rows.Count - 1)
                      req += ",";


              }
              req += "))";

              
            Update_name();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            int IDProd = Convert.ToInt16(Session["Prod"]);
            int IDUser = Convert.ToInt16(Session["iduser"]);
            var Delete = (from item in db.Корзина
                          where item.Код_покупателя == IDUser && item.Код_апартаментов == IDProd
                          select item).Single();


            // добавление товара в каталог
            var tov = (from item in db.Апартаменты
                       where item.ID == IDProd
                       select item).Single();
            //tov.Количество += Delete.Количество;


            db.Корзина.DeleteOnSubmit(Delete);
            try
            {
                db.SubmitChanges();

            }
            catch (Exception ex)
            {

            }
            Response.Redirect("bucket.aspx");
        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Prod"] = this.GridView2.SelectedValue;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            int ID_zak = 0;
            int IDUser = Convert.ToInt16(Session["iduser"]);
            DataClasses1DataContext db = new DataClasses1DataContext();

            if ((TextBox1.Text == ""))
            {
                Response.Write("<script>alert('Ошибка')</script>");
                return;
            }


            // ищем максимальный id
            var for_id = (from item in db.Сделка
                          where true
                          select item).Max(item => item.ID);

           /* ID_zak = for_id.Value + 1;

            инф_заказа inf = new инф_заказа();
            inf.Адрес_доставки = TextBox1.Text;
            inf.Дата_доставки = TextBox2.Text;


            db.инф_заказаs.InsertOnSubmit(inf);
            db.SubmitChanges();

            if (Page.IsValid)
            {
                for (int i = 0; i < GridView2.Rows.Count; i++)
                {
                    try
                    {
                        Заказы cust = new Заказы();
                        cust.Номер_пользователя = IDUser;
                        cust.Номер_продукта = Convert.ToInt16(GridView1.Rows[i].Cells[0].Text);
                        cust.Количество = Convert.ToInt16(GridView1.Rows[i].Cells[2].Text);
                        cust.id_заказа = ID_zak;

                        db.Заказыs.InsertOnSubmit(cust);

                        // в этой точке s_user объект добавляется в объектную модель
                        //изменения не будут выполнены пока не будет вызван метод SubmitChanges
                        db.SubmitChanges();


                        //ID_zak = cust.id;
                    }
                    catch
                    {

                    }
                }
            }*/




            db = new DataClasses1DataContext();
            var Delete2 = (from item in db.Корзина
                           where item.Код_покупателя == IDUser
                           select item);
            db.Корзина.DeleteAllOnSubmit(Delete2);
            try
            {
                db.SubmitChanges();

            }
            catch (Exception ex)
            {

            }
        }
    }
}