<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Veriler.aspx.cs" Inherits="loginEkrani.Veriler" %>

<!DOCTYPE html>
<html>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<head>
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover {
                    background-color: #111;
                }
        .auto-style1 {
            height: 27px;
        }
    </style>
</head>
<body>

    <ul>
        <li><a class="active" href="#home">Home</a></li>
        <li><a href="#news">News</a></li>
        <li><a href="#contact">Contact</a></li>
        <li><a href="#about">About</a></li>
    </ul>
    <form runat="server">
        <div style="margin-top: 15px">
            <table class=" table table-bordered">
                <tr>
                    <td>ID</td>
                    <td>KULLANICI</td>
                    <td>ŞİFRE </td>
                    <td>SİL </td>
                    <td>GÜNCELLE </td>


                </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>

                            <td><%# Eval("ID") %></td>
                            <td><%# Eval("KULLANICI") %></td>
                            <td><%# Eval("SIFRE") %> </td>
                             <td><asp:HyperLink NavigateUrl='<%# "SilmeSayfasi.aspx?ID="+Eval("ID") %>'  ID ="HyperLink1"  runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink> </td>
                                
                           
                             <td> <asp:HyperLink NavigateUrl='<%# "veriGuncelle.aspx?ID="+Eval("ID") %>'   ID="HyperLink2"  runat="server"  CssClass="btn btn-success">Güncelle</asp:HyperLink> </td>

                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</body>
</html>

