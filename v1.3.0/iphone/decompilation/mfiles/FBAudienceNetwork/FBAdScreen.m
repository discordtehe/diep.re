@implementation FBAdScreen

+(double)scale {
    r0 = self;
    return r0;
}

+(void)initialize {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = NSStringFromClass(self);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
            [r21 release];
            if ([FBAdScreen class] == r19) {
                    [r19 recomputeCachedState];
            }
    }
    else {
            r22 = [FBAdScreen class];
            [r21 release];
            if (r22 == r19) {
                    if ([FBAdScreen class] == r19) {
                            [r19 recomputeCachedState];
                    }
            }
            else {
                    r20 = @selector(class);
                    r20 = [NSStringFromClass(objc_msgSend(@class(FBAdScreen), r20)) retain];
                    r0 = NSStringFromClass(r19);
                    r0 = [r0 retain];
                    r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                    [r0 release];
                    [r20 release];
                    objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
            }
    }
    return;
}

+(void)recomputeCachedState {
    r0 = @class(UIScreen);
    r0 = [r0 mainScreen];
    r0 = [r0 retain];
    [r0 scale];
    [r0 release];
    *0x1011ddb38 = d8;
    r0 = @class(UIScreen);
    r0 = [r0 mainScreen];
    r0 = [r0 retain];
    [r0 nativeScale];
    [r0 release];
    *0x1011ddb30 = d8;
    r0 = @class(UIScreen);
    r0 = [r0 mainScreen];
    r0 = [r0 retain];
    [r0 nativeBounds];
    [r0 release];
    *0x1011ddb10 = d8;
    *0x1011ddb18 = d9;
    r0 = @class(UIScreen);
    r0 = [r0 mainScreen];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    *0x1011ddb20 = d8;
    *0x1011ddb28 = d9;
    return;
}

+(double)nativeScale {
    r0 = self;
    return r0;
}

+(struct CGSize)nativeSize {
    r0 = self;
    return r0;
}

+(struct CGSize)size {
    r0 = self;
    return r0;
}

+(bool)isLandscape {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [FBAdScreen orientation];
    if (r0 < 0x5) {
            if (CPU_FLAGS & B) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(bool)isPortrait {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [FBAdScreen orientation];
    if (r0 < 0x3) {
            if (CPU_FLAGS & B) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(struct CGRect)bounds {
    r0 = [self size];
    return r0;
}

+(long long)orientation {
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = [r0 statusBarOrientation];
    [r0 release];
    r0 = r20;
    return r0;
}

+(struct CGRect)boundsInOrientation {
    r0 = [self sizeInOrientation];
    return r0;
}

+(struct CGSize)sizeInOrientation {
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    [r0 bounds];
    r0 = [r0 release];
    return r0;
}

@end