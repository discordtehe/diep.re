@implementation MCPromoDataAccess

+(void *)getDataAccessFromConfiguration:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            [NSDictionary class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r0 = [r19 objectForKey:r2];
                    if (r0 != 0x0) {
                            r21 = @selector(objectForKey:);
                            r0 = objc_msgSend(r19, r21);
                            r0 = objc_msgSend(r0, r21);
                    }
            }
            else {
                    r0 = 0x0;
            }
            r0 = NSClassFromString(r0);
            r21 = r0;
            if (r0 == 0x0) {
                    r21 = NSClassFromString(@"MCPromoDataAccessGeneric");
            }
            if ([r21 isSubclassOfClass:[MCPromoDataAccess class]] != 0x0) {
                    r0 = objc_alloc();
                    r0 = [r0 initWithConfiguration:r19];
                    r0 = [r0 autorelease];
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

+(void *)executeDataAccessFromConfig:(void *)arg2 {
    r0 = [MCPromoDataAccess getDataAccessFromConfiguration:arg2];
    r0 = [r0 execute];
    return r0;
}

-(void *)initWithConfiguration:(void *)arg2 {
    r31 = r31 - 0x50;
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
    [NSDictionary class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r23 = [r19 objectForKey:r2];
    }
    else {
            r23 = 0x0;
    }
    r22 = @selector(isKindOfClass:);
    [NSDictionary class];
    if (objc_msgSend(r23, r22) != 0x0) {
            r0 = [r23 objectForKey:r2];
            if (r0 != 0x0 && ([r0 isEqualToString:r2] & 0x1) != 0x0) {
                    r20 = 0x0;
            }
            else {
                    r0 = [[&var_40 super] init];
                    r20 = r0;
                    if (r0 != 0x0) {
                            *(r20 + 0x8) = [r19 retain];
                    }
            }
    }
    else {
            r0 = [[&var_40 super] init];
            r20 = r0;
            if (r0 != 0x0) {
                    *(r20 + 0x8) = [r19 retain];
            }
    }
    r0 = r20;
    return r0;
}

-(void *)execute {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    r20 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r20);
    r0 = objc_msgSend(r0, r20);
    if (r0 == 0x0) goto loc_1009da88c;

loc_1009da854:
    r20 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0 || ([r20 isEqualToString:r2] & 0x1) != 0x0) goto loc_1009da88c;

loc_1009da8ac:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_1009da8d0;

loc_1009da8c4:
    r8 = &@selector(getPropertyValue);
    goto loc_1009da894;

loc_1009da894:
    r0 = objc_msgSend(r19, *r8);
    return r0;

loc_1009da8d0:
    r0 = 0x0;
    return r0;

loc_1009da88c:
    r8 = &@selector(resolveDataAccess);
    goto loc_1009da894;
}

-(void *)getPropertyValue {
    return 0x0;
}

+(void *)clearAllDataAccessFromConfig:(void *)arg2 {
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
    r19 = arg2;
    if (arg2 == 0x0) goto loc_1009da664;

loc_1009da3e0:
    [NSDictionary class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_1009da558;

loc_1009da414:
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r19];
    if (r0 == 0x0) goto loc_1009da660;

loc_1009da430:
    r21 = @selector(isKindOfClass:);
    r20 = r0;
    [NSDictionary class];
    if (objc_msgSend(r20, r21) == 0x0) goto loc_1009da6a0;

loc_1009da454:
    r19 = [[objc_alloc() init] autorelease];
    var_190 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1E8 = r1;
    r0 = objc_msgSend(r20, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r21 = *var_190;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_190 != r21) {
                                    objc_enumerationMutation(r20);
                            }
                            [MCPromoDataAccess clearAllDataAccessFromConfig:[r20 valueForKey:*(var_198 + r28 * 0x8)]];
                            [r19 setValue:r2 forKey:r3];
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = objc_msgSend(r20, var_1E8);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    goto loc_1009da664;

loc_1009da664:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009da6a0:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [MCPromoDataAccess clearAllDataAccessFromConfig:r20];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009da660:
    r19 = 0x0;
    goto loc_1009da664;

loc_1009da558:
    r21 = @selector(isKindOfClass:);
    [NSArray class];
    if (objc_msgSend(r19, r21) != 0x0) {
            r20 = [[objc_alloc() init] autorelease];
            var_1D0 = q0;
            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r25 = *var_1D0;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_1D0 != r25) {
                                            objc_enumerationMutation(r19);
                                    }
                                    [MCPromoDataAccess clearAllDataAccessFromConfig:r2];
                                    objc_msgSend(r20, r24);
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
            r19 = r20;
    }
    goto loc_1009da664;
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

-(void *)resolveDataAccess {
    return 0x0;
}

@end