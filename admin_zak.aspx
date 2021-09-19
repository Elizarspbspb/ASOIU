<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.master" AutoEventWireup="true" CodeBehind="admin_zak.aspx.cs" Inherits="ASOIU_Test1.admin_zak" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Номер_покупателя" HeaderText="Номер_покупателя" SortExpression="Номер_покупателя" />
            <asp:BoundField DataField="Номер_апартаментов" HeaderText="Номер_апартаментов" SortExpression="Номер_апартаментов" />
            <asp:BoundField DataField="Номер_сотрудника" HeaderText="Номер_сотрудника" SortExpression="Номер_сотрудника" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU_4lr_1ConnectionString %>" DeleteCommand="DELETE FROM [Сделка] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Сделка] ([Номер покупателя], [Номер апартаментов], [Номер сотрудника]) VALUES (@Номер_покупателя, @Номер_апартаментов, @Номер_сотрудника)" SelectCommand="SELECT [ID], [Номер покупателя] AS Номер_покупателя, [Номер апартаментов] AS Номер_апартаментов, [Номер сотрудника] AS Номер_сотрудника FROM [Сделка]" UpdateCommand="UPDATE [Сделка] SET [Номер покупателя] = @Номер_покупателя, [Номер апартаментов] = @Номер_апартаментов, [Номер сотрудника] = @Номер_сотрудника WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Номер_покупателя" Type="Int32" />
            <asp:Parameter Name="Номер_апартаментов" Type="Int32" />
            <asp:Parameter Name="Номер_сотрудника" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Номер_покупателя" Type="Int32" />
            <asp:Parameter Name="Номер_апартаментов" Type="Int32" />
            <asp:Parameter Name="Номер_сотрудника" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Имя" HeaderText="Имя" SortExpression="Имя" />
            <asp:BoundField DataField="Фамилия" HeaderText="Фамилия" SortExpression="Фамилия" />

        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ASOIU_4lr_1ConnectionString %>" DeleteCommand="DELETE FROM [Сотрудники] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Сотрудники] ([Имя], [Фамилия]) VALUES (@Имя, @Фамилия)" SelectCommand="SELECT [ID], [Имя], [Фамилия] FROM [Сотрудники]" UpdateCommand="UPDATE [Сотрудники] SET [Имя] = @Имя, [Фамилия] = @Фамилия WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Имя" Type="String" />
            <asp:Parameter Name="Фамилия" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Имя" Type="String" />
            <asp:Parameter Name="Фамилия" Type="String" />

            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

</asp:Content>
