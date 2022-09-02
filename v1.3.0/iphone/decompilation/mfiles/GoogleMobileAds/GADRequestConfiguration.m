@implementation GADRequestConfiguration

-(void)tagForUnderAgeOfConsent:(bool)arg2 {
    r0 = [NSNumber numberWithBool:arg2];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_underAgeOfConsent));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = [GADUserPreferences sharedInstance];
    r0 = [r0 retain];
    [r0 updateNPA];
    [r0 release];
    return;
}

-(void)tagForChildDirectedTreatment:(bool)arg2 {
    r0 = [NSNumber numberWithBool:arg2];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_tagForChildDirectedTreatment));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = [GADUserPreferences sharedInstance];
    r0 = [r0 retain];
    [r0 updateNPA];
    [r0 release];
    return;
}

-(void *)maxAdContentRating {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_maxAdContentRating)), 0x0);
    return r0;
}

-(void)setMaxAdContentRating:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)underAgeOfConsent {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_underAgeOfConsent)), 0x0);
    return r0;
}

-(void)setUnderAgeOfConsent:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)tagForChildDirectedTreatment {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_tagForChildDirectedTreatment)), 0x0);
    return r0;
}

-(void)setTagForChildDirectedTreatment:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_tagForChildDirectedTreatment, 0x0);
    objc_storeStrong((int64_t *)&self->_underAgeOfConsent, 0x0);
    objc_storeStrong((int64_t *)&self->_maxAdContentRating, 0x0);
    return;
}

@end