<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar_Footer.Master" AutoEventWireup="true" CodeBehind="ListaProdotti.aspx.cs" Inherits="Build_Week_Gruppo_A.admin.ListaProdotti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content  ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ItemType="Build_Week_Gruppo_A.Prodotto" AutoGenerateColumns="false" ID="GridView_ListaProdotti" runat="server">
        <Columns>
            <asp:BoundField DataField="Marca" HeaderText="Marca"  />
            <asp:BoundField DataField="Modello" HeaderText="Modello" />
            <asp:BoundField DataField="PrezzoVendita" HeaderText="Prezzo al pubblico" DataFormatString="{0:C}" />
            <asp:BoundField DataField="Tipologia" HeaderText="Categoria" />
            <asp:BoundField DataField="InPromozione" HeaderText="In Promozione" />
            <asp:TemplateField>
                <ItemTemplate>
                    <%--<asp:Button  CssClass="btn btn-warning" ID="Button_ModificaProdotto" runat="server" Text="Modifica" OnClick="Button_ModificaProdotto_Click" />--%>
                    <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                    <asp:Button CssClass="btn btn-danger" ID="Button_EliminaProdotto" runat="server" Text="Elimina" OnClick="Button_EliminaProdotto_Click" />
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>

    </asp:GridView>
</asp:Content>