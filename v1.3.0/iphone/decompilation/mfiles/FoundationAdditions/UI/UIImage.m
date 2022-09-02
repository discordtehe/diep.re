@implementation UIImage

+(void *)af_safeImageWithData:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = *0x1011d6e48;
    r19 = [arg2 retain];
    if (r20 != -0x1) {
            dispatch_once(0x1011d6e48, 0x100e7c960);
    }
    [*0x1011d6e40 lock];
    r20 = [[UIImage imageWithData:r19] retain];
    [r19 release];
    [*0x1011d6e40 unlock];
    r0 = [r20 autorelease];
    return r0;
}

@end