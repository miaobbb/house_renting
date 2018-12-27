<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="header.jsp"%>
</head>
<body>
<div class="container">
	<div class="row-fluid">
		<div class="span12">
			<form action="register.do" method="post" id="" onsubmit="return check()">
				<fieldset>
					 <legend>欢迎注册</legend>
					  <label>账号</label>
					  <input type="text" name="name" placeholder="用户名" /><br>
					  <label>密码</label>
					  <input type="password" placeholder="密码" name='password'><br>
					  <label>确认密码</label>
					  <input type="repassword" placeholder="密码" name='repassword'><br>
					  <label>真实姓名</label>
					  <input type="text" name="realname" placeholder="真实姓名"><br>
					  <label>性别</label>
					  <input type="radio" value="男" name="gender" />男 &nbsp;&nbsp;&nbsp;
					  <input type="radio" value="女" name="gender" />女<br /><br /> 
					  <label>电话号码</label>
					  <input type="text" name="uid" placeholder="电话"><br>
					  <label>QQ</label>
					  <input type="text" name="qq" placeholder="QQ号码" /><br>
					  <label>微信</label>
					  <input type="text" name="Wechat" placeholder="微信" /><br /><br /> 
					  <button type="submit" class="btn">提交</button>
				</fieldset>
			</form>
		</div>
	</div>
</div>
</body>
</html>