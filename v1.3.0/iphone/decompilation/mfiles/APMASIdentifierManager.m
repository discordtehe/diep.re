@implementation APMASIdentifierManager

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d1ff8 != -0x1) {
            dispatch_once(0x1011d1ff8, &var_28);
    }
    r0 = *0x1011d2000;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)initWithIdentifierManager:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [r19 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_sharedIdentifierManager, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)advertisingIdentifierString {
    r0 = self->_sharedIdentifierManager;
    r0 = [r0 advertisingIdentifier];
    r0 = [r0 retain];
    r20 = [[r0 UUIDString] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)hasLimitedAdTracking {
    r0 = self;
    if (r0->_sharedIdentifierManager != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)limitedAdTracking {
    r0 = self->_sharedIdentifierManager;
    if (r0 != 0x0) {
            r0 = [r0 isAdvertisingTrackingEnabled];
            r0 = r0 ^ 0x1;
    }
    return r0;
}

+(void *)sharedManager {
    return 0x0;
}

-(bool)isAdvertisingTrackingEnabled {
    return 0x0;
}

-(void *)advertisingIdentifier {
    return 0x0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_sharedIdentifierManager, 0x0);
    return;
}

@end