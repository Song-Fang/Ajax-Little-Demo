<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	 
	<script type="text/javascript" src = "js/ajaxUtil.js"></script>
	<script type="text/javascript">
		/* function myGetData(method,url,data,async) {
				//创建ajax引擎对象
				var ajax = getAjax();
				
				//复写onreadyStateChange方法

				ajax.onreadystatechange = function() {
					//判断ajax状态码
					if (ajax.readyState == 4) {
						//判断响应状态码
						if (ajax.status == 200) {
							//获取响应数据
							var result = ajax.responseText;
							eval("var u ="+result);
							
							//处理响应数据
								//获取表格对象
							var ta = document.getElementById("ta");
								//插入新的行
								var tr = ta.insertRow(1);
								var cell0 = tr.insertCell(0);
								cell0.innerHTML = u.uid;
								
								var cell1 = tr.insertCell(1);
								cell1.innerHTML = u.uname;
								
								var cell2 = tr.insertCell(2);
								cell2.innerHTML = u.price;
								
								var cell3 = tr.insertCell(3);
								cell3.innerHTML = u.loc;
								
								var cell4 = tr.insertCell(4);
								cell4.innerHTML = u.desc;

						}
					}
				}

				//发送请求
				
				if(method=="get"){
				//三目运算符
				ajax.open("get", url+(data==null?"":"?"+data),async);
				ajax.send(null);
				}else if(method=="post"){
					ajax.open("post",url,async);
					ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
					ajax.send(data);
				}
		}
		
		
		function getAjax(){
			var ajax;
			if (window.XMLHttpRequest) {
				ajax = new XMLHttpRequest();
			} else if (window.ActiveXObject) {
				ajax = new ActiveXObject("Msxml2.XMLHTTP");
			}
			return ajax;
		} */
		
		
		
		/* function getData(){
			//获取用户请求信息
			var name = document.getElementById("uname").value;
			var data = "name="+name;
				
			if (name != null&&name!="") {
				myGetData("get","user",data);
			}else {
				alert("请输入所查找英雄名称");
			}
		} */
		
		function getData(){
			var name = document.getElementById("uname").value;
			var data = "name="+name;
			if (name != null&&name!="") {
				myGetData("get","user",data,function(ajax){
					// 获取响应数据
					var result = ajax.responseText;
					alert(result);
				});
			}else {
				alert("请输入所查找英雄名称");
			}
		}
		
	</script>

	<h3>欢迎访问英雄商店</h3>
	<hr>
	英雄名称：
	<input type="text" name="uname" value="" id="uname" />
	<input type="button" value="搜索" onclick="getData()" />
	<hr>

	<table border="1px" id="ta">
		<tr>
			<td>编号</td>
			<td>名称</td>
			<td>价格</td>
			<td>位置</td>
			<td>描述</td>
		</tr>
	</table>

</body>
</html>