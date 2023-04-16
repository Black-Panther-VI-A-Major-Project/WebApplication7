<%-- 
    Document   : ClientSendEmail
    Created on : 02-Apr-2023, 4:37:49 pm
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            form{
                display:flex;
                flex-direction: column;
                width:100%;
                
            }
            </style>
    </head>
    <body>
        <jsp:include page="ClientHomeHeader.jsp" />
    <center><h1>Send Invite</h1></center>
         <form class="contact-form" action="#" >
            
            <div class="form-group" >
                            <label for="name" style="color:white;">Name</label>
                            <input type="text" name="name" id="name" class="name form-control" />
                        </div>
<!--            <input class="name" type="text" placeholder="text"/>-->

<div class="form-group">
                            <label for="email" style="color:white;">Email </label>
                            <input type="email" name="email" id="email" class="email form-control" /> 
                        </div>
<!--<div class="form-group" >
<label for="msg" style="color:white; display: block;">Message</label>
            <textarea  name="msg" cols="4" rows="4" id="msg" /> </textarea>
           </div> -->
<label for="msg" style="color:white; display: block;">Message</label>
            <textarea class="msg" cols="5" rows="5" placeholder="Your text"> </textarea>

<!--                        <div class="form-group" >
                            <label for="msg" style="color:white;">Message</label>
                            <textarea  name="msg" cols="4" rows="4" id="msg" /> </textarea>
                        </div>-->

<!--            <button type="submit"> Send</button>-->
<div class="form-group">
    <br>
    <center><button style="width:100px; height:60px; border-radius:15px;" type="submit">Send</button></center>
                        </div>
            </form>
        <script src="https://smtpjs.com/v3/smtp.js"></script>
        <script>
            const form=document.querySelector('.contact-form');
           function sendMsg(e)
           {
               e.preventDefault();
                
            const name=document.querySelector('.name'),
                  email=document.querySelector('.email'),
                  msg=document.querySelector('.msg');
          
          Email.send({
    SecureToken : "2166959d-fd66-4ef7-b632-6f51cc20eaa9",
    To : email.value,
    From : 'kunalsharma1997@outlook.com', 
    Subject : "contact form",
    Body : msg.value+" This is the website "+"http://lancehub.j.layershift.co.uk/"
}).then(
  message => alert(message)
);
           }
           form.addEventListener('submit',sendMsg);
            </script>
    </body>
</html>
