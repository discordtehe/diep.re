@implementation GADLocationService

+(void *)sharedInstance {
    if (*qword_1011dbf90 != -0x1) {
            dispatch_once(0x1011dbf90, 0x100e9f0b8);
    }
    r0 = *0x1011dbf98;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0xd0;
    var_50 = d9;
    stack[-88] = d8;
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
    r29 = &saved_fp;
    r0 = [[&var_60 super] init];
    r19 = r0;
    if (r19 == 0x0) goto loc_1008c09e4;

loc_1008c084c:
    if (NSClassFromString(@"CLLocationManager") == 0x0) goto loc_1008c09f4;

loc_1008c085c:
    r20 = @selector(init);
    r0 = sub_100860a2c("com.google.admob.n.location-service", 0x0, 0x15);
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_locationDataQueue));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r0 = [GADObserverCollection alloc];
    r0 = objc_msgSend(r0, r20);
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
    r8 = *(r19 + r25);
    *(r19 + r25) = r0;
    [r8 release];
    objc_initWeak(&stack[-120], r19);
    [[NSOperationQueue mainQueue] retain];
    objc_copyWeak(&var_90 + 0x20, &stack[-120]);
    [r21 addObserverForName:*0x100e9c400 object:0x0 queue:r23 usingBlock:&var_90];
    [r23 release];
    objc_copyWeak(&var_B8 + 0x20, &stack[-120]);
    [r23 addObserverForName:*0x100e9c168 object:0x0 queue:0x0 usingBlock:&var_B8];
    objc_destroyWeak(&var_B8 + 0x20);
    objc_destroyWeak(&var_90 + 0x20);
    objc_destroyWeak(&stack[-120]);
    goto loc_1008c09e4;

loc_1008c09e4:
    r20 = [r19 retain];
    goto loc_1008c09f8;

loc_1008c09f8:
    [r19 release];
    r0 = r20;
    return r0;

loc_1008c09f4:
    r20 = 0x0;
    goto loc_1008c09f8;
}

-(void *)location {
    r19 = self->_locationDataQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)startUpdatingLocation {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_featureEnabled != 0x0 && *(int8_t *)(int64_t *)&r19->_publisherAuthorized != 0x0) {
            r20 = NSClassFromString(@"CLLocationManager");
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_locationManager));
            if (*(r19 + r21) == 0x0) {
                    r0 = [r20 alloc];
                    r0 = [r0 init];
                    r8 = *(r19 + r21);
                    *(r19 + r21) = r0;
                    [r8 release];
                    [*(r19 + r21) setDelegate:r19];
            }
            r0 = [r20 authorizationStatus];
            if (r0 <= 0x4 && (0x18 >> (r0 & 0x1f) & 0x1) != 0x0) {
                    if (([r20 locationServicesEnabled] & 0x1) != 0x0) {
                            r0 = *(r19 + r21);
                            r1 = @selector(startUpdatingLocation);
                    }
                    else {
                            r1 = @selector(disable);
                            r0 = r19;
                    }
            }
            else {
                    r1 = @selector(disable);
                    r0 = r19;
            }
    }
    else {
            r1 = @selector(disable);
            r0 = r19;
    }
    objc_msgSend(r0, r1);
    return;
}

-(void)disable {
    [self->_locationManager stopUpdatingLocation];
    r20 = self->_locationDataQueue;
    var_18 = [self retain];
    dispatch_async(r20, &var_38);
    [var_18 release];
    return;
}

-(void)updateLocation {
    var_8 = [self retain];
    sub_100860a80();
    [var_8 release];
    return;
}

-(void)setFeatureEnabled:(bool)arg2 {
    var_20 = [self retain];
    sub_100860a80();
    [var_20 release];
    return;
}

-(void)setPublisherAuthorized:(bool)arg2 {
    var_20 = [self retain];
    sub_100860a80();
    [var_20 release];
    return;
}

-(void)locationManager:(void *)arg2 didChangeAuthorizationStatus:(int)arg3 {
    r3 = arg3;
    r0 = self;
    if (r3 > 0x4 || (0x18 >> (r3 & 0x1f) & 0x1) == 0x0) {
            var_18 = [r0 retain];
            sub_100860a80();
            [var_18 release];
    }
    return;
}

-(void)locationManager:(void *)arg2 didUpdateLocations:(void *)arg3 {
    r2 = arg2;
    r31 = r31 - 0xb0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[arg3 lastObject] retain];
    if (r19 != 0x0) {
            r21 = [GADLocation alloc];
            [r19 coordinate];
            [r19 coordinate];
            [r19 horizontalAccuracy];
            r21 = [r21 initWithLatitude:r2 longitude:r3 accuracy:r4];
            r22 = r20->_locationDataQueue;
            [r20 retain];
            var_48 = r21;
            [r21 retain];
            dispatch_async(r22, &var_70);
            var_78 = [r20 retain];
            sub_100860a80();
            [var_78 release];
            [var_48 release];
            [r20 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)locationManager:(void *)arg2 didFailWithError:(void *)arg3 {
    var_8 = [self retain];
    sub_100860a80();
    [var_8 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_locationDataQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_location, 0x0);
    objc_storeStrong((int64_t *)&self->_locationManager, 0x0);
    return;
}

@end