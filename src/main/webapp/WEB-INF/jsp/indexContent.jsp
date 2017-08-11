<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- OVERVIEW -->
<div class="panel panel-headline">
	<div class="panel-heading">
		<h3 class="panel-title">每周综述</h3>
		<p class="panel-subtitle">时间: 2017年7月31日 - 2017年8月6日</p>
	</div>
	<div class="panel-body">
		<div class="row">
			<div class="col-md-3">
				<div class="metric">
					<span class="icon"><i class="fa fa-download"></i></span>
					<p>
						<span class="number">1,252</span> <span class="title">下载</span>
					</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="metric">
					<span class="icon"><i class="fa fa-shopping-bag"></i></span>
					<p>
						<span class="number">203</span> <span class="title">销量</span>
					</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="metric">
					<span class="icon"><i class="fa fa-eye"></i></span>
					<p>
						<span class="number">274,678</span> <span class="title">访问</span>
					</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="metric">
					<span class="icon"><i class="fa fa-bar-chart"></i></span>
					<p>
						<span class="number">35%</span> <span class="title">转化</span>
					</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9">
				<div id="headline-chart" class="ct-chart"></div>
			</div>
			<div class="col-md-3">
				<div class="weekly-summary text-right">
					<span class="number">2,315</span> <span class="percentage"><i
						class="fa fa-caret-up text-success"></i> 12%</span> <span
						class="info-label">周销售额</span>
				</div>
				<div class="weekly-summary text-right">
					<span class="number">$5,758</span> <span class="percentage"><i
						class="fa fa-caret-up text-success"></i> 23%</span> <span
						class="info-label">月销售额</span>
				</div>
				<div class="weekly-summary text-right">
					<span class="number">$65,938</span> <span class="percentage"><i
						class="fa fa-caret-down text-danger"></i> 8%</span> <span
						class="info-label">总销售额</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END OVERVIEW -->
<div class="row">
	<div class="col-md-6">
		<!-- RECENT PURCHASES -->
		<div class="panel">
			<div class="panel-heading">
				<h3 class="panel-title">最近购买</h3>
				<div class="right">
					<button type="button" class="btn-toggle-collapse">
						<i class="lnr lnr-chevron-up"></i>
					</button>
					<button type="button" class="btn-remove">
						<i class="lnr lnr-cross"></i>
					</button>
				</div>
			</div>
			<div class="panel-body no-padding">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>订单号</th>
							<th>会员名</th>
							<th>总金额</th>
							<th>日期</th>
							<th>状态</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a href="#">763648</a></td>
							<td>Steve</td>
							<td>$122</td>
							<td>2017年8月1日</td>
							<td><span class="label label-success">已完成</span></td>
						</tr>
						<tr>
							<td><a href="#">763649</a></td>
							<td>Amber</td>
							<td>$62</td>
							<td>2017年8月1日</td>
							<td><span class="label label-warning">未支付</span></td>
						</tr>
						<tr>
							<td><a href="#">763650</a></td>
							<td>Michael</td>
							<td>$34</td>
							<td>2017年8月2日</td>
							<td><span class="label label-danger">交易失败</span></td>
						</tr>
						<tr>
							<td><a href="#">763651</a></td>
							<td>Roger</td>
							<td>$186</td>
							<td>2017年8月2日</td>
							<td><span class="label label-success">交易成功</span></td>
						</tr>
						<tr>
							<td><a href="#">763652</a></td>
							<td>Smith</td>
							<td>$362</td>
							<td>2017年8月3日</td>
							<td><span class="label label-success">交易成功</span></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="panel-footer">
				<div class="row">
					<div class="col-md-6">
						<span class="panel-note"><i class="fa fa-clock-o"></i>最后24小时</span>
					</div>
					<div class="col-md-6 text-right">
						<a href="#" class="btn btn-primary">查看所有记录</a>
					</div>
				</div>
			</div>
		</div>
		<!-- END RECENT PURCHASES -->
	</div>
	<div class="col-md-6">
		<!-- MULTI CHARTS -->
		<div class="panel">
			<div class="panel-heading">
				<h3 class="panel-title">站点走势图</h3>
				<div class="right">
					<button type="button" class="btn-toggle-collapse">
						<i class="lnr lnr-chevron-up"></i>
					</button>
					<button type="button" class="btn-remove">
						<i class="lnr lnr-cross"></i>
					</button>
				</div>
			</div>
			<div class="panel-body">
				<div id="visits-trends-chart" class="ct-chart"></div>
			</div>
		</div>
		<!-- END MULTI CHARTS -->
	</div>
</div>
<div class="row">
	<div class="col-md-7">
		<!-- TODO LIST -->
		<div class="panel">
			<div class="panel-heading">
				<h3 class="panel-title">应办事项</h3>
				<div class="right">
					<button type="button" class="btn-toggle-collapse">
						<i class="lnr lnr-chevron-up"></i>
					</button>
					<button type="button" class="btn-remove">
						<i class="lnr lnr-cross"></i>
					</button>
				</div>
			</div>
			<div class="panel-body">
				<ul class="list-unstyled todo-list">
					<li><label class="control-inline fancy-checkbox"> <input
							type="checkbox"><span></span>
					</label>
						<p>
							<span class="title">审核文博内容</span> <span class="short-description">将受到举报的博文进行审核，违禁则进行封禁。</span>
							<span class="date">2017年8月5日</span>
						</p>
						<div class="controls">
							<a href="#"><i class="icon-software icon-software-pencil"></i></a>
							<a href="#"><i class="icon-arrows icon-arrows-circle-remove"></i></a>
						</div></li>
					<li><label class="control-inline fancy-checkbox"> <input
							type="checkbox"><span></span>
					</label>
						<p>
							<span class="title">添加管理员</span> <span class="short-description">给新入职的小伙伴加管理员身份。</span>
							<span class="date">2017年8月4日</span>
						</p>
						<div class="controls">
							<a href="#"><i class="icon-software icon-software-pencil"></i></a>
							<a href="#"><i class="icon-arrows icon-arrows-circle-remove"></i></a>
						</div></li>
					<li><label class="control-inline fancy-checkbox"> <input
							type="checkbox"><span></span>
					</label>
						<p>
							<strong>发布旅游信息</strong> <span class="short-description">将公司最新规划的旅游路线发布到前台。</span>
							<span class="date">2017年8月3日</span>
						</p>
						<div class="controls">
							<a href="#"><i class="icon-software icon-software-pencil"></i></a>
							<a href="#"><i class="icon-arrows icon-arrows-circle-remove"></i></a>
						</div></li>
				</ul>
			</div>
		</div>
		<!-- END TODO LIST -->
	</div>
	<div class="col-md-5">
		<!-- TIMELINE -->
		<div class="panel panel-scrolling">
			<div class="panel-heading">
				<h3 class="panel-title">最新动态</h3>
				<div class="right">
					<button type="button" class="btn-toggle-collapse">
						<i class="lnr lnr-chevron-up"></i>
					</button>
					<button type="button" class="btn-remove">
						<i class="lnr lnr-cross"></i>
					</button>
				</div>
			</div>
			<div class="panel-body">
				<ul class="list-unstyled activity-list">
					<li><img src="${ctp}/assets/img/user1.png" alt="Avatar"
						class="img-circle pull-left avatar">
						<p>
							<a href="#">Michael</a> 添加了一个广告<span class="timestamp">20
								分钟之前</span>
						</p></li>
					<li><img src="${ctp}/assets/img/user2.png" alt="Avatar"
						class="img-circle pull-left avatar">
						<p>
							<a href="#">Daniel</a> 发布了一条旅游信息 <span class="timestamp">昨天</span>
						</p></li>
					<li><img src="${ctp}/assets/img/user3.png" alt="Avatar"
						class="img-circle pull-left avatar">
						<p>
							<a href="#">Martha</a> 创建了一条广告 <span class="timestamp">2
								天前</span>
						</p></li>
					<li><img src="${ctp}/assets/img/user4.png" alt="Avatar"
						class="img-circle pull-left avatar">
						<p>
							<a href="#">Jane</a> 删除了一个管理员 <span class="timestamp">2 天前</span>
						</p></li>
					<li><img src="${ctp}/assets/img/user5.png" alt="Avatar"
						class="img-circle pull-left avatar">
						<p>
							<a href="#">Jason</a> 添加了一条消息模版 <span class="timestamp">3
								天前</span>
						</p></li>
				</ul>
				<button type="button"
					class="btn btn-primary btn-bottom center-block">加载更多</button>
			</div>
		</div>
		<!-- END TIMELINE -->
	</div>
</div>
<script>
	$(function() {
		var data, options;
		// 大标题图表
		data = {
			labels : [ 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun' ],
			series : [ [ 23, 29, 24, 40, 25, 24, 35 ],
					[ 14, 25, 18, 34, 29, 38, 44 ], ]
		};

		options = {
			height : 300,
			showArea : true,
			showLine : false,
			showPoint : false,
			fullWidth : true,
			axisX : {
				showGrid : false
			},
			lineSmooth : false,
		};

		new Chartist.Line('#headline-chart', data, options);

		// 访问趋势折线图表
		data = {
			labels : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug',
					'Sep', 'Oct', 'Nov', 'Dec' ],
			series : [
					{
						name : 'series-real',
						data : [ 200, 380, 350, 320, 410, 450, 570, 400, 555,
								620, 750, 900 ],
					},
					{
						name : 'series-projection',
						data : [ 240, 350, 360, 380, 400, 450, 480, 523, 555,
								600, 700, 800 ],
					} ]
		};

		options = {
			fullWidth : true,
			lineSmooth : false,
			height : "270px",
			low : 0,
			high : 'auto',
			series : {
				'series-projection' : {
					showArea : true,
					showPoint : false,
					showLine : false
				},
			},
			axisX : {
				showGrid : false,

			},
			axisY : {
				showGrid : false,
				onlyInteger : true,
				offset : 0,
			},
			chartPadding : {
				left : 20,
				right : 20
			}
		};

		new Chartist.Line('#visits-trends-chart', data, options);
	});
</script>