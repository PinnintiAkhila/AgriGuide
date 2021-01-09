<%-- 
    Document   : fertilizers
    Created on : Nov 1, 2018, 4:15:31 PM
    Author     : RGUKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
           .buy{
    background-color:green; /* Green */
    border: none;
    color: white;
    padding: 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 6px;
}
        *{
            box-sizing:border-box;
        }
        .column{
            float:left;
            width:33.33%;
            padding:5px;
        }
        .row{
            
            
            display:flex;
        }
        #logo img{
            margin-left:100px;
            margin-top: 0px;               
        }
         body{
            background-image:url("bbb.PNG");
            background-size: cover;
        }
       
      </style>
    </head>
    <body>
         <center><h1>FERTILIZERS INFORMATION</h1></center>
      <br>
        <div class="row">
            <form action="buy.jsp" method="post">
            <div class="coloumn" id="p1">      
            <p class="logo"> <img src="gromor.PNG"  style="width:70%"  hspace="40"></img><br></p>
            <center><label for="hybrid">GROMOR</label>
            <select>
            <option value="1"><b>50kgs</b></option></select><br>
            <input type="hidden" name="p1"  value="750" />
            <label for="cost" style="color:green;"><b>Rs:750/-</b></label>
            <label for="cost" style="color:red;"><b><strike>Rs:780/-</strike></b></label><br><br>
            <button class="buy">Buy now</button>
            </center>
            </div>
            </form>          
            <br><br>
            <form action="buy.jsp" method="post">
            <div class="coloumn" id="p2">      
            <p class="logo"><img src="nagarjuna.PNG"  style="width:70%" hspace="40"></img><br></p>
            <center><label for="hybrid">NAGARJUNA</label>
            <select>
            <option value="1"><b>50kgs</b></option> </select><br>
            <input type="hidden" name="p2"  value="560" />
            <label for="cost" style="color:green;"><b>Rs:560/-</b></label>
            <label for="cost" style="color:red;"><b><strike>Rs:570/-</strike></b></label><br><br>
             <button class="buy">Buy now</button>
            </center>
            </div>
            </form>
            <form action="buy.jsp" method="post">
           <div class="coloumn" id="p3">      
           <p class="logo"><img src="potash.PNG"  style="width:70%" hspace="40"></img><br></p>
            <center><label for="hybrid">POTASH</label>
            <select>
            <option value="1"><b>50kgs</b></option> </select><br>
            <input type="hidden" name="p3" value="600" />
            <label for="cost" style="color:green;"><b>Rs:600/-</b></label>
            <label for="cost" style="color:red;"><b><strike>Rs:620/-</strike></b></label><br><br>
             <button class="buy">Buy now</button>
            </center>
            </div>
            </form>
            <form action="buy.jsp" method="post">
            <div class="coloumn" id="p4">  
            <p class="logo"><a href=" https://acti-sol.ca/en/engrais/sprinkle-on-organic-fertilizer-for-vegetables-and-fine-herbs-4-2-8/."><img src="actisol.PNG"  style="width:65%" hspace="40"></img></a><br></p>
            <center><label for="hybrid">LEGUMES ENPOTS</label>
            <select>
            <option value="1"><b>10 litres</b></option> </select><br>
            <input type="hidden" name="p4"  value="200" />
            <label for="cost" style="color:green;"><b>Rs:200/-</b></label>
            <label for="cost" style="color:red;"><b><strike>Rs:220/-</strike></b></label><br><br>
             <button class="buy">Buy now</button>            </center>
            </div>
            </form>
        </div>
            
        <br><br>
        <form action="buy.jsp" method="post">
            <div class="row">
                <div class="coloumn" id="p5">    
                <p class="logo"><img src="spic.PNG"  style="width:80%" hspace="40"></img><br></p>
                <center><label for="hybrid">SPIC</label>
                <select>
                <option value="1"><b>50kgs</b></option> </select><br>
                <input type="hidden" name="p5"  value="640" />
                <label for="cost" style="color:green;"><b>Rs:640/-</b></label>
                <label for="cost" style="color:red;"><b><strike>Rs:645/-</strike></b></label><br><br>
                 <button class="buy">Buy now</button>
                </center>
                
                </div>
        </form>
        <form action="buy.jsp" method="post">
                <div class="coloumn">      
                <p class="logo"><img src="zinc.PNG"  style="width:80%" hspace="70"></img><br></p>
                <center><label for="hybrid">ZINC</label>
                <select>
                <option value="1"><b>50kgs</b></option> </select><br>
                <input type="hidden" name="p6" id="pp1" value="650" />
                <label for="cost" style="color:green;"><b>Rs:650/-</b></label>
                <label for="cost" style="color:red;"><b><strike>Rs:670/-</strike></b></label><br><br>
                <button class="buy">Buy now</button>
                </div>
        </form>
        <form action="buy.jsp" method="post">
                <div class="coloumn">      
                <p class="logo"><img src="minis.PNG"  style="width:70%" hspace="90"></img><br></p>
                <center><label for="hybrid"IRON >MINIS</label>
                <select>
                <option value="1"><b>3kgs</b></option> </select><br>
                <input type="hidden" name="p7"  value="100" />
                <label for="cost" style="color:green;"><b>Rs:100/-</b></label>
                <label for="cost" style="color:red;"><b><strike>Rs:110/-</strike></b></label><br><br>
                <button class="buy">Buy now</button>
                </div>
        </form>
        <form action="buy.jsp" method="post">
                <div class="coloumn">      
                <p class="logo"><img src="organic.PNG"  style="width:50%" hspace="70"></img><br></p>
                <center><label for="hybrid">ORGANIC PLUS</label>
                <select>
                <option value="1"><b>2kgs</b></option> </select><br>
                <input type="hidden" name="p8" value="50" />
                <label for="cost" style="color:green;"><b>Rs:50/-</b></label>
                <label for="cost" style="color:red;"><b><strike>Rs:60/-</strike></b></label><br><br>
                 <button class="buy">Buy now</button></center>
                </div>
        </form>
         </div>
        
        <br><br>
        <div class="row">
        <form action="buy.jsp" method="post">
            <div class="coloumn">      
           <img id="logo" src="npk.PNG"  style="width:70%" hspace="30"></img><br><br>
            <center><label for="hybrid">N:P:K</label>
            <select>
            <option value="1"><b>50kgs</b></option> </select><br>
            <input type="hidden" name="p9"  value="750" />
            <label for="cost" style="color:green;"><b>Rs:750/-</b></label>
            <label for="cost" style="color:red;"><b><strike>Rs:780/-</strike></b></label><br><br>
             <button class="buy">Buy now</button></center>
            </div>
        </form>
        <form action="buy.jsp" method="post">
            <div class="coloumn">      
            <img src="chemi.PNG"  style="width:70%" hspace="30"></img><br><br>
            <center><label for="hybrid">CHEMI PURE GREEN</label>
            <select>
            <option value="1"><b>5kgs</b></option> </select><br>
            <input type="hidden" name="p10"  value="250" />
            <label for="cost" style="color:green;"><b>Rs:250/-</b></label>
            <label for="cost" style="color:red;"><b><strike>Rs:255/-</strike></b></label><br><br>
             <button class="buy">Buy now</button></center>
            </div>
        </form>
        <form action="buy.jsp" method="post">
            <div class="coloumn">      
            <img src="singles.PNG"  style="width:70%" hspace="30"></img<br><br>
            <center><label for="hybrid">SINGLES</label>
            <select>
            <option value="1"><b>5kgs</b></option> </select><br>
            <input type="hidden" name="p11"  value="140" />
            <label for="cost" style="color:green;"><b>Rs:140/-</b></label>
            <label for="cost" style="color:red;"><b><strike>Rs:150/-</strike></b></label><br><br>
            <a href="buy.jsp"><button class="buy">Buy now</button></a></center>
            </div>
        </form>
        <form action="buy.jsp" method="post">
            <div class="coloumn">      
            <center><img src="farms.PNG"  style="width:80%" hspace="30"></img><br><br>
            <label for="hybrid">COTTAGE FARMS</label>
            <select>
            <option value="1"><b>5 litres</b></option> </select><br>
            <input type="hidden" name="p12" value="650" />
            <label for="cost" style="color:green;"><b>Rs:650/-</b></label>
            <label for="cost" style="color:red;"><b><strike>Rs:665/-</strike></b></label><br><br>
             <button class="buy">Buy now</button></center>
            </div>
        </form>   
        </div>
        
        <br><br>
        <div class="row">
            <form action="buy.jsp" method="post">
            <div class="coloumn">        
            <p class="logo"><img src="gold.PNG"  style="width:60%" hspace="50"></img><br></p>
            <center><label for="hybrid">BLUE GOLD</label>
            <select>
            <option value="1"><b>1 litre</b></option> </select><br>
            <input type="hidden" name="p13"  value="100" />
            <label for="cost" style="color:green;"><b>Rs:100/-</b></label>
            <label for="cost" style="color:red;"><b><strike>Rs:105/-</strike></b></label><br><br>
             <button class="buy">Buy now</button></center>
            </div>
            </form>     
            <form action="buy.jsp" method="post">    
            <div class="coloumn">      
            <center><p class="logo"><img src="garden.PNG"  style="width:45%" hspace="40"></img><br></p>
            <label for="hybrid">GARDEN SOIL</label>
            <select>
            <option value="1"><b>5kgs</b></option> </select><br>
            <input type="hidden" name="p14" value="250" />
            <label for="cost" style="color:green;"><b>Rs:250/-</b></label>
            <label for="cost" style="color:red;"><b><strike>Rs:255/-</strike></b></label><br><br>
            <button class="buy">Buy now</button></center>
            </div>
            </form>
            <form action="buy.jsp" method="post">
            <div class="coloumn"> 
             <center>
            <p class="logo"><img src="plant.PNG"  style="width:55%" ></img><br></p>
            <label for="hybrid">PLANT FOOD</label>
            <select>
            <option value="1"><b>5kgs</b></option> </select><br>
            <input type="hidden" name="p15" value="220" />
            <label for="cost" style="color:green;"><b>Rs:220/-</b></label>
            <label for="cost" style="color:red;"><b><strike>Rs:230/-</strike></b></label><br><br>
            <button class="buy">Buy now</button>
            </center>
            </div>
            </form>
            <form action="buy.jsp" method="post">
            
            <div class="coloumn">    
            <p class="logo"><img src="plantonics.PNG"  style="width:80%" ></img><br></p>
            <center><label for="hybrid">PLANTONICS</label>
            <select>
            <option value="1"><b>1 litre</b></option> </select><br>
            <input type="hidden" name="p16"  value="80" />
            <label for="cost" style="color:green;"><b>Rs:80/-</b></label>
            <label for="cost" style="color:red;"><b><strike>Rs:90/-</strike></b></label><br><br>
             <button class="buy">Buy now</button>
            </center>
            </div>
            </form> 
           
        </div>
         
    </body>
</html>
