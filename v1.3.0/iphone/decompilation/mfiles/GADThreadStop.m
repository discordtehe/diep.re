@implementation GADThreadStop

-(void)stopCurrentRunLoop {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[NSThread currentThread] retain];
    r0 = @class(NSThread);
    r0 = [r0 mainThread];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r19 release];
    if (r19 != r0) {
            r0 = [NSRunLoop currentRunLoop];
            r0 = [r0 retain];
            CFRunLoopStop([r0 getCFRunLoop]);
            [r19 release];
    }
    else {
            sub_1007ce06c(0x0, @"Ignoring request to stop main thread. Main thread must never be stopped.");
    }
    return;
}

@end