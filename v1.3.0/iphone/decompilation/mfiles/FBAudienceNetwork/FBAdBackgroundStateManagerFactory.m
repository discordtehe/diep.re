@implementation FBAdBackgroundStateManagerFactory

+(void)setBackgroundStateManagerProviderBlock:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r8 = *0x1011dcba0;
    *0x1011dcba0 = r0;
    [r8 release];
    return;
}

+(void)resetBackgroundStateManagerProviderBlock {
    r0 = *0x1011dcba0;
    *0x1011dcba0 = 0x0;
    [r0 release];
    return;
}

+(void *)backgroundStateManager {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r29 = &saved_fp;
    r0 = *0x1011dcba0;
    if (r0 != 0x0) {
            r0 = *0x1011dcba0;
            r0 = (*(r0 + 0x10))();
            r0 = [r0 retain];
    }
    r0 = [r0 autorelease];
    return r0;
}

@end