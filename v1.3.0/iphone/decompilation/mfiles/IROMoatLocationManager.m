@implementation IROMoatLocationManager

+(void *)sharedInstance {
    r29 = &saved_fp;
    r31 = r31 + 0xfffffffffffffff0 - 0x30;
    var_28 = *__NSConcreteStackBlock;
    if (*qword_1011dae58 != -0x1) {
            r0 = dispatch_once(0x1011dae58, &var_28);
    }
    r0 = *0x1011dae60;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    *(r31 + 0xffffffffffffffd0) = self;
    r0 = [[&var_20 super] init];
    [r0 commonInit];
    r0 = r0;
    return r0;
}

-(void)commonInit {
    [IROMoatLogging reportDevLogWithObject:self format:@"initializing."];
    r0 = [CLLocationManager alloc];
    r0 = [r0 init];
    r20 = r0;
    [r0 setDelegate:self];
    [r20 setDesiredAccuracy:self];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(receivedWillEnterForegroundNotification:) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(receivedDidEnterBackgroundNotification:) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
    [r0 release];
    [self setCl_locationManager:r20];
    [r20 release];
    return;
}

+(void)setLocationServicesBlacklisted:(bool)arg2 {
    r2 = arg2;
    if (*(int8_t *)0x1011dae68 != r2) {
            *(int8_t *)0x1011dae68 = r2;
            dispatch_async(*__dispatch_main_q, &var_38);
    }
    return;
}

+(bool)locationServicesBlacklisted {
    return *(int8_t *)0x1011dae68;
}

-(void)receivedWillEnterForegroundNotification:(void *)arg2 {
    [self startLocationFetch];
    return;
}

-(void)receivedDidEnterBackgroundNotification:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self locationServicesAvailable] != 0x0) {
            r0 = [r19 cl_locationManager];
            r0 = [r0 retain];
            [r0 stopUpdatingLocation];
            [r0 release];
    }
    return;
}

-(void)resetFetchTimer {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self locationFetchTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    r0 = [r19 bestLocation];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 bestLocation];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 timestamp];
            r29 = r29;
            r0 = [r0 retain];
            [r0 timeIntervalSinceNow];
            [r0 release];
            [r20 release];
            d0 = *0x100bc2710;
            d1 = d8 + d0;
            asm { fmax       d2, d1, d2 };
            if (d1 > d0) {
                    asm { fcsel      d0, d0, d2, gt };
            }
    }
    r20 = [[NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(startLocationFetch) selector:0x0 userInfo:0x0 repeats:r6] retain];
    [r19 setLocationFetchTimer:r20];
    [r20 release];
    return;
}

-(bool)shouldStartNewFetch {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self locationServicesAvailable] != 0x0) {
            r0 = [r19 currentLocationFetch];
            r0 = [r0 retain];
            if (r0 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r19 = 0x1;
                    }
            }
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)startLocationFetch {
    var_30 = r24;
    stack[-56] = r23;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffc0 - 0x30;
    r19 = self;
    if (([self shouldStartNewFetch] & 0x1) != 0x0) {
            r0 = [r19 locationFetchTimer];
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
            r0 = [r19 fetchTimeoutTimer];
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
            r0 = [r19 bestLocation];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r0 = [r19 bestLocation];
                    r29 = r29;
                    r23 = [r0 retain];
                    r21 = [IROMoatLocationManager isOutdatedLocation:r23];
                    [r23 release];
                    [r20 release];
                    if ((r21 & 0x1) == 0x0) {
                            r21 = [[r19 bestLocation] retain];
                            [IROMoatLogging reportDevLogWithObject:r19 format:@"Have a valid location, won't fetch = %@."];
                            [r21 release];
                            [r19 resetFetchTimer];
                    }
                    else {
                            r0 = [r19 cl_locationManager];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 location];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r23 release];
                            if ([IROMoatLocationManager isValidLocation:r20] == 0x3) {
                                    [r19 setBestLocation:r2];
                                    if ([IROMoatLocationManager isAccurateEnoughLocation:r20] != 0x0) {
                                            r0 = [r19 bestLocation];
                                            r29 = r29;
                                            r22 = [r0 retain];
                                            var_60 = r22;
                                            [IROMoatLogging reportDevLogWithObject:r19 format:@"Have a valid cached location, won't fetch = %@."];
                                            [r22 release];
                                            [r19 resetFetchTimer];
                                    }
                                    else {
                                            [IROMoatLogging reportDevLogWithObject:r19 format:@"Starting location fetch."];
                                            r22 = [[NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(fetchDidTimeout) selector:0x0 userInfo:0x0 repeats:r6] retain];
                                            [r19 setFetchTimeoutTimer:r22];
                                            [r22 release];
                                            r22 = [[IROMoatLocationFetch alloc] init];
                                            r23 = [[NSDate date] retain];
                                            [r22 setStart:r23];
                                            [r23 release];
                                            var_50 = 0xffffffffc2000000;
                                            var_48 = 0x1007557c0;
                                            var_40 = 0x100e8ec20;
                                            r19 = [r19 retain];
                                            var_38 = r19;
                                            r0 = [r22 setFetchCompletion:&var_58];
                                            [r19 setCurrentLocationFetch:r22];
                                            r0 = [r19 cl_locationManager];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 startUpdatingLocation];
                                            [r0 release];
                                            [var_38 release];
                                            [r22 release];
                                    }
                            }
                            else {
                                    [r19 setBestLocation:r2];
                                    [IROMoatLogging reportDevLogWithObject:r19 format:@"Starting location fetch."];
                                    r22 = [[NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(fetchDidTimeout) selector:0x0 userInfo:0x0 repeats:r6] retain];
                                    [r19 setFetchTimeoutTimer:r22];
                                    [r22 release];
                                    r22 = [[IROMoatLocationFetch alloc] init];
                                    r23 = [[NSDate date] retain];
                                    [r22 setStart:r23];
                                    [r23 release];
                                    var_50 = 0xffffffffc2000000;
                                    var_48 = 0x1007557c0;
                                    var_40 = 0x100e8ec20;
                                    r19 = [r19 retain];
                                    var_38 = r19;
                                    r0 = [r22 setFetchCompletion:&var_58];
                                    [r19 setCurrentLocationFetch:r22];
                                    r0 = [r19 cl_locationManager];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 startUpdatingLocation];
                                    [r0 release];
                                    [var_38 release];
                                    [r22 release];
                            }
                            [r20 release];
                    }
            }
            else {
                    [r20 release];
                    r0 = [r19 cl_locationManager];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 location];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r23 release];
                    if ([IROMoatLocationManager isValidLocation:r20] == 0x3) {
                            [r19 setBestLocation:r2];
                            if ([IROMoatLocationManager isAccurateEnoughLocation:r20] != 0x0) {
                                    r0 = [r19 bestLocation];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    var_60 = r22;
                                    [IROMoatLogging reportDevLogWithObject:r19 format:@"Have a valid cached location, won't fetch = %@."];
                                    [r22 release];
                                    [r19 resetFetchTimer];
                            }
                            else {
                                    [IROMoatLogging reportDevLogWithObject:r19 format:@"Starting location fetch."];
                                    r22 = [[NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(fetchDidTimeout) selector:0x0 userInfo:0x0 repeats:r6] retain];
                                    [r19 setFetchTimeoutTimer:r22];
                                    [r22 release];
                                    r22 = [[IROMoatLocationFetch alloc] init];
                                    r23 = [[NSDate date] retain];
                                    [r22 setStart:r23];
                                    [r23 release];
                                    var_50 = 0xffffffffc2000000;
                                    var_48 = 0x1007557c0;
                                    var_40 = 0x100e8ec20;
                                    r19 = [r19 retain];
                                    var_38 = r19;
                                    r0 = [r22 setFetchCompletion:&var_58];
                                    [r19 setCurrentLocationFetch:r22];
                                    r0 = [r19 cl_locationManager];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 startUpdatingLocation];
                                    [r0 release];
                                    [var_38 release];
                                    [r22 release];
                            }
                    }
                    else {
                            [r19 setBestLocation:r2];
                            [IROMoatLogging reportDevLogWithObject:r19 format:@"Starting location fetch."];
                            r22 = [[NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(fetchDidTimeout) selector:0x0 userInfo:0x0 repeats:r6] retain];
                            [r19 setFetchTimeoutTimer:r22];
                            [r22 release];
                            r22 = [[IROMoatLocationFetch alloc] init];
                            r23 = [[NSDate date] retain];
                            [r22 setStart:r23];
                            [r23 release];
                            var_50 = 0xffffffffc2000000;
                            var_48 = 0x1007557c0;
                            var_40 = 0x100e8ec20;
                            r19 = [r19 retain];
                            var_38 = r19;
                            r0 = [r22 setFetchCompletion:&var_58];
                            [r19 setCurrentLocationFetch:r22];
                            r0 = [r19 cl_locationManager];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 startUpdatingLocation];
                            [r0 release];
                            [var_38 release];
                            [r22 release];
                    }
                    [r20 release];
            }
    }
    else {
            [IROMoatLogging reportDevLogWithObject:r19 format:@"Location services not available or fetch already in progress. Won't fetch."];
    }
    return;
}

-(void)stopCurrentFetch {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self fetchTimeoutTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isValid];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r19 fetchTimeoutTimer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
    }
    [r19 setFetchTimeoutTimer:0x0];
    [r19 setCurrentLocationFetch:0x0];
    r0 = [r19 cl_locationManager];
    r0 = [r0 retain];
    [r0 stopUpdatingLocation];
    [r0 release];
    return;
}

-(bool)locationServicesAvailable {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [self authorizationStatus];
    r0 = [IROMoatAnalytics sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 areLocationServicesEnabled] != 0x0) {
            r0 = [IROMoatLocationManager locationServicesBlacklisted];
            r9 = r19 - 0x3;
            if (r9 < 0x2) {
                    if (CPU_FLAGS & B) {
                            r9 = 0x1;
                    }
            }
            if ((r0 & 0x1) != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r19 = r9;
                    }
                    else {
                            r19 = 0x0;
                    }
            }
    }
    else {
            r19 = 0x0;
    }
    [r20 release];
    r0 = r19;
    return r0;
}

+(bool)isAccurateEnoughLocation:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [arg2 horizontalAccuracy];
    if (d0 < *0x100ba1ea0) {
            if (CPU_FLAGS & BE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(unsigned long long)isValidLocation:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r21 = 0x2;
    if (r19 != 0x0) {
            r0 = [r19 coordinate];
            r0 = CLLocationCoordinate2DIsValid(r0);
            r21 = 0x2;
            if (r0 != 0x0) {
                    [r19 coordinate];
                    if (d0 == 0x0) {
                            [r19 coordinate];
                            r21 = 0x2;
                            if (d1 != 0x0) {
                                    [r19 horizontalAccuracy];
                                    r21 = 0x2;
                                    if (d0 >= 0x0) {
                                            r21 = [[r19 timestamp] retain];
                                            if (r21 != 0x0) {
                                                    r20 = [r20 isOutdatedLocation:r19];
                                                    [r21 release];
                                                    if ((r20 & 0x1) != 0x0) {
                                                            r21 = 0x1;
                                                    }
                                                    else {
                                                            r21 = 0x3;
                                                    }
                                            }
                                            else {
                                                    [r21 release];
                                                    r21 = 0x3;
                                            }
                                    }
                            }
                    }
                    else {
                            [r19 horizontalAccuracy];
                            r21 = 0x2;
                            if (d0 >= 0x0) {
                                    r21 = [[r19 timestamp] retain];
                                    if (r21 != 0x0) {
                                            r20 = [r20 isOutdatedLocation:r19];
                                            [r21 release];
                                            if ((r20 & 0x1) != 0x0) {
                                                    r21 = 0x1;
                                            }
                                            else {
                                                    r21 = 0x3;
                                            }
                                    }
                                    else {
                                            [r21 release];
                                            r21 = 0x3;
                                    }
                            }
                    }
            }
    }
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)chooseBestLocation:(void *)arg2 compareAgainst:(void *)arg3 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [IROMoatLocationManager isValidLocation:r19];
    r0 = @class(IROMoatLocationManager);
    r0 = [r0 isValidLocation:r20];
    if (r22 != 0x3) goto loc_100755a70;

loc_100755a60:
    if (r0 == 0x3) goto loc_100755a80;

loc_100755a68:
    r0 = r19;
    goto loc_100755b5c;

loc_100755b5c:
    r21 = [r0 retain];
    goto loc_100755b64;

loc_100755b64:
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_100755a80:
    [r19 horizontalAccuracy];
    objc_msgSend(r20, r21);
    if (d8 != d0) goto loc_100755b38;

loc_100755aac:
    r22 = [[r19 timestamp] retain];
    r23 = [[r20 timestamp] retain];
    r0 = [r22 laterDate:r23];
    r0 = [r0 retain];
    r24 = r0;
    if (r24 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = r20;
            }
            else {
                    r0 = r19;
            }
    }
    r21 = [r0 retain];
    [r24 release];
    [r23 release];
    [r22 release];
    goto loc_100755b64;

loc_100755b38:
    [r19 horizontalAccuracy];
    r0 = [r20 horizontalAccuracy];
    if (d8 < d0) {
            if (!CPU_FLAGS & S) {
                    r0 = r20;
            }
            else {
                    r0 = r19;
            }
    }
    goto loc_100755b5c;

loc_100755a70:
    if (r0 == 0x3) goto loc_100755b30;

loc_100755a78:
    r21 = 0x0;
    goto loc_100755b64;

loc_100755b30:
    r0 = r20;
    goto loc_100755b5c;
}

+(bool)isOutdatedLocation:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = @selector(date);
    r22 = [arg2 retain];
    r20 = [objc_msgSend(@class(NSDate), r21) retain];
    r19 = [arg2 timestamp];
    [r22 release];
    r19 = [r19 retain];
    [r20 timeIntervalSinceDate:r19];
    if (d0 > *0x100bc2710) {
            r21 = @selector(date);
            if (CPU_FLAGS & G) {
                    r21 = 0x1;
            }
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)locationManager:(void *)arg2 didChangeAuthorizationStatus:(int)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = self;
    [self setAuthorizationStatus:arg3];
    r8 = @"Not authorized";
    if ([r19 locationServicesAvailable] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"Not authorized";
            }
            else {
                    r8 = @"Authorized";
            }
    }
    var_30 = r8;
    [IROMoatLogging reportDevLogWithObject:r19 format:@"Authorization status is now: %@"];
    if ([r19 locationServicesAvailable] != 0x0) {
            [r19 startLocationFetch];
    }
    else {
            [r19 setBestLocation:0x0];
    }
    return;
}

-(void)fetchDidTimeout {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self currentLocationFetch];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 currentLocationFetch];
            r0 = [r0 retain];
            (*([[r0 fetchCompletion] retain] + 0x10))();
            [r20 release];
            [r19 release];
    }
    return;
}

-(double)maxLocationAge {
    r0 = self;
    return r0;
}

-(void)setMaxLocationAge:(double)arg2 {
    self->_maxLocationAge = d0;
    return;
}

-(void)setDesiredAccuracy:(double)arg2 {
    self->_desiredAccuracy = d0;
    return;
}

-(double)desiredAccuracy {
    r0 = self;
    return r0;
}

-(double)locationFetchInterval {
    r0 = self;
    return r0;
}

-(void)locationManager:(void *)arg2 didUpdateLocations:(void *)arg3 {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff90 - 0x100;
    r21 = self;
    r26 = *___stack_chk_guard;
    r26 = *r26;
    var_68 = r26;
    r27 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if ([r0 count] == 0x0) goto loc_100756120;

loc_100755eb0:
    var_F8 = 0x0;
    var_108 = 0x0;
    var_100 = 0x0;
    var_118 = 0x0;
    var_110 = 0x0;
    var_128 = 0x0;
    var_120 = 0x0;
    r0 = [r20 reverseObjectEnumerator];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r25 == 0x0) goto loc_100756118;

loc_100755efc:
    var_140 = r20;
    var_138 = r21;
    var_130 = r27;
    r22 = 0x0;
    var_148 = @selector(countByEnumeratingWithState:objects:count:);
    goto loc_100755f24;

loc_100755f24:
    r21 = 0x0;
    goto loc_100755f30;

loc_100755f30:
    var_118 = 0x0;
    if (*var_118 != *0x0) {
            objc_enumerationMutation(r23);
    }
    var_120 = 0x0;
    r28 = *(var_120 + r21 * 0x8);
    if (([IROMoatLocationManager isOutdatedLocation:r2] & 0x1) != 0x0) goto loc_100755fd4;

loc_100755f64:
    [r28 horizontalAccuracy];
    objc_msgSend(r22, r27);
    if (r22 == 0x0 || d8 < d0) {
            r28 = [r28 retain];
            [r22 release];
            r22 = r28;
    }
    r21 = r21 + 0x1;
    if (r21 < r25) goto loc_100755f30;

loc_100755fb0:
    var_148 = @selector(countByEnumeratingWithState:objects:count:);
    r25 = objc_msgSend(r23, var_148);
    if (r25 != 0x0) goto loc_100755f24;

loc_100755fd4:
    [r23 release];
    r26 = *___stack_chk_guard;
    r26 = *r26;
    r21 = var_138;
    r27 = var_130;
    r20 = var_140;
    if (r22 == 0x0) goto loc_100756120;

loc_100755ff4:
    var_160 = r22;
    [IROMoatLogging reportDevLogWithObject:r21 format:@"Received an updated location = %@"];
    r23 = @class(IROMoatLocationManager);
    r24 = [[r21 bestLocation] retain];
    r0 = [r23 chooseBestLocation:r24 compareAgainst:r22];
    r29 = r29;
    r23 = [r0 retain];
    [r21 setBestLocation:r23];
    [r23 release];
    [r24 release];
    if ([IROMoatLocationManager isAccurateEnoughLocation:r22] != 0x0) {
            r0 = [r21 currentLocationFetch];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r21 currentLocationFetch];
                    r0 = [r0 retain];
                    r0 = [r0 fetchCompletion];
                    r29 = r29;
                    (*([r0 retain] + 0x10))();
                    [r23 release];
                    [r21 release];
            }
    }
    r0 = r22;
    goto loc_10075611c;

loc_10075611c:
    [r0 release];
    goto loc_100756120;

loc_100756120:
    [r20 release];
    [r27 release];
    if (r26 != var_68) {
            __stack_chk_fail();
    }
    return;

loc_100756118:
    r0 = r23;
    goto loc_10075611c;
}

-(void)setLocationFetchInterval:(double)arg2 {
    self->_locationFetchInterval = d0;
    return;
}

-(double)locationFetchTimeout {
    r0 = self;
    return r0;
}

-(void)setLocationFetchTimeout:(double)arg2 {
    self->_locationFetchTimeout = d0;
    return;
}

-(void)setBestLocation:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_bestLocation));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(void *)bestLocation {
    r0 = self->_bestLocation;
    return r0;
}

-(void *)cl_locationManager {
    r0 = self->_cl_locationManager;
    return r0;
}

-(void)setCl_locationManager:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_cl_locationManager));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(void)setCurrentLocationFetch:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_currentLocationFetch));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(void *)currentLocationFetch {
    r0 = self->_currentLocationFetch;
    return r0;
}

-(void *)locationFetchTimer {
    r0 = self->_locationFetchTimer;
    return r0;
}

-(void)setLocationFetchTimer:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_locationFetchTimer));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(void *)fetchTimeoutTimer {
    r0 = self->_fetchTimeoutTimer;
    return r0;
}

-(void)setFetchTimeoutTimer:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_fetchTimeoutTimer));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(int)authorizationStatus {
    r0 = *(int32_t *)(int64_t *)&self->_authorizationStatus;
    return r0;
}

-(void)setAuthorizationStatus:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_authorizationStatus = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_fetchTimeoutTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_locationFetchTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_currentLocationFetch, 0x0);
    objc_storeStrong((int64_t *)&self->_cl_locationManager, 0x0);
    objc_storeStrong((int64_t *)&self->_bestLocation, 0x0);
    return;
}

@end