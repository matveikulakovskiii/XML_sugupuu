<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="XML_sugupuu._Default" %>

<!DOCTYPE html>
<html>
    <head>
        <title>xml ja xslt andmete kuvamine</title>
    </head>
    <body>
        <h1>xml ja xslt andmete kuvamine</h1>
        <div>
            <asp:Xml runat="server" DocumentSource="~/pohiandmed.xml" TransformSource="~/pohiAndmeteLisad.xslt" />
        </div>
    </body>
</html>
</!DOCTYPE>
