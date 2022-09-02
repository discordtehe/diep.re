@implementation ADCMPViewContext

-(void *)session {
    r0 = self->_session;
    return r0;
}

-(void *)initWithMessage:(void *)arg2 moduleID:(void *)arg3 andType:(void *)arg4 viewExists:(bool)arg5 {
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
    r24 = arg5;
    var_D8 = arg4;
    r22 = arg3;
    r19 = [arg2 retain];
    r23 = [r22 retain];
    r21 = [[r29 - 0x80 super] initWithMessage:r19];
    if (r21 == 0x0) goto loc_10023113c;

loc_100230ba8:
    var_DC = r24;
    var_E8 = r22;
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"ad_session_id"];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCMPViewContext initWithMessage:moduleID:andType:viewExists:]" line:0x18 withFormat:@"Tried to obtain a view with a bad session id: %@"];
    }
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 objectForKeyedSubscript:r24];
    r22 = r0;
    r29 = r29;
    r28 = [r0 retain];
    [r27 release];
    [r25 release];
    var_F0 = r28;
    if (r28 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_session, r22);
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCMPViewContext initWithMessage:moduleID:andType:viewExists:]" line:0x1c withFormat:@"No session with id: %@ has been registered"];
    }
    r0 = [ADCMessage numberValueFromMessage:r2 withKey:r3];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 == 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCMPViewContext initWithMessage:moduleID:andType:viewExists:]" line:0x23 withFormat:@"Tried to obtain a view with an invalid container id"];
    }
    r25 = [[AdColony sharedInstance] retain];
    r0 = [r25 containerForAdSessionID:r24 isFullscreen:[r27 boolValue]];
    r20 = r0;
    r29 = r29;
    r28 = [r0 retain];
    [r25 release];
    if (r28 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_container, r20);
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCMPViewContext initWithMessage:moduleID:andType:viewExists:]" line:0x27 withFormat:@"Couldn't find a container with the given ad_session_id and container_id combination"];
    }
    r0 = [ADCMessage numberValueFromMessage:r2 withKey:r3];
    r22 = r0;
    r29 = r29;
    r20 = [r0 retain];
    var_F8 = r27;
    r27 = r23;
    if (r20 != 0x0) {
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_viewID));
            r1 = r22;
            objc_storeStrong(r21 + r25, r1);
    }
    else {
            r1 = @selector(fullLogWithModuleID:isPublic:level:function:line:withFormat:);
            objc_msgSend(@class(ADCLogManager), r1);
            r25 = *(int32_t *)ivar_offset(_viewID);
    }
    asm { sxtw       x23, w25 };
    r22 = [[r28 objectForIdentifier:[*(r21 + (r25 << r1)) unsignedIntegerValue]] retain];
    if (r22 == 0x0) goto loc_100230f2c;

loc_100230eb4:
    if (([r22 isKindOfClass:r2] & 0x1) == 0x0) {
            [*(r21 + r23) unsignedIntegerValue];
            [r22 class];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCMPViewContext initWithMessage:moduleID:andType:viewExists:]" line:0x35 withFormat:@"View with id: %lu is not an %@"];
    }
    else {
            objc_storeWeak((int64_t *)&r21->_view, r22);
    }
    goto loc_100230f98;

loc_100230f98:
    r23 = r27;
    if ((var_DC & 0x1) != 0x0) {
            r0 = [NSThread isMainThread];
            r26 = var_F8;
            if ((r0 & 0x1) != 0x0) {
                    [r21 retain];
                    sub_100231178(&var_A8);
                    r0 = r25;
            }
            else {
                    var_B0 = [r21 retain];
                    dispatch_sync(*__dispatch_main_q, &var_D0);
                    r0 = var_B0;
            }
            [r0 release];
    }
    else {
            r0 = [ADCMessage rectValueFromMessage:r19];
            r0 = CGRectIsNull(r0);
            r26 = var_F8;
            if (r0 != 0x0) {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCMPViewContext initWithMessage:moduleID:andType:viewExists:]" line:0x3f withFormat:@"Invalid bounds parameters sent in view creation message"];
            }
            else {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_rect));
                    *(r21 + r8) = d8;
                    *(0x8 + r21 + r8) = d9;
                    *(0x10 + r21 + r8) = d10;
                    *(0x18 + r21 + r8) = d11;
            }
    }
    goto loc_1002310e8;

loc_1002310e8:
    objc_storeStrong((int64_t *)&r21->_moduleID, var_E8);
    r21->_type = var_D8;
    [r22 release];
    [r20 release];
    [r28 release];
    [r26 release];
    [var_F0 release];
    [r24 release];
    goto loc_10023113c;

loc_10023113c:
    [r23 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_100230f2c:
    if (var_DC == 0x0) goto loc_100230f84;

loc_100230f34:
    [*(r21 + r23) unsignedIntegerValue];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCMPViewContext initWithMessage:moduleID:andType:viewExists:]" line:0x37 withFormat:@"View with id: %lu does not exist"];
    r23 = r27;
    r0 = [NSThread isMainThread];
    r26 = var_F8;
    if ((r0 & 0x1) != 0x0) {
            [r21 retain];
            sub_100231178(&var_A8);
            r0 = r25;
    }
    else {
            var_B0 = [r21 retain];
            dispatch_sync(*__dispatch_main_q, &var_D0);
            r0 = var_B0;
    }
    [r0 release];
    goto loc_1002310e8;

loc_100230f84:
    objc_storeWeak((int64_t *)&r21->_view, r22);
    goto loc_100230f98;
}

-(bool)isValid:(bool)arg2 {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_session));
    r8 = *(r19 + r8);
    if (arg2 != 0x0) {
            if (r19->_viewID != 0x0 && r19->_container != 0x0 && r8 != 0x0 && r19->_moduleID != 0x0) {
                    r21 = (int64_t *)&r19->_view;
                    r20 = objc_loadWeakRetained(r21);
                    if (r20 != 0x0) {
                            r0 = objc_loadWeakRetained(r21);
                            r21 = r0;
                            r0 = [r0 isKindOfClass:r2];
                            if (r0 != 0x0) {
                                    r19 = CGRectIsNull(r0) ^ 0x1;
                            }
                            else {
                                    r19 = 0x0;
                            }
                            [r21 release];
                            [r20 release];
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
            if (r19->_container != 0x0 && r8 != 0x0 && r19->_moduleID != 0x0) {
                    if (r19->_viewID != 0x0) {
                            r19 = CGRectIsNull(r0) ^ 0x1;
                    }
                    else {
                            r19 = 0x0;
                    }
            }
            else {
                    r19 = 0x0;
            }
    }
    r0 = r19;
    return r0;
}

-(void *)container {
    r0 = self->_container;
    return r0;
}

-(void *)viewID {
    r0 = self->_viewID;
    return r0;
}

-(void *)moduleID {
    r0 = self->_moduleID;
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

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_view);
    objc_storeStrong((int64_t *)&self->_moduleID, 0x0);
    objc_storeStrong((int64_t *)&self->_viewID, 0x0);
    objc_storeStrong((int64_t *)&self->_container, 0x0);
    objc_storeStrong((int64_t *)&self->_session, 0x0);
    return;
}

@end