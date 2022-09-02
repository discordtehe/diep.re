@implementation FBAdFunnelLogger

-(bool)shouldLogEventWithSubtype:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self eventList];
    r0 = [r0 retain];
    r20 = [r0 containsObject:r2];
    [r21 release];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)initWithToken:(void *)arg2 andEventList:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg2;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_token, r22);
            r0 = [NSSet setWithArray:r20];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_eventList));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)logFunnelWithSubtype:(void *)arg2 withData:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r21 shouldLogEventWithSubtype:r19] != 0x0) {
            r22 = [[r21 getFunnelLoggingDataWithSubtype:r19 withExtraData:r20] retain];
            r23 = [[FBAdEventManager sharedManager] retain];
            r21 = [[r21 token] retain];
            [r23 logUXFunnelEventForToken:r21 extraData:r22];
            [r21 release];
            [r23 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)getFunnelLoggingDataWithSubtype:(void *)arg2 withExtraData:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 initWithObjectsAndKeys:@"iOS"];
    r20 = r0;
    [r0 setObject:r21 forKey:@"subtype"];
    [r21 release];
    [r20 setObject:@"5.4.0" forKey:@"sdk_version"];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r23 = [[r0 bundleIdentifier] retain];
    [r20 setNonNilObject:r23 forKey:@"bundle_package_name"];
    [r23 release];
    [r0 release];
    r22 = [[FBAdDevice machine] retain];
    [r20 setNonNilObject:r22 forKey:@"device_marketing_name"];
    [r22 release];
    r0 = @class(FBAdDevice);
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r20 setNonNilObject:r22 forKey:@"os_version"];
    [r22 release];
    if ([r19 count] != 0x0) {
            r22 = [[FBAdUtility getJSONStringFromObject:r19] retain];
            [r20 setNonNilObject:r22 forKey:@"additional_info"];
            [r22 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)orientationForSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = @"unknown";
    if (d1 < d0) {
            if (!CPU_FLAGS & S) {
                    r8 = @"unknown";
            }
            else {
                    r8 = @"landscape";
            }
    }
    if (CPU_FLAGS & G) {
            if (!CPU_FLAGS & G) {
                    r19 = r8;
            }
            else {
                    r19 = @"portrait";
            }
    }
    [r19 retain];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)uxFunnelDataWithEventType:(void *)arg2 {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if ([self shouldLogEventWithSubtype:arg2] != 0x0) {
            r20 = [[FBAdUtility stringValueForBool:0x1] retain];
            r19 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            [r20 release];
    }
    else {
            r19 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)addValue:(void *)arg2 withKey:(void *)arg3 toDictionary:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg4;
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r19;
            }
            else {
                    r2 = **___NSDictionary0__;
            }
    }
    r0 = [NSMutableDictionary dictionaryWithDictionary:r2];
    r0 = [r0 retain];
    [r0 setObject:r21 forKeyedSubscript:r20];
    [r20 release];
    [r21 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void)logDeviceRotationWithData:(void *)arg2 newSize:(struct CGSize)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r21 = [arg2 retain];
    r20 = [[self orientationForSize:r2] retain];
    r22 = [[self addValue:r20 withKey:@"to_orientation" toDictionary:r21] retain];
    [r21 release];
    [r20 release];
    [self logFunnelWithSubtype:@"device_rotated" withData:r22];
    [r22 release];
    return;
}

-(void)logAdChoicesTappedWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"ad_choices_clicked" withData:arg2];
    return;
}

-(void)logBackToAppWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"app_returned_to_foreground" withData:arg2];
    return;
}

-(void)logVideoDidFinishWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"video_finished" withData:arg2];
    return;
}

-(void)logLeaveAppWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"app_moved_to_background" withData:arg2];
    return;
}

-(void)logVideoDidMuteWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"sound_off" withData:arg2];
    return;
}

-(void)logSoundButtonPressedWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"sound_btn_pressed" withData:arg2];
    return;
}

-(void)logVideoDidSkipWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"video_skip_clicked" withData:arg2];
    return;
}

-(void)logVideoDidPauseWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"video_paused" withData:arg2];
    return;
}

-(void)logVideoDidStartPlayingWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"video_started" withData:arg2];
    return;
}

-(void)logVideoDidResumeWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"video_play" withData:arg2];
    return;
}

-(void)logAdResponseSuccessful:(void *)arg2 {
    [self logFunnelWithSubtype:@"ad_response_received" withData:arg2];
    return;
}

-(void)logVideoDidUnMuteWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"sound_on" withData:arg2];
    return;
}

-(void)logVideoPlayPauseButtonTappedWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"video_play_pause_clicked" withData:arg2];
    return;
}

-(void)logVideoErrorWithData:(void *)arg2 error:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self addValue:arg3 withKey:@"error" toDictionary:r21] retain];
    [r21 release];
    [self logFunnelWithSubtype:@"video_error" withData:r19];
    [r19 release];
    return;
}

-(void)logCTAClickedWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"cta_clicked" withData:arg2];
    return;
}

-(void)logAdReportTappedWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"ad_report_clicked" withData:arg2];
    return;
}

-(void)logAdReportManagePrefsClickedWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"ad_report_manage_prefs_clicked" withData:arg2];
    return;
}

-(void)logAdReportWhySeeingThisClickedWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"ad_report_why_seeing_this_clicked" withData:arg2];
    return;
}

-(void)logAdSelectionTimeoutWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"ad_selection_timeout" withData:arg2];
    return;
}

-(void)logAdCloseClickedWithData:(void *)arg2 {
    [self logFunnelWithSubtype:@"ad_close_clicked" withData:arg2];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_eventList, 0x0);
    objc_storeStrong((int64_t *)&self->_token, 0x0);
    return;
}

-(void)logAdReportedWithData:(void *)arg2 userJourney:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    if (r22 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r22;
            }
            else {
                    r2 = **___NSDictionary0__;
            }
    }
    r0 = [NSMutableDictionary dictionaryWithDictionary:r2];
    r29 = r29;
    r21 = [r0 retain];
    [r22 release];
    if (r19 != 0x0) {
            r22 = [[FBAdUtility getJSONStringFromObject:r19] retain];
            [r21 setNonNilObject:r22 forKey:@"user_journey"];
            [r22 release];
    }
    [r20 logFunnelWithSubtype:@"ad_reported" withData:r21];
    [r21 release];
    [r19 release];
    return;
}

-(void *)token {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_token)), 0x0);
    return r0;
}

-(void)setToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)eventList {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_eventList)), 0x0);
    return r0;
}

-(void)setEventList:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end