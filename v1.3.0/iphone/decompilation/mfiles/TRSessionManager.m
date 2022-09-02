@implementation TRSessionManager

+(void *)sharedManager {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d6e88 != -0x1) {
            dispatch_once(0x1011d6e88, &var_28);
    }
    r0 = *0x1011d6e80;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)startupWithDelegate:(void *)arg2 {
    [self setDelegate:arg2];
    [self applicationWillBecomeActive];
    return;
}

-(void *)init {
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
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            [r19 setConfigured:0x0];
            [r19 setLastDate:0x0];
            r22 = [[TRCacheManager alloc] initWithFlushEventsDelegate:r19];
            [r19 setCacheManager:r22];
            [r22 release];
            r20 = objc_msgSend([NSMutableDictionary alloc], r20);
            [r19 setCachedOffers:r20];
            [r20 release];
            [TRObjectStore removeObjectForKey:*0x100e7d6c8];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(applicationWillBecomeActive) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(applicationWillBecomeInactive) name:**_UIApplicationWillResignActiveNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(applicationWillBecomeInactive) name:**_UIApplicationWillTerminateNotification object:0x0];
            [r0 release];
    }
    r0 = r19;
    return r0;
}

-(void)applicationWillBecomeActive {
    r31 = r31 - 0x60;
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
    r19 = self;
    r0 = [self player];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 devicePlayerId];
    [r0 release];
    if (r21 != 0x0) {
            r23 = 0x0;
    }
    else {
            r23 = 0x1;
            [r19 playerLogin:0x1];
    }
    r0 = [NSDate date];
    r21 = r0;
    r20 = [r0 retain];
    r0 = [r19 lastDate];
    r29 = r29;
    r22 = [r0 retain];
    [r20 timeIntervalSinceDate:r22];
    asm { scvtf      d9, d0 };
    [r22 release];
    if (d8 > d9) {
            objc_storeStrong((int64_t *)&r19->_lastDate, r21);
            if ((r23 & 0x1) == 0x0) {
                    [r19 playerLogin:0x1];
            }
    }
    [r19 getRewards];
    r0 = [r19 cacheManager];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 crashEvent];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r0 = [r19 cacheManager];
            r0 = [r0 retain];
            r22 = [[r0 crashEvent] retain];
            r23 = [[NSArray arrayWithObjects:&var_50 count:0x1] retain];
            [r22 release];
            [r0 release];
            r0 = [TRNetworkManager sharedManager];
            r0 = [r0 retain];
            [r0 postEvents:r23 completionHandler:0x100e7cf10];
            [r0 release];
            [r23 release];
    }
    var_48 = **___stack_chk_guard;
    [r19 checkVersion];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)uncaughtExceptionHandler:(void *)arg2 {
    r25 = [arg2 retain];
    r19 = [[arg2 callStackSymbols] retain];
    r20 = [NSString alloc];
    r22 = [[arg2 name] retain];
    r26 = [[arg2 reason] retain];
    r23 = [[arg2 callStackSymbols] retain];
    [r25 release];
    r24 = [[r23 componentsJoinedByString:@"\n"] retain];
    r20 = [r20 initWithFormat:@"%@:%@\n%@"];
    [r24 release];
    [r23 release];
    [r26 release];
    [r22 release];
    r21 = [[TREvent alloc] initWithName:*0x100e7d718 content:r20];
    r0 = [TRSessionManager sharedManager];
    r0 = [r0 retain];
    [r0 cacheCrashEvent:r21];
    [r0 release];
    r23 = [[NSArray arrayWithObject:r21] retain];
    r0 = [TRNetworkManager sharedManager];
    r0 = [r0 retain];
    [r0 postEvents:r23 completionHandler:0x100e7cf50];
    [r0 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)checkVersion {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [[TRObjectStore retrieveObjectForKey:*0x100e7d708] retain];
    if (r20 != 0x0) {
            if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
                    [TRObjectStore removeObjectForAllKeys];
                    [TRObjectStore storeObject:*0x100e7d600 forKey:*0x100e7d708];
            }
    }
    else {
            [TRObjectStore removeObjectForAllKeys];
            [TRObjectStore storeObject:*0x100e7d600 forKey:*0x100e7d708];
    }
    [r20 release];
    return;
}

-(bool)configured {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self apiToken];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r20 apiToken];
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 length] != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r20 = 0x1;
                    }
            }
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)applicationWillBecomeInactive {
    r20 = [[self player] retain];
    [TRObjectStore storeObject:r20 forKey:*0x100e7d6c0];
    [r20 release];
    return;
}

-(void)playerLogin:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    if ([self configured] != 0x0) {
            r19 = [[TRPlayerRequest alloc] initWithNewSession:r19];
            r0 = [TRNetworkManager sharedManager];
            r0 = [r0 retain];
            [r0 addRequest:r19];
            [r0 release];
            [r19 release];
    }
    else {
            NSLog(@"Can't execute player request because the API token is empty");
    }
    return;
}

-(void)setUserIdentifier:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 userIdentifier];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            [r0 setObject:r19 forKey:*0x100e7d6d8];
            [r0 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            [r0 synchronize];
            [r0 release];
            [r20 playerLogin:0x1];
            [r20 getRewards];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)getRewards {
    var_40 = r26;
    stack[-72] = r25;
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
    if ([self configured] != 0x0) {
            r19 = [[TRRewardDeltaRequest alloc] init];
            r0 = @class(TRNetworkManager);
            r0 = [r0 sharedManager];
            r0 = [r0 retain];
            [r0 addRequest:r19];
            [r0 release];
            r20 = [[TRRewardRedeemedRequest alloc] init];
            r0 = @class(TRNetworkManager);
            r0 = [r0 sharedManager];
            r0 = [r0 retain];
            [r0 addRequest:r20];
            [r0 release];
            [r20 release];
            [r19 release];
    }
    else {
            NSLog(@"Can't execute rewards request because the API token is empty");
    }
    return;
}

-(void *)player {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [TRObjectStore retrieveObjectForKey:*0x100e7d6c0];
    r0 = [r0 retain];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_player));
    r8 = *(r19 + r20);
    *(r19 + r20) = r0;
    [r8 release];
    r0 = *(r19 + r20);
    if (r0 == 0x0) {
            r0 = [TRPlayer alloc];
            r0 = [r0 init];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r0 = *(r19 + r20);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)appSession {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [TRObjectStore retrieveObjectForKey:*0x100e7d6c8];
    r0 = [r0 retain];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_appSession));
    r8 = *(r19 + r20);
    *(r19 + r20) = r0;
    [r8 release];
    r0 = *(r19 + r20);
    if (r0 == 0x0) {
            r0 = [TRAppSession alloc];
            r0 = [r0 init];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r0 = *(r19 + r20);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)userIdentifier {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r2] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)lastDate {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_lastDate));
    r0 = *(r19 + r21);
    if (r0 == 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 dateByAddingTimeInterval:r2];
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r20 release];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)sendCachedOfferRequest {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self cachedOfferRequest];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [TROfferRequest alloc];
            r0 = [r19 cachedOfferRequest];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [[r0 offerIdentifier] retain];
            r0 = [r19 cachedOfferRequest];
            r0 = [r0 retain];
            r24 = [[r0 placementBlock] retain];
            r21 = [r21 initWithOfferIdentifier:r23 placementBlock:r24];
            [r24 release];
            [r0 release];
            [r23 release];
            [r22 release];
            r0 = [TRNetworkManager sharedManager];
            r0 = [r0 retain];
            [r0 sendRequest:r21];
            [r0 release];
            [r19 setCachedOfferRequest:0x0];
            [r21 release];
    }
    return;
}

-(void)eventsRequireFlush:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [TRNetworkManager sharedManager];
    r0 = [r0 retain];
    [r0 postEvents:r22 completionHandler:&var_48];
    [r22 release];
    [r0 release];
    return;
}

-(void)cacheCrashEvent:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self cacheManager];
    r0 = [r0 retain];
    [r0 cacheCrashEvent:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)setConfigured:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_configured = arg2;
    return;
}

-(void)setApiToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)apiToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_apiToken)), 0x0);
    return r0;
}

-(void *)navigationBarColor {
    r0 = self->_navigationBarColor;
    return r0;
}

-(void)setNavigationBarColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_navigationBarColor, arg2);
    return;
}

-(void)setNavigationBarText:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)navigationBarText {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_navigationBarText)), 0x0);
    return r0;
}

-(void)setNavigationBarTextColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_navigationBarTextColor, arg2);
    return;
}

-(void *)navigationBarTextColor {
    r0 = self->_navigationBarTextColor;
    return r0;
}

-(void *)developmentPlatform {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_developmentPlatform)), 0x0);
    return r0;
}

-(void)setDevelopmentPlatform:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)developmentPlatformVersion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_developmentPlatformVersion)), 0x0);
    return r0;
}

-(void)setDevelopmentPlatformVersion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)cachedOffers {
    r0 = self->_cachedOffers;
    return r0;
}

-(void)setCachedOffers:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cachedOffers, arg2);
    return;
}

-(bool)isServerToServer {
    r0 = *(int8_t *)(int64_t *)&self->_isServerToServer;
    return r0;
}

-(void)setIsServerToServer:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isServerToServer = arg2;
    return;
}

-(void *)cachedOfferRequest {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_cachedOfferRequest)), 0x1);
    return r0;
}

-(void)setCachedOfferRequest:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setLoadedOfferIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)loadedOfferIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_loadedOfferIdentifier)), 0x0);
    return r0;
}

-(void)setLastDate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_lastDate, arg2);
    return;
}

-(void)setAppSession:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_appSession, arg2);
    return;
}

-(void)setPlayer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_player, arg2);
    return;
}

-(void *)cacheManager {
    r0 = self->_cacheManager;
    return r0;
}

-(void)setCacheManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cacheManager, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_cacheManager, 0x0);
    objc_storeStrong((int64_t *)&self->_player, 0x0);
    objc_storeStrong((int64_t *)&self->_appSession, 0x0);
    objc_storeStrong((int64_t *)&self->_lastDate, 0x0);
    objc_storeStrong((int64_t *)&self->_loadedOfferIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_cachedOfferRequest, 0x0);
    objc_storeStrong((int64_t *)&self->_cachedOffers, 0x0);
    objc_storeStrong((int64_t *)&self->_developmentPlatformVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_developmentPlatform, 0x0);
    objc_storeStrong((int64_t *)&self->_navigationBarTextColor, 0x0);
    objc_storeStrong((int64_t *)&self->_navigationBarText, 0x0);
    objc_storeStrong((int64_t *)&self->_navigationBarColor, 0x0);
    objc_storeStrong((int64_t *)&self->_apiToken, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end