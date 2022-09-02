@implementation MCPromoIndirectManager

+(void *)sharedMCPromoIndirectManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011dc968;
    if (r0 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            *0x1011dc968 = r0;
    }
    return r0;
}

+(void)releaseSharedMCPromoIndirectManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011dc968 != 0x0) {
            [*0x1011dc968 release];
            *0x1011dc968 = 0x0;
    }
    return;
}

-(void)initWithIndirectConfiguration:(void *)arg2 {
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
                    if ([r20 count] != 0x0) {
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

-(void *)getValueForKey:(void *)arg2 forType:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            r21 = r0;
            if ([r0 count] != 0x0) {
                    r0 = [r21 objectForKey:r2];
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

-(void *)getValueForPath:(void *)arg2 forType:(void *)arg3 {
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
    var_128 = arg2;
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    r19 = r0;
    if (r0 == 0x0) goto loc_1009d794c;

loc_1009d77fc:
    if ([r19 count] == 0x0) goto loc_1009d7948;

loc_1009d7810:
    var_110 = q0;
    r0 = [var_128 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1009d794c;

loc_1009d7840:
    r20 = @selector(countByEnumeratingWithState:objects:count:);
    r23 = r0;
    r22 = *var_110;
    var_130 = r20;
    goto loc_1009d7860;

loc_1009d7860:
    r20 = 0x0;
    goto loc_1009d7874;

loc_1009d7874:
    if (*var_110 != r22) {
            objc_enumerationMutation(var_128);
    }
    r24 = @selector(class);
    r28 = *(var_118 + r20 * 0x8);
    objc_msgSend(@class(NSDictionary), r24);
    if (objc_msgSend(r19, r25) == 0x0) goto loc_1009d7948;

loc_1009d78b8:
    [NSString class];
    if (objc_msgSend(r28, r25) == 0x0 || [[r19 allKeys] containsObject:r2] == 0x0) goto loc_1009d7948;

loc_1009d78f8:
    r19 = [r19 objectForKey:r2];
    r20 = r20 + 0x1;
    if (r20 < r23) goto loc_1009d7874;

loc_1009d7918:
    r0 = objc_msgSend(var_128, var_130);
    r23 = r0;
    if (r0 != 0x0) goto loc_1009d7860;

loc_1009d794c:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009d7948:
    r19 = 0x0;
    goto loc_1009d794c;
}

-(void *)getIndirectForKey:(void *)arg2 {
    r0 = [self getValueForKey:arg2 forType:@"IndirectConfig"];
    return r0;
}

-(void *)getIndirectForPath:(void *)arg2 {
    r0 = [self getValueForPath:arg2 forType:@"IndirectConfig"];
    return r0;
}

-(void *)getTemplateForKey:(void *)arg2 {
    r0 = [self getValueForKey:arg2 forType:@"TemplateConfig"];
    return r0;
}

-(void *)getTemplateForPath:(void *)arg2 {
    r0 = [self getValueForPath:arg2 forType:@"TemplateConfig"];
    return r0;
}

-(void *)createInvocationforSelector:(void *)arg2 andTarget:(void *)arg3 {
    r0 = [NSInvocation invocationWithMethodSignature:[[arg3 class] instanceMethodSignatureForSelector:arg2]];
    [r0 setTarget:arg3];
    [r0 setSelector:r2];
    r0 = r21;
    return r0;
}

@end