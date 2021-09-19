<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.master" AutoEventWireup="true" CodeBehind="admin_catalog.aspx.cs" Inherits="ASOIU_Test1.admin_catalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AllowPaging="True">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Цена" HeaderText="Цена" SortExpression="Цена" />
            <asp:BoundField DataField="Площадь" HeaderText="Площадь" SortExpression="Площадь" />
            <asp:BoundField DataField="Этаж" HeaderText="Этаж" SortExpression="Этаж" />
            <asp:BoundField DataField="Адрес" HeaderText="Адрес" SortExpression="Адрес" />
            <asp:BoundField DataField="Застройщик" HeaderText="Застройщик" SortExpression="Застройщик" Visible="False" />

        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU_4lr_1ConnectionString %>" DeleteCommand="DELETE FROM [Апартаменты] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Апартаменты] ( [Цена], [Площадь], [Этаж], [Адрес], [Застройщик]) VALUES ( @Цена, @Площадь, @Этаж, @Адрес, @Застройщик)" SelectCommand="SELECT [ID], [Цена], [Площадь], [Этаж], [Адрес], [Застройщик] FROM [Апартаменты]" UpdateCommand="UPDATE [Апартаменты] SET [Цена] = @Цена, [Площадь] = @Площадь, [Этаж] = @Этаж, [Адрес] = @Адрес, [Застройщик] = @Застройщик WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>

            <asp:Parameter Name="Цена" Type="Decimal" />
            <asp:Parameter Name="Площадь" Type="Int32" />
            <asp:Parameter Name="Этаж" Type="Int32" />
            <asp:Parameter Name="Адрес" Type="String" />
            <asp:Parameter Name="Застройщик" Type="Int32" />

        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Цена" Type="Decimal" />
            <asp:Parameter Name="Площадь" Type="Int32" />
            <asp:Parameter Name="Этаж" Type="Int32" />
            <asp:Parameter Name="Адрес" Type="String" />
            <asp:Parameter Name="Застройщик" Type="Int32" />

            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ID">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <Fields>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Цена" HeaderText="Цена" SortExpression="Цена" />
            <asp:BoundField DataField="Площадь" HeaderText="Площадь" SortExpression="Площадь" />
            <asp:BoundField DataField="Этаж" HeaderText="Этаж" SortExpression="Этаж" />
            <asp:BoundField DataField="Адрес" HeaderText="Адрес" SortExpression="Адрес" />
            <asp:BoundField DataField="Застройщик" HeaderText="Застройщик" SortExpression="Застройщик" Visible="False" />

            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
</asp:DetailsView>

</asp:Content>
