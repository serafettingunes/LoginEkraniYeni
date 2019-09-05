<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginEkrani.aspx.cs" Inherits="loginEkrani.LoginEkrani" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>

<head>
<title> Master login Form Responsive Widget Template  :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content=" Master  Login Form Widget Tab Form,Login Forms,Sign up Forms,Registration Forms,News letter Forms,Elements"/>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="web/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Cormorant+SC:300,400,500,600,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
</head>

<body>
	<div class="padding-all">
		<div class="header">
			<h1>KULLANICI GİRİŞİ</h1>
		</div>

		<div class="design-w3l">
			<div class="mail-form-agile">
				<form action="#" method="post" runat="server">
                    <asp:TextBox ID="txtKulAdi" runat="server" PlaceHolder="Kullanıcı Adını Giriniz..."></asp:TextBox>
                    <asp:TextBox PlaceHolder="Şifreyi Giriniz..."  ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
                   <div style="margin-top:15px"><asp:Button  ID="btnGiris" runat="server" Text="Giriş" OnClick="btnGiris_Click" /></div>
                     
				</form>
			</div>
		  <div class="clear"> </div>
		</div>
		
		<div class="footer">
		<p>© 2019 Şerafettin Güneş Her Hakkı Saklıdır.   <a href="https://serafettingunes.blogspot.com/" > https://serafettingunes.blogspot.com/ </a></p>
		</div>
	</div>
</body>
</html>
