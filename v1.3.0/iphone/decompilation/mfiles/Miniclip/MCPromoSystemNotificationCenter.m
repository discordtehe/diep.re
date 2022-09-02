@implementation MCPromoSystemNotificationCenter

+(void *)mcPromoSystemNotificationCenterWithGameDelegate:(void *)arg2 withLocalizationManager:(void *)arg3 {
    r0 = [MCPromoSystemNotificationCenter alloc];
    r0 = [r0 initWithGameDelegate:arg2 withLocalizationManager:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithGameDelegate:(void *)arg2 withLocalizationManager:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r3;
            r21 = r2;
            r0 = [[&var_30 super] init];
            r19 = r0;
            if (r0 != 0x0) {
                    *(r19 + 0x8) = [r21 retain];
                    *(r19 + 0x10) = [[NSMutableDictionary dictionary] retain];
                    *(r19 + 0x18) = [r20 retain];
                    [[NSNotificationCenter defaultCenter] addObserver:r2 selector:r3 name:r4 object:r5];
            }
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(bool)registerSystemForNotifications:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            r20 = *(r0 + 0x10);
            [r2 promoSystemId];
            [r20 setObject:r2 forKey:r3];
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[NSNotificationCenter defaultCenter] removeObserver:r2];
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)schedulePromotionLocalNotifications {
    r31 = r31 - 0x160;
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
    r19 = self;
    if ([*(self + 0x8) respondsToSelector:@selector(scheduleLocalNotifications:forType:forSystem:), r3, r4] != 0x0) {
            r0 = *(r19 + 0x10);
            r0 = [r0 allValues];
            var_110 = q0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_148 = r1;
            var_140 = r0;
            r0 = objc_msgSend(r0, r1);
            var_130 = r0;
            if (r0 != 0x0) {
                    var_138 = *var_110;
                    do {
                            r20 = 0x0;
                            do {
                                    if (*var_110 != var_138) {
                                            objc_enumerationMutation(var_140);
                                    }
                                    r25 = *(var_118 + r20 * 0x8);
                                    r26 = sub_100762464(r25, *(r19 + 0x8), *(r19 + 0x18));
                                    r27 = 0x0;
                                    do {
                                            [NSNumber numberWithInt:r2];
                                            r0 = objc_msgSend(r26, r28);
                                            if (r0 != 0x0) {
                                                    r21 = r0;
                                                    if ([r0 count] != 0x0) {
                                                            [*(r19 + 0x8) scheduleLocalNotifications:r2 forType:r3 forSystem:r4];
                                                    }
                                            }
                                            r27 = r27 + 0x1;
                                    } while (r27 != 0x5);
                                    r20 = r20 + 0x1;
                            } while (r20 < var_130);
                            r0 = objc_msgSend(var_140, var_148);
                            var_130 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)processLocalNotificationUserInfo:(void *)arg2 {
    r31 = r31 - 0x140;
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
    r19 = arg2;
    r20 = self;
    if ([*(self + 0x8) respondsToSelector:@selector(processLocalNotificationUserInfo:forSystem:), r3] != 0x0) {
            r0 = [r19 objectForKey:r2];
            r0 = sub_1005d85d8(r0, 0x0);
            if (r0 != 0x0) {
                    r22 = r0;
                    if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r20 + 0x10);
                            r0 = [r0 allValues];
                            r23 = r0;
                            var_110 = q0;
                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                            var_128 = r1;
                            r0 = objc_msgSend(r0, r1);
                            if (r0 != 0x0) {
                                    r25 = r0;
                                    r28 = *var_110;
                                    do {
                                            r24 = 0x0;
                                            do {
                                                    if (*var_110 != r28) {
                                                            objc_enumerationMutation(r23);
                                                    }
                                                    r27 = *(var_118 + r24 * 0x8);
                                                    if ([r27 getOfferFromID:r2] != 0x0) {
                                                            [*(r20 + 0x8) processLocalNotificationUserInfo:r19 forSystem:r27];
                                                    }
                                                    r24 = r24 + 0x1;
                                            } while (r24 < r25);
                                            r0 = objc_msgSend(r23, var_128);
                                            r25 = r0;
                                    } while (r0 != 0x0);
                            }
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

@end