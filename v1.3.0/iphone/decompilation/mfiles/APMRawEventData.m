@implementation APMRawEventData

-(void *)rawEvent {
    r0 = self->_rawEvent;
    return r0;
}

-(void *)initWithRawEvent:(void *)arg2 rowID:(long long)arg3 metadataFingerprint:(long long)arg4 {
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
    r22 = arg4;
    r21 = arg3;
    r23 = arg2;
    r20 = self;
    r19 = [r23 retain];
    if (r19 == 0x0) goto loc_10017e2c8;

loc_10017e260:
    if ((r21 & 0xffffffff80000000) != 0x0) goto loc_10017e30c;

loc_10017e264:
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_rawEvent, r23);
            r20->_rowID = r21;
            r20->_metadataFingerprint = r22;
    }
    r20 = [r20 retain];
    r21 = r20;
    goto loc_10017e388;

loc_10017e388:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_10017e30c:
    r22 = [[APMMeasurement monitor] retain];
    r21 = [[NSNumber numberWithLongLong:r21] retain];
    [r22 logWithLevel:0x4 messageCode:0x6d61 message:@"Failed to create raw event data. Received invalid row ID. Row ID" context:r21];
    [r21 release];
    r0 = r22;
    goto loc_10017e380;

loc_10017e380:
    [r0 release];
    r21 = 0x0;
    goto loc_10017e388;

loc_10017e2c8:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x4 messageCode:0x6d60 message:@"Failed to create raw event data. Received invalid raw event."];
    r0 = r0;
    goto loc_10017e380;
}

-(long long)rowID {
    r0 = self->_rowID;
    return r0;
}

-(long long)metadataFingerprint {
    r0 = self->_metadataFingerprint;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rawEvent, 0x0);
    return;
}

@end