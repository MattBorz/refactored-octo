<!-- IMPORT partials/account/header.tpl -->

<div class="account awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">{username}'s Settings</h1>
	</div>
	
	<div class="awge-windows-container">
		<div class="row">
			<div class="col-xs-12 col-md-6">
				<!-- IF !disableCustomUserSkins -->
				<h4>[[user:select-skin]]</h4>
				<div class="well">
					<select class="form-control" id="bootswatchSkin" data-property="bootswatchSkin">
					<!-- BEGIN bootswatchSkinOptions -->
					<option value="{bootswatchSkinOptions.value}" <!-- IF bootswatchSkinOptions.selected -->selected<!-- ENDIF bootswatchSkinOptions.selected -->>{bootswatchSkinOptions.name}</option>
					<!-- END bootswatchSkinOptions -->
				</select>
				</div>
				<!-- ENDIF !disableCustomUserSkins -->

				<!-- IF allowUserHomePage -->
				<h4>[[user:select-homepage]]</h4>
				<div class="well">
					<div class="form-group">
						<label for="dailyDigestFreq">[[user:homepage]]</label>
						<select class="form-control" data-property="homePageRoute">
						<option value="none">None</option>
						<!-- BEGIN homePageRoutes -->
						<option value="{homePageRoutes.route}" <!-- IF homePageRoutes.selected -->selected="1"<!-- ENDIF homePageRoutes.selected -->>{homePageRoutes.name}</option>
						<!-- END homePageRoutes -->
					</select>
						<p class="help-block">[[user:homepage_description]]</p>
					</div>
					<div id="homePageCustom" class="form-group" style="display: none;">
						<label for="homePageCustom">[[user:custom_route]]</label>
						<input type="text" class="form-control" data-property="homePageCustom" id="homePageCustom" value="{settings.homePageRoute}" />
						<p class="help-block">[[user:custom_route_help]]</p>
					</div>
				</div>
				<!-- ENDIF allowUserHomePage -->

				<h4>[[global:privacy]]</h4>
				<div class="well">
					<!-- IF !hideEmail -->
					<div class="checkbox">
						<label>
						<input type="checkbox" data-property="showemail" <!-- IF settings.showemail -->checked <!-- ENDIF settings.showemail -->/> <strong>[[user:show_email]]</strong>
					</label>
					</div>
					<!-- ENDIF !hideEmail -->

					<!-- IF !hideFullname -->
					<div class="checkbox">
						<label>
						<input type="checkbox" data-property="showfullname" <!-- IF settings.showfullname -->checked<!-- ENDIF settings.showfullname -->/> <strong>[[user:show_fullname]]</strong>
					</label>
					</div>
					<!-- ENDIF !hideFullname -->
					<div class="checkbox">
						<label>
						<input type="checkbox" data-property="restrictChat" <!-- IF settings.restrictChat -->checked<!-- ENDIF settings.restrictChat -->/> <strong>[[user:restrict_chats]]</strong>
					</label>
					</div>
				</div>

				<h4>[[user:browsing]]</h4>
				<div class="well">
					<div class="checkbox">
						<label>
						<input type="checkbox" data-property="openOutgoingLinksInNewTab" <!-- IF settings.openOutgoingLinksInNewTab -->checked<!-- ENDIF settings.openOutgoingLinksInNewTab -->/> <strong>[[user:open_links_in_new_tab]]</strong>
					</label>
					</div>
					<!-- IF inTopicSearchAvailable -->
					<div class="checkbox">
						<label>
						<input type="checkbox" data-property="topicSearchEnabled" <!-- IF settings.topicSearchEnabled -->checked<!-- ENDIF settings.topicSearchEnabled -->/> <strong>[[user:enable_topic_searching]]</strong>
					</label>
					</div>
					<p class="help-block">[[user:topic_search_help]]</p>
					<!-- ENDIF inTopicSearchAvailable -->
					<div class="checkbox">
						<label>
						<input type="checkbox" data-property="scrollToMyPost" <!-- IF settings.scrollToMyPost -->checked<!-- ENDIF settings.scrollToMyPost -->/> <strong>[[user:scroll_to_my_post]]</strong>
					</label>
					</div>
					<div class="checkbox">
						<label>
						<input type="checkbox" data-property="delayImageLoading" <!-- IF settings.delayImageLoading -->checked<!-- ENDIF settings.delayImageLoading -->/> <strong>[[user:delay_image_loading]]</strong>
					</label>
					</div>
					<p class="help-block">[[user:image_load_delay_help]]</p>
				</div>

				<h4>[[global:pagination]]</h4>
				<div class="well">
					<div class="checkbox">
						<label>
						<input type="checkbox" data-property="usePagination" <!-- IF settings.usePagination -->checked<!-- ENDIF settings.usePagination -->> <strong>[[user:paginate_description]]</strong>
					</label>
					</div>

					<strong>[[user:topics_per_page]] ([[user:max_items_per_page, {maxTopicsPerPage}]])</strong><br /> <input type="text" class="form-control" data-property="topicsPerPage" value="{settings.topicsPerPage}"><br />
					<strong>[[user:posts_per_page]] ([[user:max_items_per_page, {maxPostsPerPage}]])</strong><br /> <input type="text" class="form-control" data-property="postsPerPage" value="{settings.postsPerPage}"><br />
				</div>

				<!-- IF !disableEmailSubscriptions -->
				<h4>[[global:email]]</h4>
				<div class="well">
					<div class="form-group">
						<label for="dailyDigestFreq">[[user:digest_label]]</label>
						<select class="form-control" id="dailyDigestFreq" data-property="dailyDigestFreq" autocomplete="off">
						<!-- BEGIN dailyDigestFreqOptions -->
						<option value="{dailyDigestFreqOptions.value}" <!-- IF dailyDigestFreqOptions.selected -->selected="1"<!-- ENDIF dailyDigestFreqOptions.selected -->>{dailyDigestFreqOptions.name}</option>
						<!-- END dailyDigestFreqOptions -->
					</select>
						<p class="help-block">[[user:digest_description]]</p>
					</div>
				</div>
				<!-- ENDIF !disableEmailSubscriptions -->

				<!-- BEGIN customSettings -->
				<h4>{customSettings.title}</h4>
				<div class="well">
					{customSettings.content}
				</div>
				<!-- END customSettings -->

			</div>

			<div class="col-xs-12 col-md-6">
				<h4>[[global:language]]</h4>
				<div class="well">
					<select data-property="userLang" class="form-control">
					<!-- BEGIN languages -->
					<option value="{languages.code}" <!-- IF languages.selected -->selected<!-- ENDIF languages.selected -->>{languages.name} ({languages.code})</option>
					<!-- END languages -->
				</select>
				</div>

				<h4>[[topic:watch]]</h4>
				<div class="well">
					<div class="checkbox">
						<label>
						<input type="checkbox" data-property="followTopicsOnCreate" <!-- IF settings.followTopicsOnCreate -->checked <!-- ENDIF settings.followTopicsOnCreate -->/> <strong>[[user:follow_topics_you_create]]</strong>
					</label>
					</div>
					<div class="checkbox">
						<label>
						<input type="checkbox" data-property="followTopicsOnReply" <!-- IF settings.followTopicsOnReply -->checked<!-- ENDIF settings.followTopicsOnReply -->/> <strong>[[user:follow_topics_you_reply_to]]</strong>
					</label>
					</div>
				</div>


				<h4>[[user:notifications_and_sounds]]</h4>
				<div class="well">

					<!-- BEGIN notificationSettings -->
					<div class="row">
						<div class="form-group col-xs-7">
							<label>{notificationSettings.label}</label>
						</div>
						<div class="form-group col-xs-5">
							<select class="form-control" data-property="{notificationSettings.name}">
							<option value="none" <!-- IF notificationSettings.notification -->selected<!-- ENDIF notificationSettings.notification -->>[[notifications:none]]</option>
							<option value="notification" <!-- IF notificationSettings.notification -->selected<!-- ENDIF notificationSettings.notification -->>[[notifications:notification_only]]</option>
							<option value="email" <!-- IF notificationSettings.email -->selected<!-- ENDIF notificationSettings.email -->>[[notifications:email_only]]</option>
							<option value="notificationemail" <!-- IF notificationSettings.notificationemail -->selected<!-- ENDIF notificationSettings.notificationemail -->>[[notifications:notification_and_email]]</option>
						</select>
						</div>
					</div>
					<!-- END notificationSettings -->

					<label for="upvote-notif-freq">[[user:upvote-notif-freq]]</label>
					<div class="row">
						<div class="form-group col-xs-9">
							<select class="form-control" id="upvote-notif-freq" name="upvote-notif-freq" data-property="upvoteNotifFreq">
							<!-- BEGIN upvoteNotifFreq -->
							<option value="{upvoteNotifFreq.name}" <!-- IF upvoteNotifFreq.selected -->selected<!-- ENDIF upvoteNotifFreq.selected -->>
								[[user:upvote-notif-freq.{upvoteNotifFreq.name}]]
							</option>
							<!-- END upvoteNotifFreq -->
						</select>
						</div>
					</div>

					<label for="notification">[[user:notification-sound]]</label>
					<div class="row">
						<div class="form-group col-xs-9">
							<select class="form-control" id="notification" name="notification" data-property="notificationSound">
							<option value="">[[user:no-sound]]</option>
							<!-- BEGIN notificationSound -->
							<option value="{notificationSound.name}" <!-- IF notificationSound.selected -->selected<!-- ENDIF notificationSound.selected -->>{notificationSound.name}</option>
							<!-- END notificationSound -->
						</select>
						</div>
						<div class="btn-group col-xs-3">
							<button type="button" class="form-control btn btn-sm btn-default" data-action="play"><span class="hidden-xs">[[global:play]] </span><i class="fa fa-play"></i></button>
						</div>
					</div>

					<label for="chat-incoming">[[user:incoming-message-sound]]</label>
					<div class="row">
						<div class="form-group col-xs-9">
							<select class="form-control" id="chat-incoming" name="chat-incoming" data-property="incomingChatSound">
							<option value="">[[user:no-sound]]</option>
							<!-- BEGIN incomingChatSound -->
							<option value="{incomingChatSound.name}" <!-- IF incomingChatSound.selected -->selected<!-- ENDIF incomingChatSound.selected -->>{incomingChatSound.name}</option>
							<!-- END incomingChatSound -->
						</select>
						</div>
						<div class="btn-group col-xs-3">
							<button type="button" class="form-control btn btn-sm btn-default" data-action="play"><span class="hidden-xs">[[global:play]] </span><i class="fa fa-play"></i></button>
						</div>
					</div>

					<label for="chat-outgoing">[[user:outgoing-message-sound]]</label>
					<div class="row">
						<div class="form-group col-xs-9">
							<select class="form-control" id="chat-outgoing" name="chat-outgoing" data-property="outgoingChatSound">
							<option value="">[[user:no-sound]]</option>
							<!-- BEGIN outgoingChatSound -->
							<option value="{outgoingChatSound.name}" <!-- IF outgoingChatSound.selected -->selected<!-- ENDIF outgoingChatSound.selected -->>{outgoingChatSound.name}</option>
							<!-- END outgoingChatSound -->
						</select>
						</div>
						<div class="btn-group col-xs-3">
							<button type="button" class="form-control btn btn-sm btn-default" data-action="play"><span class="hidden-xs">[[global:play]] </span><i class="fa fa-play"></i></button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="form-actions">
			<a id="submitBtn" href="#" class="btn btn-primary">[[global:save_changes]]</a>
		</div>
	</div>
	
	<div class="awge-windows-statusbar">
		<div class="left">
			<p>© 2018 AWGE</p>
		</div>
		<div class="right">
			<!-- IMPORT partials/breadcrumbs.tpl -->
		</div>
	</div>
</div>

<!-- IMPORT partials/awge_page_script.tpl -->