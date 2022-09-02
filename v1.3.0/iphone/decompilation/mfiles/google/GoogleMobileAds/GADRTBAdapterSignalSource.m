@implementation GADRTBAdapterSignalSource

-(void *)initWithRTBAdapter:(void *)arg2 targeting:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_adapter, r19);
            r0 = [GADRTBRequestParameters alloc];
            r0 = [r0 initWithTargeting:r20 RTBAdapter:r19];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_requestParameters));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)adapterSignals {
    r31 = r31 - 0x110;
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
    r20 = self;
    r19 = objc_loadWeakRetained((int64_t *)&r20->_adapter);
    if (r19 != 0x0) {
            r23 = [GADOperation alloc];
            r25 = [r19 retain];
            var_60 = r25;
            r21 = [r20 retain];
            var_58 = r21;
            r20 = [r23 initWithBlock:&var_80];
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            [r0 doubleForKey:*0x100e9b998];
            [r20 setTimeout:*0x100e9b998];
            [r0 release];
            var_88 = 0x0;
            var_C0 = r20;
            [[r20 resultAfterWaitingWithError:&var_88] retain];
            var_D0 = [var_88 retain];
            r0 = [r25 class];
            r26 = r0;
            r0 = NSStringFromClass(r0);
            r29 = r29;
            r23 = [r0 retain];
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 init];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_adapterSignals));
            r8 = *(r21 + r25);
            *(r21 + r25) = r0;
            [r8 release];
            var_D8 = r23;
            sub_100822058(*(r21 + r25), *0x100e95f18, r23);
            r28 = *(r21 + r25);
            var_C8 = r20;
            if (r26 != 0x0) {
                    [r26 version];
            }
            else {
                    var_98 = 0x0;
                    var_90 = 0x0;
                    var_A0 = 0x0;
            }
            sub_100822058(r28, *0x100e95f20, [[NSString alloc] initWithFormat:r2]);
            [r20 release];
            r24 = *(r21 + r25);
            if (r26 != 0x0) {
                    [r26 adSDKVersion];
            }
            else {
                    var_B0 = 0x0;
                    var_A8 = 0x0;
                    var_B8 = 0x0;
            }
            sub_100822058(r24, *0x100e95f28, [[NSString alloc] initWithFormat:r2]);
            [r20 release];
            r23 = var_C8;
            if (r23 != 0x0) {
                    sub_100822058(*(r21 + r25), *0x100e95f30, r23);
            }
            sub_100822058(*(r21 + r25), *0x100e95f38, [[var_D0 description] retain]);
            [r24 release];
            r21 = [r21 retain];
            [var_D8 release];
            [r23 release];
            [var_D0 release];
            [var_C0 release];
            [var_58 release];
            [var_60 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)getSignalUpdateQueue:(void * *)arg2 signalCreationBlock:(void * *)arg3 {
    *arg2 = [[dispatch_get_global_queue(0x0, 0x0) retain] autorelease];
    var_28 = [self retain];
    r0 = objc_retainBlock(&var_48);
    *arg3 = [r0 autorelease];
    [var_28 release];
    return;
}

-(void)addSignalEntriesToMutableDictionary:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    if (*qword_1011db838 != -0x1) {
            dispatch_once(0x1011db838, 0x100e92350);
    }
    r21 = [*0x1011db840 retain];
    var_30 = r20;
    [r20 retain];
    var_28 = [r19 retain];
    dispatch_sync(r21, &var_50);
    [var_28 release];
    [var_30 release];
    [r21 release];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adapterSignals, 0x0);
    objc_storeStrong((int64_t *)&self->_requestParameters, 0x0);
    objc_destroyWeak((int64_t *)&self->_adapter);
    return;
}

@end