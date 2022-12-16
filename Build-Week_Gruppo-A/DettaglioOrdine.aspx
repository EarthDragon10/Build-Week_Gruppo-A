<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar_Footer.Master" AutoEventWireup="true" CodeBehind="DettaglioOrdine.aspx.cs" Inherits="ClasseDettaglio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container bg-white d-flex justify-content-between align-items-center">
       <%-- <asp:Repeater ID="Repeater1" runat="server" ItemType="Build_Week_Gruppo_A.ClasseDettaglio">
            <ItemTemplate>
                <asp:Label ID="Label_Prodotto" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label_Modello" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label_Quantita" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label_Prezzo" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label_Data" runat="server" Text="Label"></asp:Label>
            
            </ItemTemplate>
        </asp:Repeater>--%>

         <div class="container ">
        <asp:GridView ID="GridCarrello" CssClass="table table-bordered  table-striped table-light container-tabella " runat="server"
            AutoGenerateColumns="false" ItemType="Build_Week_Gruppo_A.ClasseDettaglio" Visible="true">
            <Columns>
                <asp:TemplateField HeaderText="Marca">
                    <ItemTemplate>
                        <p class="ps-2"><%# Item.Marca %></p>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Modello">
                    <ItemTemplate>
                        <p><%# Item.Modello %></p>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Prezzo">
                    <ItemTemplate>
                        <p><%# Item.Totale.ToString("c2") %></p>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantita">
                    <ItemTemplate>
                        <p><%# Item.Quantita %></p>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Quantita">
                    <ItemTemplate>
                        <p><%# Item.DataOrdine.ToString("d") %></p>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

    </div>

    </div>
</asp:Content>
