<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bucket.aspx.cs" Inherits="ASOIU_Test1.bucket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False">
    <Columns>
        <asp:BoundField DataField="Код_апартаментов" HeaderText="Код_апартаментов" SortExpression="Код_апартаментов" />
        <asp:BoundField DataField="Код_покупателя" HeaderText="Код_покупателя" SortExpression="Код_покупателя" />
    </Columns>
</asp:GridView>
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" DataKeyNames="ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" AllowPaging="True" AllowSorting="True">
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
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU_4lr_1ConnectionString %>" DeleteCommand="DELETE FROM [Апартаменты] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Апартаменты] ([Цена], [Площадь], [Этаж], [Адрес], [Застройщик], [Тип апартаментов], [Картинки]) VALUES (@Цена, @Площадь, @Этаж, @Адрес, @Застройщик, @Тип апартаментов, @Картинки)" SelectCommand="SELECT [ID], [Цена], [Площадь], [Этаж], [Адрес], [Застройщик], [Тип апартаментов], [Картинки] FROM [Апартаменты]" UpdateCommand="UPDATE [Апартаменты] SET [Цена] = @Цена, [Площадь] = @Площадь, [Этаж] = @Этаж, [Адрес] = @Адрес, [Застройщик] = @Застройщик, [Тип апартаментов] = @Тип апартаментов, [Картинки] = @Картинки WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Цена" Type="Decimal" />
        <asp:Parameter Name="Площадь" Type="Int32" />
        <asp:Parameter Name="Этаж" Type="Int32" />
        <asp:Parameter Name="Адрес" Type="String" />
        <asp:Parameter Name="Застройщик" Type="Int32" />
        <asp:Parameter Name="Тип апартаментов" Type="Int32" />
        <asp:Parameter Name="Картинки" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Цена" Type="Decimal" />
        <asp:Parameter Name="Площадь" Type="Int32" />
        <asp:Parameter Name="Этаж" Type="Int32" />
        <asp:Parameter Name="Адрес" Type="String" />
        <asp:Parameter Name="Застройщик" Type="Int32" />
        <asp:Parameter Name="Тип апартаментов" Type="Int32" />
        <asp:Parameter Name="Картинки" Type="String" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU_4lr_1ConnectionString %>" SelectCommand="SELECT [Код апартаментов] AS Код_апартаментов, [Код покупателя] AS Код_покупателя FROM [Корзина] WHERE ([Код покупателя] = @Код_покупателя)">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="Код_покупателя" SessionField="iduser" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
    Дата сделки: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    <br />

<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Удалить" />
<asp:Button ID="Button2" runat="server" Text="Заказать" OnClick="Button2_Click" />

    <br />
    <br />
    <asp:GridView ID="GridViewType" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" Visible="False">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Название" HeaderText="Название" SortExpression="Название" />
        </Columns>
    </asp:GridView>
    <asp:GridView ID="GridViewMan" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource4" Visible="False">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Название" HeaderText="Название" SortExpression="Название" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU_4lr_1ConnectionString %>" SelectCommand="SELECT [ID], [Название] FROM [Застройщик]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU_4lr_1ConnectionString %>" SelectCommand="SELECT [ID], [Название] FROM [Тип апартаментов]"></asp:SqlDataSource>


</asp:Content>
