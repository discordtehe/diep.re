@implementation GULAppDelegateObserver

+(void *)sharedInstance {
    if (*qword_1011d1950 != -0x1) {
            dispatch_once(0x1011d1950, 0x100e68a18);
    }
    r0 = *0x1011d1948;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)observeUIApplication {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_isObserving));
    if (*(int8_t *)(r19 + r21) == 0x0) {
            r0 = [GULAppDelegateSwizzler sharedApplication];
            r0 = [r0 retain];
            [r0 addObserver:r19 forKeyPath:@"delegate" options:0x3 context:0x0];
            [r0 release];
            *(int8_t *)(r19 + r21) = 0x1;
    }
    return;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r21 = [arg2 isEqual:r2];
    [r22 release];
    if (r21 != 0x0) {
            r23 = @selector(isEqual:);
            r21 = [[r19 objectForKeyedSubscript:**_NSKeyValueChangeNewKey] retain];
            r0 = [r19 objectForKeyedSubscript:**_NSKeyValueChangeOldKey];
            r29 = r29;
            r22 = [r0 retain];
            if ((objc_msgSend(r21, r23) & 0x1) == 0x0 && [r22 isEqual:r2] != 0x0) {
                    r0 = *0x1011d1958;
                    *0x1011d1958 = 0x0;
                    [r0 release];
                    r0 = [GULAppDelegateSwizzler sharedApplication];
                    r0 = [r0 retain];
                    [r0 removeObserver:r20 forKeyPath:@"delegate"];
                    [r0 release];
                    *(int8_t *)(int64_t *)&r20->_isObserving = 0x0;
            }
            [r22 release];
            [r21 release];
    }
    [r19 release];
    return;
}

@end