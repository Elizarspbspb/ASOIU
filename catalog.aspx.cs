using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASOIU_Test1
{
    public partial class catalog : System.Web.UI.Page
    {
        void Update_name()
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                for (int j = 0; j < GridViewType.Rows.Count; j++)
                {
                    if (GridView1.Rows[i].Cells[4].Text == GridViewType.Rows[j].Cells[0].Text)
                    {
                        GridView1.Rows[i].Cells[4].Text = GridViewType.Rows[j].Cells[1].Text;
                        break;
                    }
                }

                for (int j = 0; j < GridViewMan.Rows.Count; j++)
                {
                    if (GridView1.Rows[i].Cells[5].Text == GridViewMan.Rows[j].Cells[0].Text)
                    {
                        GridView1.Rows[i].Cells[5].Text = GridViewMan.Rows[j].Cells[1].Text;
                        break;
                    }
                }
            }

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
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            Update_name();



            if (Convert.ToInt64(Session["iduser"]) == 0)
            {
                Button2.Visible = false;
                TextBox1.Visible = false;
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["ID_tovar"] = this.GridView1.SelectedValue;
            GridView3.Visible = true;
        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Session["Manuf"] = this.DropDownList1.SelectedValue;

            Update_name();
        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Prod"] = this.GridView2.SelectedValue;
            GridView3.Visible = true;
            if (Convert.ToInt64(Session["iduser"]) != 0)
            {
                Button2.Visible = true;
                TextBox1.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string filtr_on = "Фильтр включить";
            string filtr_off = "Фильтр выключить";

            if (Button1.Text == filtr_off)
            {
                GridView1.Visible = true;
                GridView2.Visible = false;
                Button1.Text = filtr_on;
                DropDownList1.Visible = false;
            }
            else
            {
                GridView1.Visible = false;
                GridView2.Visible = true;
                Button1.Text = filtr_off;
                DropDownList1.Visible = true;
            }

            Update_name();
        }
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Session["Prod"] = this.GridView1.SelectedValue;
            GridView3.Visible = true;
            if (Convert.ToInt64(Session["iduser"]) != 0)
            {
                Button2.Visible = true;
                TextBox1.Visible = true;

            }
        }
        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            Update_name();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            //проверка срабатывания валидаторов
            //иначе данные не заполненой формы будут сохранены
            // Page.Validate(); можно добавить

            int id_prod = Convert.ToInt32(Session["Prod"]);
            if (id_prod == 0)
                return;

            /*if (Convert.ToInt32(TextBox1.Text) < 0)
            {
                Response.Write("<script>alert('Ошибка')</script>");
                return;
            }*/

            // проверка наличия
            /*for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                if (Convert.ToInt32(GridView1.Rows[i].Cells[1].Text) == id_prod)
                {
                    if (Convert.ToInt32(GridView1.Rows[i].Cells[7].Text) < Convert.ToInt32(TextBox1.Text))
                    {
                        Response.Write("<script>alert('Ошибка')</script>");
                        return;
                    }
                }

            }*/



            // проверка того, что пользователь еще не выбрал этот товар
            try
            {
                var test = (from item in db.Корзина
                            where ((item.Код_апартаментов == id_prod) && (item.Код_покупателя == Convert.ToInt64(Session["iduser"])))
                            select item).Single();





                Response.Write("<script>alert('Ошибка')</script>");
                return;
            }
            catch (Exception ex)
            {
                var z = 0;
            }



            // уменьшаем количество доступных товаров
            var tov = (from item in db.Апартаменты
                       where item.ID == id_prod
                       select item).Single();

            //tov.Количество = tov.Количество - Convert.ToInt32(TextBox1.Text);

            //if (tov.Количество < 0)
            //    return;

            db.SubmitChanges();



            if (Page.IsValid)
            {
                try
                {
                    Корзина cust = new Корзина();
                    cust.Код_покупателя = Convert.ToInt32(Session["iduser"]);
                    cust.Код_апартаментов = Convert.ToInt32(Session["Prod"]);


                    //сведения о клиенте добавляются в таблицу
                    db.Корзина.InsertOnSubmit(cust);
                    // в этой точке s_user объект добавляется в объектную модель
                    //изменения не будут выполнены пока не будет вызван метод SubmitChanges
                    db.SubmitChanges();

                }
                catch
                {

                }
            }
        }
    }
}