<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%--放置的位置要特别注意,不能放在第三行,否则会有一些样式问题 --%>
<%@ include file="/WEB-INF/views/easyui.jsp" %>
<script type="text/javascript" src="${ctx}/resources/ckeditor-4.5.6/ckeditor.js"></script>

<style type="text/css">
.itable label{
	font-size: 12px;
	font-family: 'Microsoft YaHei';
}

.l_td{
	width:5%;
}

.w_td{
width:40%;
}

.itable td input{
	width:89%;
}

.itable td label{
	float:right;
}

.itable td select{
	width:90%;
}

</style>

<script type="text/javascript">

$(function(){
	$('#articleTitle').focus();
	
})



function formSumbit(){
	var data = CKEDITOR.instances.editor.getData();
	$('#ckForm').submit();
	
	//设置值
	//CKEDITOR.instances.editor.setData(data+"<h1>hello</h1>");
	
}



</script>


<title>IMark</title>
<script type="text/javascript">
</script>
</head>
<body>
		<fieldset class="ifieldset">
            <legend>文本编辑</legend>
		 		<form id="ckForm" action="${ctx}/editor/saveArticle" method="post">
					<table style="width: 100%" class="itable">
						
						<tr>
							<td class="l_td"><label>文章标题：</label></td>
							<td class="w_td"><input name="articleTitle" id="articleTitle"/></td>
							<td class="l_td"><label>类别：</label></td>
							<td class="w_td">
								<select name="articleType" id="articleType">
									<option value="1">个人随想</option> 
									<option value="2">网上摘录</option>   
								</select>
							
							</td>
						</tr>
						
						<tr>
							<td class="l_td"><label>描述信息：</label></td>
							<td class="w_td"><input name="articleDesc" /></td>
							<td class="l_td"><label>关键字：</label></td>
							<td class="w_td"><input name="keyWord" /></td>
						</tr>
						
						<tr>
							<td colspan="4"></td>
						</tr>
						
						<tr>
							<td colspan="4">	
									<textarea name="articleContent" id="editor" rows="10" cols="80">
				               			
				           			 </textarea>
				           	</td>
						</tr>
						<tr>
							<td>
								<a style="float:right;margin-right:10px;" href="javascript:void(0)"  onclick="formSumbit()" class="btn_a_add">提交</a>
								
							</td>
						</tr>
					</table>
		        </form>
		</fieldset>
		 <script>
              CKEDITOR.replace( 'editor', {
                    customConfig: '${ctx}/resources/ckeditor-4.5.6/config.js?v='+Math.random()
               });
		 </script>
</body>
</html>