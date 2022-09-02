@implementation GADInitializationStatus

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adapterStatusesByClassName));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithClassNames:(void *)arg2 {
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
    var_128 = self;
    r22 = [arg2 retain];
    r20 = [[NSMutableDictionary alloc] init];
    r0 = [r22 retain];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            do {
                    r23 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r22);
                            }
                            sub_100822058(r20, *(0x0 + r23 * 0x8), [[GADAdapterStatus alloc] initWithState:r2 latency:r3 description:r4]);
                            [r27 release];
                            r23 = r23 + 0x1;
                    } while (r23 < r24);
                    r24 = objc_msgSend(r22, var_120);
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    r19 = [var_128 initWithDictionary:r20];
    [r20 release];
    [r22 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [GADInitializationStatus alloc];
    r0 = [r0 initWithDictionary:self->_adapterStatusesByClassName];
    return r0;
}

-(void *)statusWithEntry:(void *)arg2 forKey:(void *)arg3 {
    [arg2 retain];
    r21 = self->_adapterStatusesByClassName;
    [arg3 retain];
    r0 = [r21 mutableCopy];
    sub_100822058(r0, arg3, arg2);
    [r24 release];
    [r22 release];
    r19 = [[GADInitializationStatus alloc] initWithDictionary:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)isEqual:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [GADInitializationStatus class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r20 = [*(r20 + sign_extend_64(*(int32_t *)ivar_offset(_adapterStatusesByClassName))) isEqual:r2];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(unsigned long long)hash {
    r0 = self->_adapterStatusesByClassName;
    r0 = [r0 hash];
    return r0;
}

-(void *)adapterStatusesByClassName {
    r0 = self->_adapterStatusesByClassName;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adapterStatusesByClassName, 0x0);
    return;
}

@end