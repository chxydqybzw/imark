<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我爱南陵</title>
<link rel="stylesheet" href="/imark/resources/ztree/css/zTreeStyle/zTreeStyle.css" type="text/css">
<script type="text/javascript" src="/imark/resources/jquery/jquery-1.9.1.js"></script>
<script type="text/javascript" src="/imark/resources/ztree/jquery.ztree.core-3.5.js"></script>
<!-- http://localhost:5678/imark/resources/data/demo.html -->

<style type="text/css">
body{
margin: 0px;
padding: 0px;

}

a{
text-decoration: none;
}

a:VISITED{
	text-decoration: none;
}

a:HOVER{
	color: RGB(0,149,226);
}

li {list-style-type:none;}

.ihead{
	height: 55px;

}

.ititle{
	margin-left:0px;
	color: #FFF;
	line-height: 35px;
	font-size: 12px;
	background: #7ACFD7;
}

.isystem{
	float:right;
	margin-right: 40px;
	
}

.imenu{
	padding-left: 40px;
}

.imenu .iul{
	float:right;
	line-height: 60px;
} 

.imenu .iul a{
	float:left;
	font-family: Microsoft YaHei;
	width:92px;
	cursor: pointer;
}

.imenu_content_title{
	font-size: 20px;
	color:#171717;
	line-height:51px;
	font-family: Microsoft YaHei;
	padding-left: 5px;
	background-color: RGB(247,247,247);
	width: 100%;
}

.icontent{
	width: 100%;
}

.ibottom{
text-align: center;
font-size:12px;
color:#7e8187;
margin-top: 5px;
}

.ihot_img{
	width: 76px;
	height: 76px;
}

.ilink{
	text-align: center;
	width:982px;
	margin:0 auto;
	padding-right: 0px;
}

.ilink a{
	text-decoration: none;
	font-size:14px;
	padding:0 10px;
	color:#7e8187;
}

</style>

<script type="text/javascript">

	var listSize="${list?size}";

	function  node(id,pId,name,url,open,target){
		this.id = id;
		this.pId = pId;
		this.name = name;
		this.url = url;
		this.open=open;
		this.target=target;
	}
	
	var nodeArray=[];
	nodeArray.push(new node("1","0","我爱南陵","","true",""));
	
	<#list list as item>
   		var obj= new node("${item_index?if_exists+2}","1","${item.ARTICLE_TITLE?if_exists}","/imark/editor/dispArticle?articleId="+"${item.ARTICLE_ID?if_exists}","false","showFrame");
   		nodeArray.push(obj);
   </#list> 
	
	//alert(JSON.stringify(nodeArray));
	

  var  data=[];
  <#list list as item>
   		 var  obj = new Object();  
   		 obj.title="${item.ARTICLE_TITLE?if_exists}";
   		 data.push(obj);
   </#list> 



var setting = {
		view: {
			showIcon: showIconForTree,
			showLine:true
		},
		data: {
			simpleData: {
				enable: true
			}
		}
	};

	var zNodes =[
		{ id:1, pId:0, name:"我爱南陵 ", open:true},
		{ id:11, pId:1, name:"南陵印象",url:"/imark/editor/dispArticle?articleId=40286f8151e8f03e0151ece7eb150001", target:"showFrame"},
		{ id:11, pId:1, name:"吃货宝典",url:"/imark/editor/dispArticle?articleId=40286f8151e8f03e0151ece7eb150001", target:"showFrame"},
		{ id:12, pId:1, name:"疯玩地图",url:"/imark/editor/dispArticle?articleId=40286f8151e8f03e0151eceb203a0003", target:"showFrame"},
		{ id:12, pId:1, name:"购物指南",url:"/imark/editor/dispArticle?articleId=40286f8151e8f03e0151eceb203a0003", target:"showFrame"},
	];
	
	zNodes=nodeArray;
	

	function showIconForTree(treeId, treeNode) {
		//return !treeNode.isParent;
		return false;
	};

	$(document).ready(function(){
		$.fn.zTree.init($("#imenuTree"), setting, zNodes);
		var zTree = $.fn.zTree.getZTreeObj("imenuTree");
		
		var node = zTree.getNodeByParam("id",2);
		zTree.selectNode(node);
		//$("#imenuTree_2_a").click(); 
		document.getElementById("showFrame").src=node.url;
	});






</script>



</head>
<body>

<div style="width:100%;height:2px;margin:0px auto;padding:0px;background-color:#7ACFD7;overflow:hidden;"></div>
<div class="ihead">
	<div class="ititle">
		<span><img  src="/imark/resources/images/nanling-logo.png?version=20150325"></span>
		<div class="isystem">
				<a>登录</a>
				&nbsp; &nbsp;&nbsp;
				<a>注册</a>
		</<div>
	</div>
</div>


<div style="width:100%;height:3px;margin:0px auto;padding:0px;background-color:#fff;overflow:hidden;"></div>

<!--
<div class="imenu">
	<img  src="/imark/resources/images/nanling-logo.jpg?version=20150325">
	
	<div class="iul">
			<a>关于讯飞</a>
			<a>自主产品</a>
			<a>解决方案</a>
			<a>互联网+</a>
			<a>服务支持</a>
			<a>
				<div>企业文化</div>
			</a>
	</div>
	
</div>
-->




<div class="icontent">
	<div style="width:99%;margin:0 auto;border: 1px solid #ccc;">
		<table style="width:100%;">
			<tr>
				<td width="200px;" style="padding:5px 0px " valign="top">
					<h2 class="imenu_content_title">活出滋味</h2>
					<div>
						<ul id="imenuTree" class="ztree"></ul>
					</div>
					
					
				</td>
				
				<td>
					<iframe id="showFrame" name="showFrame" style="border-left:#ccc 1px solid;"  src="http://localhost:5678/imark/editor/dispArticle?articleId=40286f8151e8f03e0151ece7eb150001" width="1160px;" height="525px;" frameborder="0" ></iframe>
				</td>
			
			</tr>
		</table>
		
	
	</div>


</div>

<div>
<hr style="height:1px;border:none;border-top:1px solid #555555;width:100%;" />
</div>

<div class="ilink">
	<a href="">联系我们</a>|
	<a href="">南陵在线</a>|
</div>
<div class="ibottom">
	(C)COPYRIGHT 2013, IMARK SOFTWARE ALL RIGHTS RESERVED. 版权所有 © WUYECHUN
</div>


</body>
</html>