@implementation VungleAdReport

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 decodeObjectForKey:@"placement_dictionary"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x18);
            *(r20 + 0x18) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"eventId"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x20);
            *(r20 + 0x20) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"ad_token"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x28);
            *(r20 + 0x28) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"adType"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x10);
            *(r20 + 0x10) = r0;
            [r8 release];
            *(r20 + 0x30) = [r19 decodeIntegerForKey:@"ttDownload"];
            *(r20 + 0x38) = [r19 decodeIntegerForKey:@"adDuration"];
            *(r20 + 0x40) = [r19 decodeIntegerForKey:@"adStartTime"];
            r0 = [r19 decodeObjectForKey:@"app_id"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x48);
            *(r20 + 0x48) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"campaign"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x50);
            *(r20 + 0x50) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"user"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x58);
            *(r20 + 0x58) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"extraInfo"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x60);
            *(r20 + 0x60) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"publisher_app_id"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x68);
            *(r20 + 0x68) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"ifa"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x70);
            *(r20 + 0x70) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"deviceInfo"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x78);
            *(r20 + 0x78) = r0;
            [r8 release];
            *(int8_t *)(r20 + 0x8) = [r19 decodeBoolForKey:@"incentivized"];
            *(r20 + 0x80) = [r19 decodeIntegerForKey:@"ordinal_view"];
            *(r20 + 0x88) = [r19 decodeIntegerForKey:@"report_status"];
            r0 = [r19 decodeObjectForKey:@"adCacheKey"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x90);
            *(r20 + 0x90) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)category {
    objc_retainAutorelease(@"reports");
    return @"reports";
}

+(long long)channel {
    return 0x0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    r23 = [[self placementDictionary] retain];
    [arg2 encodeObject:r23 forKey:@"placement_dictionary"];
    [r23 release];
    r23 = [[self eventID] retain];
    [arg2 encodeObject:r23 forKey:@"eventId"];
    [r23 release];
    r23 = [[self adToken] retain];
    [arg2 encodeObject:r23 forKey:@"ad_token"];
    [r23 release];
    r23 = [[self adType] retain];
    [arg2 encodeObject:r23 forKey:@"adType"];
    [r23 release];
    [arg2 encodeInteger:[self ttDownload] forKey:@"ttDownload"];
    [arg2 encodeInteger:[self adDuration] forKey:@"adDuration"];
    [arg2 encodeInteger:[self adStartTime] forKey:@"adStartTime"];
    r24 = [[self appId] retain];
    [arg2 encodeObject:r24 forKey:@"app_id"];
    [r24 release];
    r24 = [[self campaign] retain];
    [arg2 encodeObject:r24 forKey:@"campaign"];
    [r24 release];
    r24 = [[self user] retain];
    [arg2 encodeObject:r24 forKey:@"user"];
    [r24 release];
    r24 = [[self extraInfo] retain];
    [arg2 encodeObject:r24 forKey:@"extraInfo"];
    [r24 release];
    r24 = [[self publisherAppID] retain];
    [arg2 encodeObject:r24 forKey:@"publisher_app_id"];
    [r24 release];
    r24 = [[self ifa] retain];
    [arg2 encodeObject:r24 forKey:@"ifa"];
    [r24 release];
    r24 = [[self deviceInfo] retain];
    [arg2 encodeObject:r24 forKey:@"deviceInfo"];
    [r24 release];
    [arg2 encodeBool:[self incentivized] forKey:@"incentivized"];
    [arg2 encodeInteger:[self ordinalView] forKey:@"ordinal_view"];
    [arg2 encodeInteger:[self reportStatus] forKey:@"report_status"];
    r21 = [[self adCacheKey] retain];
    [arg2 encodeObject:r21 forKey:@"adCacheKey"];
    [r20 release];
    [r21 release];
    return;
}

-(void *)toDictionary {
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
    r20 = self;
    r19 = [objc_alloc() init];
    r0 = [r20 adToken];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r0;
            }
            else {
                    r2 = @"";
            }
    }
    [r19 setObject:r2 forKeyedSubscript:@"ad_token"];
    [r22 release];
    r0 = [r20 placementDictionary];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:@"placement_reference_id"];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r0;
            }
            else {
                    r0 = @"";
            }
    }
    r25 = [r0 retain];
    [r24 release];
    [r22 release];
    [r19 setObject:r25 forKeyedSubscript:@"placement_reference_id"];
    [r25 release];
    if (([r20 incentivized] & 0x1) != 0x0) {
            r2 = 0x1;
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
    }
    else {
            r2 = 0x0;
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
    }
    r22 = [r0 retain];
    [r19 setObject:r22 forKeyedSubscript:@"incentivized"];
    [r22 release];
    if ([r20 ttDownload] != 0x0) {
            r0 = [NSNumber numberWithUnsignedInteger:[r20 ttDownload]];
            r29 = r29;
            r22 = [r0 retain];
            [r19 setObject:r22 forKeyedSubscript:@"ttDownload"];
            [r22 release];
    }
    if ([r20 adDuration] != 0x0) {
            r0 = [NSNumber numberWithUnsignedInteger:[r20 adDuration]];
            r29 = r29;
            r22 = [r0 retain];
            [r19 setObject:r22 forKeyedSubscript:@"adDuration"];
            [r22 release];
    }
    if ([r20 adStartTime] != 0x0) {
            r0 = [NSNumber numberWithUnsignedInteger:[r20 adStartTime]];
            r29 = r29;
            r22 = [r0 retain];
            [r19 setObject:r22 forKeyedSubscript:@"adStartTime"];
            [r22 release];
    }
    r8 = *(r20 + 0x48);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r8;
            }
            else {
                    r2 = @"com.vungle.appid.invalid";
            }
    }
    [r19 setObject:r2 forKeyedSubscript:@"app_id"];
    r0 = [r20 extraInfo];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) goto loc_100667be8;

loc_100667b68:
    r0 = [r20 extraInfo];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 isEqualToDictionary:**___NSDictionary0__];
    [r0 release];
    [r23 release];
    if ((r25 & 0x1) != 0x0) goto loc_100667bf0;

loc_100667bb0:
    r0 = [r20 extraInfo];
    r29 = r29;
    r22 = [r0 retain];
    [r19 setObject:r22 forKeyedSubscript:@"extraInfo"];
    r0 = r22;
    goto loc_100667bec;

loc_100667bec:
    [r0 release];
    goto loc_100667bf0;

loc_100667bf0:
    r0 = [r20 user];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 user];
            r29 = r29;
            r22 = [r0 retain];
            [r19 setObject:r22 forKeyedSubscript:@"user"];
            [r22 release];
    }
    if ([r20 ordinalView] != 0x0) {
            r20 = [[NSNumber numberWithUnsignedInteger:[r20 ordinalView]] retain];
            [r19 setObject:r20 forKeyedSubscript:@"ordinal_view"];
            [r20 release];
    }
    r20 = [r19 copy];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_100667be8:
    r0 = r23;
    goto loc_100667bec;
}

+(void *)keyExtension {
    objc_retainAutorelease(@".report");
    return @".report";
}

-(long long)persistenceChannel {
    r0 = [self class];
    r0 = [r0 channel];
    return r0;
}

-(void *)persistenceCategory {
    r0 = [self class];
    r0 = [r0 category];
    return r0;
}

-(void *)adType {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void *)uniqueIdentifier {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self adCacheKey];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [[r20 adCacheKey] retain];
    }
    else {
            r20 = @"";
            [r20 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)persistenceKey {
    r20 = [[self uniqueIdentifier] retain];
    r19 = [[[self class] keyExtension] retain];
    r21 = [[r20 stringByAppendingString:r19] retain];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)setPlacementDictionary:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)placementDictionary {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void)setAdType:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)eventID {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void)setEventID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setAdToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adToken {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x0);
    return r0;
}

-(unsigned long long)ttDownload {
    r0 = *(self + 0x30);
    return r0;
}

-(unsigned long long)adDuration {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setTtDownload:(unsigned long long)arg2 {
    *(self + 0x30) = arg2;
    return;
}

-(void)setAdDuration:(unsigned long long)arg2 {
    *(self + 0x38) = arg2;
    return;
}

-(unsigned long long)adStartTime {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setAdStartTime:(unsigned long long)arg2 {
    *(self + 0x40) = arg2;
    return;
}

-(void *)appId {
    r0 = objc_getProperty(self, _cmd, 0x48, 0x0);
    return r0;
}

-(void)setAppId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)campaign {
    r0 = objc_getProperty(self, _cmd, 0x50, 0x0);
    return r0;
}

-(void)setCampaign:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)user {
    r0 = objc_getProperty(self, _cmd, 0x58, 0x0);
    return r0;
}

-(void)setUser:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)extraInfo {
    r0 = objc_getProperty(self, _cmd, 0x60, 0x0);
    return r0;
}

-(void)setExtraInfo:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)publisherAppID {
    r0 = objc_getProperty(self, _cmd, 0x68, 0x0);
    return r0;
}

-(void)setPublisherAppID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)ifa {
    r0 = objc_getProperty(self, _cmd, 0x70, 0x0);
    return r0;
}

-(void)setIfa:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)deviceInfo {
    r0 = objc_getProperty(self, _cmd, 0x78, 0x0);
    return r0;
}

-(void)setDeviceInfo:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)incentivized {
    r0 = *(int8_t *)(self + 0x8) & 0x1;
    return r0;
}

-(unsigned long long)ordinalView {
    r0 = *(self + 0x80);
    return r0;
}

-(void)setOrdinalView:(unsigned long long)arg2 {
    *(self + 0x80) = arg2;
    return;
}

-(long long)reportStatus {
    r0 = *(self + 0x88);
    return r0;
}

-(void)setReportStatus:(long long)arg2 {
    *(self + 0x88) = arg2;
    return;
}

-(void *)adCacheKey {
    r0 = objc_getProperty(self, _cmd, 0x90, 0x0);
    return r0;
}

-(void)setAdCacheKey:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x90, 0x0);
    objc_storeStrong(self + 0x78, 0x0);
    objc_storeStrong(self + 0x70, 0x0);
    objc_storeStrong(self + 0x68, 0x0);
    objc_storeStrong(self + 0x60, 0x0);
    objc_storeStrong(self + 0x58, 0x0);
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end