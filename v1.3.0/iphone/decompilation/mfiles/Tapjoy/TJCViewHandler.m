@implementation TJCViewHandler

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [TJCViewController alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_viewController));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [UIScreen mainScreen];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 respondsToSelector:@selector(displayLinkWithTarget:selector:), r3] != 0x0) {
                    r22 = &@class(MCConfigurationData);
                    r0 = *(r22 + 0x308);
                    r0 = [r0 mainScreen];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 scale];
                    if (d0 == 0x4000000000000000) {
                            r22 = &@class(MCConfigurationData);
                            if (CPU_FLAGS & E) {
                                    r22 = 0x1;
                            }
                    }
                    [r21 release];
            }
            else {
                    r22 = 0x0;
            }
            [r20 release];
            *(int8_t *)(int64_t *)&r19->_isRetina = r22;
            *(int32_t *)(int64_t *)&r19->_prerenderLimit = 0x3;
            *(int32_t *)(int64_t *)&r19->_prerenderCount = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)animateTJCView:(void *)arg2 isClosing:(bool)arg3 {
    r2 = arg2;
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
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_viewController));
    r20 = *(r19 + r23);
    if (arg3 != 0x0) {
            r22 = [r2 retain];
            [r20 notifyViewWillDisappear];
            [r19 removeTempView:r22];
            [r22 release];
            r0 = [Tapjoy sharedTapjoyConnect];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 viewHandler];
            r0 = [r0 retain];
            [r0 setViewOpen:0x0];
            [r0 release];
            [r20 release];
            r0 = *(r19 + r23);
            r1 = @selector(notifyViewDidDisappear);
    }
    else {
            r22 = [r2 retain];
            [r20 notifyViewWillAppear];
            r0 = [Tapjoy sharedTapjoyConnect];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 viewHandler];
            r0 = [r0 retain];
            [r0 setViewOpen:0x1];
            [r0 release];
            [r20 release];
            [r19 removeTempView:r22];
            [r22 release];
            r0 = *(r19 + r23);
            r1 = @selector(notifyViewDidAppear);
    }
    objc_msgSend(r0, r1);
    return;
}

-(void)setViewOpen:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isViewShowing = arg2;
    return;
}

-(bool)isViewOpen {
    r0 = *(int8_t *)(int64_t *)&self->_isViewShowing;
    return r0;
}

-(void)removeTempView:(void *)arg2 {
    r31 = r31 - 0x130;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 subviews];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 != 0x0) {
            do {
                    r26 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r19);
                            }
                            r24 = *(0x0 + r26 * 0x8);
                            if ([r24 tag] == 0x3039) {
                                    [r24 removeFromSuperview];
                            }
                            r26 = r26 + 0x1;
                    } while (r26 < r21);
                    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r21 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(int)getPrerenderLimit {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 viewHandler];
    r0 = [r0 retain];
    r21 = [r0 prerenderLimit];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(void)setPrerenderLimit:(int)arg2 {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 viewHandler];
    r0 = [r0 retain];
    [r0 setPrerenderLimit:arg2];
    [r0 release];
    [r20 release];
    return;
}

+(void)incrementPrerenderCount {
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 viewHandler];
    r0 = [r0 retain];
    r23 = [r0 prerenderCount];
    [r0 release];
    [r20 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 viewHandler];
    r0 = [r0 retain];
    [r0 setPrerenderCount:r23 + 0x1];
    [r0 release];
    [r19 release];
    return;
}

+(void)decrementPrerenderCount {
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 viewHandler];
    r0 = [r0 retain];
    r23 = [r0 prerenderCount];
    [r0 release];
    [r20 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 viewHandler];
    r0 = [r0 retain];
    [r0 setPrerenderCount:r23 - 0x1 & !((r23 - 0x1) / 0xffffffff80000000)];
    [r0 release];
    [r19 release];
    return;
}

+(bool)canPrerenderAdUnit {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [self getPrerenderCount];
    r0 = [self getPrerenderLimit];
    if (r20 < r0) {
            if (CPU_FLAGS & L) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isRetina {
    r0 = *(int8_t *)(int64_t *)&self->_isRetina & 0x1;
    return r0;
}

+(int)getPrerenderCount {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 viewHandler];
    r0 = [r0 retain];
    r21 = [r0 prerenderCount];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setIsRetina:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isRetina = arg2;
    return;
}

-(void *)viewController {
    r0 = self->_viewController;
    return r0;
}

-(bool)isViewShowing {
    r0 = *(int8_t *)(int64_t *)&self->_isViewShowing;
    return r0;
}

-(void)setViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewController, arg2);
    return;
}

-(int)prerenderLimit {
    r0 = *(int32_t *)(int64_t *)&self->_prerenderLimit;
    return r0;
}

-(void)setIsViewShowing:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isViewShowing = arg2;
    return;
}

-(int)prerenderCount {
    r0 = *(int32_t *)(int64_t *)&self->_prerenderCount;
    return r0;
}

-(void)setPrerenderLimit:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_prerenderLimit = arg2;
    return;
}

-(void)setPrerenderCount:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_prerenderCount = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_viewController, 0x0);
    return;
}

@end