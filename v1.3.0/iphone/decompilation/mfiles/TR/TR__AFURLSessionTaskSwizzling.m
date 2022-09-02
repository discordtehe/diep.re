@implementation TR__AFURLSessionTaskSwizzling

-(long long)state {
    return 0x2;
}

+(void)load {
    r31 = r31 - 0x70;
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
    r29 = &saved_fp;
    r19 = self;
    if (NSClassFromString(@"NSURLSessionTask") != 0x0) {
            r9 = [[NSURLSessionConfiguration ephemeralSessionConfiguration] retain];
            var_58 = r9;
            r0 = [NSURLSession sessionWithConfiguration:r9];
            r0 = [r0 retain];
            var_60 = r0;
            r22 = [[r0 dataTaskWithURL:0x0] retain];
            r23 = method_getImplementation(class_getInstanceMethod([r19 class], @selector(af_resume)));
            r0 = [r22 class];
            r24 = r0;
            r28 = @selector(resume);
            if (class_getInstanceMethod(r0, r28) != 0x0) {
                    do {
                            r21 = [r24 superclass];
                            r20 = method_getImplementation(class_getInstanceMethod(r24, r28));
                            r0 = class_getInstanceMethod(r21, r28);
                            r0 = method_getImplementation(r0);
                            if (r23 != r20 && r20 != r0) {
                                    [r19 swizzleResumeAndSuspendMethodForClass:r2];
                            }
                            r0 = [r24 superclass];
                            r24 = r0;
                            r0 = class_getInstanceMethod(r0, @selector(resume));
                            r28 = @selector(resume);
                    } while (r0 != 0x0);
            }
            [r22 cancel];
            [var_60 finishTasksAndInvalidate];
            [r22 release];
            [var_60 release];
            [var_58 release];
    }
    return;
}

+(void)swizzleResumeAndSuspendMethodForClass:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r23 = class_getInstanceMethod(self, @selector(af_resume));
    r21 = class_getInstanceMethod(self, @selector(af_suspend));
    if (class_addMethod(r19, @selector(af_resume), method_getImplementation(r23), method_getTypeEncoding(r23)) != 0x0) {
            method_exchangeImplementations(class_getInstanceMethod(r19, @selector(resume)), class_getInstanceMethod(r19, @selector(af_resume)));
    }
    if (class_addMethod(r19, @selector(af_suspend), method_getImplementation(r21), method_getTypeEncoding(r21)) != 0x0) {
            method_exchangeImplementations(class_getInstanceMethod(r19, @selector(suspend)), class_getInstanceMethod(r19, @selector(af_suspend)));
    }
    return;
}

-(void)af_resume {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = [self state];
    [r19 af_resume];
    if (r20 != 0x0) {
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 postNotificationName:r2 object:r3];
            [r20 release];
    }
    return;
}

-(void)af_suspend {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = [self state];
    [r19 af_suspend];
    if (r20 != 0x1) {
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 postNotificationName:r2 object:r3];
            [r20 release];
    }
    return;
}

@end