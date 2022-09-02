@implementation MRCommand

+(void *)sharedCommandClassMap {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011d83b0 != -0x1) {
            dispatch_once(0x1011d83b0, 0x100e7eda8);
    }
    r0 = *0x1011d83a8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)initialize {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [MRCommand self];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) {
            r22 = [[MRCloseCommand self] retain];
            [r19 registerCommand:r22];
            [r22 release];
            r22 = [[MRExpandCommand self] retain];
            [r19 registerCommand:r22];
            [r22 release];
            r22 = [[MRResizeCommand self] retain];
            [r19 registerCommand:r22];
            [r22 release];
            r22 = [[MRUseCustomCloseCommand self] retain];
            [r19 registerCommand:r22];
            [r22 release];
            r22 = [[MRSetOrientationPropertiesCommand self] retain];
            [r19 registerCommand:r22];
            [r22 release];
            r22 = [[MROpenCommand self] retain];
            [r19 registerCommand:r22];
            [r22 release];
            r20 = [[MRPlayVideoCommand self] retain];
            [r19 registerCommand:r20];
            [r20 release];
    }
    return;
}

+(void)registerCommand:(void *)arg2 {
    [[self sharedCommandClassMap] retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r22 = [[arg2 commandType] retain];
    [r19 setValue:arg2 forKey:r22];
    [r22 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

+(void *)commandType {
    return @"BASE_CMD_TYPE";
}

+(void *)commandClassForString:(void *)arg2 {
    [arg2 retain];
    [[self sharedCommandClassMap] retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    [[r20 objectForKey:r2] retain];
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)commandForString:(void *)arg2 {
    [self commandClassForString:arg2];
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(bool)requiresUserInteractionForPlacementType:(unsigned long long)arg2 {
    return 0x1;
}

-(bool)executableWhileBlockingRequests {
    return 0x0;
}

-(bool)executeWithParams:(void *)arg2 {
    return 0x1;
}

-(double)floatFromParameters:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    [self floatFromParameters:r21 forKey:arg3 withDefault:r4];
    r0 = [r21 release];
    return r0;
}

-(double)floatFromParameters:(void *)arg2 forKey:(void *)arg3 withDefault:(double)arg4 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r0 = [arg2 retain];
    r19 = [[r0 valueForKey:arg3] retain];
    [r0 release];
    if (r19 != 0x0) {
            [r19 floatValue];
            asm { fcvt       d8, s0 };
    }
    r0 = [r19 release];
    return r0;
}

-(bool)boolFromParameters:(void *)arg2 forKey:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = [[r0 valueForKey:arg3] retain];
    [r0 release];
    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            r20 = @selector(isEqualToString:);
            r20 = objc_msgSend(r19, r20);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(int)intFromParameters:(void *)arg2 forKey:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = [[r0 valueForKey:arg3] retain];
    [r0 release];
    if (r19 != 0x0) {
            r20 = [r19 intValue];
    }
    else {
            r20 = 0xffffffffffffffff;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)urlFromParameters:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self stringFromParameters:r21 forKey:arg3] retain];
    [r21 release];
    r20 = [[NSURL URLWithString:r2] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)stringFromParameters:(void *)arg2 forKey:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r20 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    if (r19 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r22 = [r0 retain];
            r23 = [r19 isEqual:r2];
            [r22 release];
            if ((r23 & 0x1) != 0x0) {
                    r20 = 0x0;
            }
            else {
                    r23 = [[NSCharacterSet whitespaceAndNewlineCharacterSet] retain];
                    r0 = [r19 stringByTrimmingCharactersInSet:r23];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r19 release];
                    [r23 release];
                    if (r22 != 0x0) {
                            r21 = @selector(isEqual:);
                            r19 = [[NSNull null] retain];
                            if (objc_msgSend(r22, r21) != 0x0) {
                                    [r19 release];
                                    r20 = 0x0;
                                    r19 = r22;
                            }
                            else {
                                    r20 = [r22 length];
                                    [r19 release];
                                    if (r20 != 0x0) {
                                            r0 = [r22 retain];
                                            r20 = r0;
                                            r19 = r0;
                                    }
                                    else {
                                            r19 = r22;
                                    }
                            }
                    }
                    else {
                            r20 = 0x0;
                            r19 = 0x0;
                    }
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak(self + 0x8);
    return;
}

@end