@implementation FNFRenderingThread

-(void)_applicationDidBecomeActive:(void *)arg2 {
    [*0x1011ddd00 unlockWithCondition:0x2];
    return;
}

-(void)setPriority:(double)arg2 {
    r0 = self;
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (r0->_priority != d0) {
            [r0 performBlock:&var_28];
    }
    return;
}

-(void *)initAllowingAppInactivePlayback:(bool)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0 && (r20 & 0x1) == 0x0) {
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(_applicationDidBecomeActive:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(_applicationWillResignActive:) name:**_UIApplicationWillResignActiveNotification object:0x0];
            [r0 release];
    }
    r0 = r19;
    return r0;
}

-(void)_applicationWillResignActive:(void *)arg2 {
    [self dispatchSync:&var_28];
    [*0x1011ddd00 lockWhenCondition:0x3];
    return;
}

-(void)addDisplayLink:(void *)arg2 {
    [self performSelector:@selector(_addDisplayLinkInternal:) onThread:self withObject:arg2 waitUntilDone:0x0];
    return;
}

-(void)performBlock:(void *)arg2 {
    r0 = [arg2 retain];
    var_38 = r0;
    [r0 retain];
    r0 = objc_retainBlock(&var_58);
    r21 = r0;
    r0 = [self runLoop];
    r0 = [r0 retain];
    CFRunLoopPerformBlock([r0 getCFRunLoop], **_kCFRunLoopDefaultMode, r21);
    [r23 release];
    r0 = [self runLoop];
    r0 = [r0 retain];
    CFRunLoopWakeUp([r0 getCFRunLoop]);
    [r20 release];
    [r21 release];
    [var_38 release];
    [r19 release];
    return;
}

-(void)dispatchSync:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = dispatch_semaphore_create(0x0);
    var_30 = r20;
    [r20 retain];
    var_28 = r21;
    r21 = [r21 retain];
    [self performBlock:&var_50];
    dispatch_semaphore_wait(r21, dispatch_time(0x0, 0x3b9aca00));
    [var_28 release];
    [var_30 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)_addDisplayLinkInternal:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[NSRunLoop currentRunLoop] retain];
    [r21 addToRunLoop:r19 forMode:**_NSRunLoopCommonModes];
    [r21 release];
    [r19 release];
    return;
}

-(void)main {
    r0 = [NSRunLoop currentRunLoop];
    r0 = [r0 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_runLoop));
    r8 = *(self + r21);
    *(self + r21) = r0;
    [r8 release];
    [*0x1011ddd00 tryLockWhenCondition:0x0];
    [*0x1011ddd00 unlockWithCondition:0x1];
    r20 = *(self + r21);
    r21 = [[NSMachPort port] retain];
    [r20 addPort:r21 forMode:**_NSDefaultRunLoopMode];
    [r21 release];
    goto loc_100b37430;

loc_100b37430:
    [*0x1011ddd00 lockWhenCondition:r2];
    CFRunLoopRun();
    [*0x1011ddd00 unlockWithCondition:0x3];
    goto loc_100b37430;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_runLoop, 0x0);
    return;
}

-(double)priority {
    r0 = self;
    return r0;
}

-(void *)runLoop {
    r0 = self->_runLoop;
    return r0;
}

+(void *)renderingThreadAllowingAppInactivePlayback:(bool)arg2 {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011ddd08 != -0x1) {
            dispatch_once(0x1011ddd08, &var_28);
    }
    r0 = *0x1011ddd10;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

@end