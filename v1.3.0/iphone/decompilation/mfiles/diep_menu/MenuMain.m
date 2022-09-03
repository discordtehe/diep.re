@implementation MenuMain

-(void *)init {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r19->_showAdPopUp = 0x0;
            r8 = *0x1011dea68;
            r8 = *(r8 + 0x24ca40);
            if (r8 != 0x0 && *(int8_t *)(r8 + 0x8) != 0x0) {
                    if (*(int8_t *)([[Application sharedApplication] serverConnection] + 0xc0) != 0x0) {
                            *(int8_t *)([[Application sharedApplication] serverConnection] + 0xc0) = 0x0;
                            sub_100016698(0x0);
                    }
            }
            else {
                    *(int8_t *)([[Application sharedApplication] serverConnection] + 0xc0) = 0x0;
                    sub_100016698(0x0);
            }
            [[[Application sharedApplication] gdprManager] setTarget:r19 withSelector:@selector(GDPRResponseCallback)];
    }
    r0 = r19;
    return r0;
}

-(void)injectParameters:(void *)arg2 {
    [self handleParameters:r2];
    [[&var_20 super] injectParameters:arg2];
    return;
}

-(void)handleParameters:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if ([[arg2 allKeys] containsObject:r2] != 0x0) {
            *(int8_t *)(int64_t *)&r19->_showAdPopUp = sub_1005d84b0([r20 objectForKey:@"showPopup"], 0x0);
    }
    if (*(int8_t *)([[Application sharedApplication] serverConnection] + 0xb8) != 0x0) {
            *(int8_t *)(int64_t *)&r19->_showAdPopUp = 0x0;
            [r19 playButtonCallback];
    }
    return;
}

-(void)setupWithStateId:(unsigned long long)arg2 parameters:(void *)arg3 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_40 super] setupWithStateId:arg2 parameters:r3];
    r0 = [LocalizedCCBReader reader];
    r0 = [r0 nodeGraphFromFile:@"MenuMain.ccbi" owner:r19];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_menuMainView));
    *(r19 + r22) = r0;
    [r0 setControl:r19];
    [*(r19 + r22) setupLayout:[r19 getInputBoxString]];
    [r19->mBaseNode addChild:*(r19 + r22)];
    [r19 handleParameters:arg3];
    [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(updateNewsfeedButton:) name:@"newsfeedAvailabilityChanged" object:0x0];
    [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(updateNewsfeedMessagesNum:) name:@"newsfeedUnreadMessagesChanged" object:0x0];
    sub_100089a40(0x1011e2cb8);
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    if (r19 != 0x0) {
            r0 = [r19 getGameModeString:&var_70];
    }
    else {
            var_58 = 0x0;
    }
    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
            operator delete(var_70);
    }
    r9 = var_58;
    r8 = &var_58;
    if (sign_extend_64(var_41) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r8;
            }
            else {
                    r8 = r9;
            }
    }
    [[*(r19 + r22) gameModeLabel] setString:[NSString stringWithFormat:r2]];
    [r19 restoreNickname];
    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
            operator delete(var_58);
    }
    return;
}

-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >)getGameModeString:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    r19 = r8;
    r8 = *(int8_t *)(r2 + 0x17);
    r10 = sign_extend_64(r8);
    r9 = *(r2 + 0x8);
    if (r10 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r11 = r8;
            }
            else {
                    r11 = r9;
            }
    }
    if (r11 != 0x3) goto loc_1000334d0;

loc_1000334a4:
    if (std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare() == 0x0) goto loc_100033590;

loc_1000334c4:
    r8 = *(int8_t *)(r20 + 0x17);
    r9 = *(r20 + 0x8);
    r10 = r8;
    goto loc_1000334d0;

loc_1000334d0:
    r11 = sign_extend_64(r10);
    if (r11 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r11 = r8;
            }
            else {
                    r11 = r9;
            }
    }
    if (r11 != 0x3) goto loc_100033510;

loc_1000334e4:
    if (std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare() == 0x0) goto loc_10003359c;

loc_100033504:
    r8 = *(int8_t *)(r20 + 0x17);
    r9 = *(r20 + 0x8);
    r10 = r8;
    goto loc_100033510;

loc_100033510:
    r11 = sign_extend_64(r10);
    if (r11 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r11 = r8;
            }
            else {
                    r11 = r9;
            }
    }
    if (r11 != 0x3) goto loc_100033550;

loc_100033524:
    if (std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare() == 0x0) goto loc_1000335a8;

loc_100033544:
    r8 = *(int8_t *)(r20 + 0x17);
    r9 = *(r20 + 0x8);
    r10 = r8;
    goto loc_100033550;

loc_100033550:
    if (sign_extend_64(r10) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r8;
            }
            else {
                    r8 = r9;
            }
    }
    if (r8 == 0x3 && std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare() == 0x0) {
            r1 = "Tag Mode";
    }
    else {
            r1 = "";
    }
    goto loc_1000335bc;

loc_1000335bc:
    r0 = sub_10003301c(r19, r1);
    return r0;

loc_1000335a8:
    r1 = "Domination";
    goto loc_1000335bc;

loc_10003359c:
    r1 = "Team DM";
    goto loc_1000335bc;

loc_100033590:
    r1 = "FFA";
    goto loc_1000335bc;
}

-(void *)getInputBoxString {
    r31 = r31 - 0x60;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [[[[Application sharedApplication] userData] account] userId];
    r22 = [NSString stringWithFormat:@"firstTimeNickname_%@"];
    if ((sub_1005d84b0([[NSUserDefaults standardUserDefaults] objectForKey:r2], 0x0) & 0x1) == 0x0) goto loc_1000337c4;

loc_100033760:
    r0 = [Application sharedApplication];
    r0 = [r0 userData];
    r0 = [r0 nickname];
    if (r0 == 0x0 || ([r0 isEqualToString:r2] & 0x1) != 0x0) goto loc_1000337a0;

loc_10003387c:
    r0 = [Application sharedApplication];
    r0 = [r0 userData];
    r1 = @selector(nickname);
    goto loc_100033894;

loc_100033894:
    r0 = objc_msgSend(r0, r1);
    return r0;

loc_1000337a0:
    r0 = @"";
    return r0;

loc_1000337c4:
    [[NSUserDefaults standardUserDefaults] setObject:@(YES) forKey:r22];
    [[[[Application sharedApplication] userData] account] platformDisplayName];
    [[[Application sharedApplication] userData] setNickname:r2];
    r0 = @class(Application);
    r0 = [r0 sharedApplication];
    r0 = [r0 userData];
    r0 = [r0 account];
    r1 = @selector(platformDisplayName);
    goto loc_100033894;
}

-(void)destroy {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"newsfeedAvailabilityChanged" object:0x0];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"newsfeedUnreadMessagesChanged" object:0x0];
    [[&var_30 super] destroy];
    return;
}

-(bool)showPopup {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    sub_100011420();
    if ((sub_100011884() & 0x1) == 0x0) {
            sub_100011420();
            if ((sub_100011574() & 0x1) != 0x0) {
                    r0 = 0x1;
            }
            else {
                    r0 = [InterstitialsManager sharedInterstitialsManager];
                    r0 = [r0 showInterstitial];
            }
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void)finishEnter:(bool)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*0x1011dea68 != 0x0) {
            sub_10001833c(*0x1011dea68);
    }
    if ((sub_1000118c0(sub_100011420()) & 0x1) != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_menuMainView));
            r20 = *(r19 + r21);
            if (sub_1000118ac(sub_100011420()) != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r2 = 0x1;
                    }
            }
            [r20 showNewsfeedButton:r2];
            sub_100011420();
            [r19 setNewsfeedNumber:sub_100011898()];
    }
    else {
            sub_100011420();
            sub_1000114a4();
    }
    return;
}

-(double)enterWithPreviousState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    r31 = r31 - 0x90;
    var_50 = d9;
    stack[-88] = d8;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = arg2;
    r19 = self;
    [[[ConfigurationDownloader sharedConfigurationDownloader] delegate] throttleToDefaultConfigurationDownloadSpeed];
    [r19 refresh];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_menuMainView));
    r0 = *(r19 + r26);
    r0 = [r0 nickname];
    if (r0 == 0x0 || [r0 isEqualToString:r2] != 0x0) {
            [[[Application sharedApplication] userData] nickname];
            [r23 setNickname:r2];
    }
    [*(r19 + r26) onEnterWithPreviousState:r2 fromStack:r3];
    if (r20 != 0x0) {
            asm { fcsel      d8, d1, d0, ne };
    }
    sub_10003301c(&var_68, "isFirstSession");
    sub_10003301c(&var_80, "");
    r0 = sub_100979dfc(&var_68, &var_80);
    r0 = loc_1009caf40(r0);
    r20 = r0;
    if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
            r0 = operator delete(var_80);
    }
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            r0 = operator delete(var_68);
    }
    if (r20 < 0x2) {
            if (*(int8_t *)(int64_t *)&r19->_showAdPopUp != 0x0) {
                    sub_100011420();
                    r0 = sub_100011574();
            }
    }
    else {
            r0 = [Application sharedApplication];
            r0 = [r0 adsManager];
            r0 = sub_100083500(r0);
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_showAdPopUp));
            if (*(int8_t *)(r19 + r20) != 0x0) {
                    [r19 showPopup];
                    r0 = [r19 performSelector:r2 withObject:r3 afterDelay:r4];
                    *(int8_t *)(r19 + r20) = 0x0;
            }
    }
    return r0;
}

-(double)leaveWithNewState:(unsigned long long)arg2 toStack:(bool)arg3 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_menuMainView));
    [*(self + r20) onLeaveWithNewState:arg2 toStack:arg3];
    [*(self + r20) nickname];
    r0 = [Application sharedApplication];
    r0 = [r0 userData];
    r0 = [r0 setNickname:r2];
    return r0;
}

-(double)refresh {
    r0 = self->_menuMainView;
    r0 = [r0 refresh];
    return r0;
}

-(void)disableInput {
    [[&var_20 super] disableInput];
    [self->_menuMainView disableInput];
    return;
}

-(void)enableIfOnTop {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([[[Application sharedApplication] stateMachine] currentState] == 0x1) {
            [r19 enableInput];
    }
    return;
}

-(void)enableInput {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] enableInput];
    [r19->_menuMainView enableInput];
    [[InterstitialsManager sharedInterstitialsManager] requestingShowInterstitial];
    NSLog(@"READYING INTERSTITIAL %d", @selector(requestingShowInterstitial));
    if (r21 != 0x0) {
            [r19 disableInput];
            [r19 performSelector:r2 withObject:r3 afterDelay:r4];
    }
    return;
}

-(bool)isRootState {
    return 0x1;
}

-(bool)occupiesFullScreen {
    return 0x1;
}

-(void)updateNewsfeedButton:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r0;
            [[r2 object] boolValue];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_menuMainView));
            [*(r19 + r22) showNewsfeedButton:r2];
            if (r21 != 0x0) {
                    r21 = *(r19 + r22);
                    if (sub_1000118ac(sub_100011420()) != 0x0) {
                    }
                    [r21 showNewsfeedButton:r2];
                    sub_100011420();
                    [r19 setNewsfeedNumber:sub_100011898()];
            }
    }
    return;
}

-(void)updateNewsfeedMessagesNum:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            [r0->_menuMainView setNewsfeedNumber:[[r2 object] intValue]];
    }
    return;
}

-(void)dismissNicknameKeyboard {
    [self->_menuMainView dismissNicknameKeyboard];
    return;
}

-(void)hidePromoElements {
    [self->_menuMainView hidePromoElements];
    return;
}

-(void)showPromoElements {
    [self->_menuMainView showPromoElements];
    return;
}

-(void)showPromoBadgeWithPromoButton:(void *)arg2 {
    [self->_menuMainView showPromoMenuWithPromoButton:arg2];
    return;
}

-(void)showFeatureBadgeWithPromoButton:(void *)arg2 {
    [self->_menuMainView showFeatureMenuWithPromoButton:arg2];
    return;
}

-(void)hideFeatureBadge {
    [self->_menuMainView hideFeatureMenu];
    return;
}

-(void)helpButtonCallback {
    [self->_menuMainView showHelp:0x1];
    return;
}

-(void)hidePromoBadge {
    [self->_menuMainView hidePromoMenu];
    return;
}

-(void)closeHelpButtonCallback {
    [self->_menuMainView showHelp:0x0];
    return;
}

-(void)settingsButtonCallback {
    [[[Application sharedApplication] stateMachine] goToApplicationState:r2];
    return;
}

-(void)newsfeedButtonCallback {
    sub_100011420();
    sub_1000117dc();
    return;
}

-(void)restoreNickname {
    [[NSUserDefaults standardUserDefaults] objectForKey:@"nickname"];
    [self->_menuMainView setNickname:r2];
    return;
}

-(void)classicHelpButtonCallback {
    [[[Application sharedApplication] stateMachine] setParameterForState:0x2b param:@"classic" withKey:@"gameModeHelp"];
    [[[Application sharedApplication] stateMachine] goToApplicationState:r2];
    return;
}

-(void)storeNickname {
    [[NSUserDefaults standardUserDefaults] setObject:[self->_menuMainView nickname] forKey:@"nickname"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    return;
}

-(void)gameModeButtonCallback {
    r31 = r31 - 0xb0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    sub_100089b60(0x1011e2cb8);
    sub_100089a40(0x1011e2cb8);
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    r20 = r0;
    if (r0 != 0x0) {
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    }
    sub_10003301c(&var_50, "lastChosenGameMode");
    sub_10003301c(&var_68, "");
    r0 = sub_100979d94(r29 - 0x38, &var_50, &var_68);
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(var_68);
    }
    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
            operator delete(var_50);
    }
    sub_1009ca77c(r29 - 0x38);
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = [r19 getGameModeString:&var_98];
    r0 = [r20 switchGameMode:&var_80];
    if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
            operator delete(var_80);
    }
    if ((sign_extend_64(var_81) & 0xffffffff80000000) != 0x0) {
            operator delete(var_98);
    }
    if ((sign_extend_64(var_11) & 0xffffffff80000000) != 0x0) {
            operator delete(var_28);
    }
    return;
}

-(void)reconnectLoop {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = @class(Application);
    r0 = [r0 sharedApplication];
    r0 = [r0 serverConnection];
    *(int32_t *)(r0 + 0xbc) = *(int32_t *)(r0 + 0xbc) + 0x1;
    if (*(int32_t *)([[Application sharedApplication] serverConnection] + 0xbc) < 0x6) goto loc_10003480c;

loc_1000347c4:
    [MenuLoading dismiss];
    [r19 enableInput];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_menuMainView));
    [*(r19 + r20) tankAnimShowState:0x0];
    r0 = *(r19 + r20);
    goto loc_1000348b8;

loc_1000348b8:
    [r0 fadeEnabledState:0x0];
    return;

loc_10003480c:
    if ((sub_100052458([[Application sharedApplication] serverConnection]) & 0x1) == 0x0) goto loc_10003485c;

loc_100034834:
    [MenuLoading dismiss];
    [r19 playButtonCallbackMain];
    return;

loc_10003485c:
    [MenuLoading showWithLoadingWidget:@"Connecting" centeredAndFramed:0x1];
    sub_10005211c([[Application sharedApplication] serverConnection]);
    [r19 performSelector:@selector(reconnectLoop) withObject:0x0 afterDelay:r4];
    r0 = r19->_menuMainView;
    goto loc_1000348b8;
}

-(void)enterGameCallback {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if ((*(int8_t *)byte_1011cd1f8 & 0x1) != 0x0) {
            r0 = [Application sharedApplication];
            r0 = [r0 adsManager];
            *(int32_t *)(r0 + 0x20) = *(int32_t *)(r0 + 0x20) - 0x1;
    }
    else {
            [r0 enableInput];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_menuMainView));
            [*(r0 + r20) tankAnimShowState:0x0];
            [*(r0 + r20) fadeEnabledState:0x0];
    }
    return;
}

-(void)GDPRResponseCallback {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[[Application sharedApplication] gdprManager] removeTargetAndSelector];
    if ([[[Application sharedApplication] gdprManager] shouldShowPopup] != 0x0) {
            [r19->_menuMainView showGDPRPopup:r2];
    }
    return;
}

-(void)processContextEvent:(void *)arg2 withData:(void *)arg3 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if ([r19 isBackButtonEnabled] != 0x0 && ([r20 isEqualToString:r2] & 0x1) == 0x0 && [r20 isEqualToString:r2] != 0x0) {
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_menuMainView));
                    if ([*(r19 + r20) isHelpShown] != 0x0) {
                            [*(r19 + r20) showHelp:0x0];
                    }
                    else {
                            [[Application sharedApplication] showExitConfirmation];
                    }
            }
    }
    return;
}

-(void)playButtonCallback {
    r31 = r31 - 0xd0;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int8_t *)([[Application sharedApplication] serverConnection] + 0xb8) = 0x0;
    [r19 disableInput];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_menuMainView));
    [*(r19 + r27) fadeEnabledState:0x1];
    sub_100089a40(0x1011e2cb8);
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    if (r19 != 0x0) {
            r0 = [r19 getGameModeString:&var_80];
    }
    else {
            var_68 = 0x0;
    }
    if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
            operator delete(var_80);
    }
    r9 = var_68;
    r8 = &var_68;
    if (sign_extend_64(var_51) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r8;
            }
            else {
                    r8 = r9;
            }
    }
    [[*(r19 + r27) gameModeLabel] setString:[NSString stringWithFormat:@"Game mode: %s"]];
    [r19 disableInput];
    [[Application sharedApplication] serverConnection] + 0x78;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = sub_100089a40(0x1011e2cb8);
    r8 = sign_extend_64(*(int8_t *)(r0 + 0x17));
    r9 = *r0;
    if (r8 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r0;
            }
            else {
                    r8 = r9;
            }
    }
    r23 = @class(NSString);
    r23 = [r23 stringWithFormat:@"%s"];
    [[Application sharedApplication] serverConnection] + 0x78;
    r26 = &var_B0;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r8 = sign_extend_64(var_99);
    r9 = var_B0;
    if (r8 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r26;
            }
            else {
                    r8 = r9;
            }
    }
    r22 = [NSString stringWithFormat:@"%s"];
    if ((sign_extend_64(var_99) & 0xffffffff80000000) != 0x0) {
            operator delete(var_B0);
    }
    if (([r23 isEqualToString:r2] & 0x1) == 0x0) {
            sub_100052bf4([[Application sharedApplication] serverConnection]);
            *(int32_t *)([[Application sharedApplication] serverConnection] + 0xc4) = 0x0;
    }
    [r19 performSelector:@selector(playButtonCallbackMain) withObject:0x0 afterDelay:r4];
    if ((sign_extend_64(var_81) & 0xffffffff80000000) != 0x0) {
            operator delete(var_98);
    }
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(var_68);
    }
    return;
}

-(void)playButtonCallbackMain {
    r31 = r31 - 0x90;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_menuMainView));
    r0 = [[*(self + r25) nickname] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if (r0 == 0x0 || [r0 isEqualToString:r2] != 0x0) {
            [*(r19 + r25) clearNickname];
    }
    [r19 storeNickname];
    [[[Application sharedApplication] userData] setNickname:[*(r19 + r25) nickname]];
    r0 = @class(Application);
    r0 = [r0 sharedApplication];
    r0 = [r0 userData];
    r0 = [r0 nickname];
    r0 = [r0 UTF8String];
    if (r0 != 0x0) {
            r1 = r0;
    }
    else {
            r1 = "";
    }
    r0 = sub_10003301c(&var_68, r1);
    if ((sign_extend_64(*(int8_t *)byte_1011deb9f) & 0xffffffff80000000) != 0x0) {
            operator delete(*0x1011deb88);
    }
    *(int128_t *)0x1011deb88 = var_68;
    *0x1011deb98 = var_58;
    if ((sub_100052458([[Application sharedApplication] serverConnection]) & 0x1) == 0x0) goto loc_100034b8c;

loc_100034b00:
    r21 = @selector(serverConnection);
    [*(r19 + r25) tankAnimShowState:0x1];
    [r19 disableInput];
    objc_msgSend([Application sharedApplication], r21);
    sub_10003301c(&var_80, "event_enter_game");
    r0 = sub_10005173c(r22, &var_80, &var_68);
    r0 = &var_68;
    if (&var_68 == r0) goto loc_100034bb8;

loc_100034b7c:
    if (r0 == 0x0) goto loc_100034bc4;

loc_100034b80:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100034bc0;

loc_100034bc0:
    (r8)();
    goto loc_100034bc4;

loc_100034bc4:
    if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
            operator delete(var_80);
    }
    [[Application sharedApplication] serverConnection];
    sub_100052adc();
    *(int8_t *)0x1011cd1f8 = 0x0;
    [r19 performSelector:r2 withObject:r3 afterDelay:r4];
    goto loc_100034c14;

loc_100034c14:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100034bb8:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100034bc0;

loc_100034b8c:
    *(int32_t *)([[Application sharedApplication] serverConnection] + 0xbc) = 0x0;
    [r19 reconnectLoop];
    goto loc_100034c14;
}

@end