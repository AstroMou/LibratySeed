<%@ Page Title="" Language="C#" MasterPageFile="~/semillaMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProyectSeed.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


            <fieldset>
                <h1>House</h1>


            </fieldset>



        </ContentTemplate>
    </asp:UpdatePanel>




</asp:Content>
