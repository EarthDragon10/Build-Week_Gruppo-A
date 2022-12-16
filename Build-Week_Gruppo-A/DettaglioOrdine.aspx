<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar_Footer.Master" AutoEventWireup="true" CodeBehind="DettaglioOrdine.aspx.cs" Inherits="ClasseDettaglio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container bg-white d-flex justify-content-between align-items-center">
        
        <asp:Repeater ID="Repeater_Dettagli" runat="server" ItemType="Build_Week_Gruppo_A.ClasseDettaglio">
            <ItemTemplate>
                <asp:Label ID="Label_Prodotto" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label_Modello" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label_Quantita" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label_Prezzo" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label_Data" runat="server" Text="Label"></asp:Label>
            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
