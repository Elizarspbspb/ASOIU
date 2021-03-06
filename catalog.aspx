<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="catalog.aspx.cs" Inherits="ASOIU_Test1.catalog" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Цена" HeaderText="Цена" SortExpression="Цена" />
                        <asp:BoundField DataField="Площадь" HeaderText="Площадь" SortExpression="Площадь" />
                        <asp:BoundField DataField="Этаж" HeaderText="Этаж" SortExpression="Этаж" />
                        <asp:BoundField DataField="Адрес" HeaderText="Адрес" SortExpression="Адрес" />
                        <asp:BoundField DataField="Застройщик" HeaderText="Застройщик" SortExpression="Застройщик" Visible="False" />
                        <asp:BoundField DataField="Тип апартаментов" HeaderText="Тип апартаментов" SortExpression="Тип апартаментов" />
                        <asp:BoundField DataField="Картинки" HeaderText="Картинки" SortExpression="Картинки" />
                        <asp:ImageField DataImageUrlField="Картинки">
                        </asp:ImageField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU_4lr_1ConnectionString %>" SelectCommand="SELECT [ID], [Цена], [Площадь], [Этаж], [Адрес], [Застройщик], [Тип апартаментов], [Картинки] FROM [Апартаменты]"></asp:SqlDataSource>
                
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Visible="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Цена" HeaderText="Цена" SortExpression="Цена" />
                        <asp:BoundField DataField="Площадь" HeaderText="Площадь" SortExpression="Площадь" />
                        <asp:BoundField DataField="Этаж" HeaderText="Этаж" SortExpression="Этаж" />
                        <asp:BoundField DataField="Адрес" HeaderText="Адрес" SortExpression="Адрес" />
                        <asp:ImageField DataImageUrlField="Картинки">
                        </asp:ImageField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <br />
            </td>
            <td>
                <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="Номер типа апартамента" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Название" HeaderText="Название" ReadOnly="True" SortExpression="Название" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU_4lr_1ConnectionString %>" SelectCommand="SELECT [ID], [Название], [Описание], [Дата создания] AS Дата, [Логотип] FROM [Застройщик]"></asp:SqlDataSource>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Visible="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
                        <asp:BoundField DataField="Номер_апартаментов" HeaderText="Номер_апартаментов" SortExpression="Номер_апартаментов" Visible="False" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU_4lr_1ConnectionString %>" SelectCommand="SELECT [ID], [Номер апартаментов] AS Номер FROM [Сделка] WHERE ([Номер апартаментов] = @Номер_апартаментов)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="0" Name="Номер_апартаментов" SessionField="Prod" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU_4lr_1ConnectionString %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT [ID], [Цена], [Площадь], [Этаж], [Адрес], [Картинки] FROM [Апартаменты] WHERE ([Застройщик] = @Застройщик)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="1" Name="Застройщик" SessionField="Manuf" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Добавить в корзину" Visible="False" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Название" DataValueField="ID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" Visible="False">
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Фильтр включить" />
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="ASOIU_Test1.DataClasses1DataContext" EntityTypeName="" Select="new (ID, Название, Апартаменты)" TableName="Тип_апартаментов">
                </asp:LinqDataSource>
            </td>
            <td>
                <asp:GridView ID="GridViewType" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource5" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Название" HeaderText="Название" SortExpression="Название" />
                    </Columns>
                </asp:GridView>
                <asp:GridView ID="GridViewMan" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource6" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Название" HeaderText="Название" SortExpression="Название" />
                        <asp:BoundField DataField="Описание" HeaderText="Описание" SortExpression="Описание" />
                        <asp:BoundField DataField="Дата" HeaderText="Дата" SortExpression="Дата" />
                        <asp:BoundField DataField="Логотип" HeaderText="Логотип" SortExpression="Логотип" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU_4lr_1ConnectionString %>" SelectCommand="SELECT [ID], [Название], [Описание], [Дата создания] AS Дата, [Логотип] FROM [Застройщик]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU_4lr_1ConnectionString %>" SelectCommand="SELECT [ID], [Название] FROM [Тип апартаментов]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>