@implementation APMIdentifiers

+(void *)sharedInstance {
    if (*qword_1011d1f88 != -0x1) {
            dispatch_once(0x1011d1f88, 0x100e6e5f0);
    }
    r0 = *0x1011d1f90;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)adEventID {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d1f98 != -0x1) {
            dispatch_once(0x1011d1f98, 0x100e6e630);
    }
    OSAtomicAdd64(0x1, 0x1011d1fa0);
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void *)googleAppID {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (([APMMeasurement hasSharedInstance] & 0x1) == 0x0) goto loc_1001710d4;

loc_100171024:
    r19 = @selector(sharedInstance);
    r0 = objc_msgSend(@class(APMMeasurement), r19);
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 identity];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 == 0x0) goto loc_1001710dc;

loc_100171070:
    r0 = [APMMeasurement sharedInstance];
    r0 = [r0 retain];
    r19 = [[r0 identity] retain];
    [r0 release];
    r0 = [r19 appIDFromGMP];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r21 = [r20 retain];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x9088 message:@"Unable to fetch Google App ID from identity"];
            [r0 release];
            r21 = 0x0;
    }
    [r19 release];
    r0 = r20;
    goto loc_1001711ac;

loc_1001711ac:
    [r0 release];
    goto loc_1001711b0;

loc_1001711b0:
    r0 = [r21 autorelease];
    return r0;

loc_1001710dc:
    r0 = objc_msgSend(@class(APMIdentity), r19);
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 appIDFromGMP];
    r29 = r29;
    r21 = [r0 retain];
    [r19 release];
    if (r21 != 0x0) goto loc_1001711b0;

loc_10017111c:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x9089 message:@"Unable to fetch Google App ID from default options"];
    r0 = r0;
    goto loc_1001711ac;

loc_1001710d4:
    r19 = @selector(sharedInstance);
    goto loc_1001710dc;
}

-(void *)analyticsAppID {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [APMIdentity sharedInstance];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if ([APMMeasurement hasSharedInstance] != 0x0) {
            r0 = [APMMeasurement sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 identity];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r22 release];
            if (r0 != 0x0) {
                    r0 = [APMMeasurement sharedInstance];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 identity];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r19 release];
                    [r20 release];
                    r19 = r21;
            }
    }
    r0 = [r19 appIDFromGMP];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 length] != 0x0) {
            r22 = [r20 copy];
    }
    else {
            r22 = @selector(length);
            r0 = [r19 appIDFromAdMob];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (objc_msgSend(r0, r22) != 0x0) {
                    r22 = [r21 copy];
            }
            else {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x1 messageCode:0x908d message:@"Unable to fetch effective App ID from identity"];
                    [r0 release];
                    r22 = 0x0;
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)appInstanceID {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (([APMMeasurement hasSharedInstance] & 0x1) == 0x0) goto loc_100171474;

loc_1001713c4:
    r19 = @selector(sharedInstance);
    r0 = objc_msgSend(@class(APMMeasurement), r19);
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 identity];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 == 0x0) goto loc_10017147c;

loc_100171410:
    r0 = [APMMeasurement sharedInstance];
    r0 = [r0 retain];
    r19 = [[r0 identity] retain];
    [r0 release];
    r0 = [r19 appInstanceID];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r21 = [r20 retain];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x908a message:@"Unable to fetch App Instance ID from identity"];
            [r0 release];
            r21 = 0x0;
    }
    [r19 release];
    r0 = r20;
    goto loc_10017154c;

loc_10017154c:
    [r0 release];
    goto loc_100171550;

loc_100171550:
    r0 = [r21 autorelease];
    return r0;

loc_10017147c:
    r0 = objc_msgSend(@class(APMIdentity), r19);
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 appInstanceID];
    r29 = r29;
    r21 = [r0 retain];
    [r19 release];
    if (r21 != 0x0) goto loc_100171550;

loc_1001714bc:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x908b message:@"Unable to fetch App Instance ID from identity shared instance"];
    r0 = r0;
    goto loc_10017154c;

loc_100171474:
    r19 = @selector(sharedInstance);
    goto loc_10017147c;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_origin, 0x0);
    return;
}

-(void *)libraryVersion {
    [APMIdentity appMeasurementLibraryVersion];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void *)origin {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_origin)), 0x0);
    return r0;
}

-(void)setOrigin:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_origin));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            r0 = r8;
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x908c message:@"Cannot set the data collection origin. Origin cannot be empty"];
            r0 = r0;
    }
    [r0 release];
    [r19 release];
    return;
}

@end