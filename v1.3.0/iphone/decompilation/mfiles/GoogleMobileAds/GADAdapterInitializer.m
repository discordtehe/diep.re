@implementation GADAdapterInitializer

+(void *)sharedInstance {
    if (*qword_1011db810 != -0x1) {
            dispatch_once(0x1011db810, 0x100e909e8);
    }
    r0 = *0x1011db808;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r21 = [GADInitializationStatus alloc];
            r22 = [[NSArray arrayWithObjects:&var_30 count:0x1] retain];
            r0 = [r21 initWithClassNames:r22];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_status));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r22 release];
            r0 = sub_100860a2c("com.google.admob.n.adapter-init", 0x0, 0x11);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = dispatch_group_create();
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_completionGroup));
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            r20 = [GADEventContext alloc];
            r21 = [[GADEventContext rootContext] retain];
            r0 = [r20 initWithParent:r21 component:*0x100e97480];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_context));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r21 release];
            dispatch_group_enter(*(r19 + r22));
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(double)timeIntervalSinceInitializationStart {
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_startTimestamp));
    if (*(r19 + r21) != 0x0) {
            r0 = [NSDate alloc];
            r0 = [r0 init];
            [r0 timeIntervalSinceDate:*(r19 + r21)];
            r0 = [r0 release];
    }
    return r0;
}

-(void)updateDescription:(void *)arg2 forAdapter:(void *)arg3 includingLatency:(bool)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = self->_lockQueue;
    var_50 = [self retain];
    [r22 retain];
    var_40 = r20;
    [r20 retain];
    dispatch_async(r23, &var_70);
    [var_40 release];
    [r22 release];
    [var_50 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setState:(long long)arg2 description:(void *)arg3 updateLatency:(bool)arg4 forAdapter:(void *)arg5 {
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
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
    r24 = arg4;
    r22 = arg2;
    r21 = self;
    r19 = [arg3 retain];
    r20 = [arg5 retain];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_status));
    r0 = *(r21 + r26);
    r0 = [r0 adapterStatusesByClassName];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 objectForKeyedSubscript:r20];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r25 release];
    if (r23 == 0x0 || [r23 state] != 0x1) {
            v8 = 0x0;
            if (r24 != 0x0) {
                    [r21 timeIntervalSinceInitializationStart];
                    v8 = v0;
            }
            r22 = [[GADAdapterStatus alloc] initWithState:r22 latency:r19 description:r4];
            r0 = *(r21 + r26);
            r0 = [r0 statusWithEntry:r22 forKey:r20];
            r0 = [r0 retain];
            r8 = *(r21 + r26);
            *(r21 + r26) = r0;
            [r8 release];
            [r22 release];
    }
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)adapterDidBecomeReady:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)fetchSettings {
    r31 = r31 - 0xe0;
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
    r20 = self;
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 googleMobileAdsAppID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r24 = 0x1;
            }
    }
    [r0 release];
    [r19 release];
    objc_initWeak(r29 - 0x58, r20);
    [GADOperation alloc];
    objc_copyWeak(&var_90 + 0x28, r29 - 0x58);
    r22 = [r20 retain];
    var_70 = r22;
    r20 = [r23 initWithBlock:&var_90];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    [r0 doubleForKey:*0x100e9b818];
    [r20 setTimeout:*0x100e9b818];
    [r0 release];
    [r22->_completionGroup retain];
    objc_copyWeak(&var_C8 + 0x28, r29 - 0x58);
    r22 = [r22 retain];
    [r20 setCompletionBlock:&var_C8];
    [r20 start];
    [r22 release];
    objc_destroyWeak(&var_C8 + 0x28);
    [r22 release];
    [r20 release];
    [var_70 release];
    objc_destroyWeak(&var_90 + 0x28);
    objc_destroyWeak(r29 - 0x58);
    return;
}

-(void *)adapterForName:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r22 = self->_lockQueue;
    r20 = [self retain];
    var_68 = r20;
    r19 = [r21 retain];
    var_60 = r19;
    dispatch_sync(r22, &var_88);
    r21 = 0x0;
    if (*(int8_t *)(&var_50 + 0x18) != 0x0) goto loc_1007e44dc;

loc_1007e444c:
    r21 = NSClassFromString(r19);
    if (([r21 conformsToProtocol:@protocol(GADMediationAdapter)] & 0x1) == 0x0) goto loc_1007e44a0;

loc_1007e4474:
    if ([r21 respondsToSelector:@selector(setUpWithConfiguration:completionHandler:), r3] == 0x0) goto loc_1007e44c4;

loc_1007e4490:
    r21 = [r21 retain];
    goto loc_1007e44dc;

loc_1007e44dc:
    [var_60 release];
    [var_68 release];
    _Block_object_dispose(&var_50, 0x8);
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_1007e44c4:
    [r20 adapterDidBecomeReady:r19];
    goto loc_1007e44d8;

loc_1007e44d8:
    r21 = 0x0;
    goto loc_1007e44dc;

loc_1007e44a0:
    [r20 updateDescription:@"No such adapter in the application." forAdapter:r19 includingLatency:0x0];
    goto loc_1007e44d8;
}

-(void *)setUpOperationForAdapter:(void *)arg2 data:(void *)arg3 {
    r31 = r31 - 0x110;
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
    r25 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    objc_initWeak(r29 - 0x68, r25);
    r23 = [r25 adapterForName:r19];
    if (r23 != 0x0) {
            r21 = [[GADMediationServerConfiguration alloc] initWithDictionary:r20];
            if (r21 != 0x0) {
                    r0 = r25->_completionGroup;
                    r0 = [r0 retain];
                    dispatch_group_enter(r0);
                    [GADOperation alloc];
                    var_88 = [r21 retain];
                    objc_copyWeak(&var_A8 + 0x30, r29 - 0x68);
                    r27 = [r19 retain];
                    r23 = [r28 initWithBlock:&var_A8];
                    r0 = [GADSettings sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 doubleForKey:*0x100e9b820];
                    [r23 setTimeout:*0x100e9b820];
                    [r0 release];
                    r26 = [[GADEventContext alloc] initWithParent:r25->_context component:*0x100e97478];
                    [r26 setUserInfoObject:r27 forKey:*0x100e97428];
                    sub_1008833e8(*0x100e9c410, r26, 0x0);
                    objc_copyWeak(&var_E8 + 0x38, r29 - 0x68);
                    var_C8 = [r27 retain];
                    r26 = [r26 retain];
                    r24 = [r24 retain];
                    [r23 setCompletionBlock:&var_E8];
                    [r24 release];
                    [r26 release];
                    [var_C8 release];
                    objc_destroyWeak(&var_E8 + 0x38);
                    [r26 release];
                    [r27 release];
                    objc_destroyWeak(&var_A8 + 0x30);
                    [var_88 release];
                    [r24 release];
            }
            else {
                    sub_1007ce06c(0x0, @"Invalid server configuration. %@");
                    r23 = 0x0;
            }
            [r21 release];
    }
    objc_destroyWeak(r29 - 0x68);
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void)initializeAdaptersWithSettings:(void *)arg2 {
    r23 = [arg2 retain];
    r21 = [[NSMutableArray alloc] init];
    [self retain];
    r21 = [r21 retain];
    var_48 = r21;
    [arg2 enumerateKeysAndObjectsUsingBlock:&var_70];
    [r23 release];
    r19 = [dispatch_get_global_queue(0xfffffffffffffffe, 0x0) retain];
    var_78 = r21;
    [r21 retain];
    dispatch_async(r19, &var_98);
    [r19 release];
    [r20 adapterDidBecomeReady:@"GADMobileAds"];
    [var_78 release];
    [var_48 release];
    [r20 release];
    [r21 release];
    return;
}

-(void *)status {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)startWithCompletionHandler:(void *)arg2 {
    r31 = r31 - 0xb0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
    r22 = *(r20 + r23);
    r21 = [r20 retain];
    var_48 = r21;
    dispatch_async(r22, &var_68);
    if (r19 != 0x0) {
            objc_initWeak(&stack[-128], r21);
            objc_copyWeak(&var_A0 + 0x28, &stack[-128]);
            var_80 = [r19 retain];
            dispatch_group_notify(r21, r20, &var_A0);
            [var_80 release];
            objc_destroyWeak(&var_A0 + 0x28);
            objc_destroyWeak(&stack[-128]);
    }
    [var_48 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_storeStrong((int64_t *)&self->_configurationObserver, 0x0);
    objc_storeStrong((int64_t *)&self->_startTimestamp, 0x0);
    objc_storeStrong((int64_t *)&self->_completionGroup, 0x0);
    objc_storeStrong((int64_t *)&self->_status, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    return;
}

@end