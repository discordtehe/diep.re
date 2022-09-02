@implementation ISOfferwallManager

-(void)showOfferwallWithViewController:(void *)arg2 {
    [self showOfferwallWithViewController:arg2 placement:0x0];
    return;
}

-(void)initOWWithUserId:(void *)arg2 {
    [self->_adapter initOWWithUserId:arg2 adapterConfig:self->_config activeDelegate:self];
    return;
}

-(void *)initWithConfig:(void *)arg2 settings:(void *)arg3 {
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
    r29 = &saved_fp;
    r23 = arg3;
    r22 = arg2;
    r19 = [r22 retain];
    r20 = [r23 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            *(int8_t *)(int64_t *)&r21->_hasOfferwall = 0x0;
            objc_storeStrong((int64_t *)&r21->_owSettings, r23);
            objc_storeStrong((int64_t *)&r21->_config, r22);
            r23 = @selector(placements);
            r0 = objc_msgSend(r20, r23);
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    r24 = [ISPlacementsRepository alloc];
                    r23 = [[r20 placements] retain];
                    r24 = [r24 initWithArray:r23];
                    r25 = 0x1;
            }
            else {
                    r25 = 0x0;
                    r24 = 0x0;
            }
            objc_storeStrong((int64_t *)&r21->_placementsRepository, r24);
            if (r25 != 0x0) {
                    [r24 release];
                    [r23 release];
            }
            [r22 release];
            [r21 initiateOWAdapter];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)showOfferwallWithViewController:(void *)arg2 placement:(void *)arg3 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [SSEReachabilityManager sharedManager];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 getReachabilityObject];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 currentReachabilityStatus];
    [r0 release];
    [r22 release];
    if (r24 != 0x0) {
            r0 = [r20 placementsRepository];
            r0 = [r0 retain];
            r23 = [[r0 placementForName:r21] retain];
            [r20 setCurrentPlacement:r23];
            [r23 release];
            [r0 release];
            r0 = [r20 currentPlacement];
            r0 = [r0 retain];
            r22 = [[r0 uid] retain];
            [r21 release];
            [r0 release];
            r0 = [r20 currentPlacement];
            r0 = [r0 retain];
            r24 = [[r0 name] retain];
            r21 = [[NSString stringWithFormat:@"showOW with placement name %@"] retain];
            [r24 release];
            [r0 release];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r21 level:0x1 tag:0x0];
            [r0 release];
            [r20->_adapter showOfferwallWithViewController:r19 placement:r22];
            [r21 release];
            r21 = r22;
    }
    else {
            r22 = [[ISError createError:0x208 withMessage:@"Offerwall Show Fail - No internet connection"] retain];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 logFromError:r22 level:0x3 tag:0x4];
            [r0 release];
            r23 = [[NSOperationQueue mainQueue] retain];
            var_38 = r22;
            r22 = [r22 retain];
            [r23 addOperationWithBlock:&var_60];
            [r23 release];
            [var_38 release];
            [r22 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)getOfferWallCreditsWithUserId:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[NSString stringWithFormat:@"getOfferWallCredits"] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x1 tag:0x0];
    [r0 release];
    [self->_adapter getOfferWallCreditsWithUserId:r22];
    [r22 release];
    [r20 release];
    return;
}

-(void)adapterOfferwallHasChangedAvailability:(bool)arg2 {
    r0 = self;
    r31 = r31 - 0xd0;
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
    r29 = &saved_fp;
    r20 = arg2;
    r21 = r0;
    if (r20 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = @"false";
            }
            else {
                    r0 = @"true";
            }
    }
    var_58 = **___stack_chk_guard;
    r22 = @class(NSString);
    r19 = [r0 retain];
    r22 = [[r22 stringWithFormat:@"offerwallHasChangedAvailability: %@"] retain];
    r25 = [[ISLoggerManager sharedInstance] retain];
    r26 = @class(NSString);
    r27 = [[r21->_config reflectionName] retain];
    r24 = [[r26 stringWithFormat:@"%@: %@"] retain];
    [r25 log:r24 level:0x1 tag:0x3];
    [r24 release];
    [r27 release];
    [r25 release];
    [r21 setHasOfferwall:r20];
    [r21 setDidInitSuccesfully:r20];
    r24 = [[NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_78 count:0x2] retain];
    r25 = [ISEventData alloc];
    r26 = [@(0x12e) retain];
    r25 = [r25 initWithEventId:r26 andAdditionData:r24];
    [r26 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r25];
    [r0 release];
    r23 = [[NSOperationQueue mainQueue] retain];
    r21 = [r22 retain];
    [r23 addOperationWithBlock:&var_B0];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    [r25 release];
    [r24 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)adapterOfferwallDidShow {
    r20 = [[self->_config reflectionName] retain];
    r19 = [[NSString stringWithFormat:@"%@: offerwallDidShow"] retain];
    [r20 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r19 level:0x1 tag:0x3];
    [r0 release];
    r0 = [NSOperationQueue mainQueue];
    r0 = [r0 retain];
    [r0 addOperationWithBlock:&var_78];
    [r0 release];
    r22 = [[NSMutableDictionary alloc] init];
    r23 = [[ISUtils timeInMilliSeconds] retain];
    [self addObject:*0x100e8cd00 forKey:@"provider" toDictionary:r22];
    [self addObject:r23 forKey:@"timestamp" toDictionary:r22];
    r0 = [self currentPlacement];
    r0 = [r0 retain];
    r27 = [[r0 name] retain];
    [self addObject:r27 forKey:@"placement" toDictionary:r22];
    [r27 release];
    [r0 release];
    r21 = [ISEventData alloc];
    r24 = [@(0x131) retain];
    r21 = [r21 initWithEventId:r24 andAdditionData:r22];
    [r24 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r21];
    [r0 release];
    [r21 release];
    [r23 release];
    [r22 release];
    [r19 release];
    return;
}

-(void)adapterOfferwallDidFailToShowWithError:(void *)arg2 {
    r0 = [arg2 retain];
    r19 = r0;
    r21 = @class(NSString);
    r22 = [[r0 localizedDescription] retain];
    [r19 code];
    r21 = [[r21 stringWithFormat:@"offerwallDidFailToShowWithError:%@, code %d"] retain];
    [r22 release];
    r22 = [[ISLoggerManager sharedInstance] retain];
    r24 = @class(NSString);
    r25 = [[self->_config reflectionName] retain];
    r23 = [[r24 stringWithFormat:@"%@: %@"] retain];
    [r22 log:r23 level:0x3 tag:0x3];
    [r23 release];
    [r25 release];
    [r22 release];
    r22 = [[NSOperationQueue mainQueue] retain];
    r20 = [r21 retain];
    var_48 = r19;
    r19 = [r19 retain];
    [r22 addOperationWithBlock:&var_78];
    [r22 release];
    [var_48 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)adapterOfferwallDidClose {
    r21 = [[self->_config reflectionName] retain];
    r20 = [[NSString stringWithFormat:@"%@: offerwallDidClose"] retain];
    [r21 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x1 tag:0x3];
    [r0 release];
    r0 = [NSOperationQueue mainQueue];
    r0 = [r0 retain];
    [r0 addOperationWithBlock:&var_48];
    [r0 release];
    [r20 release];
    return;
}

-(bool)adapterOfferwallDidReceiveCredits:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [[NSString stringWithFormat:@"didReceiveOfferwallCredits: %@"] retain];
    r24 = [[ISLoggerManager sharedInstance] retain];
    r25 = @class(NSString);
    r26 = [[r21->_config reflectionName] retain];
    r25 = [[r25 stringWithFormat:@"%@: %@"] retain];
    [r24 log:r25 level:0x1 tag:0x3];
    [r25 release];
    [r26 release];
    [r24 release];
    r0 = [r21 delegate];
    r29 = &saved_fp;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            r0 = [r21 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r28 = [r0 respondsToSelector:@selector(didReceiveOfferwallCredits:)];
            [r0 release];
            [r26 release];
            if (r28 != 0x0) {
                    r24 = @selector(delegate);
                    r0 = [ISLoggerManager sharedInstance];
                    r0 = [r0 retain];
                    [r0 log:r20 level:0x1 tag:0x1];
                    [r0 release];
                    r0 = objc_msgSend(r21, r24);
                    r0 = [r0 retain];
                    r21 = [r0 didReceiveOfferwallCredits:r19];
                    [r0 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)adapterOfferwallDidFailToReceiveCreditsWithError:(void *)arg2 {
    r0 = [arg2 retain];
    r19 = r0;
    r21 = @class(NSString);
    r22 = [[r0 localizedDescription] retain];
    [r19 code];
    r21 = [[r21 stringWithFormat:@"didFailToReceiveOfferwallCreditsWithError: %@, code: %d"] retain];
    [r22 release];
    r22 = [[ISLoggerManager sharedInstance] retain];
    r24 = @class(NSString);
    r25 = [[self->_config reflectionName] retain];
    r23 = [[r24 stringWithFormat:@"%@: %@"] retain];
    [r22 log:r23 level:0x3 tag:0x3];
    [r23 release];
    [r25 release];
    [r22 release];
    r22 = [[NSOperationQueue mainQueue] retain];
    r20 = [r21 retain];
    var_48 = r19;
    r19 = [r19 retain];
    [r22 addOperationWithBlock:&var_78];
    [r22 release];
    [var_48 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void *)delegate {
    r0 = self->_delegate;
    return r0;
}

-(void)addObject:(void *)arg2 forKey:(void *)arg3 toDictionary:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r19 != 0x0) {
            [r21 setObject:r2 forKey:r3];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setConsent:(bool)arg2 {
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
    r19 = arg2;
    r20 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_adapter));
    if (*(r20 + r23) != 0x0) {
            r21 = [[NSString stringWithFormat:@"setConsent:adUnit:offerwall, value:%d"] retain];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r21 level:0x1 tag:0x2];
            [r0 release];
            [*(r20 + r23) setConsent:r19];
            [r21 release];
    }
    return;
}

-(void)initiateOWAdapter {
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
    r20 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_config));
    r23 = [[*(r20 + r24) reflectionName] retain];
    r0 = [NSString stringWithFormat:r2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r23 release];
    r0 = NSClassFromString(r19);
    if (r0 != 0x0) {
            r21 = [r0 alloc];
            r22 = [[*(r20 + r24) name] retain];
            r0 = [r21 initAdapter:r22];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_adapter));
            r8 = *(r20 + r23);
            *(r20 + r23) = r0;
            [r8 release];
            [r22 release];
            r0 = @class(ISConfigurations);
            r0 = [r0 getConfigurations];
            r0 = [r0 retain];
            [*(r20 + r23) setUsersAge:[r0 userAge]];
            [r0 release];
            r0 = @class(ISConfigurations);
            r0 = [r0 getConfigurations];
            r0 = [r0 retain];
            [*(r20 + r23) setUsersGender:[r0 userGender]];
            [r0 release];
            r0 = @class(ISConfigurations);
            r0 = [r0 getConfigurations];
            r0 = [r0 retain];
            r21 = r0;
            [*(r20 + r23) setAdaptersDebug:[r0 adaptersDebug]];
    }
    else {
            r21 = @selector(stringWithFormat:);
            r20 = [[*(r20 + r24) reflectionName] retain];
            r21 = [objc_msgSend(@class(NSString), r21) retain];
            [r20 release];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r21 level:0x3 tag:0x3];
            [r0 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_delegate, arg2);
    return;
}

-(bool)didInitSuccesfully {
    r0 = *(int8_t *)(int64_t *)&self->_didInitSuccesfully;
    return r0;
}

-(void)setDidInitSuccesfully:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didInitSuccesfully = arg2;
    return;
}

-(bool)hasOfferwall {
    r0 = *(int8_t *)(int64_t *)&self->_hasOfferwall;
    return r0;
}

-(void)setHasOfferwall:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasOfferwall = arg2;
    return;
}

-(void *)config {
    r0 = self->_config;
    return r0;
}

-(void)setConfig:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_config, arg2);
    return;
}

-(void *)owSettings {
    r0 = self->_owSettings;
    return r0;
}

-(void)setOwSettings:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_owSettings, arg2);
    return;
}

-(void *)placementsRepository {
    r0 = self->_placementsRepository;
    return r0;
}

-(void)setPlacementsRepository:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementsRepository, arg2);
    return;
}

-(void *)currentPlacement {
    r0 = self->_currentPlacement;
    return r0;
}

-(void)setCurrentPlacement:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currentPlacement, arg2);
    return;
}

-(void *)adapter {
    r0 = self->_adapter;
    return r0;
}

-(void)setAdapter:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adapter, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adapter, 0x0);
    objc_storeStrong((int64_t *)&self->_currentPlacement, 0x0);
    objc_storeStrong((int64_t *)&self->_placementsRepository, 0x0);
    objc_storeStrong((int64_t *)&self->_owSettings, 0x0);
    objc_storeStrong((int64_t *)&self->_config, 0x0);
    objc_storeStrong((int64_t *)&self->_delegate, 0x0);
    return;
}

@end