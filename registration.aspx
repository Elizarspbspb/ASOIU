<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="ASOIU_Test1.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style7">
        <tr>
            <td>Введите Имя:</td>
            <td>
                <asp:TextBox ID="TextBoxRegName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Введите Фамилию:</td>
            <td>
                <asp:TextBox ID="TextBoxRegFami" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Введите Отчество:</td>
            <td>
                <asp:TextBox ID="TextBoxRegOtch" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Введите Паспорт:</td>
            <td>
                <asp:TextBox ID="TextBoxRegPasport" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Введите Телефон:</td>
            <td>
                <asp:TextBox ID="TextBoxRegTelephone" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Введите Почту:</td>
            <td>
                <asp:TextBox ID="TextBoxRegPost" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Введите логин:</td>
            <td>
                <asp:TextBox ID="TextBoxRegLogin" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Введите пароль:</td>
            <td>
                <asp:TextBox ID="TextBoxRegPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Подтвердите пароль:</td>
            <td>
                <asp:TextBox ID="TextBoxRegPass2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Создать" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Сбросить" />
            </td>
        </tr>
    </table>

</asp:Content>
