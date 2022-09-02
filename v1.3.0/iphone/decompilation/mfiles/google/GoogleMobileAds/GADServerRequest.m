@implementation GADServerRequest

-(void *)context {
    r0 = self->_context;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)initWithContext:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_38 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_context, r21);
            r0 = [NSDictionary dictionaryWithObjects:&stack[-56] forKeys:&stack[-56] count:0x0];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_RTBAdapters));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.server-request", 0x0, 0x11);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)clearRTBAdapters {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)updateRTBAdapters {
    r31 = r31 - 0x1c0;
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
    r26 = [[NSMutableSet alloc] init];
    r21 = [[GADRTBAdapterManager sharedInstance] retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_targeting));
    var_178 = r8;
    var_170 = self;
    r22 = [[*(self + r8) adUnitID] retain];
    r0 = [r21 registeredAdapterNamesForAdUnitID:r22];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r22 release];
    [r21 release];
    if (r19 != 0x0) {
            [r26 addObjectsFromArray:r19];
    }
    var_190 = r19;
    r0 = [*(var_170 + var_178) networkExtrasForClass:[GADExtras class]];
    r0 = [r0 retain];
    var_198 = r0;
    r22 = [[r0 additionalParameters] retain];
    r23 = [sub_10081ba6c(r22, *0x100e9f058, [NSDictionary class]) retain];
    [r22 release];
    r0 = @class(NSDictionary);
    r0 = [r0 class];
    var_1A0 = r23;
    r0 = sub_10081ba6c(r23, *0x100e9f060, r0);
    r29 = r29;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r21 = [[r19 allKeys] retain];
            [r26 addObjectsFromArray:r21];
            [r21 release];
    }
    var_1A8 = r19;
    var_180 = [[NSMutableDictionary alloc] init];
    r0 = [r26 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_158 = r0;
    var_188 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            r20 = @selector(alloc);
            r24 = var_178;
            do {
                    r26 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_158);
                            }
                            r28 = *(0x0 + r26 * 0x8);
                            r0 = NSClassFromString(r28);
                            if (r0 != 0x0) {
                                    r22 = [objc_msgSend(r0, r20) init];
                                    if (r22 != 0x0) {
                                            [var_180 setObject:r22 forKey:r28];
                                            [objc_msgSend(@class(GADRTBAdapterSignalSource), r20) initWithRTBAdapter:r22 targeting:*(var_170 + r24)];
                                            r20 = r20;
                                            [*(var_170 + r24) setSignalSource:r2 forKey:r3];
                                            [r19 release];
                                    }
                                    [r22 release];
                            }
                            r26 = r26 + 0x1;
                    } while (r26 < r23);
                    r23 = objc_msgSend(var_158, var_188);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_158 release];
    r19 = var_170->_lockQueue;
    var_128 = [var_170 retain];
    [var_180 retain];
    dispatch_async(r19, &var_148);
    [var_180 release];
    [var_128 release];
    [r20 release];
    [var_1A8 release];
    [var_1A0 release];
    [var_198 release];
    [var_190 release];
    [var_158 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)RTBAdapters {
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

-(void)updateSignals {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_targeting));
    r0 = *(r19 + r24);
    r0 = [r0 adData];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 signals];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 != 0x0) {
            r0 = *(r19 + r24);
            r0 = [r0 adData];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 signals];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_signals));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r20 release];
    }
    else {
            r21 = [GADOperation alloc];
            r20 = [r19 retain];
            var_38 = r20;
            r19 = [r21 initWithBlock:&var_58];
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            [r0 doubleForKey:*0x100e9b428];
            [r19 setTimeout:*0x100e9b428];
            [r0 release];
            r0 = [r19 resultAfterWaitingWithError:0x0];
            r22 = r0;
            r21 = [r0 retain];
            if ([r19 timedOut] != 0x0) {
                    sub_1007ce06c(0x0, @"Timed out waiting for signals.");
            }
            else {
                    objc_storeStrong((int64_t *)&r20->_signals, r22);
            }
            [r21 release];
            [r19 release];
            [var_38 release];
    }
    return;
}

-(bool)updateAdReferences:(void * *)arg2 {
    r31 = r31 - 0xb0;
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
    r21 = arg2;
    r23 = self;
    r0 = r23->_targeting;
    r0 = [r0 adData];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r23 = 0x1;
    }
    else {
            sub_1008833e8(*0x100e9c188, r23, 0x0);
            r0 = sub_1008a4580(r21);
            r29 = r29;
            r19 = [r0 retain];
            if (*r21 != 0x0) {
                    r23 = 0x0;
            }
            else {
                    sub_1008833e8(*0x100e9c190, r23, 0x0);
                    sub_1008833e8(*0x100e9c198, r23, 0x0);
                    r0 = r23->_signals;
                    if (r0 != 0x0) {
                            r0 = [r0 retain];
                    }
                    else {
                            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                            r29 = r29;
                            r0 = [r0 retain];
                    }
                    r24 = [GADOperation alloc];
                    r26 = [r19 retain];
                    var_68 = r26;
                    r20 = [r0 retain];
                    var_60 = r0;
                    r22 = [r24 initWithBlock:&var_88];
                    r0 = [GADSettings sharedInstance];
                    r0 = [r0 retain];
                    [r0 doubleForKey:*0x100e9b548];
                    [r22 setTimeout:*0x100e9b548];
                    [r0 release];
                    r0 = [r22 resultAfterWaitingWithError:&var_90];
                    r29 = r29;
                    r24 = [r0 retain];
                    r25 = [var_90 retain];
                    sub_1008833e8(*0x100e9c1a0, r23, 0x0);
                    if (([r22 timedOut] & 0x1) == 0x0 && [r25 code] != 0x3) {
                            r0 = [GADJSContextController sharedInstance];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 buildAdURLDidComplete];
                            [r0 release];
                            if (r25 != 0x0) {
                                    r0 = [r25 localizedDescription];
                                    r0 = [r0 retain];
                                    r23 = [sub_10084acf0(r0, 0x0) retain];
                                    [r0 release];
                                    r0 = [r23 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    if (r26 != 0x0) {
                                            NSLog(@"<Google> Invalid Request. %@", @selector(objectForKeyedSubscript:));
                                    }
                                    r0 = sub_100809600(0x0, r26);
                                    r0 = [r0 retain];
                                    r0 = objc_retainAutorelease(r0);
                                    *r21 = r0;
                                    [r0 release];
                                    [r26 release];
                                    [r23 release];
                                    r23 = 0x0;
                            }
                            else {
                                    r21 = [[r24 objectForKeyedSubscript:@"base_uri"] retain];
                                    r26 = [[r24 objectForKeyedSubscript:@"url"] retain];
                                    r0 = @class(NSURL);
                                    r0 = [r0 URLWithString:r21];
                                    r0 = [r0 retain];
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_baseURL));
                                    r8 = *(r23 + r9);
                                    *(r23 + r9) = r0;
                                    [r8 release];
                                    r0 = @class(NSURL);
                                    r0 = [r0 URLWithString:r26];
                                    r0 = [r0 retain];
                                    r27 = r0;
                                    r0 = sub_1008b9608(r0, 0x0, 0x0, 0x0);
                                    r0 = [r0 retain];
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_URLRequest));
                                    r8 = *(r23 + r9);
                                    *(r23 + r9) = r0;
                                    [r8 release];
                                    [r27 release];
                                    [r26 release];
                                    [r21 release];
                                    r23 = 0x1;
                            }
                    }
                    else {
                            r23 = [[GADJSContextController sharedInstance] retain];
                            r26 = [[r26 messageSource] retain];
                            [r23 buildAdURLDidTimeOut:r26];
                            [r26 release];
                            [r23 release];
                            r0 = sub_1008098f8(0x3, 0x0);
                            r0 = [r0 retain];
                            r0 = [r0 autorelease];
                            r23 = 0x0;
                            *r21 = r0;
                    }
                    [r24 release];
                    [r25 release];
                    [r22 release];
                    [var_60 release];
                    [var_68 release];
                    [r20 release];
            }
            [r19 release];
    }
    r0 = r23;
    return r0;
}

-(void *)parentServerRequest {
    r0 = self->_parentServerRequest;
    return r0;
}

-(void)setParentServerRequest:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_parentServerRequest, arg2);
    return;
}

-(void *)targeting {
    r0 = self->_targeting;
    return r0;
}

-(void)setTargeting:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_targeting, arg2);
    return;
}

-(void *)URLRequest {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_URLRequest)), 0x0);
    return r0;
}

-(void)setURLRequest:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)baseURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_baseURL)), 0x0);
    return r0;
}

-(void)setBaseURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)signals {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_signals)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_signals, 0x0);
    objc_storeStrong((int64_t *)&self->_baseURL, 0x0);
    objc_storeStrong((int64_t *)&self->_URLRequest, 0x0);
    objc_storeStrong((int64_t *)&self->_targeting, 0x0);
    objc_storeStrong((int64_t *)&self->_parentServerRequest, 0x0);
    objc_storeStrong((int64_t *)&self->_RTBAdapters, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    return;
}

@end