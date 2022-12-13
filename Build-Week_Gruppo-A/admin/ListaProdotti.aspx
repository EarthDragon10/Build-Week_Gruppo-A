<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar_Footer.Master" AutoEventWireup="true" CodeBehind="ListaProdotti.aspx.cs" Inherits="Build_Week_Gruppo_A.admin.ListaProdotti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content  ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ItemType="Build_Week_Gruppo_A.Prodotto" AutoGenerateColumns="false" ID="GridView_ListaProdotti" runat="server">
        <Columns>
            <asp:BoundField DataField="Marca" HeaderText="Marca"  />
            <asp:BoundField DataField="Modello" HeaderText="Modello" />
            <asp:BoundField DataField="PrezzoVendita" HeaderText="Prezzo al pubblico" DataFormatString="{0:C}" />
            <asp:CheckBoxField runat="server" DataField="InPromozione" HeaderText="In Promozione"></asp:CheckBoxField>
            <asp:BoundField DataField="Tipologia" HeaderText="Categoria"/>
            <asp:TemplateField>
                
                <ItemTemplate>
                     
                    <asp:Button ID="Button1" runat="server" Text="Modifica" OnClick="Button1_Click" CommandArgument="<%#Item.ID_Prodotto %>" />
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>

    </asp:GridView>

</asp:Content>