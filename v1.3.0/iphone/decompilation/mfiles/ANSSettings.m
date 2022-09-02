@implementation ANSSettings

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_settingsDictionary, r21);
            r21 = [r20 retain];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(bool)valid {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(void *)answersURL {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKey:@"analytics"];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKey:@"url"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    [r20 release];
    if (r19 != 0x0) {
            r0 = [NSURL URLWithString:r2];
    }
    else {
            r0 = [NSURL URLWithString:r2];
    }
    r20 = [r0 retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)shouldCollectAnalytics {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r19 = [objc_msgSend(r0, r19) retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [r19 boolValue];
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)shouldCollectCustomEvents {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r19 = [objc_msgSend(r0, r19) retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [r19 boolValue];
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)shouldCollectPredefinedEvents {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r19 = [objc_msgSend(r0, r19) retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [r19 boolValue];
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)shouldForwardToFirebaseAnalytics {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r19 = [objc_msgSend(r0, r19) retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [r19 boolValue];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)shouldIncludePurchaseEventsInForwardedFirebaseEvents {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r19 = [objc_msgSend(r0, r19) retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [r19 boolValue];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(long long)maximumPayloadSize {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r19 = [objc_msgSend(r0, r19) retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [r19 integerValue];
    }
    else {
            r20 = 0x1f40;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(long long)maxPendingSendFiles {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r19 = [objc_msgSend(r0, r19) retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [r19 integerValue];
    }
    else {
            r20 = 0x64;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(long long)samplingRate {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r19 = [objc_msgSend(r0, r19) retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [r19 integerValue];
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(double)flushInterval {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r19 = [objc_msgSend(r0, r19) retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            [r19 doubleValue];
            v8 = v0;
    }
    r0 = [r19 release];
    return r0;
}

-(double)defaultUploadTimeout {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r19 = [objc_msgSend(r0, r19) retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            [r19 doubleValue];
            v8 = v0;
    }
    r0 = [r19 release];
    return r0;
}

-(double)lowPowerUploadTimeout {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r19 = [objc_msgSend(r0, r19) retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            [r19 doubleValue];
            v8 = v0;
    }
    r0 = [r19 release];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_settingsDictionary, 0x0);
    return;
}

-(void *)settingsDictionary {
    r0 = self->_settingsDictionary;
    return r0;
}

@end