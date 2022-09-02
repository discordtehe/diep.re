@implementation OMIDtapjoyAdEvents

-(void *)initWithAdSession:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r22 = arg2;
    r19 = [r22 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 == 0x0) goto loc_100968fbc;

loc_100968f68:
    if (r19 == 0x0) goto loc_100969008;

loc_100968f6c:
    r0 = [r19 eventFilter];
    r0 = [r0 retain];
    r24 = [r0 acceptEventWithCode:0x4];
    [r0 release];
    if ((r24 & 0x1) == 0x0) goto loc_100969008;

loc_100968fa8:
    objc_storeStrong((int64_t *)&r20->_adSession, r22);
    goto loc_100968fbc;

loc_100968fbc:
    r21 = [r20 retain];
    goto loc_100969014;

loc_100969014:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_100969008:
    [OMIDtapjoyError setOMIDErrorFor:r2 code:r3 message:r4];
    r21 = 0x0;
    goto loc_100969014;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adSession, 0x0);
    return;
}

-(void)startSessionIfNeeded {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adSession));
    r0 = *(r19 + r22);
    r0 = [r0 eventFilter];
    r0 = [r0 retain];
    r21 = [r0 acceptAnyEventWithRequiredEventCodes:0x1];
    [r0 release];
    if ((r21 & 0x1) == 0x0) {
            [*(r19 + r22) start];
    }
    return;
}

-(bool)impressionOccurredWithError:(void * *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_adSession));
    r0 = *(r20 + r23);
    r0 = [r0 configuration];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 impressionOwner];
    [r0 release];
    if (r22 == 0x2) {
            r0 = *(r20 + r23);
            r0 = [r0 eventFilter];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 acceptEventWithCode:0x2];
            [r0 release];
            if (r22 != 0x0) {
                    [r20 startSessionIfNeeded];
                    r0 = *(r20 + r23);
                    r0 = [r0 adEventsPublisher];
                    r0 = [r0 retain];
                    [r0 publishImpressionEvent];
                    [r0 release];
                    r0 = 0x1;
            }
            else {
                    [OMIDtapjoyError setOMIDErrorFor:r2 code:r3 message:r4];
                    r0 = 0x0;
            }
    }
    else {
            [OMIDtapjoyError setOMIDErrorFor:r2 code:r3 message:r4];
            r0 = 0x0;
    }
    return r0;
}

@end