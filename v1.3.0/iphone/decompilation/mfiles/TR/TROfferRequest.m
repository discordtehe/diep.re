@implementation TROfferRequest

-(void *)initWithOfferIdentifier:(void *)arg2 placementBlock:(void *)arg3 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setName:@"Offers"];
            [r21 setOfferIdentifier:r19];
            r22 = [[NSString stringWithFormat:r2] retain];
            [r21 setRelativeURL:r22];
            [r22 release];
            [r21 setHttpType:0x0];
            if (r20 != 0x0) {
                    [r21 setPlacementBlock:r20];
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)buildPersistedPayload {
    [[&var_20 super] buildPersistedPayload];
    [self addDevicePlayerId];
    [self addAppSessionID];
    [self addUserIdentifier];
    return;
}

-(void *)placementBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementBlock)), 0x0);
    return r0;
}

-(void)setPlacementBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)handleResponseObject:(void *)arg2 {
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
    r21 = self;
    [[&var_60 super] handleResponseObject:arg2];
    r19 = [TROffer alloc];
    r20 = [[r21 responsePayload] retain];
    r19 = [r19 initWithTROfferDictionary:r20];
    [r20 release];
    r0 = [TRSessionManager sharedManager];
    r0 = [r0 retain];
    r24 = r0;
    r25 = [[r0 cachedOffers] retain];
    r0 = [r19 offerIdentifier];
    r29 = &saved_fp;
    r26 = [r0 retain];
    [r25 setObject:r19 forKey:r26];
    [r26 release];
    [r25 release];
    [r24 release];
    r0 = [TRPlacement alloc];
    r2 = r19;
    r0 = [r0 initWithOffer:r2];
    r22 = r0;
    if (([r0 isSurveyWallAvailable] & 0x1) == 0x0) {
            [r22 placementCode];
            r0 = [r22 placementErrorMessage];
            r29 = r29;
            [r0 retain];
            NSLog(@"Placement isn't available reason - %lu, comment - %@", @selector(placementErrorMessage), r2);
            [r25 release];
    }
    r0 = [r21 placementBlock];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 placementBlock];
            r29 = r29;
            (*([r0 retain] + 0x10))();
            [r21 release];
    }
    r0 = [TRSessionManager sharedManager];
    r0 = [r0 retain];
    r21 = r0;
    r24 = [[r0 loadedOfferIdentifier] retain];
    r0 = [r19 offerIdentifier];
    r29 = r29;
    r23 = [r0 retain];
    r25 = [r24 isEqualToString:r2];
    [r23 release];
    [r24 release];
    [r21 release];
    if (r25 != 0x0) {
            r0 = [TRSessionManager sharedManager];
            r0 = [r0 retain];
            [r0 setLoadedOfferIdentifier:0x0];
            [r0 release];
    }
    [r22 release];
    [r19 release];
    return;
}

-(void *)offerIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_offerIdentifier)), 0x1);
    return r0;
}

-(void)setOfferIdentifier:(void *)arg2 {
    objc_setProperty_atomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_offerIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_placementBlock, 0x0);
    return;
}

@end