<!-- BEGIN users -->
<div class="col-xs-12 col-lg-6 px-xl" data-uid="{users.uid}">
	<div class="user-box">
		<div>
			<a href="{config.relative_path}/user/{users.userslug}">
				<!-- IF users.picture -->
				<img class="user-avatar" src="{users.picture}?{users.lastonline}" alt="{users.username}" />
				<!-- ELSE -->
				<div class="user-icon" style="background-color: #A36445;">{users.icon:text}</div>
				<!-- ENDIF users.picture -->
			</a>
		</div>
		<div class="info">
			<div class="user-info-box">
				<div class="user-info-item">
					<div class="username">
						<span>
							<a href="{config.relative_path}/user/{users.userslug}">
								<!-- IF users.fullname -->{users.fullname}<!-- ELSE -->{users.username}<!-- ENDIF users.fullname -->
							</a>
						</span>
					</div>
					
					<div title="Title" class="title">
						<span >{getTitle(users.customFields)}</span>
					</div>
					
					<!-- IF users.location -->
					<div title="location" class="location">
						<span>{users.location}</span>
					</div>
					<!-- ENDIF user.location -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END users -->