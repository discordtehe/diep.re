@implementation VungleDeviceInformationProvider

+(void *)sharedProvider {
    if (*qword_1011da8f8 != -0x1) {
            dispatch_once(0x1011da8f8, 0x100e893e8);
    }
    r0 = *0x1011da8f0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)updateUserAgent {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r2] retain];
    [r0 release];
    if (r20 == 0x0) {
            r20 = @"";
            [r20 retain];
    }
    r0 = [r20 copy];
    r8 = *(r19 + 0x20);
    *(r19 + 0x20) = r0;
    [r8 release];
    [r20 release];
    return;
}

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(r0 + 0x38) = 0xbff0000000000000;
            *(int128_t *)(r0 + 0x68) = *(int128_t *)*_CGSizeZero;
            *(int128_t *)(r0 + 0x50) = 0x10000000000000;
            *(int128_t *)(r0 + 0x58) = 0xffffffffffffffff;
            *(int32_t *)(r0 + 0xc) = 0x0;
    }
    return r0;
}

-(void *)informationWithConnectionQuality:(void *)arg2 {
    r21 = [arg2 retain];
    [self updateInformation];
    [self setConnectionQuality:r21];
    [r21 release];
    r20 = [[self machineName] retain];
    r21 = [[self userAgent] retain];
    r22 = [[self systemVersion] retain];
    [self systemVolume];
    [self screenSize];
    [self screenScale];
    r24 = [self availableDiscSpace];
    r23 = [[self connectionQuality] retain];
    r25 = [[self connectionDetail] retain];
    [self batteryLevel];
    r26 = [[self batteryState] retain];
    r27 = [self batterySaverEnabled];
    [self adTrackingEnabled];
    r19 = [[self deviceInformationWithModel:r20 userAgent:r21 systemVersion:r22 systemVolume:r24 screenSize:r23 screenScale:r25 bytesAvailable:r26 connectionQuality:r27 connectionDetail:var_90 batteryLevel:stack[-136] batteryState:var_80 batterySaverEnabled:stack[-120] adTrackingEnabled:var_70] retain];
    [r26 release];
    [r25 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)updateMachineName {
    var_20 = r28;
    stack[-40] = r27;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xffffffffffffffd0 - 0x510;
    var_28 = **___stack_chk_guard;
    uname(&stack[-1336]);
    r0 = [NSString stringWithCString:&stack[-1336] + 0x400 encoding:0x4];
    r0 = [r0 retain];
    r8 = *(self + 0x18);
    *(self + 0x18) = r0;
    [r8 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)updateScreenSize {
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    [r0 bounds];
    *(int128_t *)(self + 0x68) = d2;
    *(int128_t *)(self + 0x70) = d3;
    [r0 release];
    return;
}

-(void)updateSystemVersion {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r8 = *(self + 0x10);
    *(self + 0x10) = r0;
    [r8 release];
    [r20 release];
    return;
}

-(void)updateFreeSpace {
    *(self + 0x58) = [VungleDiscSpaceProvider availableSpaceWithError:&var_18];
    return;
}

-(void)updateSystemVolume {
    r19 = self;
    r0 = [AVAudioSession sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    [r0 outputVolume];
    asm { fcvt       d8, s0 };
    [r20 release];
    *(r19 + 0x38) = d8;
    return;
}

-(void)updateScreenScale {
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    [r0 scale];
    *(self + 0x50) = d0;
    [r20 release];
    return;
}

-(void)updateConnectionDetail {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [VungleCoreTelephonyProvider sharedNetworkInfoInstance];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 currentRadioAccessTechnology];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 currentRadioAccessTechnology];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 copy];
            r8 = *(r19 + 0x30);
            *(r19 + 0x30) = r0;
            [r8 release];
            r0 = r21;
    }
    else {
            r0 = *(r19 + 0x30);
            *(r19 + 0x30) = 0x0;
    }
    [r0 release];
    [r20 release];
    return;
}

-(void)updateBatteryLevel {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    [r0 batteryLevel];
    *(int32_t *)(self + 0xc) = s0;
    [r0 release];
    return;
}

-(void)endBatteryMonitoring {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    [r0 setBatteryMonitoringEnabled:0x0];
    [r0 release];
    return;
}

-(void)beginBatteryMonitoring {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    [r0 setBatteryMonitoringEnabled:0x1];
    [r0 release];
    return;
}

-(void)updateBatteryState {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = [r0 batteryState];
    [r0 release];
    if (r20 <= 0x3) {
            (0x10062ffd4 + *(int8_t *)(0x100bf2eb0 + r20) * 0x4)();
    }
    return;
}

-(void)updateAdTracking {
    r0 = [ASIdentifierManager sharedManager];
    r0 = [r0 retain];
    *(int8_t *)(self + 0x9) = [r0 isAdvertisingTrackingEnabled];
    [r0 release];
    return;
}

-(void)updateInformation {
    [self updateMachineName];
    [self updateConnectionDetail];
    [self performSelectorOnMainThread:@selector(updateUserAgent) withObject:0x0 waitUntilDone:0x1];
    [self performSelectorOnMainThread:@selector(updateSystemVersion) withObject:0x0 waitUntilDone:0x1];
    [self performSelectorOnMainThread:@selector(updateSystemVolume) withObject:0x0 waitUntilDone:0x1];
    [self performSelectorOnMainThread:@selector(updateScreenSize) withObject:0x0 waitUntilDone:0x1];
    [self performSelectorOnMainThread:@selector(updateScreenScale) withObject:0x0 waitUntilDone:0x1];
    [self performSelectorOnMainThread:@selector(updateFreeSpace) withObject:0x0 waitUntilDone:0x1];
    [self performSelectorOnMainThread:@selector(updateBatteryInformation) withObject:0x0 waitUntilDone:0x1];
    [self performSelectorOnMainThread:@selector(updateAdTracking) withObject:0x0 waitUntilDone:0x1];
    return;
}

-(void)updateBatteryInformation {
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
    [self beginBatteryMonitoring];
    [r19 updateBatteryLevel];
    [r19 updateBatteryState];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    [r0 floatValue];
    [r0 release];
    [r20 release];
    if (s8 >= 0x4022000000000000) {
            [r19 updateBatterySaverEnabled];
    }
    [r19 endBatteryMonitoring];
    return;
}

-(void)updateBatterySaverEnabled {
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
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 floatValue];
    [r0 release];
    [r20 release];
    if (s8 >= 0x4022000000000000) {
            r0 = [NSProcessInfo processInfo];
            r0 = [r0 retain];
            *(int8_t *)(r19 + 0x8) = [r0 isLowPowerModeEnabled];
            [r0 release];
    }
    return;
}

-(void *)systemVersion {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setSystemVersion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)machineName {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void)setMachineName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setUserAgent:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)userAgent {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void *)connectionQuality {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x0);
    return r0;
}

-(void)setConnectionQuality:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setConnectionDetail:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)connectionDetail {
    r0 = objc_getProperty(self, _cmd, 0x30, 0x0);
    return r0;
}

-(float)batteryLevel {
    r0 = self;
    return r0;
}

-(double)systemVolume {
    r0 = self;
    return r0;
}

-(void)setBatteryLevel:(float)arg2 {
    *(int32_t *)(self + 0xc) = s0;
    return;
}

-(void)setSystemVolume:(double)arg2 {
    *(self + 0x38) = d0;
    return;
}

-(void *)batteryState {
    r0 = objc_getProperty(self, _cmd, 0x40, 0x0);
    return r0;
}

-(void *)consentInfo {
    r0 = objc_getProperty(self, _cmd, 0x48, 0x0);
    return r0;
}

-(void)setBatteryState:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setConsentInfo:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)batterySaverEnabled {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setBatterySaverEnabled:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void *)deviceInformationWithModel:(void *)arg2 userAgent:(void *)arg3 systemVersion:(void *)arg4 systemVolume:(double)arg5 screenSize:(struct CGSize)arg6 screenScale:(double)arg7 bytesAvailable:(unsigned long long)arg8 connectionQuality:(void *)arg9 connectionDetail:(void *)arg10 batteryLevel:(float)arg11 batteryState:(void *)arg12 batterySaverEnabled:(bool)arg13 adTrackingEnabled:(bool)arg14 {
    memcpy(&r6, &arg6, 0x8);
    r31 = r31 - 0xc0;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    v8 = v4;
    var_B8 = arg5;
    v9 = v0;
    var_C0 = *(int8_t *)(&var_10 + 0x18);
    r28 = *(int8_t *)(&var_10 + 0x19);
    r22 = *(&var_10 + 0x10);
    r27 = [arg2 retain];
    var_98 = [arg3 retain];
    var_A0 = [arg4 retain];
    var_A8 = [r6 retain];
    var_B0 = [r22 retain];
    r23 = [[NSMutableDictionary dictionaryWithCapacity:0xa] retain];
    r21 = [[NSNumber numberWithDouble:0xa] retain];
    [r23 setObject:r21 forKeyedSubscript:@"w"];
    [r21 release];
    r0 = @class(NSNumber);
    d0 = d11 * d10;
    r0 = [r0 numberWithDouble:r21];
    r29 = &var_10;
    r21 = [r0 retain];
    [r23 setObject:r21 forKeyedSubscript:@"h"];
    [r21 release];
    [r23 setObject:arg2 forKeyedSubscript:@"model"];
    [r27 release];
    if ((r28 & 0x1) != 0x0) {
            r1 = @selector(numberWithInt:);
            r0 = @class(NSNumber);
            r2 = 0x0;
            r0 = objc_msgSend(r0, r1);
            r29 = r29;
    }
    else {
            r1 = @selector(numberWithInt:);
            r0 = @class(NSNumber);
            r2 = 0x1;
            r0 = objc_msgSend(r0, r1);
            r29 = r29;
    }
    r21 = [r0 retain];
    [r23 setObject:r21 forKeyedSubscript:@"lmt"];
    [r21 release];
    [r23 setObject:@"Apple" forKeyedSubscript:@"make"];
    r0 = [VungleCoreTelephonyProvider sharedNetworkInfoInstance];
    r0 = [r0 retain];
    r26 = [[r0 subscriberCellularProvider] retain];
    [r0 release];
    r0 = [r26 carrierName];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r0;
            }
            else {
                    r2 = @"";
            }
    }
    [r23 setObject:r2 forKeyedSubscript:@"carrier"];
    [r21 release];
    if (var_98 != 0x0) {
            [r23 setObject:r2 forKeyedSubscript:@"ua"];
    }
    [r23 setObject:@"ios" forKeyedSubscript:@"os"];
    if (var_A0 != 0x0) {
            [r23 setObject:r2 forKeyedSubscript:@"osv"];
    }
    r28 = [[NSMutableDictionary dictionaryWithCapacity:0x1] retain];
    [r23 setObject:r28 forKeyedSubscript:@"ext"];
    r27 = [[NSMutableDictionary dictionaryWithCapacity:0x1] retain];
    [r28 setObject:r27 forKeyedSubscript:@"vungle"];
    r19 = [[NSMutableDictionary dictionaryWithCapacity:0x1] retain];
    [r27 setObject:r19 forKeyedSubscript:@"ios"];
    r20 = [[NSNumber numberWithDouble:r19] retain];
    [r19 setObject:r20 forKeyedSubscript:@"volume"];
    [r20 release];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithInteger:var_C0];
    r29 = r29;
    r20 = [r0 retain];
    [r19 setObject:r20 forKeyedSubscript:@"battery_saver_enabled"];
    [r20 release];
    asm { fcvt       d0, s8 };
    if (d0 != *0x100ba2090) {
            r0 = [NSNumber numberWithFloat:r2];
            r29 = r29;
            r20 = [r0 retain];
            [r19 setObject:r20 forKeyedSubscript:@"battery_level"];
            [r20 release];
    }
    if (var_B0 != 0x0) {
            [r19 setObject:r2 forKeyedSubscript:@"battery_state"];
    }
    if (var_B8 != -0x1) {
            r0 = [NSNumber numberWithUnsignedLongLong:r2];
            r29 = r29;
            r20 = [r0 retain];
            [r19 setObject:r20 forKeyedSubscript:@"storage_bytes_available"];
            [r20 release];
    }
    if (var_A8 != 0x0) {
            [r19 setObject:r2 forKeyedSubscript:@"connection_type"];
    }
    r0 = [NSLocale preferredLanguages];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 firstObject];
    r29 = r29;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            [r19 setObject:r20 forKeyedSubscript:@"language"];
    }
    r0 = [NSLocale currentLocale];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 localeIdentifier];
    r29 = r29;
    r25 = [r0 retain];
    [r21 release];
    if (r25 != 0x0) {
            [r19 setObject:r25 forKeyedSubscript:@"locale"];
    }
    r0 = [NSTimeZone systemTimeZone];
    r0 = [r0 retain];
    r21 = [[r0 name] retain];
    [r0 release];
    if (r21 != 0x0) {
            [r19 setObject:r21 forKeyedSubscript:@"time_zone"];
    }
    r22 = [r23 copy];
    [r21 release];
    [r25 release];
    [r20 release];
    [r19 release];
    [r27 release];
    [r28 release];
    [r26 release];
    [r23 release];
    [var_B0 release];
    [var_A8 release];
    [var_A0 release];
    [var_98 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)setScreenSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x68) = d0;
    *(self + 0x70) = d1;
    return;
}

-(struct CGSize)screenSize {
    r0 = self;
    return r0;
}

-(double)screenScale {
    r0 = self;
    return r0;
}

-(bool)adTrackingEnabled {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setAdTrackingEnabled:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(void)setScreenScale:(double)arg2 {
    *(self + 0x50) = d0;
    return;
}

-(unsigned long long)availableDiscSpace {
    r0 = *(self + 0x58);
    return r0;
}

-(void *)pluginName {
    r0 = objc_getProperty(self, _cmd, 0x60, 0x0);
    return r0;
}

-(void)setAvailableDiscSpace:(unsigned long long)arg2 {
    *(self + 0x58) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x60, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

-(void)setPluginName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

+(void *)appendToDeviceInfo:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r19 = [objc_alloc() initWithDictionary:r20];
    [r20 release];
    r0 = [VunglePublisherInformationProvider sharedProvider];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r20 IFA];
            r29 = r29;
            r22 = [r0 retain];
            [r19 setObject:r22 forKeyedSubscript:@"ifa"];
            [r22 release];
    }
    r0 = [r20 identifierForVendor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 identifierForVendor];
            r29 = r29;
            r22 = [r0 retain];
            [r19 setObject:r22 forKeyedSubscript:@"idfv"];
            [r22 release];
    }
    r0 = [VungleVDUIDProvider sharedProvider];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 VDUID];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 VDUID];
            r29 = r29;
            r22 = [r0 retain];
            [r19 setObject:r22 forKeyedSubscript:@"vduid"];
            [r22 release];
    }
    r0 = [r20 pluginName];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0 && ([r22 isEqualToString:r2] & 0x1) == 0x0) {
            r23 = [@(YES) retain];
            [r19 setObject:r23 forKeyedSubscript:r22];
            [r23 release];
    }
    r23 = [r19 copy];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

@end