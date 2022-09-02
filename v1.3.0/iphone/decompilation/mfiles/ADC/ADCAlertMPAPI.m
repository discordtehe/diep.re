@implementation ADCAlertMPAPI

-(void)show:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x120;
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
    r26 = self;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAlertMPAPI show:]" line:0x1e withFormat:@"Invalid ad session id. Cannot create alert"];
    }
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:r20];
    r29 = r29;
    r21 = [r0 retain];
    [r24 release];
    [r23 release];
    if (r21 != 0x0) {
            r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
                    r29 = r29;
                    r24 = [r0 retain];
                    if (r24 != 0x0) {
                            r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
                            r29 = r29;
                            r27 = [r0 retain];
                            if (r27 != 0x0) {
                                    var_F0 = r26;
                                    r0 = [ADCAlert alloc];
                                    var_100 = r24;
                                    r24 = [r0 initWithTitle:r23 message:r24];
                                    r26 = [r19 retain];
                                    var_68 = r26;
                                    var_F8 = r27;
                                    [r24 addActionWithTitle:r2 completionHandler:r3];
                                    r22 = r24;
                                    r25 = [[ADCMessage stringValueFromMessage:r2 withKey:r3] retain];
                                    if (r25 != 0x0) {
                                            var_90 = [r26 retain];
                                            [r22 addActionWithTitle:r2 completionHandler:r3];
                                            [var_90 release];
                                    }
                                    var_C8 = [r21 retain];
                                    [r22 retain];
                                    dispatch_async(*__dispatch_main_q, &var_E8);
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currAlert));
                                    r27 = *(var_F0 + r8);
                                    *(var_F0 + r8) = r26;
                                    r22 = [r26 retain];
                                    [r27 release];
                                    [r26 release];
                                    [var_C8 release];
                                    [r25 release];
                                    [var_68 release];
                                    [r22 release];
                                    r24 = var_100;
                                    r27 = var_F8;
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAlertMPAPI show:]" line:0x35 withFormat:@"Tried to create an alert with no text for positive action. Cannot create alert"];
                            }
                            [r27 release];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAlertMPAPI show:]" line:0x2f withFormat:@"Tried to create an alert with no message. Cannot create alert"];
                    }
                    [r24 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAlertMPAPI show:]" line:0x29 withFormat:@"Tried to create an alert with no title. Cannot create alert"];
            }
            [r23 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAlertMPAPI show:]" line:0x23 withFormat:@"No ad session has been registered with id: %@. Cannot create alert"];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)registerHandlers {
    r19 = [ADCAlertMPAPI new];
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(show:) forMessageType:@"Alert.show"];
    [r0 release];
    [r19 release];
    return;
}

+(void)load {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_currAlert, 0x0);
    return;
}

@end