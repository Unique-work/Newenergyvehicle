<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<%@ include file="Head.jsp"%>
<title>账号设置</title>
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="resources/css/style.css" />
<link rel="stylesheet" href="resources/css/page.css" />
<link rel="stylesheet" href="resources/css/sweetalert.css" />
</head>

<body style="text-align: center;">
	<div class="container-fluid">
		<div class="row">

			<div class="col-md-12">
				<div>
					<div class="list-group" style="margin: 0 auto; width: 800px;">
						<a href="#" class="list-group-item active"
							style="background-color: #196BA2;">
							<h4 class="list-group-item-heading">账号设置</h4>
						</a>
						<div class="list-group-item"
							style="background-color: #145885; border: 0px solid;">
							<div class="row">
								<div class="col-md-6"
									style="background-color: #124E76; width: 250px; height: 360px; margin-top: 20px;">
									<div class="img-circle"
										style="margin: 0 auto; padding-top: 20px; background-color: #124E76; width: 150px; height: 150px;">

										<img src="" class="img-circle"
											border="0" height="150" id="pic" width="150" />
									</div>
									<button type="button"
										style="background-color: #196BA2; color: #F0F8FD; border: 0px; margin-left: 70px; margin-top: 40px; height: 30px;"
										class="btn btn-default">上传头像</button>
									<input id="fileToUploadLink" type="file"
										style="cursor: pointer; opacity: 0; margin-left: 70px; margin-top: -25px; color: F0F8FD;"
										size="25" name="fileToUploadLink" />
								</div>
								<div class="col-md-6"
									style="background-color: #124E76; float: right; margin-top: 20px; width: 500px; height: 360px;">
									<!-- <div class="form-group" style="margin-top:20px;">
			        <label class="form-label" style="color:F0F8FD;">用户名：</label>
			        <input type="text" id="username" class="form-control" style="width:300px;margin-left:50px;">
			    </div> -->

									<div class="form-group" style="margin-top: 20px;">
										<label class="form-label" style="color: F0F8FD;">昵称：</label> <input
											type="text" id="nickname" class="form-control"
											style="width: 300px; margin-left: 50px;"> <input
											type="hidden" id="userid" >
									</div>
									<div class="form-group" style="margin-top: 20px;">
										<label class="form-label" style="color: F0F8FD;">重置密码：</label>
										<input type="password" id="password" class="form-control"
											style="width: 300px; margin-left: 50px;" placeholder="不输入请留空">
									</div>
									<div class="form-group">
										<label class="form-label"
											style="margin-top: 5px; color: F0F8FD;">出生年月：</label>
										<div class="form-group">
											<select class="form-control" id="year"
												style="margin-left: 50px; width: 150px;">
												<option value="2017">2017</option>
												<option value="2016">2016</option>
												<option value="2015">2015</option>
												<option value="2014">2014</option>
												<option value="2013">2013</option>
												<option value="2012">2012</option>
												<option value="2011">2011</option>
												<option value="2010">2010</option>
												<option value="2009">2009</option>
												<option value="2008">2008</option>
												<option value="2007">2007</option>
												<option value="2006">2006</option>
												<option value="2005">2005</option>
												<option value="2004">2004</option>
												<option value="2003">2003</option>
												<option value="2002">2002</option>
												<option value="2001">2001</option>
												<option value="2000">2000</option>
												<option value="1999">1999</option>
												<option value="1998">1998</option>
												<option value="1997">1997</option>
												<option value="1996">1996</option>
												<option value="1995">1995</option>
												<option value="1994">1994</option>
												<option value="1993">1993</option>
												<option value="1992">1992</option>
												<option value="1991">1991</option>
												<option value="1990">1990</option>
												<option value="1989">1989</option>
												<option value="1988">1988</option>
												<option value="1987">1987</option>
												<option value="1986">1986</option>
												<option value="1985">1985</option>
												<option value="1984">1984</option>
												<option value="1983">1983</option>
												<option value="1982">1982</option>
												<option value="1981">1981</option>
												<option value="1980">1980</option>
												<option value="1979">1979</option>
												<option value="1978">1978</option>
												<option value="1977">1977</option>
												<option value="1976">1976</option>
												<option value="1975">1975</option>
												<option value="1974">1974</option>
												<option value="1973">1973</option>
												<option value="1972">1972</option>
												<option value="1971">1971</option>
												<option value="1970">1970</option>
												<option value="1969">1969</option>
												<option value="1968">1968</option>
												<option value="1967">1967</option>
												<option value="1966">1966</option>
												<option value="1965">1965</option>
												<option value="1964">1964</option>
												<option value="1963">1963</option>
												<option value="1962">1962</option>
												<option value="1961">1961</option>
												<option value="1960">1960</option>
												<option value="1959">1959</option>
												<option value="1958">1958</option>
												<option value="1957">1957</option>
												<option value="1956">1956</option>
												<option value="1955">1955</option>
												<option value="1954">1954</option>
												<option value="1953">1953</option>
												<option value="1952">1952</option>
												<option value="1951">1951</option>
												<option value="1950">1950</option>
												<option value="1949">1949</option>
												<option value="1948">1948</option>
												<option value="1947">1947</option>
												<option value="1946">1946</option>
												<option value="1945">1945</option>
												<option value="1944">1944</option>
												<option value="1943">1943</option>
												<option value="1942">1942</option>
												<option value="1941">1941</option>
												<option value="1940">1940</option>
												<option value="1939">1939</option>
												<option value="1938">1938</option>
												<option value="1937">1937</option>
												<option value="1936">1936</option>
												<option value="1935">1935</option>
												<option value="1934">1934</option>
												<option value="1933">1933</option>
												<option value="1932">1932</option>
												<option value="1931">1931</option>
												<option value="1930">1930</option>
												<option value="1929">1929</option>
												<option value="1928">1928</option>
												<option value="1927">1927</option>
												<option value="1926">1926</option>
												<option value="1925">1925</option>
												<option value="1924">1924</option>
												<option value="1923">1923</option>
												<option value="1922">1922</option>
												<option value="1921">1921</option>
												<option value="1920">1920</option>
												<option value="1919">1919</option>
												<option value="1918">1918</option>
												<option value="1917">1917</option>
												<option value="1916">1916</option>
												<option value="1915">1915</option>
												<option value="1914">1914</option>
												<option value="1913">1913</option>
												<option value="1912">1912</option>
												<option value="1911">1911</option>
												<option value="1910">1910</option>
												<option value="1909">1909</option>
											</select> <select class="form-control" id="month" onchange="getDay()"
												style="width: 72px;">
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
											</select> <select class="form-control" id="day" style="width: 72px;">
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="form-label" style="color: F0F8FD;">性别：</label> <label
											class="radio-inline"
											style="color: F0F8FD; margin-left: 50px;"> <input
											type="radio" name="sex" id="man" value="1" checked="checked">男
										</label> <label class="radio-inline" style="color: F0F8FD;"> <input
											type="radio" name="sex" id="won" value="0">女
										</label>
									</div>
									<div class="form-group">
										<label class="form-label"
											style="margin-top: 5px; color: F0F8FD; width: 120px;">初次申请驾照时间：</label>
										<div class="form-group">
											<select class="form-control" id="years"
												style="margin-left: 10px; width: 150px;">
												<option value="2017">2017</option>
												<option value="2016">2016</option>
												<option value="2015">2015</option>
												<option value="2014">2014</option>
												<option value="2013">2013</option>
												<option value="2012">2012</option>
												<option value="2011">2011</option>
												<option value="2010">2010</option>
												<option value="2009">2009</option>
												<option value="2008">2008</option>
												<option value="2007">2007</option>
												<option value="2006">2006</option>
												<option value="2005">2005</option>
												<option value="2004">2004</option>
												<option value="2003">2003</option>
												<option value="2002">2002</option>
												<option value="2001">2001</option>
												<option value="2000">2000</option>
												<option value="1999">1999</option>
												<option value="1998">1998</option>
												<option value="1997">1997</option>
												<option value="1996">1996</option>
												<option value="1995">1995</option>
												<option value="1994">1994</option>
												<option value="1993">1993</option>
												<option value="1992">1992</option>
												<option value="1991">1991</option>
												<option value="1990">1990</option>
												<option value="1989">1989</option>
												<option value="1988">1988</option>
												<option value="1987">1987</option>
												<option value="1986">1986</option>
												<option value="1985">1985</option>
												<option value="1984">1984</option>
												<option value="1983">1983</option>
												<option value="1982">1982</option>
												<option value="1981">1981</option>
												<option value="1980">1980</option>
												<option value="1979">1979</option>
												<option value="1978">1978</option>
												<option value="1977">1977</option>
												<option value="1976">1976</option>
												<option value="1975">1975</option>
												<option value="1974">1974</option>
												<option value="1973">1973</option>
												<option value="1972">1972</option>
												<option value="1971">1971</option>
												<option value="1970">1970</option>
												<option value="1969">1969</option>
												<option value="1968">1968</option>
												<option value="1967">1967</option>
												<option value="1966">1966</option>
												<option value="1965">1965</option>
												<option value="1964">1964</option>
												<option value="1963">1963</option>
												<option value="1962">1962</option>
												<option value="1961">1961</option>
												<option value="1960">1960</option>
												<option value="1959">1959</option>
												<option value="1958">1958</option>
												<option value="1957">1957</option>
												<option value="1956">1956</option>
												<option value="1955">1955</option>
												<option value="1954">1954</option>
												<option value="1953">1953</option>
												<option value="1952">1952</option>
												<option value="1951">1951</option>
												<option value="1950">1950</option>
												<option value="1949">1949</option>
												<option value="1948">1948</option>
												<option value="1947">1947</option>
												<option value="1946">1946</option>
												<option value="1945">1945</option>
												<option value="1944">1944</option>
												<option value="1943">1943</option>
												<option value="1942">1942</option>
												<option value="1941">1941</option>
												<option value="1940">1940</option>
												<option value="1939">1939</option>
												<option value="1938">1938</option>
												<option value="1937">1937</option>
												<option value="1936">1936</option>
												<option value="1935">1935</option>
												<option value="1934">1934</option>
												<option value="1933">1933</option>
												<option value="1932">1932</option>
												<option value="1931">1931</option>
												<option value="1930">1930</option>
												<option value="1929">1929</option>
												<option value="1928">1928</option>
												<option value="1927">1927</option>
												<option value="1926">1926</option>
												<option value="1925">1925</option>
												<option value="1924">1924</option>
												<option value="1923">1923</option>
												<option value="1922">1922</option>
												<option value="1921">1921</option>
												<option value="1920">1920</option>
												<option value="1919">1919</option>
												<option value="1918">1918</option>
												<option value="1917">1917</option>
												<option value="1916">1916</option>
												<option value="1915">1915</option>
												<option value="1914">1914</option>
												<option value="1913">1913</option>
												<option value="1912">1912</option>
												<option value="1911">1911</option>
												<option value="1910">1910</option>
												<option value="1909">1909</option>
											</select> <select class="form-control" id="months"
												onchange="getDays()" style="width: 72px;">
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
											</select> <select class="form-control" id="days" style="width: 72px;">
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="row"
								style="margin-top: 10px; margin-bottom: 10px; text-align: center;">
								<button type="button" style="text-align: center;"
									class="btn btn-primary">保存</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="Bottom.jsp"%>
	<script src="resources/js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="res/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="resources/js/sweetalert.min.js"></script>
	<script type="text/javascript">
		function getDay() {
			var year = $("#year").val();
			var month = $("#month").val();
			var d = $("#day").val();
			var day = 0;
			var str = "";
			$("#day").empty();
			if (month == 1 || month == 3 || month == 5 || month == 7
					|| month == 8 || month == 10 || month == 12) {
				day = 31;
			} else if (month == 4 || month == 6 || month == 9 || month == 11) {
				day = 30;
			} else {
				if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
					day = 29
				} else {
					day = 28
				}
			}
			for (var i = 1; i <= day; i++) {
				str += "<option value="+i+">" + i + "</option>";
			}
			$("#day").html(str);
			if (d != null && d != "") {
				$("#day").val(d);
			}
		}
		function getDays() {
			var year = $("#years").val();
			var month = $("#months").val();
			var d = $("#days").val();
			var day = 0;
			var str = "";
			$("#days").empty();
			if (month == 1 || month == 3 || month == 5 || month == 7
					|| month == 8 || month == 10 || month == 12) {
				day = 31;
			} else if (month == 4 || month == 6 || month == 9 || month == 11) {
				day = 30;
			} else {
				if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
					day = 29
				} else {
					day = 28
				}
			}
			for (var i = 1; i <= day; i++) {
				str += "<option value="+i+">" + i + "</option>";
			}
			$("#days").html(str);
			if (d != null && d != "") {
				$("#days").val(d);
			}
		}

		$(function() {
			$("#day").empty();
			$("#days").empty();
			var date = new Date();
			var year = date.getFullYear();
			var month = date.getMonth() + 1;
			var d = date.getDate();
			var day = 0;
			var op = "";
			if (month == 1 || month == 3 || month == 5 || month == 7
					|| month == 8 || month == 10 || month == 12) {
				day = 31;
			} else if (month == 4 || month == 6 || month == 9 || month == 11) {
				day = 30;
			} else {
				if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
					day = 29
				} else {
					day = 28
				}
			}
			for (var i = 1; i <= day; i++) {
				op += "<option value="+i+">" + i + "</option>";
			}
			$("#day").html(op);
			$("#year").val(year);
			$("#month").val(month);
			$("#day").val(d);

			$("#days").html(op);
			$("#years").val(year);
			$("#months").val(month);
			$("#days").val(d);
		});
		function save() {
			var nickname=$("#nickname").val();
			var password=$("#password").val();
			$.ajax({
				url:"updata.do",
				type:"GET",
				data:{
					nickname:nickname,
					password:password
				},
				success:function () {
//文件的操作
					$.ajaxFileUpload({
						url:"upload.do",
						secureuri :false,
						fileElementId :'fileToUploadLink',//file控件id
						data : {
							username:${user.user.username}
						},
						success: function (resp) {
							alert("成功了");
							alert(JSON.stringify(resp.data));
							console.log(resp.data)
							if (resp.code == 200) {
								alert("成功");
								// 这里跳转

							} else {
								alert("bug");
							}
						},
						error:function (resp) {
							alert("ALL ERROR")
						}
					});
				}
			})

		}
	</script>
</body>
</html>
