@implementation ANSEventFilter

-(bool)samplingEnabledForEventType:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r21 = *0x1011d1e68;
    r20 = [r19 retain];
    if (r21 != -0x1) {
            dispatch_once(0x1011d1e68, 0x100e6c688);
    }
    r19 = [*0x1011d1e70 containsObject:r2];
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)shouldDiscardEvent:(void *)arg2 betaToken:(void *)arg3 installationID:(void *)arg4 withFactor:(long long)arg5 {
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
    r21 = arg5;
    r23 = arg3;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    if (r19 != 0x0) {
            if (r23 == 0x0) {
                    r23 = [[r19 name] retain];
                    r24 = [r22 samplingEnabledForEventType:r23];
                    [r23 release];
                    if (r24 != 0x0) {
                            r21 = [r22 shouldDiscardEventWithInstallationID:r20 forSamplingFactor:r21];
                    }
                    else {
                            r21 = 0x0;
                    }
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x1;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)shouldDiscardEventWithInstallationID:(void *)arg2 forSamplingFactor:(long long)arg3 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = self;
    r0 = 0x0;
    if (r2 != 0x0) {
            r0 = 0x0;
            if (r19 >= 0x2) {
                    [r2 retain];
                    r8 = &@selector(uploader:completedRequest:withResponse:uniqueName:error:completionHandler:);
                    objc_msgSend([r20 class], *(r8 + 0x358));
                    r0 = [r22 release];
                    asm { sxtw       x8, w20 };
                    if (r8 != r8 / r19 * r19) {
                            if (CPU_FLAGS & NE) {
                                    r0 = 0x1;
                            }
                    }
            }
    }
    return r0;
}

+(int)javaHashCodeForString:(void *)arg2 {
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
    r19 = r0;
    if ([r0 length] >= 0x1) {
            r20 = 0x0;
            r21 = 0x0;
            do {
                    r23 = @selector(length);
                    r21 = ((r21 << 0x5) - r21) + [r19 characterAtIndex:r2];
                    r20 = r20 + 0x1;
            } while (r20 < sign_extend_64(objc_msgSend(r19, r23)));
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

@end