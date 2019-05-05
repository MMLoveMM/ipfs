<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../base/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>长春市科技金融服务平台 - 企业客户联系人</title>
		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<%-- 加载css模块  --%>
		<jsp:include page="../base/css-table.jsp" flush="true" />
		<jsp:include page="../base/css-base.jsp" flush="true" />
		
	</head>

	<body class="no-skin">
		<%-- 加载头部模块  --%>
		<jsp:include page="../base/header.jsp" flush="true" />

		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">
			<%-- 加载左侧菜单模块 --%>
			<jsp:include page="../base/left.jsp" flush="true" />
			
			<!-- /.main-content  -->
			<div class="main-content">
				<div class="main-content-inner">
					<!-- 面包屑导航 -->
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">首页</a>
							</li>
							<li class="active">企业客户联系人</li>
						</ul>
					</div>
					<!-- 面包屑导航结束 -->

					<!-- 页面内容 -->
					<div class="page-content" style="position: relative;">
						<!-- /.page-header -->
						<div class="page-header">
							<h1>
								统计报表
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									企业客户联系人
								</small>
							</h1>
						</div><!-- /.page-header -->
						<!-- PAGE CONTENT BEGINS -->
						
						<form action="" method="POST" name="search_form" id="contactForm" onsubmit="return false" class="form-horizontal" > 
							<div class="col-xs-5">
								<div class="form-group">
									<label for="startTime" class="col-md-3 col-sm-3 control-label">录入时间</label>
									<div class="col-xs-4">
										<input type="text" id="startDate" name="startDate"
											class="form-control hasDatepicker" autocomplete="off">
									</div>
								</div>
							</div>
							<div class="col-xs-5">
								<button class="btn btn-default btn-sm pull-right" id="search_reset_Btn" style="margin-left:10px">重置</button>
								<button class="btn btn-info btn-sm pull-right" id="search_submit_Btn">搜索</button>
							</div>
					</form>
					
					<div id="companysInfo" style="display:none;">
						<div class="layui-tab layui-tab-card">
							<ul class="layui-tab-title" style="background-color:#428bca">
									<li class="layui-this" lay-id="custMsg">企业信息</li>
									<li lay-id="custAcct">账户信息</li>
									<li lay-id="custCerti">证件信息</li>
									<li lay-id="user">客户附件</li>
									<li lay-id="lxr">联系人信息</li>
									<li lay-id="asset">资产负债表</li>
									<li lay-id="pal">损益表</li>
									<li lay-id="cash">现金流量表</li>
									<li lay-id="accratio">账务比率</li>
							</ul>
							<!-- 企业信息 -->
							<div class="layui-tab-content">
								<div class="layui-tab-item layui-show">
										<table id="companyTable"  border="1" style="width:99%; margin: auto;" class="table table-bordered">
											<tr>
												<td align="right" class="td1"  width="24%">企业名称</td>
												<td id="companyname" width="25%"></td>
												<td align="right" class="td1"  width="25%">企业简称</td>
												<td id="shortname"  width="25%"></td>
											</tr>
											<tr>
												<td align="right" class="td1">英文名称</td>
												<td id="englishname"></td>
												<td align="right" class="td1">成立时间</td>
												<td id="createTime"></td>
											</tr>
											<tr>
												<td align="right" class="td1">注册资本</td>
												<td id="registeredcapital"></td>
												<td align="right" class="td1">实到资本</td>
												<td id="practicalcapital"></td>
											</tr>
											<tr>
												<td align="right" class="td1">公司法律责任形式</td>
												<td></td>
												<td align="right" class="td1">行业类型</td>
												<td id="businesstype"></td>
											</tr>
											<tr>
												<td align="right" class="td1"><nobr><span>企业类型</span></nobr></td>
												<td id="companytype"></td>
												<td align="right" class="td1">公司规模</td>
												<td id="comsize"></td>
											</tr>
											<tr>
												<td align="right" class="td1">职工人数</td>
												<td id="employees"></td>
												<td align="right" class="td1">是否高新技术企业</td>
												<td id="ishighindustry"></td>
											</tr>
											<tr>	
												<td align="right" class="td1">客户种类</td>
												<td id="customertype"></td>
												<td align="right" class="td1">客户状态</td>
												<td id="customerstatus"></td>
											</tr>
											<tr>	
												<td align="right" class="td1">法人资格</td>
												<td id="corporatecapacity"></td>
												<td align="right" class="td1">隶属关系</td>
												<td id="subordination"></td>
											</tr>
											<tr>
												<td align="right" class="td1">主营业务</td>
												<td id="mainbusiness"></td>
												<td align="right" class="td1">主要股东</td>
												<td id="shareholder"></td>
												
											</tr>
											<tr>
												<td align="right" class="td1">主要董事</td>
												<td id="director"></td>
												<td align="right" class="td1">主要管理者</td>
												<td id="managers"></td>
											</tr>
											<tr>
												<td align="right" class="td1">法定代表人</td>
												<td id="comanylegalperson"></td>
												<td align="right"  class="td1">企业实际控制人</td>
												<td id="buicontrolperson" colspan="3"></td>
											</tr>
											<tr>
												<td align="right" class="td1">国家统计局标准客户四位行业代码</td>
												<td id="code"></td>
												<td align="right"  class="td1">区县</td>
												<td id="county" colspan="3"></td>
											</tr>	
											<tr>
												<td align="right" class="td1">企业注册地址</td>
												<td id="companyregisteradd" colspan="3"></td>
											</tr>
											<tr>
												<td align="right" class="td1">企业办公地址</td>
												<td id="companyofficeadd" colspan="3"></td>
											</tr>
											<tr>
												<td align="right" class="td1">企业经营地址</td>
												<td id="operateAdd" colspan="3"></td>
											</tr>
											<tr>
												<td align="right" class="td1">知识产权名称</td>
												<td id="inteproname" colspan="3"></td>
											</tr>
										</table>
								</div>
								<!-- 账户信息 -->
							    	<div class="layui-tab-item">
							    		<table id="zhTable"  border="1" style="width:99%; margin: auto;" class="table table-bordered">
								    			<tr>
								    				<td style="background-color: #F5F5F5; width: 24%;">序号</td>
								    				<td style="background-color: #F5F5F5; width: 25%;">账户名称</td>
								    				<td style="background-color: #F5F5F5; width: 25%;">银行账号</td>
								    				<td style="background-color: #F5F5F5; width: 25%;">开户行</td>
								    			</tr>
							    		</table>
							    	</div>
							    <!-- 企业证件信息 -->
							    	<div class="layui-tab-item">
							    		<table id="qyzjTable"  border="1" style="width:99%; margin: auto;" class="table table-bordered">
							    			<tr>
							    				<td style="background-color: #F5F5F5;">序号</td>
							    				<td style="background-color: #F5F5F5;">证件颁发国家/地区</td>
							    				<td style="background-color: #F5F5F5;">证件类型</td>
							    				<td style="background-color: #F5F5F5;">证件号码</td>
							    				<td style="background-color: #F5F5F5;">证件生效日期</td>
							    				<td style="background-color: #F5F5F5;">证件失效日期</td>
							    				<td style="background-color: #F5F5F5;">证件年检日期</td>
							    			</tr>
							    		</table>
							    	</div>
							    <!-- 客户附件 -->
							    	<div class="layui-tab-item">
							    		<table id="fjTable"  border="1" style="width:99%; margin: auto;" class="table table-bordered">
							    			<tr>
							    				<td style="background-color: #F5F5F5;" width="4%">序号</td>
							    				<td style="background-color: #F5F5F5;" width="20%">附件名称</td>
							    				<td style="background-color: #F5F5F5;" width="20%">附件</td>
							    				<td style="background-color: #F5F5F5;" width="20%">附件类别</td>
							    				<td style="background-color: #F5F5F5;" width="20%">操作用户</td>
							    			</tr>
							    		</table>
							    	</div>
							    <!-- 联系人信息 -->
							    	<div class="layui-tab-item">
							    		<table id="lxrTable"  border="1" style="width:99%; margin: auto;" class="table table-bordered">
							    			<tr>
												<td align="right" class="td1" width="24%">企业联系人</td>
												<td id="contacts" width="25%"></td>
												<td align="right" class="td1" width="25%">职务</td>
												<td id="post" width="25%"></td>
											</tr>
											<tr>
												<td align="right" class="td1">联系电话</td>
												<td id="contactnumber"></td>
												<td align="right" class="td1">传真</td>
												<td id="fax"></td>
											</tr>
											<tr>
												<td align="right" class="td1">手机号码</td>
												<td id="phoneNumber"></td>
												<td align="right" class="td1">电子邮箱</td>
												<td id="email"></td>
											</tr>
											<tr>
												<td align="right" class="td1">推荐人</td>
												<td colspan="3" id="refereeName"></td>
											</tr>
							    		</table>
							    	</div>
							    <!-- 资产负债表 -->
							    	<div class="layui-tab-item">
							    		<table id="zcfzTable"  border="1" style="width:99%; margin: auto;" class="table table-bordered">
							    			<tr>
									 			<td style="background-color: #F5F5F5;" width="5%">顺序号</td>
												<td style="background-color: #F5F5F5;" width="20%">编号</td>
												<td style="background-color: #F5F5F5;" width="20%">财务审计数据</td>
											</tr>
							    		</table>
							    	</div>
							    <!-- 损益表 -->
							    	<div class="layui-tab-item">
							    		<table id="syTable"  border="1" style="width:99%; margin: auto;" class="table table-bordered">
							    			<tr>
									 			<td style="background-color: #F5F5F5;" width="5%">顺序号</td>
												<td style="background-color: #F5F5F5;" width="20%">编号</td>
												<td style="background-color: #F5F5F5;" width="20%">财务审计数据</td>
											</tr>
							    		</table>
							    	</div>
							    <!-- 现金流量表 -->
							    	<div class="layui-tab-item">
							    		<table id="xjTable"  border="1" style="width:99%; margin: auto;" class="table table-bordered">
							    			<tr>
									 			<td style="background-color: #F5F5F5;" width="5%">顺序号</td>
												<td style="background-color: #F5F5F5;" width="20%">编号</td>
												<td style="background-color: #F5F5F5;" width="20%">财务审计数据</td>
											</tr>
							    		</table>
							    	</div>
							    <!-- 财务比率 -->
							    	<div class="layui-tab-item">
							    		<table id="cwTable"  border="1" style="width:99%; margin: auto;" class="table table-bordered">
							    			<tr>
									 			<td style="background-color: #F5F5F5;" width="5%">顺序号</td>
												<td style="background-color: #F5F5F5;" width="20%">编号</td>
												<td style="background-color: #F5F5F5;" width="20%">财务审计数据</td>
											</tr>
							    		</table>
							    	</div>
							</div>
							<div style="position:absolute;">
								<button class="layui-btn layui-btn-radius layui-btn-normal"  style="margin-left: 800px" id="search_return_Btn" >返回</button>
							</div>
							<!-- layui-tab-card end -->
						</div>
						<!-- glqy END --> 
					</div>
					
					<input type="hidden" id="dataDicts" name="dataDicts" value='${dataDicts}'>
					
					
					<div class="row" id="jqgridTable">
						<div class="col-xs-12">
							
							<div id="search"></div>
							
							<table id="grid-table"></table>

							<div id="grid-pager"></div>
							
						</div><!-- /.col -->
					</div><!-- /.row -->
					</div>
				</div>
			</div>
			<!-- /.main-content -->
			<%-- 加载底部模块  --%>
			<jsp:include page="../base/footer.jsp" flush="true" />
			
			<!-- 回到顶部  -->
			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->
		
		<%-- 加载菜单脚本模块 --%>
		<jsp:include page="../base/script-base.jsp" flush="true" />
		<%-- 加载table脚本模块，最后加载  --%>
		<jsp:include page="../base/script-table.jsp" flush="true" />
		<script type="text/javascript" src="${appCtx}/static/busi/report/company_contact_list.js"></script>
	</body>
</html>
