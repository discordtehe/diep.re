@implementation ADCCustomNotificationAPI

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_customNotificationHandlers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_replyHandlers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r19->_nextReplyID = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)sendReplyToApp:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [r2 retain];
    r0 = [ADCMessage numberValueFromMessage:r19 withKey:@"id"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 dict];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r22 = [r0 retain];
            [r24 release];
            if (r22 == 0x0) {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCCustomNotificationAPI sendReplyToApp:]" line:0x4d withFormat:@"No content for reply sent to CustomMessage.controller_reply"];
            }
            r21 = [[r21->_replyHandlers objectForKeyedSubscript:r2] retain];
            if (r21 != 0x0) {
                    (*(r21 + 0x10))(r21, r22);
            }
            [r21 release];
            [r22 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCCustomNotificationAPI sendReplyToApp:]" line:0x47 withFormat:@"No reply id sent to CustomMessage.controller_reply"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)sendCustomNotificationToApp:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r22 = [[r22->_customNotificationHandlers objectForKeyedSubscript:r20] retain];
                    if (r22 != 0x0) {
                            [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
                            (*(r22 + 0x10))(r22, r21);
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
                    }
                    [r22 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCCustomNotificationAPI sendCustomNotificationToApp:]" line:0x33 withFormat:@"Invalid message content for custom message"];
            }
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCCustomNotificationAPI sendCustomNotificationToApp:]" line:0x2d withFormat:@"Invalid type for custom message"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)registerHandler:(void *)arg2 forNotificationType:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = self->_customNotificationHandlers;
    r20 = objc_retainBlock(arg2);
    [r21 release];
    [r22 setObject:r20 forKeyedSubscript:r19];
    [r20 release];
    r0 = [ADCNativeLayer sharedLayer];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_nextReplyID));
    r22 = *(self + r8);
    *(self + r8) = r22 + 0x1;
    r23 = @"";
    if (r19 != 0x0) {
            r23 = @"";
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r23 = @"";
                    }
                    else {
                            r23 = r19;
                    }
            }
    }
    var_38 = **___stack_chk_guard;
    r23 = [[NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1] retain];
    r21 = [[ADCMessage nativeMessageWithType:@"CustomMessage.register" identifier:r22 contents:r23] retain];
    [r20 sendMessage:r21];
    [r21 release];
    [r23 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)registerHandlers {
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(sendCustomNotificationToApp:) forMessageType:@"CustomMessage.controller_send"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(sendReplyToApp:) forMessageType:@"CustomMessage.controller_reply"];
    [r0 release];
    return;
}

-(void)unregisterHandlerForNotificationType:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    [self->_customNotificationHandlers removeObjectForKey:r19];
    r0 = [ADCNativeLayer sharedLayer];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_nextReplyID));
    r22 = *(self + r8);
    *(self + r8) = r22 + 0x1;
    r23 = @"";
    if (r19 != 0x0) {
            r23 = @"";
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r23 = @"";
                    }
                    else {
                            r23 = r19;
                    }
            }
    }
    var_38 = **___stack_chk_guard;
    r23 = [[NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1] retain];
    r21 = [[ADCMessage nativeMessageWithType:@"CustomMessage.unregister" identifier:r22 contents:r23] retain];
    [r20 sendMessage:r21];
    [r21 release];
    [r23 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)sendCustomNotificationToController:(void *)arg2 withContent:(void *)arg3 reply:(void *)arg4 {
    r31 = r31 - 0xa0;
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_nextReplyID));
    r22 = *(r23 + r8);
    *(r23 + r8) = r22 + 0x1;
    r0 = [r19 isEqualToString:r2];
    if (r21 != 0x0 && r0 != 0x0) {
            r23 = r23->_customNotificationHandlers;
            r24 = objc_retainBlock(r21);
            [r23 setObject:r24 forKeyedSubscript:r20];
            [r24 release];
            r23 = 0x0;
    }
    else {
            if (r21 != 0x0) {
                    r23 = r23->_replyHandlers;
                    r0 = [NSNumber numberWithUnsignedInteger:r22];
                    r29 = r29;
                    r24 = [r0 retain];
                    r25 = objc_retainBlock(r21);
                    [r23 setObject:r25 forKeyedSubscript:r24];
                    [r25 release];
                    [r24 release];
                    r23 = 0x1;
            }
            else {
                    r23 = 0x0;
            }
    }
    r24 = @"";
    if (r20 != 0x0) {
            r24 = @"";
            [NSString class];
            if ([r20 isKindOfClass:r2] != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r24 = @"";
                    }
                    else {
                            r24 = r20;
                    }
            }
    }
    var_48 = **___stack_chk_guard;
    r23 = [[NSNumber numberWithBool:r23] retain];
    r24 = [[NSNumber numberWithUnsignedInteger:r22] retain];
    r25 = [[NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_88 count:0x4] retain];
    [r24 release];
    [r23 release];
    r23 = [[ADCNativeLayer sharedLayer] retain];
    r22 = [[ADCMessage nativeMessageWithType:@"CustomMessage.native_send" identifier:r22 contents:r25] retain];
    [r23 sendMessage:r22];
    [r22 release];
    [r23 release];
    [r25 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_replyHandlers, 0x0);
    objc_storeStrong((int64_t *)&self->_customNotificationHandlers, 0x0);
    return;
}

@end