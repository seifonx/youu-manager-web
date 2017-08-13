<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="panel panel-headline">
	<div class="panel-heading">
		<h3 class="panel-title">消息管理</h3>
		<div class="right col-md-6 text-right">
			<a href="#" id="add-btn" class="btn btn-primary">添加消息模版</a>
		</div>
	</div>
	<div class="panel-body no-padding">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>#</th>
					<th>描述</th>
					<th>消息内容</th>
					<th>日期</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody id="listLocation">
				<!-- 列表内容 -->
			</tbody>
			<tfoot>
				<tr>
					<td id="pageLocation" colspan="5" align="right">
						<!-- 分页条 -->
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</div>
<!-- 添加/修改模态框 -->
<div class="modal fade" id="operateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel"></h4>
			</div>
			<div class="modal-body">
				<form id="operateForm">
					<input type="hidden" id="mid" name="id">
				  <div class="form-group">
				    <label for="exampleInputEmail1">消息描述</label>
				    <input type="text" class="form-control" id="describe" name="describe">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">消息内容</label>
				    <input type="text" class="form-control" id="modelConten" name="modelConten">
				  </div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" id="operate-btn" class="btn btn-primary">提交</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	var list = function() {
		var listLocation = $("#listLocation");
		var pageLocation = $("#pageLocation");
		var pageNum;
		options = {
			backdrop:false,
			show:true
		};

		// 调用初始化页面方法
		init(null, null);
		
		// 打开添加模态框
		$("#add-btn").click(function(){
			
			//打开添加模态框,将值置空
			$("#operateForm")[0].reset();
			//打开操作模态框
			$("#operateModal").modal(options);
			//给按钮设置属性值
			$("#myModalLabel").text("添加消息模版");
			$("#operate-btn").attr("operate", "addMsg");
			$("#operate-btn").attr("pn", "999999");
			
			return false;
		});
		
		// 打开修改模态框
		$("body").on("click", ".update-btn", function(){
			// 将输入框置空
			$("#operateForm")[0].reset();
			//给修改模态框添加值
			$("#mid").val($(this).attr("mid"));
			$("#describe").val($(this).attr("describe"));
			$("#modelConten").val($(this).attr("modelConten"));
			
			//打开添加模态框
			$("#operateModal").modal(options);
			
			//给按钮设置属性值
			$("#myModalLabel").text("修改消息模版");
			$("#operate-btn").attr("operate", "update");
			$("#operate-btn").attr("pn", pageNum);
		});
		
		//确认添加/修改
		$("#operate-btn").click(function(){
			operate($(this).attr("operate"), $(this).attr("pn"));
		});
		
		// 发送操作请求
		function operate(operate, pn){
			$.get("${ctp}/message/"+operate,{
				id : $("#mid").val(),
				describe : $("#describe").val(),
				modelConten : $("#modelConten").val(),
			}, function(result){
				layer.msg(result);
				//关闭操作模态框
				$("#operateModal").modal('hide');
				
				//将输入框的数据抹除
				$("#operateForm")[0].reset();
				
				//更新数据并打开列表模态框
				init(pn, null);
			});
		}
		
		// 发送Ajax请求获取列表数据
		function init(pn, ps) {
			pageNum = pn;
			$.getJSON("${ctp}/message/list", {
				pn : pn,
				ps : ps
			}, function(info) {
				console.log(info);
				if(info.size != 0){
					//调用插入列表方法
					insertList(listLocation, info.list);
					//调用插入分页条方法
					insertPage(pageLocation, info);
				} else {
					layer.msg("没有记录！");
				}
			});
		}

		// 插入列表信息
		function insertList(listLocation, msgList) {
			listLocation.empty();
			$.each(msgList, function() {
					var tr = $("<tr></tr>");
					tr.append("<td>" + this.id + "</td>").append(
							"<td>" + this.describe + "</td>").append(
							"<td>" + this.modelConten + "</td>")
							.append("<td>" + this.date + "</td>");
					var td = $("<td></td>")
							.append("<button class='update-btn' type='button' mid='"+this.id+"' describe='"+this.describe+"' modelConten='"+this.modelConten+"'><span class='label label-success'><i class='glyphicon glyphicon-check'></i></span></button>")
							.append("<button class='delete-btn' type='button' mid='"+this.id+"'><span class='label label-danger'><i class='glyphicon glyphicon-remove'></i></span></button>");
					tr.append(td);
					listLocation.append(tr);
				});
		}

		// 插入分页条
		function insertPage(location, pageInfo) {
			//先删除之前的所有分页信息
			location.empty();
			//上一页
			var ul = $("<ul class='pagination'></ul>");
			if (pageInfo.pageNum == 1) {
				ul.append("<li class='disabled'><a> <span aria-hidden='true'>&laquo;</span></a></li>");
			} else {
				ul.append("<li><a onclick='init("+ pageInfo.prePage+ ", null)'> <span aria-hidden='true'>&laquo;</span></a></li>");
			}
			//连续页
			$.each(pageInfo.navigatepageNums, function() {
				if (this == pageInfo.pageNum) {
					ul.append("<li class='active'><a>" + this + "</a></li>");
				} else {
					ul.append("<li><a onclick='init(" + this + "), null'>" + this + "</a></li>");
				}
			});
			//下一页
			if (pageInfo.pageNum == pageInfo.pages) {
				ul.append("<li class='disabled'><a> <span aria-hidden='true'>&raquo;</span></a></li>");
			} else {
				ul.append("<li><a onclick='init(" + pageInfo.nextPage + "), null'> <span aria-hidden='true'>&raquo;</span></a></li>");
			}

			location.append(ul);
		}
	};
</script>









