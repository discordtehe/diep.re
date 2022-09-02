@implementation ANSLogger

+(void *)sharedLogger {
    if (*qword_1011d1e58 != -0x1) {
            dispatch_once(0x1011d1e58, 0x100e6c380);
    }
    r0 = *0x1011d1e60;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)log:(void *)arg2 {
    r20 = [[@"[Answers] " stringByAppendingString:arg2] retain];
    [self internalLog:r20 args:&saved_fp + 0x10];
    [r20 release];
    return;
}

-(void)logWithLabel:(void *)arg2 format:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[NSString stringWithFormat:@"[Answers:%@] %@"] retain];
    [r21 release];
    [self internalLog:r19 args:&saved_fp + 0x10];
    [r19 release];
    return;
}

-(void)internalLog:(void *)arg2 args:(char *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = [arg2 retain];
    if ([self debugMode] != 0x0) {
            NSLogv(r20, r19);
    }
    [r20 release];
    return;
}

-(void)setDebugMode:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_debugMode = arg2;
    return;
}

-(bool)debugMode {
    r0 = *(int8_t *)(int64_t *)&self->_debugMode;
    return r0;
}

@end