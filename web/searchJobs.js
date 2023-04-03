function searchJobsByUsername(){
    $('#searchJobsByUsernameModal').modal('show');
}
function searchJobsByUsername1(){
   
            usernameKeyword=document.getElementById("userSearch").value;
           
           
           if(usernameKeyword=="")
           {
               document.getElementById("d1").innerHTML="Username is empty"; 
           }
           else{
    
               //8888
               
               
                      var xhttp = new XMLHttpRequest();
                     
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                         // JSON as String 
                         var res = xhttp.responseText.trim();
                         alert(res);
                         if(res.length<14){
                          
                             alert("no entry found");
                         }
                      
                         else{
                              var mainobj = JSON.parse(res);
                         
                         console.log(mainobj);
                         
                         // Extract ans[] from mainobj
                          arr = mainobj["ans"];
                         
                         console.log(arr);
                         
                         
                         var ans="";
                         
                        for(var i=0;i<arr.length;i++)
                         {
                             ans=ans+"<table style=\"color:white\" class=\"table table-bordered\">";
                             ans = ans + "<tr>";
                             ans = ans + "<td>"+ "Project Owner" +"</td>";
                             ans = ans + "<td>"+ "Project Name"+"</td>";
                             ans = ans + "<td>"+ "description" +"</td>";
                            
                              ans = ans + "<td>"+ "Programming Languages" +"</td>";
                               ans = ans + "<td>"+ "Frameworks" +"</td>";
                              ans = ans + "<td>"+ "Time Frame" +"</td>";
                               ans = ans + "<td>"+ "Make an Offer" +"</td>";
                              ans = ans + "</tr>";
                         
                         for(var i=0;i<arr.length;i++)
                         {
                             var singleobj = arr[i];
                             
                             ans = ans + "<tr>";
                                ans = ans + "<td>"+ singleobj["emailid"] +"</td>";
                                ans = ans + "<td>"+ singleobj["projectname"] +"</td>";
                                ans = ans + "<td>"+ singleobj["discreption"] +"</td>";
                                ans = ans + "<td>"+ singleobj["planguages"] +"</td>";
                                  ans = ans + "<td>"+ singleobj["frameworks"] +"</td>";
                               ans = ans + "<td>"+ singleobj["timeframe"] +"</td>";
                                ans = ans + "<td>"+"<input type=\"button\" value=\"Select\" onclick=\"Delete("+singleobj["emailid"]+")\"/>"+"</td>";
                          
                               ans = ans + "</tr>";
                               }
                         
                               ans = ans +"</table>";
                            }
                         
                         document.getElementById("d1").innerHTML = ans;
                          $('#searchJobsByUsernameModal').modal('hide');
                        
                         }
                         //  Remove ""
                         
                    }
                };
                
                // Step 2
                xhttp.open("GET", "./freelancer_search_username?usernameKeyword="+usernameKeyword, true);    // true --> async request
                
                // Step 3
                xhttp.send();
           }
          
           
         
}

function searchJobsByProgrammingLanguage(){
    
    $('#searchJobsByProgrammingLanguageModal').modal('show');
}
function searchJobsByProgrammingLanguage1(){
      plKeyword=document.getElementById("plSearch").value;
           
           
           if(plKeyword=="")
           {
               document.getElementById("d1").innerHTML="Text field is empty"; 
           }
           else{
    
               //8888
               
               
                      var xhttp = new XMLHttpRequest();
                      userSearchForm
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                         // JSON as String 
                         var res = xhttp.responseText.trim();
//                         alert(res);
                         if(res.length<14){
                          
                             alert("no entry found");
                         }
                      
                      
                       
                         else{
                              var mainobj = JSON.parse(res);
                         
                         console.log(mainobj);
                         
                         // Extract ans[] from mainobj
                          arr = mainobj["ans"];
                         
                         console.log(arr);
                         
                         
                         var ans="";
                         
                         
                         ans=ans+"<table style=\"color:white\" class=\"table table-bordered\">";
                             ans = ans + "<tr>";
                             ans = ans + "<td>"+ "Project Owner" +"</td>";
                             ans = ans + "<td>"+ "Project Name"+"</td>";
                             ans = ans + "<td>"+ "description" +"</td>";
                            
                              ans = ans + "<td>"+ "Programming Languages" +"</td>";
                               ans = ans + "<td>"+ "Frameworks" +"</td>";
                              ans = ans + "<td>"+ "Time Frame" +"</td>";
                               ans = ans + "<td>"+ "Make an Offer" +"</td>";
                              ans = ans + "</tr>";
                        for(var i=0;i<arr.length;i++)
                         {
                             let plFlag=false;
//                             ans=ans+"<table style=\"color:white\" class=\"table table-bordered\">";
//                             ans = ans + "<tr>";
//                             ans = ans + "<td>"+ "Project Owner" +"</td>";
//                             ans = ans + "<td>"+ "Project Name"+"</td>";
//                             ans = ans + "<td>"+ "description" +"</td>";
//                            
//                              ans = ans + "<td>"+ "Programming Languages" +"</td>";
//                               ans = ans + "<td>"+ "Frameworks" +"</td>";
//                              ans = ans + "<td>"+ "Time Frame" +"</td>";
//                               ans = ans + "<td>"+ "Make an Offer" +"</td>";
//                              ans = ans + "</tr>";
                         
                         
                             var singleobj = arr[i];
                             let programingLanguage=singleobj["planguages"];
//                            alert(programingLanguage);
                            let token = programingLanguage.split(",");
                             for (let j = 0; j<token.length; j++)
                             {
                                 if(plKeyword.match(token[j])){
                                     plFlag=true;
                                     break;
                                 }
                             }  
                             if(plFlag==true){
                                        
                              
                             
                             ans = ans + "<tr>";
                                ans = ans + "<td>"+ singleobj["emailid"] +"</td>";
                                ans = ans + "<td>"+ singleobj["projectname"] +"</td>";
                                ans = ans + "<td>"+ singleobj["discreption"] +"</td>";
                                ans = ans + "<td>"+ singleobj["planguages"] +"</td>";
                                  ans = ans + "<td>"+ singleobj["frameworks"] +"</td>";
                               ans = ans + "<td>"+ singleobj["timeframe"] +"</td>";
                                ans = ans + "<td>"+"<input type=\"button\" value=\"Select\" onclick=\"Delete("+singleobj["emailid"]+")\"/>"+"</td>";
                          
                               ans = ans + "</tr>";
                              
                             }
                               
                            }
                          ans = ans +"</table>";

                         document.getElementById("d1").innerHTML = ans;
                          $('#searchJobsByProgrammingLanguageModal').modal('hide');
                        
                
                         
                    
                }
            }
        };
                // Step 2
                xhttp.open("GET", "./freelancer_search_framework?plKeyword="+plKeyword, true);    // true --> async request
                
                // Step 3
                xhttp.send();
            }}
      
           
function searchJobsByFramework(){
  $('#searchJobsByFrontEndModal').modal('show');
    
}
function searchJobsByFramework1(){

   frameworkKeyword=document.getElementById("frameworkSearch").value;
           
           
           if(frameworkKeyword=="")
           {
               document.getElementById("d1").innerHTML="Text field is empty"; 
           }
           else{
    
               //8888
               
               
                      var xhttp = new XMLHttpRequest();
                      
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                         // JSON as String 
                         var res = xhttp.responseText.trim();
//                         alert(res);
                         if(res.length<14){
                          
                             alert("no entry found");
                         }
                      
                      
                       
                         else{
                              var mainobj = JSON.parse(res);
                         
                         console.log(mainobj);
                         
                         // Extract ans[] from mainobj
                          arr = mainobj["ans"];
                         
                         console.log(arr);
                         
                         
                         var ans="";
                         
                         
                         ans=ans+"<table style=\"color:white\" class=\"table table-bordered\">";
                             ans = ans + "<tr>";
                             ans = ans + "<td>"+ "Project Owner" +"</td>";
                             ans = ans + "<td>"+ "Project Name"+"</td>";
                             ans = ans + "<td>"+ "description" +"</td>";
                            
                              ans = ans + "<td>"+ "Programming Languages" +"</td>";
                               ans = ans + "<td>"+ "Frameworks" +"</td>";
                              ans = ans + "<td>"+ "Time Frame" +"</td>";
                               ans = ans + "<td>"+ "Make an Offer" +"</td>";
                              ans = ans + "</tr>";
                        for(var i=0;i<arr.length;i++)
                         {
                             let frameworkFlag=false;
//                             ans=ans+"<table style=\"color:white\" class=\"table table-bordered\">";
//                             ans = ans + "<tr>";
//                             ans = ans + "<td>"+ "Project Owner" +"</td>";
//                             ans = ans + "<td>"+ "Project Name"+"</td>";
//                             ans = ans + "<td>"+ "description" +"</td>";
//                            
//                              ans = ans + "<td>"+ "Programming Languages" +"</td>";
//                               ans = ans + "<td>"+ "Frameworks" +"</td>";
//                              ans = ans + "<td>"+ "Time Frame" +"</td>";
//                               ans = ans + "<td>"+ "Make an Offer" +"</td>";
//                              ans = ans + "</tr>";
                         
                         
                             var singleobj = arr[i];
                             let framework=singleobj["frameworks"];
                             
//                            alert(programingLanguage);
                            let token = framework.split(",");
                             for (let j = 0; j<token.length; j++)
                             {
                                 if(frameworkKeyword.match(token[j])){
                                     frameworkFlag=true;
                                     break;
                                 }
                             }  
                             if(frameworkFlag==true){
                                        
                              
                             
                             ans = ans + "<tr>";
                                ans = ans + "<td>"+ singleobj["emailid"] +"</td>";
                                ans = ans + "<td>"+ singleobj["projectname"] +"</td>";
                                ans = ans + "<td>"+ singleobj["discreption"] +"</td>";
                                ans = ans + "<td>"+ singleobj["planguages"] +"</td>";
                                  ans = ans + "<td>"+ singleobj["frameworks"] +"</td>";
                               ans = ans + "<td>"+ singleobj["timeframe"] +"</td>";
                                ans = ans + "<td>"+"<input type=\"button\" value=\"Select\" onclick=\"Delete("+singleobj["emailid"]+")\"/>"+"</td>";
                          
                               ans = ans + "</tr>";
                              
                             }
                               
                            }
                          ans = ans +"</table>";
                             
                             
                            
                         
                         document.getElementById("d1").innerHTML = ans;
                          $('#searchJobsByFrontEndModal').modal('hide');
                        
                        
//                          {
//                            var mainobj = JSON.parse(res);
//                         
//                         console.log(mainobj);
//                         
//                         // Extract ans[] from mainobj
//                          arr = mainobj["ans"];
//                         
//                         console.log(arr);
//                         
//                         
//                         var ans="";
//                         
//                        }
                         //  Remove ""
                         
                    
                }
            }
        };
                // Step 2
                xhttp.open("GET", "./freelancer_search_framework", true);    // true --> async request
                
                // Step 3
                xhttp.send();
            }
}