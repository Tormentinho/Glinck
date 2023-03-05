
<%@page language="java" import="java.sql.*" %>

<%
String vusuario = request.getParameter("txtuser2") ;
String vsenha = request.getParameter("txtsenha2") ;


String banco = "glinck" ;
String endereco = "jdbc:mysql://localhost:3306/" + banco ;
String usuario = "root" ;
String senha = "" ;

String driver = "com.mysql.jdbc.Driver" ;

Class.forName( driver );

Connection conexao ;

conexao = DriverManager.getConnection(endereco,usuario,senha) ;

String sql = "insert into usuarios (usuario,senha) values (?,?)" ;

PreparedStatement stm = conexao.prepareStatement(sql) ;
stm.setString(1,vusuario) ;
stm.setString(2,vsenha) ;


out.print("DADOS CADASTRADOS!!!");
out.print("<br><br>") ;
out.print("<a href='Index.html'>VOLTAR</a>");

%>
