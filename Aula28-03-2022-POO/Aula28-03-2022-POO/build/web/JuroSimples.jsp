<%-- 
    Document   : JuroSimples
    Created on : 28 de mar. de 2022, 15:20:29
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        
        <title>Juro Simples</title>   

    <body>
        <%@include file="WEB-INF/jspf/newjsp.jspf"%>
        
        <form>
            <label> Valor Principal:</label><br>
            <input name="n1" type="number" placeholder="Valor Principal" value="2000"><br>
            <label>Taxa:</label><br>
            <input name="n2" type="number" placeholder="Juros" value="0.2"><br>
            <label> Meses:</label><br>
            <input name="n3" type="number" placeholder="Taxa" value="2"><br><br>
            <input type="submit" value="Calcular">
        </form>
<%
 String error = null;         
            float n1 = 0 , n2 = 0;
            int n3 = 0;
            
            try{
            String p1 = request.getParameter("n1");
            String p2 = request.getParameter("n2"); 
            String p3 = request.getParameter("n3"); 
            n1 = Float.parseFloat(p1);
            n2 = Float.parseFloat(p2);
            n3 = Integer.parseInt(p3);
            
                    }catch(Exception e){
                    error = e.getMessage();
                    }
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JuroSimplesServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<div><a href='index.jsp'>Voltar</a></div>");
            out.println("<h1>Juros Simples</h1>");
            
            if(error != null){
             out.println("<span style = 'color: red'>Erro ao tentar ler parametros</span>");
            }else {
            out.println("<div>");
            out.println(String.format ("<p> Valor Futuro %.0f</p>",n1 *(1+(n2/10)* n3)));
            out.println("</div>");
            }
%>

    </body>
</html>
