@implementation GADRequest

+(void *)request {
    r0 = [self alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

+(void)initialize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if ([GADRequest class] == self) {
            r0 = [GADApplication sharedInstance];
            r0 = [r0 retain];
            [r0 runEarlyActivities];
            [r0 release];
    }
    return;
}

+(void *)sdkVersion {
    r0 = objc_retainAutoreleaseReturnValue(*0x100e9f550);
    return r0;
}

-(void)setTestDevices:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [NSArray alloc];
            r0 = [r0 initWithArray:r19 copyItems:0x1];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_testDevices));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            r0 = r8;
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_testDevices));
            r0 = *(r20 + r8);
            *(r20 + r8) = 0x0;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r20 = [[[self class] alloc] init];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_testDevices));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_gender));
    *(r20 + r8) = *(self + r8);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_birthday));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_keywords));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_contentURL));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_customTargeting));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_publisherProvidedID));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_categoryExclusions));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_requestAgent));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_networkExtrasMap));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_location));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_childDirectedTreatment));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_previousRequestCount));
    *(int32_t *)(r20 + r8) = *(int32_t *)(self + r8);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adTypes));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_requestOrigin));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r0 = r20;
    return r0;
}

-(void)setKeywords:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [NSArray alloc];
            r0 = [r0 initWithArray:r19 copyItems:0x1];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_keywords));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            r0 = r8;
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_keywords));
            r0 = *(r20 + r8);
            *(r20 + r8) = 0x0;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)setAdTypes:(void *)arg2 {
    r0 = [arg2 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adTypes));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)registerAdNetworkExtras:(void *)arg2 {
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
    if (r19 != 0x0) {
            r21 = [NSStringFromClass([r19 class]) retain];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_networkExtrasMap));
            r0 = *(r20 + r22);
            if (r0 == 0x0) {
                    r0 = [NSMutableDictionary alloc];
                    r0 = [r0 init];
                    r8 = *(r20 + r22);
                    *(r20 + r22) = r0;
                    [r8 release];
                    r0 = *(r20 + r22);
            }
            sub_100822058(r0, r21, r19);
            [r21 release];
    }
    else {
            NSLog(@"<Google> Extras cannot be nil.");
    }
    [r19 release];
    return;
}

-(void *)adNetworkExtrasFor:(void *)arg2 {
    r19 = self->_networkExtrasMap;
    r20 = [NSStringFromClass(arg2) retain];
    r19 = [[r19 objectForKeyedSubscript:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)removeAdNetworkExtrasFor:(void *)arg2 {
    sub_1008220c0(self->_networkExtrasMap, [NSStringFromClass(arg2) retain]);
    [r20 release];
    return;
}

-(void)tagForChildDirectedTreatment:(bool)arg2 {
    r0 = [NSNumber numberWithBool:arg2];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_childDirectedTreatment));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)setLocationWithLatitude:(double)arg2 longitude:(double)arg3 accuracy:(double)arg4 {
    r0 = [GADLocation alloc];
    r0 = [r0 initWithLatitude:arg2 longitude:arg3 accuracy:arg4];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_location));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void *)childDirectedTreatment {
    r0 = self->_childDirectedTreatment;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)location {
    r0 = self->_location;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)networkExtrasMap {
    r0 = self->_networkExtrasMap;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)adData {
    r0 = self->_adData;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)additionalSignals {
    return 0x0;
}

+(void)updateCorrelator {
    return;
}

-(void)setAdData:(void *)arg2 {
    r0 = [arg2 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adData));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)setLocationWithDescription:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[GADLocation alloc] initWithLocationDescription:r22];
    [r22 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_location));
    r0 = *(self + r8);
    *(self + r8) = r20;
    [r0 release];
    return;
}

-(void)setBirthdayWithMonth:(long long)arg2 day:(long long)arg3 year:(long long)arg4 {
    r0 = [NSDateComponents alloc];
    r0 = [r0 init];
    r20 = r0;
    [r0 setMonth:arg2];
    [r20 setDay:arg3];
    [r20 setYear:arg4];
    r0 = [NSCalendar alloc];
    r0 = [r0 initWithCalendarIdentifier:**_NSGregorianCalendar];
    r21 = r0;
    r0 = [r0 dateFromComponents:r20];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_birthday));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [r21 release];
    [r20 release];
    return;
}

-(void *)testDevices {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_testDevices)), 0x0);
    return r0;
}

-(void *)keywords {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_keywords)), 0x0);
    return r0;
}

-(void *)contentURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_contentURL)), 0x0);
    return r0;
}

-(void)setContentURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setRequestAgent:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)requestAgent {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_requestAgent)), 0x0);
    return r0;
}

-(long long)gender {
    r0 = self->_gender;
    return r0;
}

-(void)setGender:(long long)arg2 {
    self->_gender = arg2;
    return;
}

-(void *)birthday {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_birthday)), 0x0);
    return r0;
}

-(void)setBirthday:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adTypes {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adTypes)), 0x0);
    return r0;
}

-(void *)requestOrigin {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_requestOrigin)), 0x0);
    return r0;
}

-(void)setRequestOrigin:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)customTargeting {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_customTargeting)), 0x0);
    return r0;
}

-(void)setCustomTargeting:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)publisherProvidedID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_publisherProvidedID)), 0x0);
    return r0;
}

-(void)setPublisherProvidedID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)categoryExclusions {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_categoryExclusions)), 0x0);
    return r0;
}

-(void)setCategoryExclusions:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_categoryExclusions, 0x0);
    objc_storeStrong((int64_t *)&self->_publisherProvidedID, 0x0);
    objc_storeStrong((int64_t *)&self->_customTargeting, 0x0);
    objc_storeStrong((int64_t *)&self->_requestOrigin, 0x0);
    objc_storeStrong((int64_t *)&self->_birthday, 0x0);
    objc_storeStrong((int64_t *)&self->_requestAgent, 0x0);
    objc_storeStrong((int64_t *)&self->_contentURL, 0x0);
    objc_storeStrong((int64_t *)&self->_keywords, 0x0);
    objc_storeStrong((int64_t *)&self->_testDevices, 0x0);
    objc_storeStrong((int64_t *)&self->_adData, 0x0);
    objc_storeStrong((int64_t *)&self->_adTypes, 0x0);
    objc_storeStrong((int64_t *)&self->_location, 0x0);
    objc_storeStrong((int64_t *)&self->_childDirectedTreatment, 0x0);
    objc_storeStrong((int64_t *)&self->_networkExtrasMap, 0x0);
    return;
}

@end