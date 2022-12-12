<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar_Footer.Master" AutoEventWireup="true" CodeBehind="AggiungiProdotto.aspx.cs" Inherits="Build_Week_Gruppo_A.admin.AggiungiProdotto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-3">
        <div>
            <asp:TextBox ID="TEXTBOX_Marca" CssClass="form-control" placeholder="Marca" runat="server"></asp:TextBox>
            <asp:TextBox ID="TEXTBOX_Modello" CssClass="form-control" placeholder="Modello" runat="server"></asp:TextBox>
            <asp:TextBox ID="TEXTBOX_Descrizione" CssClass="form-control" placeholder="Descrizione" runat="server"></asp:TextBox>
            <asp:TextBox ID="TEXTBOX_PrezzoVendita" CssClass="form-control" placeholder="Prezzo Vendita" runat="server"></asp:TextBox>
            <asp:CheckBox ID="CheckBox_InPromozione" OnCheckedChanged="CheckBox_InPromozione_CheckedChanged" AutoPostBack="true" Checked="false" Text="In promozione?" runat="server" /> <br />
            <asp:TextBox ID="TEXTBOX_PrezzoPrecedente" Visible="false" CssClass="form-control" placeholder="Prezzo Precedente" runat="server"></asp:TextBox>
            <asp:FileUpload ID="FileUpload_Image" runat="server" />
            <asp:DropDownList ID="DropDownList_Categoria" runat="server"></asp:DropDownList>
            <%--  
            CHECKBOX PER AGGIUNGERERE UNA NUOVA CATEGORIA
            <asp:CheckBox ID="CheckBox1" OnCheckedChanged="CheckBox_InPromozione_CheckedChanged" 
                AutoPostBack="true" Checked="false" Text="In promozione?" runat="server" />
            --%>
            <asp:Button ID="Button_AggiungiProdotto" CssClass="btn btn-warning" OnClick="Button_AggiungiProdotto_Click" runat="server" Text="Aggiungi prodotto" />
            <asp:Label ID="Label_RigheInteressate" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
