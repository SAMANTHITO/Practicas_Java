<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar empleado</title>
    </head>
    <body>
        <%
                Connection con = null;
                Statement st = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=root");
                    st = con.createStatement();
                    st.executeUpdate("delete from empledos where id='" + request.getParameter("id") + "';");
                    request.getRequestDispatcher("index.jsp").forward(request, response);

                } catch (Exception e) {
                    out.println("error " + e);
                }
        %>
    </body>
</html>
