@implementation MCSpawnCommand

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [[NSMutableArray arrayWithCapacity:0xa] retain];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

+(void *)commandWithCommands:(void *)arg2 {
    r0 = [MCSpawnCommand object];
    [r0 addCommands:arg2];
    r0 = r0;
    return r0;
}

-(void)addCommand:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x10) == 0x0) {
                    r19 = r2;
                    if ([r19 conformsToProtocol:@protocol(MCCommand)] != 0x0) {
                            [*(r20 + 0x8) addObject:r2];
                    }
            }
    }
    return;
}

-(void)addCommands:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    if (r2 == 0x0) goto loc_1005ecf78;

loc_1005ecf54:
    r19 = r2;
    r20 = r0;
    if ([r2 count] == 0x0 || *(int8_t *)(r20 + 0x10) != 0x0) goto loc_1005ecf78;

loc_1005ecfb0:
    var_110 = q0;
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1005ed058;

loc_1005ecfe0:
    r22 = r0;
    r24 = *var_110;
    goto loc_1005ecff4;

loc_1005ecff4:
    r27 = 0x0;
    goto loc_1005ecffc;

loc_1005ecffc:
    if (*var_110 != r24) {
            objc_enumerationMutation(r19);
    }
    if ([*(var_118 + r27 * 0x8) conformsToProtocol:r2] == 0x0) goto loc_1005ecf78;

loc_1005ed02c:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_1005ecffc;

loc_1005ed038:
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_1005ecff4;

loc_1005ed058:
    [*(r20 + 0x8) addObjectsFromArray:r19];
    goto loc_1005ecf78;

loc_1005ecf78:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)execute {
    r0 = self;
    r31 = r31 - 0x120;
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
    if (*(int8_t *)(r0 + 0x10) == 0x0) {
            *(int8_t *)(r0 + 0x10) = 0x1;
            var_100 = q0;
            r19 = *(r0 + 0x8);
            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r21 = r0;
                    r23 = *var_100;
                    do {
                            r25 = 0x0;
                            do {
                                    if (*var_100 != r23) {
                                            objc_enumerationMutation(r19);
                                    }
                                    [*(var_108 + r25 * 0x8) execute];
                                    r25 = r25 + 0x1;
                            } while (r25 < r21);
                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r21 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isFinished {
    r0 = self;
    r31 = r31 - 0x120;
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
    if (*(int8_t *)(r0 + 0x10) == 0x0) goto loc_1005ed268;

loc_1005ed1bc:
    var_100 = q0;
    r19 = *(r0 + 0x8);
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1005ed270;

loc_1005ed1f0:
    r21 = r0;
    r23 = *var_100;
    goto loc_1005ed200;

loc_1005ed200:
    r25 = 0x0;
    goto loc_1005ed208;

loc_1005ed208:
    if (*var_100 != r23) {
            objc_enumerationMutation(r19);
    }
    r0 = *(var_108 + r25 * 0x8);
    r0 = [r0 isFinished];
    if (r0 == 0x0) goto loc_1005ed274;

loc_1005ed234:
    r25 = r25 + 0x1;
    if (r25 < r21) goto loc_1005ed208;

loc_1005ed240:
    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 != 0x0) goto loc_1005ed200;

loc_1005ed264:
    r0 = 0x1;
    goto loc_1005ed274;

loc_1005ed274:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005ed270:
    r0 = 0x1;
    goto loc_1005ed274;

loc_1005ed268:
    r0 = 0x0;
    goto loc_1005ed274;
}

@end