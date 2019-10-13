<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.util.Date" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
      body.myweb{
	     background:url(star.jpg);
		 background-repeat:no-repeat;
		 background-size:100% 100%;
		 background-attachment:fixed;
		 }
	  span.welcome{
	      font:700 100px "Comic Sans MS";
		  color:white;
		  text-shadow:
		    0 0 20px #151624,
            10px -10px 30px #04175B,
            20px -20px 40px #222080,
            -20px -60px 50px #042C88,
            0px -80px 60px #7BCDEC,
            10px -40px 70px #451b0e;
           }
</style>
<link href="time.css" rel="stylesheet" type="text/css" />
<link href="mybutton.css" rel="stylesheet" type="text/css"/>
  </head>
  
  <body class="myweb">
<br />
   <h1 align="center"><span class="welcome">WELCOME</span></h1>
  
   
   <script>
       document.write("<audio autoplay loop src='hero.mp3'></audio>");
   </script>
   <p align="center" class="time"><% out.print("When is it now?");%><%= new Date() %></p>
   <p align="center" class="time">
         The New Colossus Not like the brazen giant of Greek fame,<br />
         With conquering limbs astride from land to land；<br />
         Here at our sea-washed, sunset gates shall stand<br />
         A mighty woman with a torch whose flame<br />
         Is imprisoned lightning, and her name<br />
         Mother of Exiles. From her beacon-hand<br />
         Glows world-wide welcome； her mild eyes command<br />
         The air-bridged harbor that twin cities .<br />
         "Keep ancient lands your storied pomp!" cries she with silent lips.<br />
         "Give me your tired your poor,<br />
          Your huddled masses yearning to breathe free,<br />
          The wretched refuse of your teeming shore.<br />
         Send these, the homeless, tempest-tossed to me,<br />
         I lift my lamp beside the golden door!"<br />
           </p>
         <form name="welcomeform" id="welcomeform" action="MyJsp.jsp" method="post">
             <table align="center">
               <tr>
                  <th colspan="2"><br>input your name and enter my world</th>
               </tr>
               <tr>
                  <th>
                      <p class="time"> your name:</p>
                  </th>
                  <th>
                      <input type="text" id="name" name="name" height="50px"/>
                  </th>
               </tr>
               <tr>
                  <th> 
                      <input class="mybutton" type="button" id="go" name="go" height="50px" value="OK" onclick="submitname()"/>
                  </th>
                  <th>
                      <input class="mybutton" type="button" id="leave" name="leave" height="50px" value="Let Me Leave" onclick="window.close()"/>
                  </th>
               </tr>
             </table>
         </form>
      
         <script>
              function submitname(){
                     name=document.welcomeform.name.value;
                    // name=name.replace(/[\-\_\,\.\!\|\~\`\(\)\#\@\%\-\+\=\/\'\$\%\^\&\*\{\}\:\;\"\L\<\>\?\\]/g, '');
                     var reg = /[\-\_\,\.\!\|\~\`\(\)\#\@\%\-\+\=\/\'\$\%\^\&\*\{\}\:\;\"\L\<\>\?\\]/;
                     //window.alert(name);
                     if(name=="")
                     {
                         window.alert("hi,what's your name?");
                         document.welcomeform.name.focus();
                         return;
                     }
                     else
                     {
                         if(reg.test(name)){
                             window.alert("Sorry,I don't know what it is...");
                             window.alert("'<''>'and other special char is not allowed!");
                             return;
                         }
                         document.welcomeform.submit();
                     }
              }
              function leave()
              {
                   window.close();
              }
         </script>
</body>
</html>
