@implementation GADSDKCoreContext

+(void)loadWithEventContext:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r20 = [arg2 retain];
    r22 = [arg3 retain];
    r0 = @class(GADSettings);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    var_80 = r0;
    r21 = [[r0 stringForKey:*0x100e9b560] retain];
    r23 = [[NSURL URLWithString:r21] retain];
    r24 = [[NSMutableURLRequest alloc] initWithURL:r23];
    r0 = @class(GADSettings);
    r0 = [r0 sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r28 = [r0 boolForKey:*0x100e9b580];
    [r0 release];
    if (r28 != 0x0) {
            [r24 setCachePolicy:0x1];
    }
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r25 = [[r0 dictionaryForKey:*0x100e9b4a8] retain];
    [r0 release];
    r26 = [[GADWebViewConfiguration alloc] initWithConfiguration:r25];
    var_58 = r22;
    r22 = [r22 retain];
    [GADWebViewJSContext loadWithRequest:r24 webViewConfiguration:r26 eventContext:r20 completionHandler:&var_78];
    [r20 release];
    [var_58 release];
    [r22 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [var_80 release];
    return;
}

-(void *)messageSource {
    r0 = self->_context;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setJSContext:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = [NSMutableArray alloc];
    r0 = [r0 init];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_monitors));
    r8 = *(self + r23);
    *(self + r23) = r0;
    [r8 release];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_context));
    r22 = *(self + r24);
    *(self + r24) = r20;
    [r20 retain];
    [r22 release];
    r22 = [[GADCacheMonitor alloc] initWithMessageSource:r2 reporter:*(self + r24)];
    r0 = [GADPersistentStateMonitor alloc];
    r0 = [r0 initWithMessageSource:*(self + r24)];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_persistentStateMonitor));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    sub_100822370(*(self + r23), r22);
    [r20 release];
    [r22 release];
    return;
}

-(void)adDictionaryFromSignals:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    r20 = self->_context;
    r19 = [arg3 retain];
    r0 = [r20 functionWithName:@"google.afma.request.adDictionary"];
    r0 = [r0 retain];
    [r0 callWithArguments:r21 completionHandler:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    return;
}

-(void)encryptSignalDictionary:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    r20 = self->_context;
    r19 = [arg3 retain];
    r0 = [r20 functionWithName:@"google.afma.request.getSignals"];
    r0 = [r0 retain];
    [r0 callWithArguments:r21 completionHandler:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    return;
}

-(void)notifyBlockedOpenActionWithParameters:(void *)arg2 {
    [self->_context asyncEvaluateFunction:@"navigationBlocked" parameters:arg2];
    return;
}

-(void)runGcacheWithArguments:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r19 = [arg2 retain];
    r21 = self->_context;
    r20 = [arg3 retain];
    r21 = [[r21 functionWithName:@"AFMA_Cache"] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_38 forKeys:&var_48 count:0x2];
    r22 = [r0 retain];
    [r21 callWithArguments:r22 completionHandler:r20];
    [r20 release];
    [r19 release];
    [r22 release];
    [r21 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)normalizeAdBody:(void *)arg2 headers:(void *)arg3 statusCode:(long long)arg4 serverRequest:(void *)arg5 completionHandler:(void *)arg6 {
    r31 = r31 - 0x130;
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
    r22 = arg4;
    r28 = [arg2 retain];
    r27 = [arg3 retain];
    r24 = [arg5 retain];
    r20 = self->_context;
    var_D8 = [arg6 retain];
    var_E0 = [[r20 functionWithName:@"google.afma.response.normalize"] retain];
    r0 = [r24 signals];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_E8 = r0;
    if (r0 != 0x0) {
            var_EC = 0x0;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            var_EC = 0x1;
    }
    var_110 = r0;
    r0 = [r24 baseURL];
    r0 = [r0 retain];
    var_F8 = r0;
    r0 = [r0 absoluteString];
    r29 = r29;
    r0 = [r0 retain];
    var_100 = r0;
    if (r0 != 0x0) {
            var_104 = 0x0;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            var_104 = 0x1;
    }
    var_118 = r0;
    r23 = [[NSDictionary dictionaryWithObjects:r29 - 0x88 forKeys:&var_98 count:0x2] retain];
    r0 = [NSNumber numberWithInteger:r22];
    r29 = r29;
    r22 = [r0 retain];
    if (r27 != 0x0) {
            var_108 = 0x0;
            r19 = r27;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r19 = [r0 retain];
            var_108 = 0x1;
    }
    var_D0 = r24;
    r20 = r28;
    if (r20 != 0x0) {
            r28 = 0x0;
            r24 = r20;
    }
    else {
            r24 = r20;
            r0 = [NSNull null];
            r29 = r29;
            r20 = [r0 retain];
            r28 = 0x1;
    }
    r21 = [[NSDictionary dictionaryWithObjects:&var_B0 forKeys:&var_C8 count:0x3] retain];
    r25 = [[NSDictionary dictionaryWithObjects:r29 - 0x68 forKeys:r29 - 0x78 count:0x2] retain];
    [r21 release];
    if (r28 != 0x0) {
            [r20 release];
    }
    if (var_108 != 0x0) {
            [r19 release];
    }
    [r22 release];
    [r23 release];
    if (var_104 != 0x0) {
            [var_118 release];
    }
    [var_100 release];
    [var_F8 release];
    r21 = var_D0;
    if (var_EC != 0x0) {
            [var_110 release];
    }
    var_58 = **___stack_chk_guard;
    [var_E8 release];
    [var_E0 callWithArguments:r25 completionHandler:var_D8];
    [var_D8 release];
    [r25 release];
    [var_E0 release];
    [r21 release];
    [r27 release];
    [r24 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)fetchRemoteConfigurationWithSignals:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    r20 = self->_context;
    r19 = [arg3 retain];
    r0 = [r20 functionWithName:@"google.afma.config.fetchAppSettings"];
    r0 = [r0 retain];
    [r0 callWithArguments:r21 completionHandler:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    return;
}

-(void)activate {
    [self reloadSavedState];
    [self requestSDKCoreConstantsUpdate];
    return;
}

-(void)reloadSavedState {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = r19->_persistentStateMonitor;
    r0 = [r0 savedState];
    r0 = [r0 retain];
    r22 = r0;
    r0 = sub_10084aae0(r0, &var_28);
    r20 = [r0 retain];
    r21 = [var_28 retain];
    [r22 release];
    if (r20 != 0x0) {
            asm { ccmp       x21, #0x0, #0x0, ne };
    }
    if (!CPU_FLAGS & E) {
            [@"" retain];
            [r20 release];
            r20 = @"";
    }
    r22 = [[NSString alloc] initWithFormat:@"AFMA_reloadSavedState(%@)"];
    [r19->_context evaluateScript:r22];
    [r21 release];
    [r22 release];
    [r20 release];
    return;
}

-(void)requestSDKCoreConstantsUpdate {
    r0 = self->_context;
    r0 = [r0 functionWithName:@"google.afma.sdkConstants.getSdkConstants"];
    r0 = [r0 retain];
    var_30 = r0;
    r19 = [r0 retain];
    var_28 = [self retain];
    r0 = objc_retainBlock(&var_50);
    r20 = r0;
    r21 = [GADTargeting alloc];
    r22 = [[GADRequest request] retain];
    r21 = [r21 initWithRequest:r22 adUnitID:0x0];
    [r22 release];
    r0 = [GADSignals sharedInstance];
    r0 = [r0 retain];
    [r0 createSignalDictionaryWithTargeting:r21 completionHandler:r20];
    [r0 release];
    [r21 release];
    [r20 release];
    [var_28 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)updateSDKCoreConstants:(void *)arg2 {
    r22 = [arg2 retain];
    r23 = [[NSMutableDictionary alloc] init];
    r20 = [[NSMutableArray alloc] init];
    r19 = [r23 retain];
    var_38 = r20;
    r20 = [r20 retain];
    [arg2 enumerateKeysAndObjectsUsingBlock:&var_60];
    [r22 release];
    sub_100822058(r19, *0x100e9b6a8, [sub_10084aae0(r20, 0x0) retain]);
    [r22 release];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    [r0 addEntriesFromDictionary:r19];
    [r0 release];
    sub_100860a80();
    sub_1008833e8(*0x100e9c008, [[GADApplication sharedInstance] retain], 0x0);
    [r21 release];
    [var_38 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_persistentStateMonitor, 0x0);
    objc_storeStrong((int64_t *)&self->_monitors, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    return;
}

@end