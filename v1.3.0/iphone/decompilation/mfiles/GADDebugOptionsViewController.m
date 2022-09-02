@implementation GADDebugOptionsViewController

+(void *)debugOptionsViewControllerWithAdUnitID:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self alloc] initWithAd:0x0 adUnitID:r21 debugDialogString:0x0];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithNibName:(void *)arg2 bundle:(void *)arg3 {
    [self release];
    return 0x0;
}

-(void *)initWithCoder:(void *)arg2 {
    [self release];
    return 0x0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)initWithAd:(void *)arg2 adUnitID:(void *)arg3 debugDialogString:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r23 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [r23 retain];
    r0 = [[&var_40 super] initWithNibName:0x0 bundle:0x0];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeWeak((int64_t *)&r22->_ad, r19);
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitID));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r22->_adDebugDialogString, r23);
            r0 = [r19 context];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_context));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            [r22 updateConfigurationFromSettings];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void)updateConfigurationFromSettings {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = @class(GADSettings);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    *(int8_t *)(int64_t *)&r19->_shouldEnableDebugSignal = [r0 boolForKey:*0x100e9b618];
    [r0 release];
    r0 = @class(GADSettings);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    *(int8_t *)(int64_t *)&r19->_shouldEnableInAppPreview = [r0 boolForKey:*0x100e9b608];
    [r0 release];
    r0 = @class(GADSettings);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:*0x100e9b620] retain];
    [r0 release];
    r0 = [NSURL URLWithString:r2];
    r21 = r0;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r19->_debugDeviceLinkingURL, r21);
    }
    [r22 release];
    [r20 release];
    return;
}

-(void)showCreativeInformationAlertView {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = @"Creative information is not available";
    [r20 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adDebugDialogString));
    if ([*(r19 + r22) length] != 0x0) {
            r20 = [*(r19 + r22) retain];
            [@"Creative information is not available" release];
    }
    r21 = @selector(length);
    r0 = [UIAlertView alloc];
    r0 = [r0 initWithTitle:@"Debug Ad Information" message:r20 delegate:r19 cancelButtonTitle:@"OK" otherButtonTitles:0x0];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_creativeInformationAlertView));
    r8 = *(r19 + r23);
    *(r19 + r23) = r0;
    [r8 release];
    if (objc_msgSend(*(r19 + r22), r21) != 0x0) {
            [*(r19 + r23) addButtonWithTitle:@"Copy"];
            [*(r19 + r23) addButtonWithTitle:@"Report"];
    }
    [*(r19 + r23) show];
    [r20 release];
    return;
}

-(void)showDebugOptionsAlertView {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[NSMutableArray alloc] init];
    r0 = [GADApplication sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 debugModeEnabled];
    [r0 release];
    if (r24 != 0x0) {
            sub_100822370(r20, @"Troubleshooting mode is enabled.");
    }
    r0 = [GADApplication sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 inAppPreviewCreativeToken];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 != 0x0) {
            sub_100822370(r20, @"Creative preview is enabled.");
    }
    if ([r20 count] != 0x0) {
            r22 = [[r20 componentsJoinedByString:r2] retain];
    }
    else {
            r22 = 0x0;
    }
    r0 = [UIAlertView alloc];
    r0 = [r0 initWithTitle:@"Debug Options" message:r22 delegate:r19 cancelButtonTitle:@"Dismiss" otherButtonTitles:0x0];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_debugOptionsAlertView));
    r8 = *(r19 + r23);
    *(r19 + r23) = r0;
    [r8 release];
    [*(r19 + r23) addButtonWithTitle:@"Ad Information"];
    [*(r19 + r23) addButtonWithTitle:@"Creative Preview"];
    [*(r19 + r23) addButtonWithTitle:@"Troubleshooting"];
    [*(r19 + r23) show];
    [r22 release];
    [r20 release];
    return;
}

-(void)alertView:(void *)arg2 clickedButtonAtIndex:(long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (r21->_debugOptionsAlertView == r19) goto loc_100840180;

loc_100840158:
    if (r21->_creativeInformationAlertView == r19) goto loc_10084018c;

loc_10084016c:
    [r21 finishedDebugFlow];
    goto loc_1008401a0;

loc_1008401a0:
    [r19 release];
    return;

loc_10084018c:
    r1 = @selector(creativeInfoAlertViewClickedButtonAtIndex:);
    goto loc_100840194;

loc_100840194:
    objc_msgSend(r21, r1);
    goto loc_1008401a0;

loc_100840180:
    r1 = @selector(debugOptionsAlertViewClickedButtonAtIndex:);
    goto loc_100840194;
}

-(void)viewDidLoad {
    r31 = r31 - 0x70;
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
    [[&var_50 super] viewDidLoad];
    r21 = [[r19 view] retain];
    r22 = [[UIColor whiteColor] retain];
    [r21 setBackgroundColor:r22];
    [r22 release];
    [r21 release];
    r22 = [GADCloseButton alloc];
    r0 = [GADApplication sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 context] retain];
    r0 = [r22 initWithFrame:r24 context:r3];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_closeButton));
    r8 = *(r19 + r25);
    *(r19 + r25) = r0;
    [r8 release];
    [r24 release];
    [r23 release];
    [*(r19 + r25) setAccessibilityLabel:@"Close Debug Options"];
    [*(r19 + r25) addTarget:r19 action:@selector(closeButtonPressed:) forControlEvents:0x40];
    r0 = [r19 view];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 addSubview:r2];
    [r22 release];
    if ((sub_100818a24() & 0x1) != 0x0) {
            [r19 updateConfigurationFromSettings];
            if (*(int8_t *)(int64_t *)&r19->_shouldEnableInAppPreview == 0x0 && *(int8_t *)(int64_t *)&r19->_shouldEnableDebugSignal == 0x0) {
                    r1 = @selector(showCreativeInformationAlertView);
            }
            else {
                    if (r19->_debugDeviceLinkingURL != 0x0) {
                            r1 = @selector(showDebugOptionsAlertView);
                    }
                    else {
                            r1 = @selector(showCreativeInformationAlertView);
                    }
            }
            objc_msgSend(r19, r1);
    }
    else {
            r23 = @selector(addSubview:);
            r22 = [[UILabel alloc] init];
            [r22 setText:[[NSString alloc] initWithFormat:@"OS version is below the minimum supported version %ld"]];
            [r22 setNumberOfLines:0x0];
            r0 = [r19 view];
            r0 = [r0 retain];
            objc_msgSend(r0, r23);
            [r24 release];
            sub_100889560();
            r23 = [[r19 view] retain];
            r19 = [[r19 view] retain];
            r20 = [[NSLayoutConstraint constraintWithItem:r22 attribute:0x7 relatedBy:0x0 toItem:r19 attribute:0x7 multiplier:r7 constant:*0x100bf4488] retain];
            [r23 addConstraint:r20];
            [r20 release];
            [r19 release];
            [r23 release];
            [r21 release];
            [r22 release];
    }
    return;
}

-(void)debugOptionsAlertViewClickedButtonAtIndex:(long long)arg2 {
    r2 = arg2;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 > 0x3) goto loc_1008401f0;

loc_1008401d0:
    goto *0x100840238[sign_extend_64(*(int32_t *)(0x100840238 + r2 * 0x4)) + 0x100840238];

loc_100840204:
    r1 = @selector(finishedDebugFlow);
    goto loc_100840224;

loc_100840224:
    objc_msgSend(r19, r1);
    return;

loc_1008401e4:
    r1 = @selector(showCreativeInformationAlertView);
    goto loc_100840224;

loc_100840210:
    r1 = @selector(linkInAppPreview);
    goto loc_100840224;

loc_10084021c:
    r1 = @selector(linkDebugSignal);
    goto loc_100840224;

loc_1008401f0:
    sub_1007ce06c(0x0, @"Unrecognized button index for debug options alert view. Index:%ld");
    goto loc_100840204;
}

-(void)showFeatureNotEnabledAlertView {
    [self showAlertViewWithTitle:@"Feature Not Enabled"];
    return;
}

-(void *)debugDeviceQueryParameters {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [GADSQLStorage sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:*0x100e9be18] retain];
    [r0 release];
    r21 = [[NSMutableDictionary alloc] init];
    if ([r20 length] != 0x0) {
            sub_100822058(r21, @"linkedDeviceId", r20);
    }
    r2 = r19->_adUnitID;
    if (r2 != 0x0) {
            sub_100822058(r21, @"adSlotPath", r2);
    }
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)debugURLRequestForString:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self debugDeviceQueryParameters] retain];
    r20 = [NSURL URLWithString:r2];
    [r21 release];
    r0 = [r20 retain];
    r20 = r0;
    r0 = sub_100899534(r0, r19);
    r0 = [r0 retain];
    r22 = [sub_1008b9608(r0, 0x0, 0x0, 0x0) retain];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)creativeInfoAlertViewClickedButtonAtIndex:(long long)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_adDebugDialogString));
    if ([*(r19 + r21) length] == 0x0) goto loc_1008402c0;

loc_100840280:
    if (r20 == 0x2) goto loc_1008402ac;

loc_100840288:
    if (r20 == 0x1) goto loc_1008402e0;

loc_100840290:
    if (r20 != 0x0) {
            sub_1007ce06c(0x0, @"Unrecognized button index for creative info alert view. Index:%ld");
    }
    goto loc_1008402c0;

loc_1008402c0:
    [r19 finishedDebugFlow];
    return;

loc_1008402e0:
    r0 = [UIPasteboard generalPasteboard];
    r0 = [r0 retain];
    [r0 setString:*(r19 + r21)];
    [r19 finishedDebugFlow];
    [r0 release];
    return;

loc_1008402ac:
    sub_1008b900c(*(r19 + r21), r19->_context);
    goto loc_1008402c0;
}

-(void)createDeviceIdentifierAndlinkDevice {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r19->_debugDeviceLinkingURL != 0x0) {
            r0 = [NSUUID UUID];
            r0 = [r0 retain];
            r21 = [[r0 UUIDString] retain];
            [r0 release];
            r0 = [GADSQLStorage sharedInstance];
            r0 = [r0 retain];
            [r0 setString:r21 forKey:*0x100e9be18];
            [r0 release];
            [r19 linkDevice];
            [r21 release];
    }
    else {
            [r19 finishedDebugFlow];
    }
    return;
}

-(void)linkDevice {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [[self debugDeviceQueryParameters] retain];
    r0 = r21->_debugDeviceLinkingURL;
    r0 = sub_100899534(r0, r19);
    r29 = &saved_fp;
    r20 = [r0 retain];
    r22 = sub_1008718ac();
    if (r22 != 0x0 && sub_1008718b8() != 0x0) {
            r0 = [r22 alloc];
            r0 = [r0 initWithURL:r20];
            r22 = r0;
            [r0 setDelegate:r21];
            r24 = [[r21 view] retain];
            r25 = [[r22 view] retain];
            [r24 addSubview:r25];
            [r25 release];
            [r24 release];
            [[r22 view] retain];
            sub_1008897a8();
            [r23 release];
            [r21 addChildViewController:r22];
    }
    else {
            [r21 finishedDebugFlow];
            r22 = [[GADURLOpener sharedInstance] retain];
            r21 = objc_loadWeakRetained((int64_t *)&r21->_ad);
            [r22 openURL:r20 forAd:r21];
            [r21 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)linkDebugSignal {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    if (*(int8_t *)(int64_t *)&r20->_shouldEnableDebugSignal != 0x0) {
            r0 = [GADSQLStorage sharedInstance];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 stringForKey:*0x100e9be18];
            r29 = r29;
            r19 = [r0 retain];
            [r23 release];
            if ([r19 length] != 0x0) {
                    r0 = [GADSettings sharedInstance];
                    r0 = [r0 retain];
                    r21 = [[r0 stringForKey:*0x100e9b628] retain];
                    [r0 release];
                    r22 = [[r20 debugURLRequestForString:r21] retain];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_debugSignalStatusFetchInProgress));
                    if (r22 != 0x0) {
                            asm { ccmp       w9, #0x0, #0x0, ne };
                    }
                    if (!CPU_FLAGS & E) {
                            [r20 finishedDebugFlow];
                    }
                    else {
                            *(int8_t *)(r20 + r8) = 0x1;
                            objc_initWeak(&stack[-72], r20);
                            [[GADURLSession alloc] init];
                            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
                            [r23 sendRequest:r22 withContext:r20 notificationPolicy:0x3 completionHandler:&var_60];
                            objc_destroyWeak(&var_60 + 0x20);
                            [r23 release];
                            objc_destroyWeak(&stack[-72]);
                    }
                    [r22 release];
                    [r21 release];
            }
            else {
                    [r20 createDeviceIdentifierAndlinkDevice];
            }
            [r19 release];
    }
    else {
            [r20 showFeatureNotEnabledAlertView];
    }
    return;
}

-(void)debugSignalStatusReceivedResponse:(void *)arg2 data:(void *)arg3 {
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
    r29 = &saved_fp;
    r20 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [arg2 statusCode];
    [r22 release];
    *(int8_t *)(int64_t *)&r20->_debugSignalStatusFetchInProgress = 0x0;
    if (r21 > 0x12b) goto loc_100840e3c;

loc_100840d04:
    r0 = [NSString alloc];
    r0 = [r0 initWithData:r19 encoding:0x4];
    r21 = r0;
    r0 = sub_10084acf0(r0, &var_48);
    r29 = r29;
    r23 = [r0 retain];
    r22 = [var_48 retain];
    if (r22 != 0x0) {
            sub_1007ce06c(0x0, @"Could not decode response into JSON. Error: %@");
    }
    r0 = [r23 objectForKeyedSubscript:@"debug_mode"];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if ([r0 isEqual:r2] == 0x0) goto loc_100840e1c;

loc_100840da8:
    r0 = [GADApplication sharedInstance];
    r0 = [r0 retain];
    [r0 setDebugModeEnabled:0x1];
    [r0 release];
    [r20 showAlertViewWithTitle:@"The device is successfully linked for troubleshooting."];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    goto loc_100840e84;

loc_100840e84:
    [r19 release];
    return;

loc_100840e1c:
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    goto loc_100840e3c;

loc_100840e3c:
    r0 = [GADApplication sharedInstance];
    r0 = [r0 retain];
    [r0 setDebugModeEnabled:0x0];
    [r0 release];
    [r20 linkDevice];
    goto loc_100840e84;
}

-(void)linkInAppPreview {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    if (*(int8_t *)(int64_t *)&r20->_shouldEnableInAppPreview != 0x0) {
            r0 = [GADSQLStorage sharedInstance];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 stringForKey:*0x100e9be18];
            r29 = r29;
            r19 = [r0 retain];
            [r23 release];
            if ([r19 length] != 0x0) {
                    r0 = [GADSettings sharedInstance];
                    r0 = [r0 retain];
                    r21 = [[r0 stringForKey:*0x100e9b610] retain];
                    [r0 release];
                    r22 = [[r20 debugURLRequestForString:r21] retain];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_inAppPreviewTokenFetchInProgress));
                    if (r22 != 0x0) {
                            asm { ccmp       w9, #0x0, #0x0, ne };
                    }
                    if (!CPU_FLAGS & E) {
                            [r20 finishedDebugFlow];
                    }
                    else {
                            *(int8_t *)(r20 + r8) = 0x1;
                            objc_initWeak(&stack[-72], r20);
                            [[GADURLSession alloc] init];
                            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
                            [r23 sendRequest:r22 withContext:r20 notificationPolicy:0x3 completionHandler:&var_60];
                            objc_destroyWeak(&var_60 + 0x20);
                            [r23 release];
                            objc_destroyWeak(&stack[-72]);
                    }
                    [r22 release];
                    [r21 release];
            }
            else {
                    [r20 createDeviceIdentifierAndlinkDevice];
            }
            [r19 release];
    }
    else {
            [r20 showFeatureNotEnabledAlertView];
    }
    return;
}

-(void)showSystemErrorAlertView {
    [self showAlertViewWithTitle:@"In-app preview failed to load because of a system error. Please try again later."];
    return;
}

-(void)finishedDebugFlow {
    r0 = [self retain];
    [r0 dismissViewControllerAnimated:0x1 completion:&var_28];
    [r0 release];
    return;
}

-(void)showAlertViewWithTitle:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[UIAlertView alloc] initWithTitle:r22 message:0x0 delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:0x0];
    [r22 release];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_statusAlertView));
    r0 = *(self + r21);
    *(self + r21) = r20;
    [r0 release];
    [*(self + r21) show];
    return;
}

-(void)inAppPreviewSignalStatusReceivedResponse:(void *)arg2 data:(void *)arg3 {
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
    r29 = &saved_fp;
    r19 = self;
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg2 statusCode];
    [r22 release];
    *(int8_t *)(int64_t *)&r19->_inAppPreviewTokenFetchInProgress = 0x0;
    if (r21 > 0x12b) goto loc_1008415f0;

loc_1008413fc:
    r0 = [NSString alloc];
    r0 = [r0 initWithData:r20 encoding:0x4];
    r21 = r0;
    r0 = sub_10084acf0(r0, &var_48);
    r29 = r29;
    r22 = [r0 retain];
    r23 = [var_48 retain];
    if (r23 == 0x0) goto loc_10084147c;

loc_100841450:
    [r19 showSystemErrorAlertView];
    sub_1007ce06c(0x0, @"Could not decode response into JSON. Error: %@");
    r26 = 0x1;
    goto loc_1008415d4;

loc_1008415d4:
    [r22 release];
    [r23 release];
    [r21 release];
    if (r26 == 0x0) {
            [r19 showSystemErrorAlertView];
    }
    goto loc_100841600;

loc_100841600:
    [r20 release];
    return;

loc_10084147c:
    r0 = [r22 objectForKeyedSubscript:r2];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_100841500;

loc_1008414a8:
    r0 = [GADApplication sharedInstance];
    r0 = [r0 retain];
    [r0 setInAppPreviewCreativeToken:r24];
    [r0 release];
    [r19 showAlertViewWithTitle:@"The device is successfully linked for creative preview."];
    r26 = 0x1;
    goto loc_1008415cc;

loc_1008415cc:
    [r24 release];
    goto loc_1008415d4;

loc_100841500:
    r0 = [r22 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if ([r0 isEqual:r2] == 0x0) goto loc_100841588;

loc_10084153c:
    r0 = [GADApplication sharedInstance];
    r0 = [r0 retain];
    [r0 setInAppPreviewCreativeToken:0x0];
    [r0 release];
    [r19 linkDevice];
    goto loc_1008415b8;

loc_1008415b8:
    r26 = 0x1;
    goto loc_1008415c4;

loc_1008415c4:
    [r25 release];
    goto loc_1008415cc;

loc_100841588:
    if ([r25 isEqual:r2] == 0x0) goto loc_1008415c0;

loc_1008415a0:
    [r19 showAlertViewWithTitle:@"There was no creative pushed from DFP to the device."];
    goto loc_1008415b8;

loc_1008415c0:
    r26 = 0x0;
    goto loc_1008415c4;

loc_1008415f0:
    [r19 showSystemErrorAlertView];
    goto loc_100841600;
}

-(void)closeButtonPressed:(void *)arg2 {
    [self finishedDebugFlow];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)safariViewControllerDidFinish:(void *)arg2 {
    [self finishedDebugFlow];
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_adUnitID, 0x0);
    objc_storeStrong((int64_t *)&self->_closeButton, 0x0);
    objc_storeStrong((int64_t *)&self->_debugDeviceLinkingURL, 0x0);
    objc_storeStrong((int64_t *)&self->_statusAlertView, 0x0);
    objc_storeStrong((int64_t *)&self->_debugOptionsAlertView, 0x0);
    objc_storeStrong((int64_t *)&self->_creativeInformationAlertView, 0x0);
    objc_storeStrong((int64_t *)&self->_adDebugDialogString, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_destroyWeak((int64_t *)&self->_ad);
    return;
}

@end