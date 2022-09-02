@implementation AdColonyInterstitial

-(void *)init {
    r0 = [NSException exceptionWithName:@"AdColonyUsageException" reason:@"AdColonyInterstitial instance must not be created directly. You only need to use one when it is passed to you." userInfo:0x0];
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    r0 = objc_exception_throw(r0);
    return r0;
}

-(void)cancel {
    *(int8_t *)(int64_t *)&self->_expired = 0x1;
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    [r0 performBlockOnWorkerThread:&var_38 mode:0x1];
    [r0 release];
    return;
}

-(bool)showWithPresentingViewController:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    r22 = self;
    r19 = [arg2 retain];
    r0 = [AdColony sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 showingInterstitial] & 0x1) != 0x0) goto loc_10024847c;

loc_100248444:
    if (*(int8_t *)(int64_t *)&r22->_expired == 0x0) goto loc_1002484b4;

loc_100248454:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x0 withFormat:@"Tried to show an expired interstitial ad."];
    goto loc_10024847c;

loc_10024847c:
    r25 = 0x0;
    goto loc_100248480;

loc_100248480:
    [r20 release];
    [r19 release];
    r0 = r25;
    return r0;

loc_1002484b4:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 zoneFromID];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 objectForKeyedSubscript:r22->_zoneID];
    r29 = r29;
    r21 = [r0 retain];
    [r25 release];
    [r24 release];
    if ([r21 currentAttempt] >= [r21 playInterval] || ([r21 firstPlay] & 0x1) != 0x0 || [r21 playInterval] == 0x0 || [r21 playInterval] == 0x1) goto loc_1002485d0;

loc_100248584:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x2 withFormat:@"Tried to play an ad, but we are skipping this request because of the zone's interval setting"];
    [r21 setCurrentAttempt:[r21 currentAttempt] + 0x1];
    goto loc_10024884c;

loc_10024884c:
    r25 = 0x0;
    goto loc_100248850;

loc_100248850:
    [r21 release];
    goto loc_100248480;

loc_1002485d0:
    if ([r21 currentAttempt] < [r21 playInterval]) {
            if ([r21 firstPlay] == 0x0) {
                    [r21 currentAttempt] + 0x1;
            }
    }
    [r21 setCurrentAttempt:r2];
    if ([r21 firstPlay] != 0x0) {
            [r21 setFirstPlay:0x0];
    }
    r0 = [NSFileManager defaultManager];
    r29 = r29;
    r0 = [r0 retain];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_videoFilepath));
    r25 = [r0 fileExistsAtPath:*(r22 + r26)];
    [r0 release];
    if ((r25 & 0x1) != 0x0 || ([*(r22 + r26) isEqualToString:r2] & 0x1) != 0x0) goto loc_1002486cc;

loc_100248810:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[AdColonyInterstitial showWithPresentingViewController:]" line:0x4c withFormat:@"Cannot show ad. Video file at path: %@ does not exist."];
    goto loc_10024884c;

loc_1002486cc:
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_sessionID));
    r0 = [r20 getSession:*(r22 + r25)];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            objc_sync_enter(r22);
            r25 = 0x1;
            *(int8_t *)(int64_t *)&r22->_active = r25;
            objc_sync_exit(r22);
            r22 = [[AdColony sharedInstance] retain];
            r24 = [r24 retain];
            var_60 = [r19 retain];
            var_58 = [r20 retain];
            [r22 performBlockOnWorkerThread:&var_88 mode:0x1];
            [r22 release];
            [var_58 release];
            [var_60 release];
            [r24 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[AdColonyInterstitial showWithPresentingViewController:]" line:0x52 withFormat:@"No session with id: %@ has been registered. Cannot show interstitial."];
            r25 = 0x0;
    }
    [r24 release];
    goto loc_100248850;
}

-(void)setOpen:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_open));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)setClose:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_close));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)setAudioStart:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_audioStart));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)setAudioStop:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_audioStop));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)setExpire:(void *)arg2 {
    r0 = [arg2 retain];
    var_18 = r0;
    r20 = [r0 retain];
    r0 = objc_retainBlock(&var_38);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_expire));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [var_18 release];
    [r20 release];
    return;
}

-(void)setIapOpportunity:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_iapOpportunity));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)setLeftApplication:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_leftApplication));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void *)zoneID {
    r0 = self->_zoneID;
    return r0;
}

-(void)dealloc {
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[AdColonyInterstitial dealloc]" line:0x98 withFormat:@"dealloc called on ADCInterstitial"];
    [[&var_20 super] dealloc];
    return;
}

-(void)setClick:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_click));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(bool)audioEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_audioEnabled;
    return r0;
}

-(bool)expired {
    r0 = *(int8_t *)(int64_t *)&self->_expired;
    return r0;
}

-(bool)iapEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_iapEnabled;
    return r0;
}

-(void)setZoneID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_zoneID, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_click, 0x0);
    objc_storeStrong((int64_t *)&self->_leftApplication, 0x0);
    objc_storeStrong((int64_t *)&self->_iapOpportunity, 0x0);
    objc_storeStrong((int64_t *)&self->_expire, 0x0);
    objc_storeStrong((int64_t *)&self->_audioStop, 0x0);
    objc_storeStrong((int64_t *)&self->_audioStart, 0x0);
    objc_storeStrong((int64_t *)&self->_close, 0x0);
    objc_storeStrong((int64_t *)&self->_open, 0x0);
    objc_storeStrong((int64_t *)&self->_creativeID, 0x0);
    objc_storeStrong((int64_t *)&self->_adID, 0x0);
    objc_storeStrong((int64_t *)&self->_videoFilepath, 0x0);
    objc_storeStrong((int64_t *)&self->_zoneID, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionID, 0x0);
    return;
}

-(void *)initSafeWithSessionID:(void *)arg2 andVideoFilepath:(void *)arg3 {
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
    r22 = arg3;
    r23 = arg2;
    r19 = [r23 retain];
    r20 = [r22 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_sessionID, r23);
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 sessionFromID];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 objectForKeyedSubscript:r19];
            r29 = r29;
            r23 = [r0 retain];
            [r25 release];
            [r24 release];
            if (r23 != 0x0) {
                    r0 = [r23 zoneID];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_zoneID));
                    r8 = *(r21 + r9);
                    *(r21 + r9) = r0;
                    [r8 release];
            }
            else {
                    objc_storeStrong((int64_t *)&r21->_zoneID, @"");
            }
            objc_storeStrong((int64_t *)&r21->_videoFilepath, r22);
            *(int8_t *)(int64_t *)&r21->_audioEnabled = 0x1;
            *(int8_t *)(int64_t *)&r21->_iapEnabled = 0x0;
            objc_storeStrong((int64_t *)&r21->_adID, @"");
            [r23 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setExpired:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_expired = arg2;
    return;
}

-(void)setIapEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_iapEnabled = arg2;
    return;
}

-(void)setAudioEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_audioEnabled = arg2;
    return;
}

-(void)setAdID:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r0 = [r20 retain];
    r19 = r0;
    if ([r0 length] <= 0x80) {
            objc_storeStrong((int64_t *)&r21->_adID, r20);
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[AdColonyInterstitial(Private) setAdID:]" line:0xc9 withFormat:@"Tried to set an ad id with length greater than 128 characters"];
    }
    [r19 release];
    return;
}

-(void)setCreativeID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_creativeID, arg2);
    return;
}

-(bool)getActive {
    objc_sync_enter(self);
    objc_sync_exit(self);
    r0 = r20;
    return r0;
}

-(void *)open {
    r0 = self->_open;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)close {
    objc_sync_enter(self);
    *(int8_t *)(int64_t *)&self->_active = 0x0;
    objc_sync_exit(self);
    r0 = self->_close;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)audioStart {
    r0 = self->_audioStart;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)audioStop {
    r0 = self->_audioStop;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)expire {
    r0 = self->_expire;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)iapOpportunity {
    r0 = self->_iapOpportunity;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)leftApplication {
    r0 = self->_leftApplication;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)click {
    r0 = self->_click;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adID {
    r0 = self->_adID;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)creativeID {
    r0 = self->_creativeID;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

@end