@implementation TROffer

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setIsSurveyWallAvailable:0x0];
            [r19 setOfferReason:0xffffffffffffffff];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithTROfferDictionary:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r22 = [[r19 notNullObjectForKey:@"offer_url"] retain];
            [r20 setOfferURL:r22];
            [r22 release];
            r0 = [r19 notNullObjectForKey:@"abandon_url"];
            r0 = [r0 retain];
            r23 = [[r0 stringByReplacingPercentEscapesUsingEncoding:0x4] retain];
            [r20 setAbandonURL:r23];
            [r23 release];
            [r0 release];
            r22 = [[r19 notNullObjectForKey:@"reason_comment"] retain];
            [r20 setReasonComment:r22];
            [r22 release];
            r22 = [[r19 notNullObjectForKey:@"identifier"] retain];
            [r20 setOfferIdentifier:r22];
            [r22 release];
            r0 = [r19 notNullObjectForKey:@"offer_reason"];
            r0 = [r0 retain];
            [r20 setOfferReason:[r0 integerValue]];
            [r0 release];
            r0 = [r19 notNullObjectForKey:@"has_offer"];
            r0 = [r0 retain];
            [r20 setIsSurveyWallAvailable:[r0 boolValue]];
            [r0 release];
            r0 = [r19 notNullObjectForKey:@"has_hot_survey"];
            r0 = [r0 retain];
            [r20 setHasHotSurvey:[r0 boolValue]];
            [r0 release];
            r0 = [r19 notNullObjectForKey:@"min_loi"];
            r0 = [r0 retain];
            [r20 setMinSurveyLength:[r0 integerValue]];
            [r0 release];
            r0 = [r19 notNullObjectForKey:@"max_loi"];
            r0 = [r0 retain];
            [r20 setMaxSurveyLength:[r0 integerValue]];
            [r0 release];
            r0 = [r19 notNullObjectForKey:@"message_hash"];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 notNullObjectForKey:@"max_payout_in_currency"];
            r0 = [r0 retain];
            [r20 setMaxPayoutInCurrency:[r0 integerValue]];
            [r0 release];
            r0 = [r23 notNullObjectForKey:@"min_payout_in_currency"];
            r0 = [r0 retain];
            [r20 setMinPayoutInCurrency:[r0 integerValue]];
            [r0 release];
            r21 = [[r23 notNullObjectForKey:@"currency_name"] retain];
            [r20 setCurrencyName:r21];
            [r21 release];
            [r23 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)offerURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_offerURL)), 0x0);
    return r0;
}

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
    if (r20 != 0x0) {
            r22 = [[r19 decodeObjectForKey:@"TR Offer URL"] retain];
            [r20 setOfferURL:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"TR Offer Abandon URL"] retain];
            [r20 setAbandonURL:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"TR Offer Reason Comment"] retain];
            [r20 setReasonComment:r22];
            [r22 release];
            r21 = [[r19 decodeObjectForKey:@"TR Offer Identifier"] retain];
            [r20 setOfferIdentifier:r21];
            [r21 release];
            [r20 setOfferReason:[r19 decodeIntegerForKey:@"TR Offer Reason"]];
            [r20 setIsSurveyWallAvailable:[r19 decodeBoolForKey:@"TR Offer Has Offer"]];
            [r20 setHasHotSurvey:[r19 decodeBoolForKey:@"TR Has Hot Survey"]];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    r23 = [[self offerURL] retain];
    [arg2 encodeObject:r23 forKey:@"TR Offer URL"];
    [r23 release];
    r23 = [[self abandonURL] retain];
    [arg2 encodeObject:r23 forKey:@"TR Offer Abandon URL"];
    [r23 release];
    r23 = [[self reasonComment] retain];
    [arg2 encodeObject:r23 forKey:@"TR Offer Reason Comment"];
    [r23 release];
    r23 = [[self offerIdentifier] retain];
    [arg2 encodeObject:r23 forKey:@"TR Offer Identifier"];
    [r23 release];
    [arg2 encodeInteger:[self offerReason] forKey:@"TR Offer Reason"];
    [arg2 encodeBool:[self isSurveyWallAvailable] forKey:@"TR Offer Has Offer"];
    [arg2 encodeBool:[self hasHotSurvey] forKey:@"TR Has Hot Survey"];
    [r20 release];
    return;
}

-(void)setOfferURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setAbandonURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)abandonURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_abandonURL)), 0x0);
    return r0;
}

-(void *)reasonComment {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_reasonComment)), 0x0);
    return r0;
}

-(void)setReasonComment:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setOfferIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)offerIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_offerIdentifier)), 0x0);
    return r0;
}

-(void *)currencyName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_currencyName)), 0x0);
    return r0;
}

-(bool)isSurveyWallAvailable {
    r0 = *(int8_t *)(int64_t *)&self->_isSurveyWallAvailable;
    return r0;
}

-(void)setCurrencyName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setIsSurveyWallAvailable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isSurveyWallAvailable = arg2;
    return;
}

-(bool)hasHotSurvey {
    r0 = *(int8_t *)(int64_t *)&self->_hasHotSurvey;
    return r0;
}

-(void)setHasHotSurvey:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasHotSurvey = arg2;
    return;
}

-(long long)offerReason {
    r0 = self->_offerReason;
    return r0;
}

-(void)setOfferReason:(long long)arg2 {
    self->_offerReason = arg2;
    return;
}

-(long long)minSurveyLength {
    r0 = self->_minSurveyLength;
    return r0;
}

-(void)setMinSurveyLength:(long long)arg2 {
    self->_minSurveyLength = arg2;
    return;
}

-(long long)maxSurveyLength {
    r0 = self->_maxSurveyLength;
    return r0;
}

-(void)setMaxSurveyLength:(long long)arg2 {
    self->_maxSurveyLength = arg2;
    return;
}

-(long long)maxPayoutInCurrency {
    r0 = self->_maxPayoutInCurrency;
    return r0;
}

-(void)setMaxPayoutInCurrency:(long long)arg2 {
    self->_maxPayoutInCurrency = arg2;
    return;
}

-(long long)minPayoutInCurrency {
    r0 = self->_minPayoutInCurrency;
    return r0;
}

-(void)setMinPayoutInCurrency:(long long)arg2 {
    self->_minPayoutInCurrency = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_currencyName, 0x0);
    objc_storeStrong((int64_t *)&self->_offerIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_reasonComment, 0x0);
    objc_storeStrong((int64_t *)&self->_abandonURL, 0x0);
    objc_storeStrong((int64_t *)&self->_offerURL, 0x0);
    return;
}

@end