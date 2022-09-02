@implementation ISPlacementsRepository

-(void *)initWithArray:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_placements, r21);
            r0 = [r20 getDefaultPlacementWithArray:r19];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_defaultPlacement));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)placements {
    r0 = self->_placements;
    return r0;
}

-(void *)getDefaultPlacementWithArray:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r26 = self;
    r0 = [arg2 retain];
    r0 = [r0 retain];
    r19 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 == 0x0) goto loc_1006f71bc;

loc_1006f7158:
    r21 = 0x0;
    goto loc_1006f7160;

loc_1006f7160:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r19);
    }
    r24 = *(0x0 + r21 * 0x8);
    if (([r24 isDefault] & 0x1) != 0x0) goto loc_1006f72f0;

loc_1006f7190:
    r21 = r21 + 0x1;
    if (r21 < r22) goto loc_1006f7160;

loc_1006f719c:
    r22 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) goto loc_1006f7158;

loc_1006f71bc:
    r27 = @selector(countByEnumeratingWithState:objects:count:);
    var_1E0 = r26;
    [r19 release];
    var_1C8 = q0;
    r0 = [r19 retain];
    r22 = r0;
    r23 = objc_msgSend(r0, r27);
    if (r23 == 0x0) goto loc_1006f72ac;

loc_1006f7204:
    r27 = @selector(countByEnumeratingWithState:objects:count:);
    r20 = *var_1C8;
    var_1E8 = r27;
    goto loc_1006f7218;

loc_1006f7218:
    r21 = 0x0;
    goto loc_1006f7224;

loc_1006f7224:
    if (*var_1C8 != r20) {
            objc_enumerationMutation(r22);
    }
    r25 = @selector(intValue);
    r26 = *(var_1D0 + r21 * 0x8);
    r0 = [r26 uid];
    r29 = r29;
    r0 = [r0 retain];
    r28 = objc_msgSend(r0, r25);
    [r0 release];
    if (r28 == 0x0) goto loc_1006f7304;

loc_1006f7274:
    r21 = r21 + 0x1;
    if (r21 < r23) goto loc_1006f7224;

loc_1006f7280:
    r23 = objc_msgSend(r22, var_1E8);
    if (r23 != 0x0) goto loc_1006f7218;

loc_1006f72ac:
    [r22 release];
    if (r22 != 0x0 && [r22 count] != 0x0) {
            r20 = [[r22 objectAtIndex:r2] retain];
    }
    else {
            if (var_1E0->_defaultPlacement == 0x0) {
                    r0 = [ISLoggerManager sharedInstance];
                    r0 = [r0 retain];
                    [r0 log:@"Default placement could not be set, a placement with isDefault true or id 0 could not be found" level:0x0 tag:0x6];
                    [r0 release];
            }
            r20 = 0x0;
    }
    goto loc_1006f7318;

loc_1006f7318:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006f7304:
    r20 = [r26 retain];
    r0 = r22;
    goto loc_1006f7314;

loc_1006f7314:
    [r0 release];
    goto loc_1006f7318;

loc_1006f72f0:
    r20 = [r24 retain];
    r0 = r19;
    goto loc_1006f7314;
}

-(void *)placementForName:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_1006f75dc;

loc_1006f74b8:
    var_108 = q0;
    var_128 = r20;
    r0 = [r20 placements];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 == 0x0) goto loc_1006f75b4;

loc_1006f7510:
    r20 = *var_108;
    goto loc_1006f7520;

loc_1006f7520:
    r22 = 0x0;
    goto loc_1006f752c;

loc_1006f752c:
    if (*var_108 != r20) {
            objc_enumerationMutation(r21);
    }
    r25 = @selector(isEqualToString:);
    r26 = *(var_110 + r22 * 0x8);
    r0 = [r26 name];
    r29 = r29;
    r0 = [r0 retain];
    r28 = objc_msgSend(r0, r25);
    [r0 release];
    if ((r28 & 0x1) != 0x0) goto loc_1006f75c4;

loc_1006f7580:
    r22 = r22 + 0x1;
    if (r22 < r23) goto loc_1006f752c;

loc_1006f758c:
    r23 = objc_msgSend(r21, var_120);
    if (r23 != 0x0) goto loc_1006f7520;

loc_1006f75b4:
    [r21 release];
    r20 = var_128;
    goto loc_1006f7620;

loc_1006f7620:
    r20 = [[r20 defaultPlacement] retain];
    goto loc_1006f763c;

loc_1006f763c:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006f75c4:
    r20 = [r26 retain];
    [r21 release];
    goto loc_1006f763c;

loc_1006f75dc:
    r0 = [ISLoggerManager sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    [r0 log:@"Placement is not valid, please make sure you are using the right placements, using the default placement." level:0x2 tag:0x0];
    [r0 release];
    goto loc_1006f7620;
}

-(void)setPlacements:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placements, arg2);
    return;
}

-(void *)defaultPlacement {
    r0 = self->_defaultPlacement;
    return r0;
}

-(void)setDefaultPlacement:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_defaultPlacement, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_defaultPlacement, 0x0);
    objc_storeStrong((int64_t *)&self->_placements, 0x0);
    return;
}

@end