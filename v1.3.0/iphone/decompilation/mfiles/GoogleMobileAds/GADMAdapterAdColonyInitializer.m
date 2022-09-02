@implementation GADMAdapterAdColonyInitializer

+(void *)sharedInstance {
    if (*qword_1011dc058 != -0x1) {
            dispatch_once(0x1011dc058, 0x100ea0a70);
    }
    r0 = *0x1011dc060;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [NSSet set];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_zones));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSArray array];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_callbacks));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)zones {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_zones)), 0x1);
    return r0;
}

-(void)setZones:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)initializeAdColonyWithAppId:(void *)arg2 zones:(void *)arg3 options:(void *)arg4 callback:(void *)arg5 {
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
    var_88 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    r23 = [arg5 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r26 = [[r20 zones] retain];
    r24 = [[NSSet setWithSet:r26] retain];
    [r26 release];
    r0 = [r20 zones];
    r0 = [r0 retain];
    r19 = [[r0 setByAddingObjectsFromArray:r21] retain];
    [r20 setZones:r19];
    [r19 release];
    [r0 release];
    r0 = [r20 zones];
    r29 = &saved_fp;
    r26 = [r0 retain];
    r19 = [r24 isEqualToSet:r26];
    [r26 release];
    if ((r19 & 0x1) == 0x0) {
            [r20 setAdColonyAdapterInitState:0x0];
    }
    if (r22 != 0x0 && [r20 adColonyAdapterInitState] == 0x1) {
            [AdColony setAppOptions:r22];
    }
    if ([r20 adColonyAdapterInitState] == 0x1) {
            if (r23 != 0x0) {
                    (*(r23 + 0x10))(r23, 0x0);
            }
    }
    else {
            if (r23 != 0x0) {
                    r27 = [[r20 callbacks] retain];
                    r28 = objc_retainBlock(r23);
                    r0 = [r27 arrayByAddingObject:r28];
                    r29 = r29;
                    r19 = [r0 retain];
                    [r20 setCallbacks:r19];
                    [r19 release];
                    [r28 release];
                    [r27 release];
            }
            if ([r20 adColonyAdapterInitState] == 0x0) {
                    [r20 setAdColonyAdapterInitState:0x2];
                    objc_initWeak(&stack[-104], r20);
                    r0 = [r20 zones];
                    r0 = [r0 retain];
                    [[r0 allObjects] retain];
                    objc_copyWeak(&var_80 + 0x20, &stack[-104]);
                    [AdColony configureWithAppID:var_88 zoneIDs:r28 options:r22 completion:&var_80];
                    [r28 release];
                    [r25 release];
                    objc_destroyWeak(&var_80 + 0x20);
                    objc_destroyWeak(&stack[-104]);
            }
    }
    [r24 release];
    objc_sync_exit(r20);
    [r20 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [var_88 release];
    return;
}

-(int)adColonyAdapterInitState {
    r0 = *(int32_t *)(int64_t *)&self->_adColonyAdapterInitState;
    return r0;
}

-(void)setAdColonyAdapterInitState:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_adColonyAdapterInitState = arg2;
    return;
}

-(void *)callbacks {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_callbacks)), 0x1);
    return r0;
}

-(void)setCallbacks:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_callbacks, 0x0);
    objc_storeStrong((int64_t *)&self->_zones, 0x0);
    return;
}

@end