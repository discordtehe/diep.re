@implementation SSADemandSourcesCollection

+(void *)sharedInstance {
    if (*qword_1011dad80 != -0x1) {
            dispatch_once(0x1011dad80, 0x100e8e588);
    }
    r0 = *0x1011dad78;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = @class(ISMutableOrderedDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedVideoDemandSources));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(ISMutableOrderedDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialDemandSources));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(ISMutableOrderedDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_bannerDemandSources));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)demandSourcesForProductType:(unsigned long long)arg2 {
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r29 = &saved_fp;
    if (r2 == 0x4) goto loc_100740a54;

loc_100740a34:
    if (r2 == 0x1) goto loc_100740a68;

loc_100740a3c:
    if (r2 != 0x0) goto loc_100740a80;

loc_100740a40:
    r0 = [r0 rewardedVideoDemandSources];
    goto loc_100740a78;

loc_100740a78:
    r0 = [r0 retain];
    goto loc_100740a84;

loc_100740a84:
    r0 = [r0 autorelease];
    return r0;

loc_100740a80:
    r0 = 0x0;
    goto loc_100740a84;

loc_100740a68:
    r0 = [r0 interstitialDemandSources];
    goto loc_100740a78;

loc_100740a54:
    r0 = [r0 bannerDemandSources];
    goto loc_100740a78;
}

-(void *)demandSourceForProductType:(unsigned long long)arg2 demandSourceName:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg3 retain];
    r0 = [self demandSourcesForProductType:arg2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = 0x0;
    if (r19 != 0x0) {
            r21 = 0x0;
            if (r20 != 0x0) {
                    r21 = [[[r20 objectForKey:r2] retain] autorelease];
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)addDemandSourceWithProductType:(unsigned long long)arg2 withDemandSource:(void *)arg3 {
    [arg3 retain];
    r20 = [[self demandSourcesForProductType:arg2] retain];
    [[arg3 name] retain];
    [r20 setObject:r2 forKey:r3];
    [r23 release];
    [r21 release];
    [r20 release];
    return;
}

-(void *)interstitialDemandSources {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_interstitialDemandSources)), 0x1);
    return r0;
}

-(void *)rewardedVideoDemandSources {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_rewardedVideoDemandSources)), 0x1);
    return r0;
}

-(void)setRewardedVideoDemandSources:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setInterstitialDemandSources:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)bannerDemandSources {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_bannerDemandSources)), 0x1);
    return r0;
}

-(void)setBannerDemandSources:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_bannerDemandSources, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitialDemandSources, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardedVideoDemandSources, 0x0);
    return;
}

@end