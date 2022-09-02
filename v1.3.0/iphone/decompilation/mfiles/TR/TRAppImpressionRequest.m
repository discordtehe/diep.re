@implementation TRAppImpressionRequest

-(void)buildPersistedPayload {
    [[&var_20 super] buildPersistedPayload];
    [self addTriggeredAt];
    return;
}

-(void *)initWithOffer:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setOffer:r19];
            [r20 setName:@"Impressions"];
            [r20 setRelativeURL:*0x100e7d630];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)addRealtimeParameters {
    [self addDevicePlayerId];
    [self addAppSessionID];
    return;
}

-(void)handleResponseObject:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] handleResponseObject:arg2];
    r0 = [r19 responsePayload];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [TRAppImpression alloc];
            r19 = [[r19 responsePayload] retain];
            r20 = [r21 initWithTRAppImpressionDictionary:r19];
            [r19 release];
            [TRObjectStore storeObject:r20 forKey:*0x100e7d6d0];
            [r20 release];
    }
    return;
}

-(void *)offer {
    r0 = self->_offer;
    return r0;
}

-(void)setOffer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_offer, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_offer, 0x0);
    return;
}

@end