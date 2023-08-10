<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Registros.aspx.cs" Inherits="Parcial1.Registros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <asp:GridView ID="GVRecords" CssClass="table table-bordered table-condensed table-responsive table-hover" runat="server"></asp:GridView>
    </div>
</asp:Content>
