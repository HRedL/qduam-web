<%@ page contentType="text/html; charset=gb2312" import="java.sql.*"%>
<script type="text/javascript">

var yxs=new Array();
var zys=new Array();
var i=1;
function st(){  
var yx=document.getElementById("yx");  
for(var i=0;i<yxs.length;i++){  
yx.options[i]=yxs[i];  
}  
}
<%
Connection con;
Statement sql,sql1;
try{Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");}
catch(ClassNotFoundException e){}
try{
String uri="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=shetuan";
con=DriverManager.getConnection(uri,"sa","sd");
sql=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
sql1=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
ResultSet rs=sql.executeQuery("select distinct Ժϵ from project"); 
%>
yxs[0]=new Option("--��ѡ��Ժϵ--","");
zys[0]=new Option("--��ѡ��רҵ--","");
<% while(rs.next()){ %>
yxs[i]=new Option("<%= rs.getString("Ժϵ")%>",'<%= rs.getString("Ժϵ")%>');
i++;<%}%>
for(var k=0;k<yxs.length;k++){  
zys[k]=new Array();}
i=1;
<%rs.beforeFirst();
while(rs.next()){
ResultSet rs1=sql1.executeQuery("select רҵ from project where Ժϵ='"+rs.getString("Ժϵ")+"'");
%>
var j=0;
<%while(rs1.next()){%>
zys[i][j]=new Option("<%=rs1.getString("רҵ")%>",'<%=rs1.getString("רҵ")%>');
j++;<%}%>
i++;<%}%>
<%
} catch(Exception ex) {} %>
function change(obj){  
var zy=document.getElementById("zy");  
zy.options.length=0;  
var index=yx.selectedIndex;  
for(var x in zys[index]){  
zy.options[x]=zys[index][x] ; 
}  
}  
</script>
