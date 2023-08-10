<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="Parcial1.Registrar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col">
                <asp:Label CssClass="form-control-plaintext" ID="LblSede" runat="server" Text="Sede"></asp:Label>
            </div>
            <div class="col">
                <asp:DropDownList CssClass="form-control" ID="DDLSede" runat="server" OnSelectedIndexChanged="DDLSede_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:Label ID="LblCarrera" CssClass="form-control-plaintext" runat="server" Text="Carrera"></asp:Label>
            </div>
            <div class="col">
                <asp:DropDownList CssClass="form-control" ID="DDLCarrera" runat="server" OnSelectedIndexChanged="DDLCarrera_SelectedIndexChanged"></asp:DropDownList>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:Label CssClass="form-control-plaintext" ID="Label1" runat="server" Text="Plan de Estudio"></asp:Label>
            </div>
            <div class="col-auto">
                <asp:RadioButton Hidden="true" CssClass="form-control" Text="Matutina" GroupName="RadioGroup" ID="RBMatutino" runat="server" />

            </div>
            <div class="col-auto">
                <asp:RadioButton Hidden="true" CssClass="form-control" Text="Vespertina" GroupName="RadioGroup" ID="RBVespertino" runat="server" />

            </div>
            <div class="col-auto">
                <asp:RadioButton Hidden="true" CssClass="form-control" Text="Fin de Semana" GroupName="RadioGroup" ID="RBFinSemana" runat="server" />
            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:Label ID="LBLNombre" AssociatedControlID="TBNombre" CssClass="form-control-plaintext" runat="server" Text="Nombre"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox CssClass="form-control" ID="TBNombre" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:Label ID="LBLApellido" AssociatedControlID="TBApellido" CssClass="form-control-plaintext" runat="server" Text="Apellido"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox CssClass="form-control" ID="TBApellido" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:Label ID="LBLDPI" AssociatedControlID="TBDPI" CssClass="form-control-plaintext" runat="server" Text="DPI"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox CssClass="form-control" TextMode="Number" ID="TBDPI" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:Label ID="LBLNacimiento" AssociatedControlID="TBNacimiento" CssClass="form-control-plaintext" runat="server" Text="Fecha de Nacimiento"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox CssClass="form-control" TextMode="Date" ID="TBNacimiento" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:Label ID="LBLCelular" AssociatedControlID="TBCelular" CssClass="form-control-plaintext" runat="server" Text="Numero de Celular"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox CssClass="form-control" TextMode="Number" ID="TBCelular" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row text-center">
            <div class="col">
                <asp:Button ID="BTNSubmit" CssClass="btn btn-outline-success button-submit" runat="server" OnClick="ButtonSubmit_Click" Text="Registrar" />
            </div>
        </div>
    </div>
</asp:Content>
