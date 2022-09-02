@implementation GADMultipleAdsAdLoaderOptions

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            r0->_numberOfAds = 0x1;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[&var_20 super] copyWithZone:arg2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_numberOfAds));
    *(r0 + r8) = *(self + r8);
    return r0;
}

-(void *)requestParameters {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r20 = [[NSNumber numberWithInteger:self->_numberOfAds] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_20 forKeys:&var_28 count:0x1];
    r19 = [r0 retain];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(long long)numberOfAds {
    r0 = self->_numberOfAds;
    return r0;
}

-(void)setNumberOfAds:(long long)arg2 {
    self->_numberOfAds = arg2;
    return;
}

@end