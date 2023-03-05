<%@page language="java" import="java.sql.*" %>

<%
String vnome3 = request.getParameter("txtnome3") ;
String vcpf = request.getParameter("cpfcnpj") ;
String vtel3 = request.getParameter("telefone1")  ;


String banco = "glinck" ;
String endereco = "jdbc:mysql://localhost:3306/" + banco ;
String usuario = "root" ;
String senha = "" ;

String driver = "com.mysql.jdbc.Driver" ;

Class.forName( driver );

Connection conexao ;

conexao = DriverManager.getConnection(endereco,usuario,senha) ;

String sql = "insert into anjo (nome_razao_social,cpf_cnpj ,telefone) values (?,?,?)" ;

PreparedStatement stm = conexao.prepareStatement(sql);
stm.setString(1,vnome3) ;
stm.setString(2,vcpf) ;
stm.setString(3,vtel3) ;

stm.execute() ;

response.sendRedirect("cadastre.html");
%>