@implementation ANSActivity

+(void *)beginActivity:(void *)arg2 withOptions:(unsigned long long)arg3 expirationHandler:(void *)arg4 {
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
    r20 = [arg4 retain];
    r21 = [[self beginActivityIfAvailable:r19 options:arg3] retain];
    r22 = [[ANSActivity alloc] initWithProcessToken:r21 options:arg3 reason:r19 backgroundTaskIdentifier:**_UIBackgroundTaskInvalid];
    if ((arg3 & 0xc000) != 0x0) {
            [r22 setBackgroundTaskIdentifier:[r22 beginBackgroundTaskWithName:r19 expirationHandler:r20]];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)beginActivity:(void *)arg2 withOptions:(unsigned long long)arg3 {
    r0 = [self beginActivity:arg2 withOptions:arg3 expirationHandler:0x100e6c3c0];
    return r0;
}

+(void)performActivity:(void *)arg2 options:(unsigned long long)arg3 withBlock:(void *)arg4 {
    r22 = [arg2 retain];
    r24 = [arg4 retain];
    [[self beginActivity:r22 withOptions:arg3] retain];
    [r22 release];
    (*(r24 + 0x10))(arg4);
    [r24 release];
    [r20 end];
    [r20 release];
    return;
}

+(void *)beginActivityIfAvailable:(void *)arg2 options:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = [arg2 retain];
    r0 = [NSProcessInfo processInfo];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(beginActivityWithOptions:reason:), r3] != 0x0) {
            r0 = [r20 beginActivityWithOptions:r21 reason:r19];
    }
    else {
            r0 = [NSNull null];
    }
    r21 = [r0 retain];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(unsigned long long)beginBackgroundTaskWithName:(void *)arg2 expirationHandler:(void *)arg3 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (([r22 supportsBackgroundTasks] & 0x1) != 0x0) {
            var_48 = &var_50;
            r21 = [[r22 sharedAppInstance] retain];
            if (r21 != 0x0) {
                    var_60 = [r20 retain];
                    r0 = objc_retainBlock(&var_80);
                    r23 = r0;
                    if ([r21 respondsToSelector:@selector(beginBackgroundTaskWithName:expirationHandler:), r3] != 0x0) {
                            r22 = [r21 beginBackgroundTaskWithName:r19 expirationHandler:r23];
                    }
                    else {
                            r22 = [r21 beginBackgroundTaskWithExpirationHandler:r23];
                    }
                    *(var_48 + 0x18) = r22;
                    [r23 release];
                    [var_60 release];
            }
            else {
                    r22 = *(var_48 + 0x18);
            }
            [r21 release];
            _Block_object_dispose(&var_50, 0x8);
    }
    else {
            r22 = **_UIBackgroundTaskInvalid;
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)initWithProcessToken:(void *)arg2 options:(unsigned long long)arg3 reason:(void *)arg4 backgroundTaskIdentifier:(unsigned long long)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg5;
    r23 = arg3;
    r24 = arg2;
    r19 = [r24 retain];
    r20 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_processInfoToken, r24);
            r22->_options = r23;
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_reason));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r22->_backgroundTaskIdentifier = r21;
            r21 = [r22 retain];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    [r22 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    [self end];
    [[&var_20 super] dealloc];
    return;
}

-(void)end {
    [self endAndInvalidateBackgroundTask];
    [self endAndInvalidateInternalActivity];
    return;
}

-(void *)sharedAppInstance {
    r0 = [ANSApplication hostApplication];
    r0 = [r0 retain];
    r20 = [[r0 appSharedInstance] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)supportsBackgroundTasks {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = [r0 isMultitaskingSupported];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)endAndInvalidateBackgroundTask {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self backgroundTaskIdentifier] != **_UIBackgroundTaskInvalid) {
            r20 = **_UIBackgroundTaskInvalid;
            r22 = [[r19 sharedAppInstance] retain];
            [r22 endBackgroundTask:[r19 backgroundTaskIdentifier]];
            [r22 release];
            [r19 setBackgroundTaskIdentifier:r20];
    }
    return;
}

-(void *)processInfoToken {
    r0 = self->_processInfoToken;
    return r0;
}

-(void)endAndInvalidateInternalActivity {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [NSProcessInfo processInfo];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if (([r0 respondsToSelector:@selector(endActivity:)] & 0x1) == 0x0) goto loc_100133714;

loc_100133694:
    r0 = [r19 processInfoToken];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 == 0x0) goto loc_10013371c;

loc_1001336c4:
    r21 = [[NSProcessInfo processInfo] retain];
    r22 = [[r19 processInfoToken] retain];
    [r21 endActivity:r22];
    [r22 release];
    r0 = r21;
    goto loc_100133718;

loc_100133718:
    [r0 release];
    goto loc_10013371c;

loc_10013371c:
    [r19 setProcessInfoToken:0x0];
    return;

loc_100133714:
    r0 = r23;
    goto loc_100133718;
}

-(void)setProcessInfoToken:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_processInfoToken, arg2);
    return;
}

-(unsigned long long)options {
    r0 = self->_options;
    return r0;
}

-(void *)reason {
    r0 = self->_reason;
    return r0;
}

-(unsigned long long)backgroundTaskIdentifier {
    r0 = self->_backgroundTaskIdentifier;
    return r0;
}

-(void)setBackgroundTaskIdentifier:(unsigned long long)arg2 {
    self->_backgroundTaskIdentifier = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_reason, 0x0);
    objc_storeStrong((int64_t *)&self->_processInfoToken, 0x0);
    return;
}

@end