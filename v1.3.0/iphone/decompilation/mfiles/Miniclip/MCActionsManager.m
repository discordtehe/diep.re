@implementation MCActionsManager

+(bool)isMCActionsManagerInitialized {
    r0 = self;
    if (*qword_1011d9630 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void *)sharedMCActionsManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011d9630;
    if (r0 == 0x0) {
            r0 = [MCActionsManager alloc];
            r0 = [r0 init];
            *0x1011d9630 = r0;
    }
    return r0;
}

+(void)releaseSharedMCActionsManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011d9630 != 0x0) {
            [*0x1011d9630 release];
            *0x1011d9630 = 0x0;
    }
    return;
}

-(void *)init {
    r0 = [[&var_10 super] init];
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

-(void)initWithActionsConfiguration:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if ([r2 count] != 0x0) {
                    r0 = *(r19 + 0x8);
                    if (r0 != 0x0 && [r0 count] != 0x0) {
                            r0 = *(r19 + 0x8);
                            if (r0 != 0x0) {
                                    [r0 release];
                                    *(r19 + 0x8) = 0x0;
                            }
                    }
                    *(r19 + 0x8) = [r20 retain];
            }
    }
    return;
}

-(void *)getActionForTag:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            r20 = r0;
            if ([r0 count] != 0x0) {
                    r0 = [r19 actionFromDictionary:r20];
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

-(void *)createInvocationforSelector:(void *)arg2 andTarget:(void *)arg3 {
    r0 = [NSInvocation invocationWithMethodSignature:[[arg3 class] instanceMethodSignatureForSelector:arg2]];
    [r0 setTarget:arg3];
    [r0 setSelector:r2];
    r0 = r21;
    return r0;
}

-(void *)actionFromDictionary:(void *)arg2 {
    r31 = r31 - 0xb0;
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
    r19 = arg2;
    var_78 = self;
    r0 = [r19 objectForKey:r2];
    if (r0 == 0x0) goto .l1;

loc_1005c3cc4:
    r0 = NSClassFromString(r0);
    if (r0 == 0x0) goto .l1;

loc_1005c3ccc:
    r22 = r0;
    r0 = [r19 objectForKey:r2];
    if (r0 == 0x0) goto .l1;

loc_1005c3ce8:
    r0 = NSSelectorFromString(r0);
    if (r0 == 0x0) goto .l1;

loc_1005c3cf0:
    r21 = @selector(objectForKey:);
    r22 = [var_78 createInvocationforSelector:r0 andTarget:[[r22 alloc] autorelease]];
    [NSString stringWithFormat:@"arg%dType"];
    r0 = objc_msgSend(r19, r21);
    if (r0 == 0x0) goto loc_1005c3fe8;

loc_1005c3d68:
    r28 = r0;
    r27 = 0x1;
    goto loc_1005c3db0;

loc_1005c3db0:
    r25 = [NSString stringWithFormat:@"arg%dValue"];
    if ([r28 isEqualToString:@"action"] == 0x0) goto loc_1005c3e0c;

loc_1005c3de4:
    [r19 objectForKey:r2];
    r0 = var_78;
    goto loc_1005c3dfc;

loc_1005c3dfc:
    [r0 actionFromDictionary:r2];
    goto loc_1005c3f4c;

loc_1005c3f4c:
    r27 = r27 + 0x1;
    [r22 setArgument:&var_70 atIndex:r27];
    goto loc_1005c3f64;

loc_1005c3f64:
    r21 = @selector(objectForKey:);
    [NSString stringWithFormat:@"arg%dType"];
    r0 = objc_msgSend(r19, r21);
    r28 = r0;
    if (r0 != 0x0) goto loc_1005c3db0;

loc_1005c3fe8:
    [r22 invoke];
    [r22 getReturnValue:&var_70];
    r0 = var_70;
    return r0;

.l1:
    return r0;

loc_1005c3e0c:
    if ([r28 isEqualToString:@"cgfloat"] == 0x0) goto loc_1005c3e44;

loc_1005c3e24:
    [[r19 objectForKey:r2] doubleValue];
    goto loc_1005c3f4c;

loc_1005c3e44:
    if ([r28 isEqualToString:@"float"] == 0x0) goto loc_1005c3e7c;

loc_1005c3e5c:
    [[r19 objectForKey:r2] floatValue];
    goto loc_1005c3f4c;

loc_1005c3e7c:
    if ([r28 isEqualToString:@"int"] == 0x0) goto loc_1005c3eb4;

loc_1005c3e94:
    [[r19 objectForKey:r2] intValue];
    goto loc_1005c3f4c;

loc_1005c3eb4:
    if ([r28 isEqualToString:@"cgPoint*IPTL"] == 0x0) goto loc_1005c3f98;

loc_1005c3ecc:
    r21 = @selector(objectForKey:);
    r0 = objc_msgSend(r19, r21);
    sub_1005d83f0(objc_msgSend(r0, r21));
    sub_1005cb618();
    asm { fcvt       d0, s0 };
    sub_1005d83f0(objc_msgSend(r25, r21));
    sub_1005cb618();
    s0 = *(int32_t *)r28;
    s0 = s8 * s0;
    asm { fcvt       d0, s0 };
    goto loc_1005c3f4c;

loc_1005c3f98:
    if (([r28 isEqualToString:@"actionByKey"] & 0x1) == 0x0) goto loc_1005c3fe0;

loc_1005c3fb0:
    [r19 objectForKey:r2];
    objc_msgSend(*(var_78 + 0x8), r21);
    r0 = var_78;
    goto loc_1005c3dfc;

loc_1005c3fe0:
    r27 = r27 + 0x1;
    goto loc_1005c3f64;
}

@end