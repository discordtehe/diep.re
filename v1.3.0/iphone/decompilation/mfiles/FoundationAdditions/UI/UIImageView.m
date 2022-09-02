@implementation UIImageView

-(void)fbad_setIcon:(void *)arg2 completion:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    objc_copyWeak(&var_58 + 0x28, &saved_fp - 0x28);
    r0 = [r22 retain];
    [r19 loadImageAsyncWithBlock:&var_58];
    [r0 release];
    objc_destroyWeak(&var_58 + 0x28);
    objc_destroyWeak(&saved_fp - 0x28);
    [r21 release];
    [r19 release];
    return;
}

-(bool)fbad_containsImage:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self image];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [UIImagePNGRepresentation() retain];
            r23 = [UIImagePNGRepresentation() retain];
            if (r21 != 0x0) {
                    asm { ccmp       x0, #0x0, #0x4, ne };
            }
            if (!CPU_FLAGS & NE) {
                    r22 = 0x0;
            }
            else {
                    r22 = [r21 isEqualToData:r23];
            }
            [r23 release];
            [r21 release];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

@end