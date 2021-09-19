<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LK.aspx.cs" Inherits="ASOIU_Test1.LK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style7">
        <tr>
            <td>Имя:</td>
            <td>
                <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Фамилия:</td>
            <td>
                <asp:TextBox ID="TextBoxFami" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Отчество:</td>
            <td>
                <asp:TextBox ID="TextBoxOtch" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Паспорт:</td>
            <td>
                <asp:TextBox ID="TextBoxPasport" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Телефон:</td>
            <td>
                <asp:TextBox ID="TextBoxTelephone" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Почта:</td>
            <td>
                <asp:TextBox ID="TextBoxPost" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>логин:</td>
            <td>
                <asp:TextBox ID="TextBoxLogin" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Сохранить" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Сбросить" />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
