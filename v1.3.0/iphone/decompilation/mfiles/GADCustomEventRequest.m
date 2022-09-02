@implementation GADCustomEventRequest

-(bool)userHasLocation {
    r0 = *(int8_t *)(int64_t *)&self->_userHasLocation;
    return r0;
}

-(double)userLongitude {
    r0 = self;
    return r0;
}

-(double)userLatitude {
    r0 = self;
    return r0;
}

-(void *)initWithTargeting:(void *)arg2 locationEnabled:(bool)arg3 extrasLabel:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r21->_userGender = [r19 gender];
            r0 = [r19 birthday];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_userBirthday));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r24 release];
            if (r23 != 0x0) {
                    r8 = &@selector(inData);
                    r23 = *(r8 + 0x698);
                    r0 = objc_msgSend(r19, r23);
                    r29 = r29;
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            r8 = &@selector(inData);
                            if (CPU_FLAGS & NE) {
                                    r8 = 0x1;
                            }
                    }
                    *(int8_t *)(int64_t *)&r21->_userHasLocation = r8;
                    [r0 release];
                    r0 = objc_msgSend(r19, r23);
                    r0 = [r0 retain];
                    [r0 latitude];
                    r21->_userLatitude = d0;
                    [r0 release];
                    r0 = objc_msgSend(r19, r23);
                    r0 = [r0 retain];
                    [r0 longitude];
                    r21->_userLongitude = d0;
                    [r0 release];
                    r0 = objc_msgSend(r19, r23);
                    r0 = [r0 retain];
                    [r0 accuracy];
                    r21->_userLocationAccuracyInMeters = d0;
                    [r0 release];
                    r0 = objc_msgSend(r19, r23);
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 locationDescription];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_userLocationDescription));
                    r8 = *(r21 + r9);
                    *(r21 + r9) = r0;
                    [r8 release];
                    [r23 release];
            }
            r0 = [r19 keywords];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_userKeywords));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
            *(int8_t *)(int64_t *)&r21->_isTesting = [r19 testModeEnabled];
            r0 = [r19 networkExtrasForClass:[GADCustomEventExtras class]];
            r29 = r29;
            r23 = [r0 retain];
            [GADCustomEventExtras class];
            if ([r23 isKindOfClass:r2] != 0x0) {
                    r0 = [r23 extrasForLabel:r20];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 copy];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_additionalParameters));
                    r8 = *(r21 + r9);
                    *(r21 + r9) = r0;
                    [r8 release];
                    [r24 release];
            }
            [r23 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(double)userLocationAccuracyInMeters {
    r0 = self;
    return r0;
}

-(void *)userKeywords {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userKeywords)), 0x0);
    return r0;
}

-(void *)userLocationDescription {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userLocationDescription)), 0x0);
    return r0;
}

-(void *)additionalParameters {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_additionalParameters)), 0x0);
    return r0;
}

-(bool)isTesting {
    r0 = *(int8_t *)(int64_t *)&self->_isTesting;
    return r0;
}

-(long long)userGender {
    r0 = self->_userGender;
    return r0;
}

-(void *)userBirthday {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userBirthday)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userBirthday, 0x0);
    objc_storeStrong((int64_t *)&self->_additionalParameters, 0x0);
    objc_storeStrong((int64_t *)&self->_userKeywords, 0x0);
    objc_storeStrong((int64_t *)&self->_userLocationDescription, 0x0);
    return;
}

@end