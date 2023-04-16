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
                width:60%;
                
            }
            </style>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form class="contact-form" action="#">
            <input class="name" type="text" placeholder="text"/>
            <input class="email" type="email" placeholder="email"/>
            <textarea class="msg" cols="5" rows="5" placeholder="Your text"> </textarea>
            <button type="submit"> Send</button>
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
