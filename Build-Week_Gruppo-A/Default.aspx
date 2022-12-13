<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar_Footer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Build_Week_Gruppo_A.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .widthImg{
            width: 75px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row flex-wrap py-4 justify-content-start align-items-center">
            <asp:Repeater ID="REPEATER_SelectAllFromProdotto" ItemType="Build_Week_Gruppo_A.Prodotto" runat="server">
                <ItemTemplate>
                    <div class="bg-white py-5 row col-12 col-md-6 col-lg-4">


                        <div class="col-2">
                            <asp:Image CssClass="widthImg" ImageUrl='<%#"~/img/"  + Item.URLImg %>' runat="server" />
                        </div>
                        
                       
                        <div class="col-10">
                            <h2><%#Item.Marca %></h2>
                            <p><%#Item.Modello %></p>
                            <p>Prezzo: <%#Item.PrezzoVendita %> $</p>

                            <asp:Label Text='<%# "In Offerta! Prezzo precedente = " + Item.PrezzoPrecedente %>' ForeColor="Green" Visible="<%#Item.InPromozione %>" runat="server" />

                        </div>
                    </div>

                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
