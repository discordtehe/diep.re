@implementation TREvent

-(void *)initWithName:(void *)arg2 {
    r0 = [self initWithName:arg2 content:0x0];
    return r0;
}

-(long long)eventType:(void *)arg2 {
    r0 = [arg2 isEqualToString:r2];
    r0 = r0 ^ 0x1;
    return r0;
}

-(long long)eventType {
    r0 = [self messageDictionary];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"event_type"] retain];
    [r0 release];
    r19 = [r20 integerValue];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[self messageDictionary] retain];
    [arg2 encodeObject:r20 forKey:@"TR Event Message Dictionary"];
    [r22 release];
    [r20 release];
    return;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = [[r19 decodeObjectForKey:@"TR Event Message Dictionary"] retain];
            [r20 setMessageDictionary:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setMessageDictionary:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_messageDictionary, arg2);
    return;
}

-(void *)initWithName:(void *)arg2 content:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_60 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r22 = @selector(init);
            r22 = objc_msgSend([NSMutableDictionary alloc], r22);
            [r21 setMessageDictionary:r22];
            [r22 release];
            [[NSNumber numberWithInt:[r21 eventType:r19]] retain];
            r0 = [r21 messageDictionary];
            r0 = [r0 retain];
            [r0 setObject:r2 forKeyedSubscript:r3];
            [r25 release];
            [r24 release];
            r0 = objc_msgSend(r21, r22);
            r0 = [r0 retain];
            objc_msgSend(r0, r23);
            [r24 release];
            r0 = objc_msgSend(r21, r22);
            r0 = [r0 retain];
            objc_msgSend(r0, r23);
            [r25 release];
            r0 = objc_msgSend(r21, r22);
            r0 = [r0 retain];
            objc_msgSend(r0, r23);
            [r25 release];
            [[*(&@class(ADCTransitionalContainer) + 0xa80) osVersion] retain];
            r0 = objc_msgSend(r21, r22);
            r0 = [r0 retain];
            objc_msgSend(r0, r23);
            [r25 release];
            [r24 release];
            r24 = [[*(r26 + 0xa80) orientation] retain];
            r0 = objc_msgSend(r21, r22);
            r0 = [r0 retain];
            objc_msgSend(r0, r23);
            [r25 release];
            [r24 release];
            r24 = @class(NSNumber);
            [*(r26 + 0xa80) screenScale];
            asm { fcvt       s0, d0 };
            [[r24 numberWithFloat:r2] retain];
            r0 = objc_msgSend(r21, r22);
            r0 = [r0 retain];
            objc_msgSend(r0, r23);
            [r25 release];
            [r24 release];
            [[*(r26 + 0xa80) connectionType] retain];
            r0 = objc_msgSend(r21, r22);
            r0 = [r0 retain];
            objc_msgSend(r0, r23);
            [r25 release];
            [r24 release];
            [[*(r26 + 0xa80) deviceName] retain];
            r0 = objc_msgSend(r21, r22);
            r0 = [r0 retain];
            objc_msgSend(r0, r23);
            [r25 release];
            [r24 release];
            [[*(r26 + 0xa80) carrier] retain];
            r0 = objc_msgSend(r21, r22);
            r0 = [r0 retain];
            objc_msgSend(r0, r23);
            [r25 release];
            [r24 release];
            r0 = [TRSessionManager sharedManager];
            r0 = [r0 retain];
            [[r0 apiToken] retain];
            r0 = objc_msgSend(r21, r22);
            r29 = r29;
            r0 = [r0 retain];
            objc_msgSend(r0, r23);
            [r26 release];
            [r25 release];
            [r24 release];
            if (r20 != 0x0) {
                    r0 = [r21 messageDictionary];
                    r0 = [r0 retain];
                    [r0 setObject:r20 forKeyedSubscript:@"content"];
                    [r0 release];
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)messageDictionary {
    r0 = self->_messageDictionary;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_messageDictionary, 0x0);
    return;
}

@end