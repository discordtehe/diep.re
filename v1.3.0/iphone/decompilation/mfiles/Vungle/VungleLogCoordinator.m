@implementation VungleLogCoordinator

+(void)initialize {
    r0 = objc_alloc();
    r0 = [r0 init];
    r8 = *0x1011da8a0;
    *0x1011da8a0 = r0;
    [r8 release];
    return;
}

+(void)log:(void *)arg2 {
    [self log:arg2 withParameters:&saved_fp + 0x10];
    return;
}

+(void)log:(void *)arg2 withParameters:(char *)arg3 {
    r21 = [arg2 retain];
    r19 = [objc_alloc() initWithFormat:r2 arguments:arg3];
    [r21 release];
    r20 = **___stderrp;
    r0 = objc_retainAutorelease(r19);
    [r0 UTF8String];
    fprintf(r20, "[VUNGLESDK] %s\n", r21);
    var_28 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_48);
    [var_28 release];
    [r19 release];
    return;
}

+(void)attachLogger:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (([*0x1011da8a0 containsObject:r2] & 0x1) == 0x0) {
            [*0x1011da8a0 addObject:r2];
    }
    [r19 release];
    return;
}

+(void)detachLogger:(void *)arg2 {
    [*0x1011da8a0 removeObject:arg2];
    return;
}

@end