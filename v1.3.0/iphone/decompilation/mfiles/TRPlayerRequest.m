@implementation TRPlayerRequest

-(void)buildPersistedPayload {
    [[&var_30 super] buildPersistedPayload];
    r20 = [[self requestPayload] retain];
    r21 = [[TRPlayer idfa] retain];
    [r20 setObject:r21 forKey:@"device_identifier"];
    [r21 release];
    [r20 release];
    [self addTriggeredAt];
    return;
}

-(void *)initWithNewSession:(bool)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [TRSessionManager sharedManager];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 userIdentifier];
            r29 = r29;
            r21 = [r0 retain];
            [r22 release];
            if (r21 != 0x0) {
                    r22 = [[NSString stringWithFormat:@"Login %@"] retain];
                    [r20 setName:r22];
                    [r22 release];
            }
            else {
                    [r20 setName:@"Login"];
            }
            [r20 setRelativeURL:*0x100e7d620];
            [r20 setIsNewSession:r19];
            [r21 release];
    }
    r0 = r20;
    return r0;
}

-(void)addRealtimeParameters {
    [self addUserIdentifier];
    return;
}

-(bool)isNewSession {
    r0 = *(int8_t *)(int64_t *)&self->_isNewSession;
    return r0;
}

-(void)setIsNewSession:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isNewSession = arg2;
    return;
}

-(void)handleResponseObject:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_40 super] handleResponseObject:arg2];
    r0 = [r19 responsePayload];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r19 = [[r19 responsePayload] retain];
            r20 = [[TRPlayer alloc] initWithTRPlayerDictionary:r19];
            [TRObjectStore storeObject:r20 forKey:*0x100e7d6c0];
            r0 = [r19 objectForKey:r2];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r22 = [[TRAppSession alloc] initWithTRAppSessionDictionary:r21];
                    [TRObjectStore storeObject:r22 forKey:*0x100e7d6c8];
                    [r22 release];
            }
            r0 = [TRSessionManager sharedManager];
            r0 = [r0 retain];
            [r0 sendCachedOfferRequest];
            [r0 release];
            [r21 release];
            [r20 release];
            [r19 release];
    }
    return;
}

@end