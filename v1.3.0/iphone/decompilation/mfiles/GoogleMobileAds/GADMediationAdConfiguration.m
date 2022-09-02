@implementation GADMediationAdConfiguration

-(void *)watermark {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_adConfiguration;
    r0 = [r0 objectForKeyedSubscript:*0x100e95a38];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r20 = [[NSData alloc] initWithBase64EncodedString:r19 options:0x0];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)bidResponse {
    r0 = self->_adConfiguration;
    r0 = [r0 objectForKeyedSubscript:*0x100e95a28];
    return r0;
}

-(void *)initWithAdConfiguration:(struct NSDictionary *)arg2 targeting:(void *)arg3 credentials:(void *)arg4 extras:(void *)arg5 {
    r31 = r31 - 0x60;
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
    r20 = arg5;
    r22 = arg4;
    r24 = arg3;
    r19 = [arg2 retain];
    r21 = [r24 retain];
    r23 = [r22 retain];
    r26 = [r20 retain];
    r0 = [[&var_50 super] init];
    r25 = r0;
    if (r25 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
            r8 = *(r25 + r9);
            *(r25 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r25->_targeting, r24);
            objc_storeStrong((int64_t *)&r25->_credentials, r22);
            objc_storeStrong((int64_t *)&r25->_extras, r20);
    }
    [r26 release];
    [r23 release];
    [r21 release];
    [r19 release];
    r0 = r25;
    return r0;
}

-(double)userLatitude {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [self hasUserLocation];
    if (r0 != 0x0) {
            r0 = r19->_targeting;
            r0 = [r0 location];
            r0 = [r0 retain];
            [r0 latitude];
            r0 = [r0 release];
    }
    return r0;
}

-(void *)childDirectedTreatment {
    r0 = sub_1007dab88();
    return r0;
}

-(bool)isTestRequest {
    r0 = self->_targeting;
    r0 = [r0 testModeEnabled];
    return r0;
}

-(bool)hasUserLocation {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = r20->_adConfiguration;
    r0 = [r0 objectForKeyedSubscript:*0x100e959f8];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 boolValue] != 0x0) {
            r0 = r20->_targeting;
            r0 = [r0 location];
            r0 = [r0 retain];
            r20 = [r0 precise];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(double)userLocationAccuracyInMeters {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [self hasUserLocation];
    if (r0 != 0x0) {
            r0 = r19->_targeting;
            r0 = [r0 location];
            r0 = [r0 retain];
            [r0 accuracy];
            r0 = [r0 release];
    }
    return r0;
}

-(double)userLongitude {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [self hasUserLocation];
    if (r0 != 0x0) {
            r0 = r19->_targeting;
            r0 = [r0 location];
            r0 = [r0 retain];
            [r0 longitude];
            r0 = [r0 release];
    }
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)userLocationDescription {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = r20->_adConfiguration;
    r0 = [r0 objectForKeyedSubscript:*0x100e959f8];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 boolValue] != 0x0) {
            r0 = r20->_targeting;
            r0 = [r0 location];
            r0 = [r0 retain];
            r20 = [[r0 locationDescription] retain];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)topViewController {
    r0 = self->_viewControllerProvider;
    r0 = [r0 topViewController];
    return r0;
}

-(void *)credentials {
    r0 = self->_credentials;
    return r0;
}

-(void *)viewControllerProvider {
    r0 = self->_viewControllerProvider;
    return r0;
}

-(void *)extras {
    r0 = self->_extras;
    return r0;
}

-(void)setViewControllerProvider:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewControllerProvider, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_viewControllerProvider, 0x0);
    objc_storeStrong((int64_t *)&self->_extras, 0x0);
    objc_storeStrong((int64_t *)&self->_credentials, 0x0);
    objc_storeStrong((int64_t *)&self->_targeting, 0x0);
    objc_storeStrong((int64_t *)&self->_adConfiguration, 0x0);
    return;
}

@end