﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar_Footer.Master" AutoEventWireup="true" CodeBehind="DettaglioProdotto.aspx.cs" Inherits="Build_Week_Gruppo_A.DettaglioProdotto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container mt-5">
            <div class="card mb-3">
                <div class="row g-0">
                    <div class="col-4">
                        
                        <asp:Image ID="Image1" runat="server" Width="200" />
                    </div>
                    <div class="col-8">
                        <div class="card-body mt-5">
                            <h2 class="card-title"><asp:Label ID="Nome" runat="server" Text="" Font-Bold="true" Font-Size="30px"></asp:Label></h2>
                            <p class="card-text"><asp:Label ID="Descrizione" runat="server" Text=""></asp:Label></p>
                            <p class="card-text">Prezzo: <asp:Label ID="Prezzo" runat="server" Text="" Font-Bold="true"></asp:Label></p>
                            <asp:Button ID="AddProduct" runat="server" Text="Aggiungi al Carrello" OnClick="AddProduct_Click"  />
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
