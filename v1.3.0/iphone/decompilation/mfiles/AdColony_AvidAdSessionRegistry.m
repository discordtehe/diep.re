@implementation AdColony_AvidAdSessionRegistry

+(void *)getInstance {
    r29 = &saved_fp;
    r31 = r31 + 0xfffffffffffffff0 - 0x30;
    var_28 = *__NSConcreteStackBlock;
    if (*qword_1011d23e8 != -0x1) {
            r0 = dispatch_once(0x1011d23e8, &var_28);
    }
    r0 = *0x1011d23f0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    *(r31 + 0xffffffffffffffc0) = self;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_avidAdSessions));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_internalAvidAdSessions));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)registerAvidAdSession:(void *)arg2 withInternalAvidAdSession:(void *)arg3 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = self;
    r22 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    [r0 setDelegate:r19];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_avidAdSessions));
    r23 = *(r19 + r27);
    r25 = [[arg2 avidAdSessionId] retain];
    [r23 setValue:arg2 forKey:r25];
    [r25 release];
    r23 = r19->_internalAvidAdSessions;
    r21 = [arg2 avidAdSessionId];
    [r22 release];
    r21 = [r21 retain];
    [r23 setValue:r20 forKey:r21];
    [r21 release];
    if ([*(r19 + r27) count] == 0x1) {
            [r19 postIsEmptyChanged];
    }
    if ([r20 isActive] != 0x0) {
            [r19 adSessionBecomeActive:r20];
    }
    [r20 release];
    return;
}

-(void)postIsEmptyChanged {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 postNotificationName:r2 object:r3];
    [r20 release];
    return;
}

-(void)adSessionDidEnd:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    [r0 setDelegate:0x0];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_avidAdSessions));
    r21 = *(r20 + r25);
    r23 = [[r19 avidAdSessionId] retain];
    [r21 removeObjectForKey:r23];
    [r23 release];
    r21 = r20->_internalAvidAdSessions;
    r22 = [[r19 avidAdSessionId] retain];
    [r21 removeObjectForKey:r22];
    [r22 release];
    if ([r19 isActive] != 0x0) {
            [r20 adSessionResignActive:r19];
    }
    if ([*(r20 + r25) count] == 0x0) {
            [r20 postIsEmptyChanged];
    }
    [r19 release];
    return;
}

-(void)adSessionBecomeActive:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [r19 setActiveSessionCount:[self activeSessionCount] + 0x1];
    if ([r19 activeSessionCount] == 0x1) {
            [r19 postHasActiveSessionChanged];
    }
    return;
}

-(void)adSessionResignActive:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [r19 setActiveSessionCount:[self activeSessionCount] - 0x1];
    if ([r19 activeSessionCount] == 0x0) {
            [r19 postHasActiveSessionChanged];
    }
    return;
}

-(void)postHasActiveSessionChanged {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 postNotificationName:r2 object:r3];
    [r20 release];
    return;
}

-(bool)isEmpty {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_avidAdSessions;
    r0 = [r0 count];
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)hasActiveSessions {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self activeSessionCount];
    if (r0 > 0x0) {
            if (CPU_FLAGS & G) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)avidAdSessions {
    r0 = self->_avidAdSessions;
    r0 = [r0 allValues];
    return r0;
}

-(void *)internalAvidAdSessions {
    r0 = self->_internalAvidAdSessions;
    r0 = [r0 allValues];
    return r0;
}

-(void *)findInternalAvidAdSessionById:(void *)arg2 {
    r0 = self->_internalAvidAdSessions;
    r0 = [r0 valueForKey:arg2];
    return r0;
}

-(void *)findAvidAdSessionById:(void *)arg2 {
    r0 = self->_avidAdSessions;
    r0 = [r0 valueForKey:arg2];
    return r0;
}

-(void *)findInternalAvidAdSessionByView:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_internalAvidAdSessions;
    r19 = [r0 retain];
    [r20 enumerateKeysAndObjectsUsingBlock:&var_80];
    [*(&var_50 + 0x28) retain];
    [r19 release];
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(long long)activeSessionCount {
    r0 = self->_activeSessionCount;
    return r0;
}

-(void)setActiveSessionCount:(long long)arg2 {
    self->_activeSessionCount = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_internalAvidAdSessions, 0x0);
    objc_storeStrong((int64_t *)&self->_avidAdSessions, 0x0);
    return;
}

@end