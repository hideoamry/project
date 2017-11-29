<%@ page language="java" import="java.sql.*"%>
<%
    String usernamess3515="";
    String passwordss3515= ""; 
  	Cookie[] cookies = request.getCookies();
    if(cookies!=null) {
      for(int i=0;i<cookies.length;i++){
		Cookie cookie = cookies[i];
	  	//out.println("<h2> Found Cookies Name and Value</h2>");
	  		//out.print("Name : " + cookie.getName( ) + ",  ");
         	//out.print("Value: " + cookie.getValue( )+" <br/>");

        if(cookie.getName().equals("axss3515-datatmp")) {
            usernamess3515= cookie.getValue();
        } else if(cookie.getName().equals("byss3515-datatmp")) {
            passwordss3515= cookie.getValue();
        } //endif
      } //endfor
    } 
	//else {
		//out.println("<h2>No cookies founds</h2>");
	//}
	 
	java.util.Date tgl = new java.util.Date();
	String hari = null, bln = null;
	if(tgl.getDay() == 0) hari = "Minggu, ";
	if(tgl.getDay() == 1) hari = "Senin, ";
	if(tgl.getDay() == 2) hari = "Selasa, ";
	if(tgl.getDay() == 3) hari = "Rabu, ";
	if(tgl.getDay() == 4) hari = "Kamis, ";
	if(tgl.getDay() == 5) hari = "Jum'at, ";
	if(tgl.getDay() == 6) hari = "Sabtu, ";
	hari = hari + Integer.toString(tgl.getDate());
	if(tgl.getMonth() == 0) hari = hari + " Januari ";
	if(tgl.getMonth() == 1) hari = hari + " Pebruari ";
	if(tgl.getMonth() == 2) hari = hari + " Maret ";
	if(tgl.getMonth() == 3) hari = hari + " April ";
	if(tgl.getMonth() == 4) hari = hari + " Mei ";
	if(tgl.getMonth() == 5) hari = hari + " Juni ";
	if(tgl.getMonth() == 6) hari = hari + " Juli ";
	if(tgl.getMonth() == 7) hari = hari + " Agustus ";
	if(tgl.getMonth() == 8) hari = hari + " September ";
	if(tgl.getMonth() == 9) hari = hari + " Oktober ";
	if(tgl.getMonth() == 10) hari = hari + " Nopember ";
	if(tgl.getMonth() == 11) hari = hari + " Desember ";
	hari = hari + Integer.toString(tgl.getYear()+1900);
	//out.print(hari); 
	
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Perizinan Lebong</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="dist/font-awesome-4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="dist/ionicons-master/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="plugins/iCheck/square/blue.css">
	<link href="images/logourl.gif" rel="SHORTCUT ICON"/>
	<style type="text/css">
	<!--
	body {
		background: url(images/atv_login_bg.png); 
  		background-position: center center;
  		background-size: cover;
	}
	.login-box .login-box-body p {
	font-family: Baskerville, Palatino Linotype, Palatino, Century Schoolbook L, Times New Roman, serif;
}
    .login-box .login-box-body p {
	font-family: Gotham, Helvetica Neue, Helvetica, Arial, sans-serif;
}
    </style>
  </head>
  <body>
    <div class="login-box">   
      <div class="login-box-body">
	  <div align="center"><img src="images/login_headera.png" width="87" height="84" />
	  </div>
	  <h3 align="center">
        <a><font color="#000000"><b><b1>APLIKASI PERIZINAN 
			</b1><b2>Dinas Penanaman Modal dan <br>PTSP Kabupaten Lebong</b2></b></font></a></h3>
	  
        <p class="login-box-msg"><font color="#FF0000"><%try{
	if(request.getParameter("error").equals("1")) out.print("<br>ID Pengguna atau Password salah!");
	else if(request.getParameter("error").equals("2")) out.print("<br>Kode Gambar salah!");
	} catch(Exception e){}%></font></p>
        <form name="login-form" id="login-form" action="action/signin.jsp" method="post" target="_parent">
          <div class="form-group has-feedback">
            <input type="text" name="pemohon" value="<%=usernamess3515 %>" class="form-control" placeholder="Nama Pengguna">
            <span class="fa ion-android-person form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" name="sandi" value="<%=passwordss3515 %>" class="form-control" placeholder="Sandi">
            <span class="fa ion-locked form-control-feedback"></span>
          </div>
		  <div class="form-group has-feedback">
            <input type="text" name="kaptchafield" id="kaptchafield" class="form-control" placeholder="Kode Gambar">
			<span class="fa ion-ios-loop-strong form-control-feedback"></span>
          </div>
		  <div align="center" class="form-group has-feedback">
            <img src="Kaptcha.jpg">
          </div>
          <div class="row">
            <div class="col-xs-8">
              <div class="checkbox icheck">
                <label>
                  <input type="checkbox" name="rememberMe" value ="true"> 
                  Ingat Saya
                </label>
              </div>
            </div><!-- /.col -->
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat"> Masuk </button>
            </div><!-- /.col -->
          </div>
        </form>
        <%out.print(hari);%><br>
    </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="plugins/iCheck/icheck.min.js"></script>
    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>
  </body>
</html>
