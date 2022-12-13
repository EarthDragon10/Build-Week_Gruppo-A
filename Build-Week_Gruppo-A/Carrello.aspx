<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar_Footer.Master" AutoEventWireup="true" CodeBehind="Carrello.aspx.cs" Inherits="Build_Week_Gruppo_A.Carrello" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <asp:Label ID="lblEmptyCart" runat="server" Text=""></asp:Label>
        <asp:GridView ID="GridCarrello" CssClass="table table-bordered table-striped" runat="server"
            AutoGenerateColumns="false" ItemType="Build_Week_Gruppo_A.Prodotto" Visible="true">
            <Columns>
                
                <asp:TemplateField HeaderText="Marca">
                    <ItemTemplate>
                        <p><%# Item.Marca %></p>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Prodotto">
                    <ItemTemplate>
                        <p><%# Item.Modello %></p>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Prezzo">
                    <ItemTemplate>
                        <p><%# Item.PrezzoVendita.ToString("c2") %></p>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

    </div>
    <div class="container">
        <div>
            <p class="float-end">Totale da pagare:
                <asp:Label ID="lblTotCarrello" runat="server" Text="" Font-Bold="true"></asp:Label></p>
        </div>
        <div>
            <asp:Button ID="Delete" runat="server" Text="Svuota Carrello" OnClick="Delete_Click" CssClass="border " Visible="true" />
        </div>
    </div>
</asp:Content>
