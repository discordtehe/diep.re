@implementation ISBannerView

-(void)willMoveToSuperview:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r8 = &@selector(dispatchAsyncWithQueue:withBlock:);
    objc_msgSendSuper2(&var_20, *(r8 + 0xd88));
    if (arg2 != 0x0) {
            r8 = &@selector(dispatchAsyncWithQueue:withBlock:);
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(int64_t *)&r20->_willMoveToSuperview = r8;
    return;
}

-(void)didMoveToSuperview {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [[&var_20 super] didMoveToSuperview];
    if (*(int8_t *)(int64_t *)&r19->_willMoveToSuperview != 0x0) {
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 postNotificationName:r2 object:r3];
            [r20 release];
    }
    return;
}

-(void *)hitTest:(struct CGPoint)arg2 withEvent:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] hitTest:r2 withEvent:r3];
    r0 = [r0 retain];
    r20 = r0;
    if (r20 == self) {
            if (!CPU_FLAGS & E) {
                    r0 = r20;
            }
            else {
                    r0 = 0x0;
            }
    }
    r19 = objc_retainAutoreleaseReturnValue(r0);
    [r20 release];
    r0 = r19;
    return r0;
}

@end