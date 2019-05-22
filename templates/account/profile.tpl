<div class="account">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div class="profile row">
		<div class="col-xs-12">
			<div class="user-info" data-uid="{uid}">
				<!-- IF picture -->
				<img id="user-current-picture" class="user-avatar" src="{picture}?{function.now}" alt="{username}" />
				<!-- ELSE -->
				<div class="user-icon" style="background-color:  #A36445;">
					{icon:text}
				</div>
				<!-- ENDIF picture -->
				<i component="user/status" class="fa fa-circle status {status}" title="[[global:{status}]]"></i>
				<h1 class="fullname">
					<!-- IF fullname -->
					{fullname}
					<!-- ELSE -->
					{username}
					<!-- ENDIF fullname -->
				</h1>
				<h4 class="title">
					{getTitle(customFields)}
				</h4>
				<h4 class="field-of-work">
					{getFieldOfWork(customFields)}
				</h4>

				<!-- IF isAdminOrGlobalModeratorOrModerator -->
				<!-- IF banned -->
				<div class="text-center">
				<!-- IF banned_until -->
				[[user:info.banned-until, {banned_until_readable}]]
				<!-- ELSE -->
				[[user:info.banned-permanently]]
				<!-- ENDIF banned_until -->
				</div>
				<!-- ENDIF banned -->
				<!-- ENDIF isAdminOrGlobalModeratorOrModerator -->

				<!-- IF loggedIn -->
				<!-- IF !isSelf -->
				<!-- IF !banned -->
				<!-- IF !config.disableChat -->
				<a component="account/chat" href="#" class="btn btn-primary btn-sm"><i class="fa fa-fw fa-comment-o"></i> Chat</a>
				<!-- ENDIF !config.disableChat -->
				<a id="follow-btn" component="account/follow" href="#" class="btn btn-success btn-sm <!-- IF isFollowing -->hide<!-- ENDIF isFollowing -->">[[user:follow]]</a>
				<a id="unfollow-btn" component="account/unfollow" href="#" class="btn btn-warning btn-sm <!-- IF !isFollowing -->hide<!-- ENDIF !isFollowing -->">[[user:unfollow]]</a>
				<!-- ENDIF !banned -->
				<!-- ENDIF !isSelf -->
				<!-- ENDIF loggedIn -->
			</div>

			<!-- IF aboutme -->
			<div class="account-stats">
				<span component="aboutme" class="text-center aboutme">{aboutme}</span>
			</div>
			<!-- ENDIF aboutme -->

			<div class="text-center profile-meta">
				<span>[[user:joined]]</span>
				<strong class="timeago" title="{joindateISO}"></strong>

				<!-- IF email -->
				<span>[[user:email]]</span>
				<strong><i class="fa fa-eye-slash {emailClass}" title="[[user:email_hidden]]"></i> {email}</strong>
				<!-- ENDIF email -->

				<!-- IF websiteName -->
				<span>[[user:website]]</span>
				<strong><a href="{websiteLink}" rel="nofollow noopener noreferrer">{websiteName}</a></strong>
				<!-- ENDIF websiteName -->

				<!-- IF location -->
				<span>[[user:location]]</span>
				<strong>{location}</strong>
				<!-- ENDIF location -->

				<!-- IF age -->
				<span>[[user:age]]</span>
				<strong>{age}</strong>
				<!-- ENDIF age -->
			</div>

			<div class="account-stats">
				<!-- IF !reputation:disabled -->
				<div class="stat">
					<div class="human-readable-number" title="{reputation}">{reputation}</div>
					<span class="stat-label">[[global:reputation]]</span>
				</div>
				<!-- ENDIF !reputation:disabled -->

				<div class="stat">
					<div class="human-readable-number" title="{postcount}">{postcount}</div>
					<span class="stat-label">[[global:posts]]</span>
				</div>

				<div class="stat">
					<div class="human-readable-number" title="{profileviews}">{profileviews}</div>
					<span class="stat-label">[[user:profile_views]]</span>
				</div>

				<div class="stat">
					<div class="human-readable-number" title="{followerCount}">{followerCount}</div>
					<span class="stat-label">[[user:followers]]</span>
				</div>

				<div class="stat">
					<div class="human-readable-number" title="{followingCount}">{followingCount}</div>
					<span class="stat-label">[[user:following]]</span>
				</div>
			</div>
		</div>
	</div>

	<hr />
	<!-- IMPORT partials/account/menu.tpl -->

	<div class="row">
		<div class="col-xs-12 account-block hidden">
			<div class="account-picture-block text-center">
				<span>
					<span class="account-username"> {username}</span>
				</span>

				<!-- IF !isSelf -->
				<!-- IF isFollowing -->
				<a component="account/unfollow" href="#" class="btn btn-warning btn-sm">[[user:unfollow]]</a>
				<!-- ELSE -->
				<a component="account/follow" href="#" class="btn btn-success btn-sm">[[user:follow]]</a>
				<!-- ENDIF isFollowing -->
				<!-- ENDIF !isSelf -->
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-xs-12">
			<h1 class="section-title">[[pages:account/posts, {username}]]</h1>

			<!-- IF !posts.length -->
			<div class="alert alert-warning">[[user:has_no_posts]]</div>
			<!-- ENDIF !posts.length -->
			<!-- IMPORT partials/posts_list.tpl -->
			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
	</div>

	<div id="user-action-alert" class="alert alert-success hide"></div>
</div>
