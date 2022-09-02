@implementation ISNProductPresenter

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [NSMapTable strongToWeakObjectsMapTable];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_viewControllersToPresentFrom));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)setViewControllerForProductType:(unsigned long long)arg2 viewController:(void *)arg3 {
    [arg3 retain];
    r21 = [[self viewControllersToPresentFrom] retain];
    [[NSNumber numberWithInteger:arg2] retain];
    [r21 setObject:r2 forKey:r3];
    [r23 release];
    [r20 release];
    [r21 release];
    return;
}

-(void *)viewControllerForProductType:(unsigned long long)arg2 {
    r20 = [[self viewControllersToPresentFrom] retain];
    r19 = [[NSNumber numberWithInteger:arg2] retain];
    r21 = [[r20 objectForKey:r2] retain];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)presentProduct:(unsigned long long)arg2 completionHandler:(void *)arg3 {
    [[arg3 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_48);
    [r0 release];
    [r19 release];
    return;
}

-(void)unSetViewControllerForProductType:(unsigned long long)arg2 {
    r20 = [[self viewControllersToPresentFrom] retain];
    [[NSNumber numberWithInteger:arg2] retain];
    [r20 removeObjectForKey:r2];
    [r19 release];
    [r20 release];
    return;
}

-(void)dismissProduct:(unsigned long long)arg2 completionHandler:(void *)arg3 {
    [[arg3 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_48);
    [r0 release];
    [r19 release];
    return;
}

-(bool)isCurrentlyPresented {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self strategy];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r20 strategy];
            r0 = [r0 retain];
            r20 = [r0 isPresented];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)presentedViewController {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self strategy];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isPresented];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r19 strategy];
            r0 = [r0 retain];
            r19 = [[r0 presentedViewController] retain];
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)strategy {
    r0 = self->_strategy;
    return r0;
}

-(void)setStrategy:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r21 = self;
    r20 = [r19 retain];
    if (([r21 isCurrentlyPresented] & 0x1) == 0x0) {
            objc_storeStrong((int64_t *)&r21->_strategy, r19);
    }
    [r20 release];
    return;
}

-(void *)viewControllersToPresentFrom {
    r0 = self->_viewControllersToPresentFrom;
    return r0;
}

-(void)setViewControllersToPresentFrom:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewControllersToPresentFrom, arg2);
    return;
}

-(void)setCurrentlyPresenting:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currentlyPresenting, arg2);
    return;
}

-(void *)currentlyPresenting {
    r0 = self->_currentlyPresenting;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_currentlyPresenting, 0x0);
    objc_storeStrong((int64_t *)&self->_viewControllersToPresentFrom, 0x0);
    objc_storeStrong((int64_t *)&self->_strategy, 0x0);
    return;
}

@end