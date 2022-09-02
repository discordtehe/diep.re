@implementation GADOMIDAdEvents

-(bool)impressionOccurredWithError:(void * *)arg2 {
    r31 = r31 - 0x70;
    saved_fp = r29;
    stack[-8] = r30;
    var_10 = self;
    var_20 = arg2;
    r0 = [var_10->_adSession configuration];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_30 = [r0 impressionOwner];
    [r0 release];
    if (var_30 != 0x2) {
            [GADOMIDError setGADOMIDErrorFor:var_20 code:0x5df message:@"Impression owner should be NATIVE."];
            var_1 = 0x0;
    }
    else {
            r0 = [var_10->_adSession eventFilter];
            r29 = r29;
            r0 = [r0 retain];
            var_44 = [r0 acceptEventWithCode:0x2];
            [r0 release];
            if ((var_44 & 0x1) != 0x0) {
                    [var_10 startSessionIfNeeded];
                    r0 = [var_10->_adSession adEventsPublisher];
                    r0 = [r0 retain];
                    [r0 publishImpressionEvent];
                    [r0 release];
                    var_1 = 0x1;
            }
            else {
                    [GADOMIDError setGADOMIDErrorFor:var_20 code:0x5e1 message:@"Event filter does not accept."];
                    var_1 = 0x0;
            }
    }
    r0 = var_1 & 0x1 & 0x1;
    return r0;
}

-(void)startSessionIfNeeded {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = self;
    r0 = [var_8->_adSession eventFilter];
    r0 = [r0 retain];
    var_1C = [r0 acceptAnyEventWithRequiredEventCodes:0x1] ^ 0x1;
    [r0 release];
    if ((var_1C & 0x1) != 0x0) {
            [var_8->_adSession start];
    }
    return;
}

-(void *)initWithAdSession:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x80;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x20, arg2);
    var_28 = arg3;
    r0 = [[&var_38 super] init];
    var_10 = r0;
    objc_storeStrong(r29 - 0x10, r0);
    if (var_10 == 0x0) goto loc_1008ccaac;

loc_1008cc988:
    if (0x0 != 0x0) goto loc_1008cc9dc;

loc_1008cc990:
    [GADOMIDError setGADOMIDErrorFor:var_28 code:0x5e3 message:@"Ad session can not be nil."];
    var_8 = 0x0;
    goto loc_1008ccac4;

loc_1008ccac4:
    objc_storeStrong(r29 - 0x20, 0x0);
    objc_storeStrong(r29 - 0x10, 0x0);
    r0 = var_8;
    return r0;

loc_1008cc9dc:
    r0 = [0x0 eventFilter];
    r29 = r29;
    r0 = [r0 retain];
    var_64 = [r0 acceptEventWithCode:0x4] ^ 0x1;
    [r0 release];
    if ((var_64 & 0x1) == 0x0) goto loc_1008cca88;

loc_1008cca3c:
    [GADOMIDError setGADOMIDErrorFor:var_28 code:0x5e1 message:@"Event filter does not accept."];
    var_8 = 0x0;
    goto loc_1008ccac4;

loc_1008cca88:
    objc_storeStrong((int64_t *)&var_10->_adSession, 0x0);
    goto loc_1008ccaac;

loc_1008ccaac:
    var_8 = [var_10 retain];
    goto loc_1008ccac4;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adSession, 0x0);
    return;
}

@end