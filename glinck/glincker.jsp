<%@page language="java" import="java.sql.*" %>

<%
String vnome2 = request.getParameter("txtnome4") ;
String vra = request.getParameter("ra") ;
String vtel2 = request.getParameter("telefone2")  ;


String banco = "glinck" ;
String endereco = "jdbc:mysql://localhost:3306/" + banco ;
String usuario = "root" ;
String senha = "" ;

String driver = "com.mysql.jdbc.Driver" ;

Class.forName( driver );

Connection conexao ;

conexao = DriverManager.getConnection(endereco,usuario,senha) ;

String sql = "insert into glincker (nome,r_a,telefone) values (?,?,?)" ;

PreparedStatement stm = conexao.prepareStatement(sql);
stm.setString(1,vnome2) ;
stm.setString(2,vra) ;
stm.setString(3,vtel2) ;

stm.execute() ;

response.sendRedirect("cadastre.html");
%>