<div class="users">

	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div class="row">
		<div class="col-lg-6">
		<!-- IMPORT partials/users_list_menu.tpl -->
		</div>
		<!-- IF displayUserSearch -->
		<div class="col-lg-offset-3 col-lg-3 col-xs-offset-1 col-xs-10">
			<div class="search">
				<div class="input-group">
					<input class="form-control" id="search-user" type="text" placeholder="[[users:enter_username]]"/>
					<span class="input-group-addon">
						<i component="user/search/icon" class="fa fa-search"></i>
					</span>
				</div>
			</div>
		</div>
		<!-- ENDIF displayUserSearch -->
	</div>

	<div class="row">
		<div class="col-xs-12">
			<div id="users-container" class="users-container">
				<div class="row px-xl">
					<!-- IMPORT partials/users_list.tpl -->
				</div>
				<!-- IF anonymousUserCount -->
				<div class="users-box anon-user">
					<div class="user-icon">G</div>
					<br/>
					<div class="user-info">
						<span id="online_anon_count">{anonymousUserCount}</span>
						<span>[[global:guests]]</span>
					</div>
				</div>
				<!-- ENDIF anonymousUserCount -->
			</div>
		</div>
	</div>

	<!-- IMPORT partials/paginator.tpl -->
</div>
