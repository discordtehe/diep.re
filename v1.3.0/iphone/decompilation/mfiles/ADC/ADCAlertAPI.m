@implementation ADCAlertAPI

+(void *)privateAPI {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d2250 != -0x1) {
            dispatch_once(0x1011d2250, &var_28);
    }
    r0 = *0x1011d2258;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)showForAdSessionID:(void *)arg2 title:(void *)arg3 message:(void *)arg4 positiveAction:(void *)arg5 negativeAction:(void *)arg6 completion:(void *)arg7 {
    r31 = r31 - 0x100;
    var_60 = d9;
    stack[-104] = d8;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r24 = [arg7 retain];
    if (r19 == 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCAlertAPI showForAdSessionID:title:message:positiveAction:negativeAction:completion:]" line:0x25 withFormat:@"Invalid ad session id. Cannot create alert"];
    }
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r25 = [[r0 objectForKeyedSubscript:r19] retain];
    [r0 release];
    [r26 release];
    if (r21 != 0x0 && r25 != 0x0 && r20 != 0x0) {
            if (r22 != 0x0) {
                    r26 = [[ADCAlert alloc] initWithTitle:r20 message:r21];
                    r28 = [r24 retain];
                    var_68 = r28;
                    [r26 addActionWithTitle:r2 completionHandler:r3];
                    if (r23 != 0x0 && ([r23 isEqualToString:r2] & 0x1) == 0x0) {
                            var_90 = [r28 retain];
                            [r26 addActionWithTitle:r2 completionHandler:r3];
                            [var_90 release];
                    }
                    var_C0 = [r25 retain];
                    var_B8 = [r26 retain];
                    dispatch_async(*__dispatch_main_q, &var_E0);
                    r27 = *0x1011d2260;
                    *0x1011d2260 = r26;
                    r26 = [r26 retain];
                    [r27 release];
                    [var_B8 release];
                    [var_C0 release];
                    [var_68 release];
                    [r26 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
            }
    }
    else {
            [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
    }
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end