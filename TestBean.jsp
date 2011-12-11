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
