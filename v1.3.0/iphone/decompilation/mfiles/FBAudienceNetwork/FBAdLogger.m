@implementation FBAdLogger

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdLogger");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

+(void)logInTestModeWithFile:(char *)arg2 lineNumber:(int)arg3 format:(void *)arg4 {
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
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    r19 = [arg4 retain];
    if ([FBAdSettings isTestMode] != 0x0) {
            r0 = [NSMutableString alloc];
            r0 = [r0 initWithFormat:r19 arguments:r29 + 0x10];
            [r0 appendString:@" <testmode> "];
            [r22 logAtLevel:0x1 file:r21 lineNumber:r20 format:@"%@"];
            [r0 release];
    }
    [r19 release];
    return;
}

+(void)logAtLevel:(int)arg2 file:(char *)arg3 lineNumber:(int)arg4 format:(void *)arg5 {
    r5 = arg5;
    r4 = arg4;
    r31 = r31 - 0x90;
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
    r20 = r4;
    r22 = arg3;
    r21 = arg2;
    r19 = [r5 retain];
    if ([FBAdSettings getLogLevel] >= sign_extend_64(r21)) {
            r0 = @class(NSString);
            r0 = [r0 stringWithUTF8String:r22];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 lastPathComponent];
            r0 = [r0 retain];
            r22 = [[r0 stringByDeletingPathExtension] retain];
            [r0 release];
            [r23 release];
            r0 = @class(NSString);
            r0 = [r0 alloc];
            r3 = r29 + 0x10;
            r2 = r19;
            r23 = [r0 initWithFormat:r2 arguments:r3];
            r0 = [NSThread currentThread];
            r0 = [r0 retain];
            r24 = [[r0 fb_threadIdentifier] retain];
            [r0 release];
            r26 = [r24 longValue];
            r0 = @class(FBAdSettings);
            r0 = [r0 loggingDelegate];
            r0 = [r0 retain];
            r25 = r0;
            if (r0 != 0x0) {
                    asm { sxtw       x2, w21 };
                    [r25 logAtLevel:r2 withFileName:r22 withLineNumber:r20 withThreadId:r26 withBody:r23];
            }
            else {
                    r11 = @" <verbose>";
                    if (r21 == 0x6) {
                            if (!CPU_FLAGS & E) {
                                    r11 = @"";
                            }
                            else {
                                    r11 = @" <verbose>";
                            }
                    }
                    r10 = @" <debug>";
                    if (r21 == 0x5) {
                            if (!CPU_FLAGS & E) {
                                    r10 = r11;
                            }
                            else {
                                    r10 = @" <debug>";
                            }
                    }
                    r9 = @" <log>";
                    if (r21 == 0x4) {
                            if (!CPU_FLAGS & E) {
                                    r9 = r10;
                            }
                            else {
                                    r9 = @" <log>";
                            }
                    }
                    r8 = @"";
                    if (r21 == 0x3) {
                            if (!CPU_FLAGS & E) {
                                    r8 = @"";
                            }
                            else {
                                    r8 = @" <warn>";
                            }
                    }
                    if (r21 == 0x2) {
                            if (!CPU_FLAGS & E) {
                                    r8 = r8;
                            }
                            else {
                                    r8 = @" <error>";
                            }
                    }
                    if (r21 > 0x3) {
                            if (!CPU_FLAGS & G) {
                                    r21 = r8;
                            }
                            else {
                                    r21 = r9;
                            }
                    }
                    [r21 retain];
                    NSLog(@"[FBAudienceNetworkLog/%@:%d thread:%ld%@] %@", @selector(loggingDelegate), r2, r3, r4, r5);
                    [r21 release];
            }
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
    }
    [r19 release];
    return;
}

@end