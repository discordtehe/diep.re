@implementation FIRComponentContainer

+(void)registerAsComponentRegistrant:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if (*qword_1011d1da0 != -0x1) {
            dispatch_once(0x1011d1da0, 0x100e6a8c0);
    }
    [r20 registerAsComponentRegistrant:r19 inSet:*0x1011d1da8];
    return;
}

+(void)registerAsComponentRegistrant:(void *)arg2 inSet:(void *)arg3 {
    [arg3 addObject:r2];
    return;
}

-(void *)initWithApp:(void *)arg2 {
    r0 = [self initWithApp:arg2 registrants:*0x1011d1da8];
    return r0;
}

-(void *)initWithApp:(void *)arg2 registrants:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_app, r19);
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_cachedInstances));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_components));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r21 populateComponentsFromRegisteredClasses:r20 forApp:r19];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)instanceForProtocol:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [NSStringFromProtocol(r0) retain];
    r0 = [r21 cachedInstances];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    if (r22 != 0x0) {
            r21 = [r22 retain];
    }
    else {
            r0 = [r21 components];
            r0 = [r0 retain];
            r23 = [[r0 objectForKeyedSubscript:r2] retain];
            [r0 release];
            r21 = [[r21 instantiateInstanceForProtocol:r19 withBlock:r23] retain];
            [r23 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)instantiateInstanceForProtocol:(void *)arg2 withBlock:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (r20 != 0x0) {
            r0 = (*(r20 + 0x10))(r20, r21, &var_21);
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r0 = NSStringFromProtocol(r19);
                    r29 = r29;
                    r22 = [r0 retain];
                    if (([r20 conformsToProtocol:r19] & 0x1) == 0x0) {
                            sub_100102750(*0x100e6a928, @"I-COR000030", @"An instance conforming to %@ was requested, but the instance provided does not conform to the protocol");
                    }
                    if (var_21 != 0x0) {
                            r0 = [r21 cachedInstances];
                            r0 = [r0 retain];
                            [r0 setObject:r20 forKeyedSubscript:r22];
                            [r0 release];
                    }
                    r21 = [r20 retain];
                    [r22 release];
            }
            else {
                    r21 = 0x0;
            }
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)app {
    r0 = objc_loadWeakRetained((int64_t *)&self->_app);
    r0 = [r0 autorelease];
    return r0;
}

-(void)removeAllCachedInstances {
    r31 = r31 - 0x150;
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
    r0 = [self cachedInstances];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 allValues];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    r23 = objc_msgSend(r21, r1);
    if (r23 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            r28 = *(0x0 + r27 * 0x8);
                            if ([r28 conformsToProtocol:@protocol()] != 0x0 && [r28 respondsToSelector:@selector(appWillBeDeleted:)] != 0x0) {
                                    r0 = [var_128 app];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    [r28 appWillBeDeleted:r20];
                                    [r20 release];
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r23 = objc_msgSend(r21, var_130);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    r0 = [var_128 cachedInstances];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)components {
    r0 = self->_components;
    return r0;
}

-(void)setCachedInstances:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cachedInstances, arg2);
    return;
}

-(void)populateComponentsFromRegisteredClasses:(void *)arg2 forApp:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x230;
    r26 = self;
    r21 = [arg2 retain];
    var_238 = [arg3 retain];
    r0 = [r21 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_268 = r0;
    var_240 = r1;
    r0 = objc_msgSend(r0, r1);
    var_250 = r0;
    if (r0 != 0x0) {
            do {
                    r19 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_268);
                            }
                            var_248 = r19;
                            r0 = *(0x0 + r19 * 0x8);
                            r0 = [r0 componentsToRegister];
                            r29 = r29;
                            r0 = [r0 retain];
                            var_1F8 = r0;
                            r21 = objc_msgSend(r0, var_240);
                            if (r21 != 0x0) {
                                    do {
                                            r19 = 0x0;
                                            r23 = @selector(protocol);
                                            r22 = @selector(objectForKeyedSubscript:);
                                            var_210 = r22;
                                            var_208 = r21;
                                            stack[-528] = r23;
                                            do {
                                                    if (*0x0 != *0x0) {
                                                            objc_enumerationMutation(var_1F8);
                                                    }
                                                    r24 = *(0x0 + r19 * 0x8);
                                                    r0 = objc_msgSend(r24, r23);
                                                    r0 = [r0 retain];
                                                    r25 = [NSStringFromProtocol(r0) retain];
                                                    [r0 release];
                                                    r0 = [r26 components];
                                                    r0 = [r0 retain];
                                                    r28 = r0;
                                                    r0 = objc_msgSend(r0, r22);
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    [r0 release];
                                                    [r28 release];
                                                    if (r0 != 0x0) {
                                                            sub_100102750(*0x100e6a928, @"I-COR000029", @"Attempted to register protocol %@, but it already has an implementation.");
                                                    }
                                                    else {
                                                            r0 = [r24 creationBlock];
                                                            r0 = [r0 retain];
                                                            r20 = r0;
                                                            r28 = objc_retainBlock(r0);
                                                            r23 = r26;
                                                            r0 = [r26 components];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            [r0 setObject:r28 forKeyedSubscript:r25];
                                                            [r0 release];
                                                            [r28 release];
                                                            [r20 release];
                                                            r28 = [r24 instantiationTiming];
                                                            if ([r24 instantiationTiming] == 0x2) {
                                                                    r0 = [var_238 isDefaultApp];
                                                            }
                                                            else {
                                                                    r0 = 0x0;
                                                            }
                                                            r26 = r23;
                                                            r21 = var_208;
                                                            r23 = stack[-528];
                                                            r22 = var_210;
                                                            if (r28 == 0x1 || r0 != 0x0) {
                                                                    r20 = [objc_msgSend(r24, r23) retain];
                                                                    r24 = [[r24 creationBlock] retain];
                                                                    r0 = [r26 instantiateInstanceForProtocol:r2 withBlock:r3];
                                                                    r29 = r29;
                                                                    [[r0 retain] release];
                                                                    [r24 release];
                                                                    [r20 release];
                                                            }
                                                    }
                                                    [r25 release];
                                                    r19 = r19 + 0x1;
                                            } while (r19 < r21);
                                            r21 = objc_msgSend(var_1F8, var_240);
                                    } while (r21 != 0x0);
                            }
                            [var_1F8 release];
                            r19 = var_248 + 0x1;
                    } while (r19 < var_250);
                    r0 = objc_msgSend(var_268, var_240);
                    var_250 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_268 release];
    [var_238 release];
    [var_268 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setComponents:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_components, arg2);
    return;
}

-(void *)cachedInstances {
    r0 = self->_cachedInstances;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_cachedInstances, 0x0);
    objc_storeStrong((int64_t *)&self->_components, 0x0);
    objc_destroyWeak((int64_t *)&self->_app);
    return;
}

@end