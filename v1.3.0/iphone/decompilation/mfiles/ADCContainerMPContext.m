@implementation ADCContainerMPContext

-(bool)isValid {
    r0 = self;
    if (r0->_session != 0x0) {
            if (r0->_container != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)initWithMessage:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"ad_session_id"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 == 0x0) {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerMPContext initWithMessage:]" line:0x37 withFormat:@"Tried obtain a container, but an invalid session id was passed"];
            }
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 sessionFromID];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 objectForKeyedSubscript:r21];
            r24 = r0;
            r29 = r29;
            r22 = [r0 retain];
            [r26 release];
            [r25 release];
            if (r22 != 0x0) {
                    objc_storeStrong((int64_t *)&r20->_session, r24);
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerMPContext initWithMessage:]" line:0x3b withFormat:@"No session with id: %@ has been registered"];
            }
            r0 = [ADCMessage numberValueFromMessage:r19 withKey:@"id"];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 == 0x0) {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerMPContext initWithMessage:]" line:0x42 withFormat:@"No container id found in message"];
            }
            r26 = [[AdColony sharedInstance] retain];
            r0 = [r26 containerForAdSessionID:r21 isFullscreen:[r24 boolValue]];
            r25 = r0;
            r23 = [r0 retain];
            [r26 release];
            if (r23 != 0x0) {
                    objc_storeStrong((int64_t *)&r20->_container, r25);
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerMPContext initWithMessage:]" line:0x46 withFormat:@"Could not find a container for the given ad_session_id and id combination"];
            }
            [r23 release];
            [r24 release];
            [r22 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)session {
    r0 = self->_session;
    return r0;
}

-(void *)container {
    r0 = self->_container;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_container, 0x0);
    objc_storeStrong((int64_t *)&self->_session, 0x0);
    return;
}

@end