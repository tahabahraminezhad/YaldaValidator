﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="testproject.WebForm1" %>
<%@ Register TagPrefix="custsom" Namespace="testproject" Assembly="App_Code" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <asp:FileUpload ID="fu" runat="server"/>
        <custsom:YaldaValidator ControlToValidate="fu"
        ErrorMessage="Format or size of your file is wrong"
        SizeOfTheFileInKb="200"
        Extensions="jpeg+png+TIFF"
        runat="server"  ></custsom:YaldaValidator>
        <asp:Button ID="btnrefresh" Text="Upload" runat="server"/>
        </form>

</html>