<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar_Footer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Build_Week_Gruppo_A.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:Repeater ID="REPEATER_SelectAllFromProdotto" ItemType="Build_Week_Gruppo_A.Prodotto" runat="server">
            <ItemTemplate>
                <%# Item.ID_Prodotto %>
                <%# Item.Marca %>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
