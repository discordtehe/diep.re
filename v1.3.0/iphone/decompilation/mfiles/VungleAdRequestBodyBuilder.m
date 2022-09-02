@implementation VungleAdRequestBodyBuilder

-(void *)initWithPublisherInformation:(void *)arg2 placements:(void *)arg3 headerBiddingEnabled:(bool)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r23 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [[&var_40 super] initWithPublisherInformation:r23];
    r22 = r0;
    [r23 release];
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_placements, r20);
            *(int8_t *)(int64_t *)&r22->_headerBiddingEnabled = r19;
    }
    [r21 release];
    r0 = r22;
    return r0;
}

-(void *)placements {
    r0 = self->_placements;
    return r0;
}

-(void *)buildRequestParameters {
    r31 = r31 - 0x160;
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
    r0 = [self placements];
    r0 = [r0 retain];
    r19 = [[NSMutableArray arrayWithCapacity:[r0 count]] retain];
    [r0 release];
    var_120 = q0;
    var_148 = self;
    r0 = [self placements];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r27 = *var_120;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_120 != r27) {
                                    objc_enumerationMutation(r21);
                            }
                            r25 = @selector(addObject:);
                            r0 = *(var_128 + r28 * 0x8);
                            r0 = [r0 referenceID];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r19, r25);
                            [r26 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    r21 = [[NSNumber numberWithBool:[var_148 isHeaderBiddingEnabled]] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_F0 forKeys:&var_140 count:0x2];
    r20 = [r0 retain];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setPlacements:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placements, arg2);
    return;
}

-(bool)isHeaderBiddingEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_headerBiddingEnabled;
    return r0;
}

-(void)setHeaderBiddingEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_headerBiddingEnabled = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_placements, 0x0);
    return;
}

@end