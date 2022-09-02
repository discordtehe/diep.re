@implementation VungleMRAIDScreenUtils

+(struct CGRect)screenBounds {
    var_40 = d13;
    stack[-72] = d12;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    [r0 bounds];
    v8 = v0;
    v9 = v1;
    v11 = v2;
    v10 = v3;
    [r0 release];
    r0 = [UIApplication sharedApplication];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 statusBarOrientation];
    r0 = [r0 release];
    if (r20 <= 0x4) {
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 systemVersion];
            r0 = [r0 retain];
            [r0 floatValue];
            [r0 release];
            r0 = [r19 release];
            if (s12 >= 0x4020000000000000) {
                    v10 = v11;
            }
    }
    return r0;
}

+(double)screenScaleFactor {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIScreen mainScreen];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 respondsToSelector:@selector(displayLinkWithTarget:selector:), r3] & 0x1) != 0x0) {
            r22 = @selector(respondsToSelector:);
            r0 = [UIScreen mainScreen];
            r29 = r29;
            r0 = [r0 retain];
            r22 = objc_msgSend(r0, r22);
            [r0 release];
            r0 = [r20 release];
            if (r22 != 0x0) {
                    r21 = @selector(scale);
                    r0 = [UIScreen mainScreen];
                    r0 = [r0 retain];
                    objc_msgSend(r0, r21);
                    r0 = [r19 release];
            }
    }
    else {
            r0 = [r20 release];
    }
    return r0;
}

+(struct CGSize)screenResolutionWithSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    d0 = *(int128_t *)*_CGSizeZero;
    if (d0 == d9) {
            asm { fccmp      d1, d8, #0x0, eq };
    }
    if (!CPU_FLAGS & NE) {
            [r19 screenBounds];
    }
    r0 = [r19 screenScaleFactor];
    return r0;
}

@end