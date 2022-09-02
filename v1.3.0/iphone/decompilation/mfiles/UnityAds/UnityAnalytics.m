@implementation UnityAnalytics

+(void *)sharedInstance {
    if (*qword_1011d1d30 != -0x1) {
            dispatch_once(0x1011d1d30, 0x100e6a610);
    }
    r0 = *0x1011d1d28;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)onLevelFail:(int)arg2 {
    r31 = r31 - 0xc0;
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
    var_48 = **___stack_chk_guard;
    r0 = [NSDate date];
    r0 = [r0 retain];
    r8 = 0x101137000;
    objc_msgSend(r0, *(r8 + 0xf10));
    asm { fcvtzs     x8, d0 };
    r20 = [[r20 numberWithLong:r8 * 0x3e8] retain];
    r21 = [[*(r22 + 0xfc0) numberWithInt:r21] retain];
    r23 = [[NSDictionary dictionaryWithObjects:&var_A0 forKeys:&var_A8 count:0x1] retain];
    r24 = [[NSDictionary dictionaryWithObjects:&var_80 forKeys:&var_98 count:0x3] retain];
    r22 = [[NSDictionary dictionaryWithObjects:&var_58 forKeys:&var_68 count:0x2] retain];
    [r24 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [UnityAnalytics sharedInstance];
    r0 = [r0 retain];
    [r0 postEvent:r22];
    [r0 release];
    [r22 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

+(void)onLevelUp:(int)arg2 {
    r31 = r31 - 0xc0;
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
    var_48 = **___stack_chk_guard;
    r0 = [NSDate date];
    r0 = [r0 retain];
    r8 = 0x101137000;
    objc_msgSend(r0, *(r8 + 0xf10));
    asm { fcvtzs     x8, d0 };
    r20 = [[r20 numberWithLong:r8 * 0x3e8] retain];
    r21 = [[*(r22 + 0xfc0) numberWithInt:r21] retain];
    r23 = [[NSDictionary dictionaryWithObjects:&var_A0 forKeys:&var_A8 count:0x1] retain];
    r24 = [[NSDictionary dictionaryWithObjects:&var_80 forKeys:&var_98 count:0x3] retain];
    r22 = [[NSDictionary dictionaryWithObjects:&var_58 forKeys:&var_68 count:0x2] retain];
    [r24 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [UnityAnalytics sharedInstance];
    r0 = [r0 retain];
    [r0 postEvent:r22];
    [r0 release];
    [r22 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

+(void)onAdComplete:(void *)arg2 network:(void *)arg3 rewarded:(bool)arg4 {
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
    r25 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    r8 = 0x101137000;
    var_F0 = r0;
    objc_msgSend(r0, *(r8 + 0xf10));
    asm { fcvtzs     x8, d0 };
    r22 = [[r22 numberWithLong:r8 * 0x3e8] retain];
    r0 = *(r19 + 0xfc0);
    r0 = [r0 numberWithBool:r23];
    r29 = r29;
    r23 = [r0 retain];
    if (r20 != 0x0) {
            r19 = 0x0;
            r24 = r20;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r24 = [r0 retain];
            r19 = 0x1;
    }
    var_E8 = r20;
    var_E0 = r25;
    if (r25 != 0x0) {
            r20 = 0x0;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r25 = [r0 retain];
            r20 = 0x1;
    }
    r0 = @class(NSDictionary);
    r26 = @selector(dictionaryWithObjects:forKeys:count:);
    r27 = [objc_msgSend(r0, r26) retain];
    r28 = [objc_msgSend(@class(NSDictionary), r26) retain];
    r0 = @class(NSDictionary);
    r0 = objc_msgSend(r0, r26);
    r29 = r29;
    r26 = [r0 retain];
    [r28 release];
    [r27 release];
    if (r20 != 0x0) {
            [r25 release];
    }
    if (r19 != 0x0) {
            [r24 release];
    }
    var_58 = **___stack_chk_guard;
    [r23 release];
    [r22 release];
    [var_F0 release];
    r0 = [UnityAnalytics sharedInstance];
    r0 = [r0 retain];
    [r0 postEvent:r26];
    [r0 release];
    [r26 release];
    [var_E8 release];
    [var_E0 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void)onItemAcquired:(void *)arg2 itemId:(void *)arg3 transactionContext:(void *)arg4 level:(void *)arg5 itemType:(void *)arg6 amount:(float)arg7 balance:(float)arg8 acquisitionType:(long long)arg9 {
    r31 = r31 - 0x1c0;
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
    v8 = v1;
    v9 = v0;
    r25 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [arg4 retain];
    r24 = [arg5 retain];
    r26 = [arg6 retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    r8 = 0x101137000;
    var_150 = r0;
    objc_msgSend(r0, *(r8 + 0xf10));
    asm { fcvtzs     x8, d0 };
    var_158 = [[r20 numberWithLong:r8 * 0x3e8] retain];
    r0 = sub_1000f8508();
    r29 = r29;
    var_160 = [r0 retain];
    if (r22 != 0x0) {
            var_164 = 0x0;
            r0 = r22;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            var_164 = 0x1;
    }
    var_190 = r0;
    r0 = [NSNumber numberWithFloat:r2];
    r29 = r29;
    var_170 = [r0 retain];
    if (r23 != 0x0) {
            var_174 = 0x0;
            r0 = r23;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            var_174 = 0x1;
    }
    var_198 = r0;
    r0 = [NSNumber numberWithFloat:r2];
    r29 = r29;
    var_180 = [r0 retain];
    if (r26 != 0x0) {
            var_184 = 0x0;
            r0 = r26;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            var_184 = 0x1;
    }
    var_1A0 = r0;
    if (r24 != 0x0) {
            var_188 = 0x0;
            r21 = r24;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r21 = [r0 retain];
            var_188 = 0x1;
    }
    var_148 = r24;
    var_140 = r22;
    r19 = r26;
    r24 = r23;
    if (r25 != 0x0) {
            r28 = 0x0;
            r20 = r25;
            r22 = r25;
    }
    else {
            r20 = r25;
            r0 = [NSNull null];
            r29 = r29;
            r22 = [r0 retain];
            r28 = 0x1;
    }
    r0 = @class(NSDictionary);
    r27 = @selector(dictionaryWithObjects:forKeys:count:);
    r23 = [objc_msgSend(r0, r27) retain];
    r25 = [objc_msgSend(@class(NSDictionary), r27) retain];
    r0 = @class(NSDictionary);
    r0 = objc_msgSend(r0, r27);
    r29 = r29;
    r27 = [r0 retain];
    [r25 release];
    [r23 release];
    if (r28 != 0x0) {
            [r22 release];
    }
    r23 = r19;
    if (var_188 != 0x0) {
            [r21 release];
    }
    r21 = r20;
    r20 = var_148;
    if (var_184 != 0x0) {
            [var_1A0 release];
    }
    [var_180 release];
    if (var_174 != 0x0) {
            [var_198 release];
    }
    [var_170 release];
    if (var_164 != 0x0) {
            [var_190 release];
    }
    var_68 = **___stack_chk_guard;
    [var_160 release];
    [var_158 release];
    [var_150 release];
    r0 = [UnityAnalytics sharedInstance];
    r0 = [r0 retain];
    [r0 postEvent:r27];
    [r0 release];
    [r27 release];
    [r23 release];
    [r20 release];
    [var_140 release];
    [r24 release];
    [r21 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

+(void)onEvent:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [UnityAnalytics sharedInstance];
    r0 = [r0 retain];
    [r0 postEvent:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)onIapTransaction:(void *)arg2 amount:(float)arg3 currency:(void *)arg4 isPromo:(bool)arg5 receipt:(void *)arg6 {
    r31 = r31 - 0x130;
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
    r25 = arg4;
    v8 = v0;
    r21 = [arg2 retain];
    r27 = [arg3 retain];
    r24 = [arg5 retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    r8 = 0x101137000;
    var_100 = r0;
    objc_msgSend(r0, *(r8 + 0xf10));
    asm { fcvtzs     x8, d0 };
    r0 = [r19 numberWithLong:r8 * 0x3e8];
    r29 = r29;
    var_108 = [r0 retain];
    if (r21 != 0x0) {
            var_10C = 0x0;
            r0 = r21;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            var_10C = 0x1;
    }
    var_118 = r0;
    r0 = [NSNumber numberWithFloat:r2];
    r29 = r29;
    r26 = [r0 retain];
    var_F0 = r27;
    if (r27 != 0x0) {
            r22 = 0x0;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r27 = [r0 retain];
            r22 = 0x1;
    }
    var_F8 = r21;
    r0 = [NSNumber numberWithBool:r25];
    r29 = r29;
    r25 = [r0 retain];
    if (r24 != 0x0) {
            r21 = 0x0;
            r23 = r24;
            r19 = r24;
    }
    else {
            r23 = r24;
            r0 = [NSNull null];
            r29 = r29;
            r19 = [r0 retain];
            r21 = 0x1;
    }
    r0 = @class(NSDictionary);
    r28 = @selector(dictionaryWithObjects:forKeys:count:);
    r20 = [objc_msgSend(r0, r28) retain];
    r0 = @class(NSDictionary);
    r0 = objc_msgSend(r0, r28);
    r29 = r29;
    r28 = [r0 retain];
    [r20 release];
    if (r21 != 0x0) {
            [r19 release];
    }
    [r25 release];
    if (r22 != 0x0) {
            [r27 release];
    }
    [r26 release];
    r20 = var_F8;
    if (var_10C != 0x0) {
            [var_118 release];
    }
    var_68 = **___stack_chk_guard;
    [var_108 release];
    [var_100 release];
    r0 = [UnityAnalytics sharedInstance];
    r0 = [r0 retain];
    [r0 postEvent:r28];
    [r0 release];
    [r28 release];
    [r23 release];
    [var_F0 release];
    [r20 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

+(void)onItemSpent:(void *)arg2 itemId:(void *)arg3 transactionContext:(void *)arg4 level:(void *)arg5 itemType:(void *)arg6 amount:(float)arg7 balance:(float)arg8 acquisitionType:(long long)arg9 {
    r31 = r31 - 0x1c0;
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
    v8 = v1;
    v9 = v0;
    r25 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [arg4 retain];
    r24 = [arg5 retain];
    r26 = [arg6 retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    r8 = 0x101137000;
    var_150 = r0;
    objc_msgSend(r0, *(r8 + 0xf10));
    asm { fcvtzs     x8, d0 };
    var_158 = [[r20 numberWithLong:r8 * 0x3e8] retain];
    r0 = sub_1000f8508();
    r29 = r29;
    var_160 = [r0 retain];
    if (r22 != 0x0) {
            var_164 = 0x0;
            r0 = r22;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            var_164 = 0x1;
    }
    var_190 = r0;
    r0 = [NSNumber numberWithFloat:r2];
    r29 = r29;
    var_170 = [r0 retain];
    if (r23 != 0x0) {
            var_174 = 0x0;
            r0 = r23;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            var_174 = 0x1;
    }
    var_198 = r0;
    r0 = [NSNumber numberWithFloat:r2];
    r29 = r29;
    var_180 = [r0 retain];
    if (r26 != 0x0) {
            var_184 = 0x0;
            r0 = r26;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            var_184 = 0x1;
    }
    var_1A0 = r0;
    if (r24 != 0x0) {
            var_188 = 0x0;
            r21 = r24;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r21 = [r0 retain];
            var_188 = 0x1;
    }
    var_148 = r24;
    var_140 = r22;
    r19 = r26;
    r24 = r23;
    if (r25 != 0x0) {
            r28 = 0x0;
            r20 = r25;
            r22 = r25;
    }
    else {
            r20 = r25;
            r0 = [NSNull null];
            r29 = r29;
            r22 = [r0 retain];
            r28 = 0x1;
    }
    r0 = @class(NSDictionary);
    r27 = @selector(dictionaryWithObjects:forKeys:count:);
    r23 = [objc_msgSend(r0, r27) retain];
    r25 = [objc_msgSend(@class(NSDictionary), r27) retain];
    r0 = @class(NSDictionary);
    r0 = objc_msgSend(r0, r27);
    r29 = r29;
    r27 = [r0 retain];
    [r25 release];
    [r23 release];
    if (r28 != 0x0) {
            [r22 release];
    }
    r23 = r19;
    if (var_188 != 0x0) {
            [r21 release];
    }
    r21 = r20;
    r20 = var_148;
    if (var_184 != 0x0) {
            [var_1A0 release];
    }
    [var_180 release];
    if (var_174 != 0x0) {
            [var_198 release];
    }
    [var_170 release];
    if (var_164 != 0x0) {
            [var_190 release];
    }
    var_68 = **___stack_chk_guard;
    [var_160 release];
    [var_158 release];
    [var_150 release];
    r0 = [UnityAnalytics sharedInstance];
    r0 = [r0 retain];
    [r0 postEvent:r27];
    [r0 release];
    [r27 release];
    [r23 release];
    [r20 release];
    [var_140 release];
    [r24 release];
    [r21 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void *)getCurrentApp {
    r0 = [USRVWebViewApp getCurrentApp];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r20 = objc_msgSend([NSMutableArray alloc], r20);
            [r19 setEventQueue:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void *)eventQueue {
    r0 = self->_eventQueue;
    return r0;
}

-(void)setEventQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_eventQueue, arg2);
    return;
}

-(void)postEvent:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 eventQueue];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 count];
    [r0 release];
    if (r24 <= 0xc7) {
            r0 = [NSJSONSerialization dataWithJSONObject:r19 options:0x1 error:&var_58];
            r29 = r29;
            r21 = [r0 retain];
            r24 = [var_58 retain];
            if (r21 != 0x0) {
                    r0 = [r20 eventQueue];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 addObject:r2];
                    [r25 release];
            }
            [r21 release];
            [r24 release];
    }
    r0 = [r20 getCurrentApp];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r23 = @selector(count);
            r0 = [r20 eventQueue];
            r29 = r29;
            r0 = [r0 retain];
            r23 = objc_msgSend(r0, r23);
            [r0 release];
            if (r23 != 0x0) {
                    r24 = [[r20 eventQueue] retain];
                    var_60 = 0x0;
                    r4 = &var_60;
                    r2 = r24;
                    r0 = [NSJSONSerialization dataWithJSONObject:r2 options:0x1 error:r4];
                    r29 = r29;
                    r22 = [r0 retain];
                    r23 = [var_60 retain];
                    [r24 release];
                    if (r22 != 0x0) {
                            r24 = [[NSString alloc] initWithData:r22 encoding:0x4];
                            r26 = [sub_1000f85c8() retain];
                            r27 = [sub_1000f8604() retain];
                            r28 = [r21 sendEvent:r26 category:r27 param1:r24];
                            [r27 release];
                            [r26 release];
                            if (r28 != 0x0) {
                                    r25 = [[NSMutableArray alloc] init];
                                    [r20 setEventQueue:r25];
                                    [r25 release];
                            }
                    }
                    else {
                            if (r23 != 0x0) {
                                    if ([USRVDeviceLog getLogLevel] >= 0x1) {
                                            [[r23 localizedDescription] retain];
                                            NSLog(@"%@/UnityAds: %s (line:%d) :: UnityAnalytics postEvent failed to convert queue for posting : %@", @selector(localizedDescription), r2, 0x1, r4);
                                            [r24 release];
                                    }
                            }
                            else {
                                    if ([USRVDeviceLog getLogLevel] >= 0x1) {
                                            NSLog(@"%@/UnityAds: %s (line:%d) :: UnityAnalytics postEvent failed to convert queue for posting", @selector(getLogLevel), r2, 0x1);
                                    }
                            }
                            r24 = [[NSMutableArray alloc] init];
                            [r20 setEventQueue:r24];
                    }
                    [r24 release];
                    [r22 release];
                    [r23 release];
            }
    }
    [r21 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_eventQueue, 0x0);
    return;
}

@end