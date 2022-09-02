@implementation ADCViewContext

-(void *)session {
    r0 = self->_session;
    return r0;
}

-(void *)container {
    r0 = self->_container;
    return r0;
}

-(struct CGRect)rectFromDict:(void *)arg2 {
    var_70 = d11;
    stack[-120] = d10;
    r31 = r31 + 0xffffffffffffff80;
    var_60 = d9;
    stack[-104] = d8;
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            [r20 integerValue];
            r0 = objc_msgSend(r19, r23);
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    [r21 integerValue];
                    r0 = objc_msgSend(r19, r23);
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            [r22 unsignedIntegerValue];
                            r23 = [[r19 objectForKeyedSubscript:r2] retain];
                            if (r23 != 0x0) {
                                    [r23 unsignedIntegerValue];
                                    asm { scvtf      d8, x24 };
                                    asm { scvtf      d9, x25 };
                                    asm { ucvtf      d10, x27 };
                                    asm { ucvtf      d11, x0 };
                            }
                            [r23 release];
                    }
                    [r22 release];
            }
            [r21 release];
    }
    [r20 release];
    r0 = [r19 release];
    return r0;
}

-(unsigned long long)moduleID {
    r0 = self->_moduleID;
    return r0;
}

-(void *)initWithDict:(void *)arg2 moduleID:(unsigned long long)arg3 andType:(void *)arg4 viewExists:(bool)arg5 {
    r31 = r31 - 0x120;
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
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
    r29 = &saved_fp;
    r22 = arg5;
    var_D8 = arg4;
    r21 = arg3;
    r19 = [arg2 retain];
    r20 = [[r29 - 0x80 super] initWithDict:r19];
    if (r20 == 0x0) goto loc_100231ac8;

loc_100231500:
    var_DC = r22;
    var_E8 = r21;
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCViewContext initWithDict:moduleID:andType:viewExists:]" line:0x1a withFormat:@"Tried to obtain a view with a bad session id: %@"];
    }
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r22 = r0;
    r29 = r29;
    r24 = [r0 retain];
    [r28 release];
    [r25 release];
    if (r24 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_session, r22);
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCViewContext initWithDict:moduleID:andType:viewExists:]" line:0x1e withFormat:@"No session with id: %@ has been registered"];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCViewContext initWithDict:moduleID:andType:viewExists:]" line:0x25 withFormat:@"Tried to obtain a view with an invalid container id"];
    }
    r28 = [[AdColony sharedInstance] retain];
    r0 = [r28 containerForAdSessionID:r21 isFullscreen:[r25 boolValue]];
    r22 = r0;
    r29 = r29;
    r27 = [r0 retain];
    [r28 release];
    if (r27 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_container, r22);
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCViewContext initWithDict:moduleID:andType:viewExists:]" line:0x29 withFormat:@"Couldn't find a container with the given ad_session_id and container_id combination"];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r22 = r0;
    r29 = r29;
    r0 = [r0 retain];
    var_F0 = r0;
    if (r0 != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_viewID));
            r1 = r22;
            objc_storeStrong(r20 + r23, r1);
    }
    else {
            r1 = @selector(fullLogWithModuleID:isPublic:level:function:line:withFormat:);
            objc_msgSend(@class(ADCLogManager), r1);
            r23 = *(int32_t *)ivar_offset(_viewID);
    }
    asm { sxtw       x28, w23 };
    r0 = [r27 objectForIdentifier:[*(r20 + (r23 << r1)) unsignedIntegerValue]];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_100231858;

loc_1002317e0:
    if (([r23 isKindOfClass:r2] & 0x1) == 0x0) {
            [*(r20 + r28) unsignedIntegerValue];
            [r23 class];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCViewContext initWithDict:moduleID:andType:viewExists:]" line:0x37 withFormat:@"View with id: %lu is not an %@"];
    }
    else {
            objc_storeWeak((int64_t *)&r20->_view, r23);
    }
    goto loc_1002318c0;

loc_1002318c0:
    if ((var_DC & 0x1) != 0x0) {
            if (([NSThread isMainThread] & 0x1) != 0x0) {
                    [r20 retain];
                    sub_100231afc(&var_A8);
                    r0 = r22;
            }
            else {
                    var_B0 = [r20 retain];
                    dispatch_async(*__dispatch_main_q, &var_D0);
                    r0 = var_B0;
            }
            [r0 release];
    }
    else {
            if (CGRectIsNull([r20 rectFromDict:r19]) != 0x0) {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCViewContext initWithDict:moduleID:andType:viewExists:]" line:0x41 withFormat:@"Invalid bounds parameters sent in view creation message"];
            }
            else {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_rect));
                    *(int128_t *)(r20 + r8) = d8;
                    *(int128_t *)(0x8 + r20 + r8) = d9;
                    *(int128_t *)(0x10 + r20 + r8) = d10;
                    *(int128_t *)(0x18 + r20 + r8) = d11;
            }
    }
    goto loc_1002319f8;

loc_1002319f8:
    r20->_moduleID = var_E8;
    r20->_type = var_D8;
    [ADCInterstitialAdSession class];
    if ([r24 isKindOfClass:r2] != 0x0) {
            r22 = [[r24 avidViewabilityMonitor] retain];
            r26 = objc_loadWeakRetained((int64_t *)&r20->_view);
            [r22 registerFriendlyObstruction:r26];
            [r26 release];
            [r22 release];
    }
    [r23 release];
    [var_F0 release];
    [r27 release];
    [r25 release];
    [r24 release];
    [r21 release];
    goto loc_100231ac8;

loc_100231ac8:
    [r19 release];
    r0 = r20;
    return r0;

loc_100231858:
    if (var_DC == 0x0) goto loc_1002318ac;

loc_100231860:
    [*(r20 + r28) unsignedIntegerValue];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCViewContext initWithDict:moduleID:andType:viewExists:]" line:0x39 withFormat:@"View with id: %lu does not exist"];
    if (([NSThread isMainThread] & 0x1) != 0x0) {
            [r20 retain];
            sub_100231afc(&var_A8);
            r0 = r22;
    }
    else {
            var_B0 = [r20 retain];
            dispatch_async(*__dispatch_main_q, &var_D0);
            r0 = var_B0;
    }
    [r0 release];
    goto loc_1002319f8;

loc_1002318ac:
    objc_storeWeak((int64_t *)&r20->_view, r23);
    goto loc_1002318c0;
}

-(void *)viewID {
    r0 = self->_viewID;
    return r0;
}

-(void *)view {
    r0 = objc_loadWeakRetained((int64_t *)&self->_view);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_view, arg2);
    return;
}

-(struct CGRect)rect {
    r0 = self;
    return r0;
}

-(bool)isValid:(bool)arg2 {
    r1 = _cmd;
    r31 = r31 - 0x80;
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
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    r25 = (int64_t *)&r19->_rect;
    r0 = CGRectIsNull(self);
    if ((r0 & 0x1) != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_session));
            r0 = *(r19 + r23);
            r0 = [r0 identifier];
            r29 = r29;
            [r0 retain];
            r1 = @selector(fullLogWithModuleID:isPublic:level:function:line:withFormat:);
            objc_msgSend(@class(ADCLogManager), r1);
            r0 = [r22 release];
    }
    else {
            r23 = *(int32_t *)ivar_offset(_session);
    }
    if (*(r19 + (r23 << r1)) == 0x0) {
            r1 = @selector(fullLogWithModuleID:isPublic:level:function:line:withFormat:);
            r0 = objc_msgSend(@class(ADCLogManager), r1);
    }
    asm { sxtw       x27, w23 };
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_container));
    if (*(r19 + r26) != 0x0) {
            r23 = *(int32_t *)ivar_offset(_viewID);
    }
    else {
            r0 = *(r19 + r27);
            r0 = [r0 identifier];
            r29 = r29;
            [r0 retain];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_moduleID));
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_viewID));
            r1 = @selector(fullLogWithModuleID:isPublic:level:function:line:withFormat:);
            objc_msgSend(@class(ADCLogManager), r1);
            r0 = [r22 release];
    }
    if (*(r19 + (r23 << r1)) == 0x0) {
            r0 = *(r19 + r27);
            r0 = [r0 identifier];
            r29 = r29;
            r22 = [r0 retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCViewContext isValid:]" line:0x86 withFormat:@"View id is null in ADCViewContext for session: %@ and module: %lu"];
            r0 = [r22 release];
    }
    asm { sxtw       x28, w23 };
    if (r20 != 0x0) {
            r24 = (int64_t *)&r19->_view;
            r0 = objc_loadWeakRetained(r24);
            [r0 release];
            if (r0 == 0x0) {
                    r22 = [[*(r19 + r27) identifier] retain];
                    r0 = [NSNumber numberWithUnsignedInteger:r19->_moduleID];
                    r29 = r29;
                    r23 = [r0 retain];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCViewContext isValid:]" line:0x8b withFormat:@"View is null in ADCViewContext for session: %@ and module: %@ with view id: %@"];
                    [r23 release];
                    [r22 release];
            }
            r0 = objc_loadWeakRetained(r24);
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_type));
            r23 = [r0 isKindOfClass:r2];
            [r0 release];
            if ((r23 & 0x1) == 0x0) {
                    r23 = [[*(r19 + r27) identifier] retain];
                    r0 = [NSNumber numberWithUnsignedInteger:r19->_moduleID];
                    r0 = [r0 retain];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCViewContext isValid:]" line:0x8e withFormat:@"Wrong class in ADCViewContext for session: %@ and module: %@ with view id: %@"];
                    r24 = r24;
                    [r0 release];
                    [r23 release];
            }
            if (*(r19 + r27) != 0x0 && *(r19 + r26) != 0x0 && *(r19 + r28) != 0x0) {
                    r22 = objc_loadWeakRetained(r24);
                    if (r22 != 0x0) {
                            r21 = @selector(isKindOfClass:);
                            r0 = objc_loadWeakRetained(r24);
                            r23 = r0;
                            r0 = objc_msgSend(r0, r21);
                            if (r0 != 0x0) {
                                    r19 = CGRectIsNull(r0) ^ 0x1;
                            }
                            else {
                                    r19 = 0x0;
                            }
                            [r23 release];
                            [r22 release];
                    }
                    else {
                            r19 = 0x0;
                    }
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            if (*(r19 + r28) != 0x0 && *(r19 + r27) != 0x0 && *(r19 + r26) != 0x0) {
                    r19 = CGRectIsNull(r0) ^ 0x1;
            }
            else {
                    r19 = 0x0;
            }
    }
    r0 = r19;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_view);
    objc_storeStrong((int64_t *)&self->_viewID, 0x0);
    objc_storeStrong((int64_t *)&self->_container, 0x0);
    objc_storeStrong((int64_t *)&self->_session, 0x0);
    return;
}

@end