@implementation UMONPlacementContent

-(void *)initWithPlacementId:(void *)arg2 withParams:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg2;
    r19 = [r22 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_placementId, r22);
            r0 = [r20 valueForKey:@"type"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_type));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [NSDictionary dictionaryWithDictionary:r20];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_userInfo));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)isReady {
    r0 = self;
    if (r0->_state == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)sendCustomEvent:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [r2 retain];
    r19 = r0;
    r0 = [r0 category];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 length];
    [r0 release];
    if (r22 == 0x0) {
            r0 = [r20 defaultEventCategory];
            r29 = r29;
            r21 = [r0 retain];
            r2 = r21;
            [r19 setCategory:r2];
            [r21 release];
    }
    r0 = [USRVWebViewApp getCurrentApp];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r22 = [[r19 getJsonDictionary] retain];
            r23 = [sub_1000f3c14() retain];
            r24 = [sub_1000f30e8() retain];
            r20 = [[r20 placementId] retain];
            [r21 sendEvent:r23 category:r24 param1:r20];
            [r20 release];
            [r24 release];
            [r23 release];
            [r22 release];
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x2) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Could not send custom event due to app being null", @selector(getLogLevel), r2, r3);
            }
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)sendCustomEvent:(void *)arg2 withUserInfo:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    var_40 = r21;
    r21 = [r21 retain];
    var_38 = r19;
    r19 = [r19 retain];
    r0 = [UMONCustomEvent build:&var_60];
    r22 = [r0 retain];
    [self sendCustomEvent:r22];
    [r22 release];
    [var_38 release];
    [var_40 release];
    [r19 release];
    [r21 release];
    return;
}

-(void *)defaultEventCategory {
    objc_retainAutorelease(@"PLACEMENT_CONTENT");
    return @"PLACEMENT_CONTENT";
}

-(void)sendCustomEventWithType:(void *)arg2 {
    [self sendCustomEvent:arg2 withUserInfo:0x0];
    return;
}

-(void *)type {
    r0 = self->_type;
    return r0;
}

-(void)setType:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_type, arg2);
    return;
}

-(void)setPlacementId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementId, arg2);
    return;
}

-(void *)placementId {
    r0 = self->_placementId;
    return r0;
}

-(long long)state {
    r0 = self->_state;
    return r0;
}

-(void)setUserInfo:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_userInfo, arg2);
    return;
}

-(void)setState:(long long)arg2 {
    self->_state = arg2;
    return;
}

-(void *)userInfo {
    r0 = self->_userInfo;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_placementId, 0x0);
    objc_storeStrong((int64_t *)&self->_type, 0x0);
    return;
}

@end