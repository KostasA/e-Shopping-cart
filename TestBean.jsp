<%-- 
    Document   : TestBean
    Created on : Dec 9, 2011, 9:48:16 PM
    Author     : konanast
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>e-Shopping Cart</title>
    </head>
    <body align="center">
        <h1>e-Shopping Cart</h1>
        <jsp:useBean id="cafe" class="foo.Cafe" scope="application" />
        <jsp:setProperty name="cafe" property="cafequa"/>
        <jsp:useBean id="sugar" class="foo.Sugar" scope="application" />
        <jsp:setProperty name="sugar" property="sugarqua"/>
        <jsp:useBean id="water" class="foo.Water" scope="application" />
        <jsp:setProperty name="water" property="waterqua"/>
        
        <!--tis kathetes grammes tis vazw gia na diaxwrisw to response text pou stelnei to ajax()
        kai na xeiristw kalitera ta apotelesmata -->
        
           
        |${cafe.cafequa * initParam.cafeprice} 
        |${sugar.sugarqua * initParam.sugarprice}
        |${water.waterqua * initParam.waterprice}
        |${cafe.cafequa * initParam.cafeprice + sugar.sugarqua * initParam.sugarprice + water.waterqua * initParam.waterprice }
        |
        
    </body>
</html>


<!-- apo edw kai katw o kwdikas einai me scriptlet gia thn dimiourgia twn cookies
     giati den vrika tropo na ta dimiourghsw mono me EL -->
       <%
                    String cafeprice = application.getInitParameter("cafeprice");
                    Double cafepricedouble = Double.parseDouble(cafeprice);
                    String totalcafeprice = Double.toString(cafe.getCafequa()*cafepricedouble);
                    Cookie cafepricecookie = new Cookie("cafeprice",totalcafeprice);
                    cafepricecookie.setMaxAge(60*60*60*60);
                    response.addCookie(cafepricecookie);
                    
                    String sugarprice = application.getInitParameter("sugarprice");
                    Double sugarpricedouble = Double.parseDouble(sugarprice);
                    String totalsugarprice = Double.toString(sugar.getSugarqua()*sugarpricedouble);
                    Cookie sugarpricecookie = new Cookie("sugarprice",totalsugarprice);
                    sugarpricecookie.setMaxAge(60*60*60*60);
                    response.addCookie(sugarpricecookie);
                    
                    String waterprice = application.getInitParameter("waterprice");
                    Double waterpricedouble = Double.parseDouble(waterprice);
                    String totalwaterprice = Double.toString(water.getWaterqua()*waterpricedouble);
                    Cookie waterpricecookie = new Cookie("waterprice",totalwaterprice);
                    waterpricecookie.setMaxAge(60*60*60*60);
                    response.addCookie(waterpricecookie);
                    
                    double total;
                    total = cafe.getCafequa()*cafepricedouble + sugar.getSugarqua()*sugarpricedouble + water.getWaterqua()*waterpricedouble;
                    String totalprice = Double.toString(total);
                    Cookie totalpricecookie = new Cookie("totalprice",totalprice);
                    totalpricecookie.setMaxAge(60*60*60*60);
                    response.addCookie(totalpricecookie);
        %>
