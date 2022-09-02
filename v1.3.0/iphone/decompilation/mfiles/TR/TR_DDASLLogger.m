@implementation TR_DDASLLogger

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d6d80 != -0x1) {
            dispatch_once(0x1011d6d80, &var_28);
    }
    r0 = *0x1011d6d88;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d6d88 != 0x0) {
            r19 = 0x0;
    }
    else {
            r0 = [[&var_20 super] init];
            r19 = r0;
            if (r19 != 0x0) {
                    r19->_client = asl_open(0x0, "com.apple.console", 0x0);
            }
            r0 = [r19 retain];
            r19 = r0;
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(void *)loggerName {
    objc_retainAutorelease(@"cocoa.lumberjack.aslLogger");
    return @"cocoa.lumberjack.aslLogger";
}

-(void)logMessage:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (([r19->_fileName isEqualToString:r2] & 0x1) == 0x0) {
            r0 = r20->_logFormatter;
            if (r0 != 0x0) {
                    r0 = [r0 formatLogMessage:r19];
                    r0 = [r0 retain];
            }
            else {
                    r0 = r19->_message;
                    r0 = [r0 retain];
            }
            r0 = objc_retainAutorelease(r0);
            r21 = r0;
            r22 = [r0 UTF8String];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_flag));
            r8 = *(r19 + r8);
            r8 = r8 - 0x1;
            if (r8 <= 0x3) {
                    r24 = *(0x100bdfac0 + r8 * 0x8);
            }
            else {
                    r24 = 0x5;
            }
            geteuid();
            __snprintf_chk(&stack[-88], 0x10, 0x0, 0x10, "%d", r5);
            r23 = asl_new(0x0);
            if (r23 != 0x0) {
                    if (asl_set(r23, "Level", *(0x100e7b8d8 + r24 * 0x8)) == 0x0 && asl_set(r23, "Message", r22) == 0x0) {
                            r0 = asl_set(r23, "ReadUID", &stack[-88]);
                            if (r0 == 0x0 && asl_set(r23, "DDLog", "1") == 0x0) {
                                    asl_send(r20->_client, r23);
                            }
                    }
                    asl_free(r23);
            }
            [r21 release];
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

@end