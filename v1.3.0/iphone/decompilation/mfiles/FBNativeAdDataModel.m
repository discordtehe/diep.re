@implementation FBNativeAdDataModel

-(void *)initWithMetadata:(void *)arg2 {
    r0 = [self initWithMetadata:arg2 placementType:0x3];
    return r0;
}

-(bool)isValid {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self playableAdDataModel];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 playableURI];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 != 0x0) {
            r0 = [r19 playableAdDataModel];
            r0 = [r0 retain];
            r20 = [r0 isValid];
            [r0 release];
            r0 = r20;
    }
    else {
            if ([r19 placementType] == 0x4) {
                    r23 = 0x1;
            }
            else {
                    r0 = r19->_image;
                    r0 = [r0 url];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 absoluteString];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if ([r0 length] != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r23 = 0x1;
                            }
                    }
                    [r22 release];
                    [r21 release];
            }
            r20 = @selector(length);
            r0 = [r19 title];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (objc_msgSend(r0, r20) != 0x0) {
                    r20 = 0x1;
            }
            else {
                    r20 = @selector(length);
                    r0 = [r19 advertiserName];
                    r0 = [r0 retain];
                    r22 = r0;
                    if (objc_msgSend(r0, r20) != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r20 = 0x1;
                            }
                    }
                    [r22 release];
            }
            [r21 release];
            r0 = [[&var_40 super] isValid];
            if (r0 != 0x0) {
                    r0 = r23 & r20;
            }
    }
    return r0;
}

-(bool)isAppStoreIDPresent {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self commandURL];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [FBAdCommandProcessor isValidOpenAppStoreCommand:r19];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)processMultiProductAdMetadata:(void *)arg2 {
    r31 = r31 - 0x1a0;
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
    var_128 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r19 count];
            if (r0 != 0x0) {
                    r0 = [NSMutableArray arrayWithCapacity:r0];
                    r29 = r29;
                    var_168 = [r0 retain];
                    var_110 = q0;
                    var_188 = r19;
                    r0 = [r19 retain];
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_130 = r0;
                    var_180 = r1;
                    r0 = objc_msgSend(r0, r1);
                    if (r0 != 0x0) {
                            r24 = r0;
                            r21 = *var_110;
                            do {
                                    r19 = 0x0;
                                    do {
                                            if (*var_110 != r21) {
                                                    objc_enumerationMutation(var_130);
                                            }
                                            r26 = *(var_118 + r19 * 0x8);
                                            if ([r26 isKindOfClass:[NSDictionary class]] != 0x0) {
                                                    r26 = [r26 mutableCopy];
                                                    r0 = [var_128 inlineClientToken];
                                                    r29 = r29;
                                                    r22 = [r0 retain];
                                                    r25 = [FBAdUtility isStringEmpty:r2];
                                                    [r22 release];
                                                    if ((r25 & 0x1) == 0x0) {
                                                            r0 = [var_128 inlineClientToken];
                                                            r29 = r29;
                                                            r22 = [r0 retain];
                                                            [r26 setObject:r22 forKeyedSubscript:@"ct"];
                                                            [r22 release];
                                                    }
                                                    r0 = [r26 objectForKeyedSubscript:@"video_autoplay_enabled"];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    [r0 release];
                                                    if (r0 == 0x0) {
                                                            r0 = [var_128 videoAutoplayEnabled];
                                                            r29 = r29;
                                                            r22 = [r0 retain];
                                                            [r26 setObject:r22 forKeyedSubscript:@"video_autoplay_enabled"];
                                                            [r22 release];
                                                    }
                                                    [[FBNativeAdMultiProductDataModel alloc] initWithMetadata:r26];
                                                    [var_168 addObject:r2];
                                                    [r22 release];
                                                    [r26 release];
                                            }
                                            r19 = r19 + 0x1;
                                    } while (r19 < r24);
                                    r0 = objc_msgSend(var_130, var_180);
                                    r24 = r0;
                            } while (r0 != 0x0);
                    }
                    [var_130 release];
                    r19 = var_188;
            }
            else {
                    var_168 = [**___NSArray0__ retain];
            }
    }
    else {
            var_168 = [**___NSArray0__ retain];
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [var_168 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)cacheKeysForCreatives {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r19 = [NSMutableArray new];
    r20 = [sub_100a31910() retain];
    [r19 addObjectsFromArray:r20];
    [r20 release];
    var_190 = q0;
    var_1E8 = self;
    r0 = [self multiProductAdContent];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r24 = r0;
            r27 = *var_190;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_190 != r27) {
                                    objc_enumerationMutation(r23);
                            }
                            r0 = *(var_198 + r21 * 0x8);
                            r0 = [r0 cacheKeysForCreatives];
                            r29 = r29;
                            r26 = [r0 retain];
                            [r19 addObjectsFromArray:r26];
                            [r26 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r24);
                    r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r24 = r0;
            } while (r0 != 0x0);
    }
    [r23 release];
    r21 = var_1E8;
    r0 = [r21 playableAdDataModel];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 playableURI];
    r29 = r29;
    r22 = [r0 retain];
    [r23 release];
    if (r22 != 0x0) {
            r0 = [NSURL URLWithString:r2];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    r0 = [r23 absoluteString];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    if (r0 != 0x0) {
                            [r19 addObject:r2];
                    }
                    [r24 release];
            }
            [r23 release];
    }
    r20 = @selector(countByEnumeratingWithState:objects:count:);
    var_1F0 = r22;
    var_1D0 = q0;
    r0 = [r21 screenshots];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r0 = objc_msgSend(r0, r20);
    if (r0 != 0x0) {
            r23 = r0;
            r28 = *var_1D0;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_1D0 != r28) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = *(var_1D8 + r27 * 0x8);
                            r0 = [r0 absoluteString];
                            r29 = r29;
                            r0 = [r0 retain];
                            r26 = r0;
                            if (r0 != 0x0) {
                                    [r19 addObject:r2];
                            }
                            [r26 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    [var_1F0 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)metadata {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_metadata)), 0x0);
    return r0;
}

-(long long)type {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_cachedType));
    r0 = *(self + r23);
    if (r0 == 0x0) {
            r0 = [r19 videoURL];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = 0x2;
            }
            else {
                    if ([r19 placementType] != 0x4) {
                            r0 = [r19 multiProductAdContent];
                            r29 = r29;
                            r0 = [r0 retain];
                            if (r0 != 0x0) {
                                    r20 = r0;
                                    r0 = [r19 multiProductAdContent];
                                    r0 = [r0 retain];
                                    r22 = [r0 count];
                                    [r0 release];
                                    r0 = [r20 release];
                                    if (r22 != 0x0) {
                                            asm { csinc      x0, x8, xzr, ne };
                                    }
                            }
                            else {
                                    r0 = 0x1;
                            }
                    }
                    else {
                            r0 = 0x1;
                    }
            }
            *(r19 + r23) = r0;
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adCreativeType, 0x0);
    objc_storeStrong((int64_t *)&self->_playableAdDataModel, 0x0);
    objc_storeStrong((int64_t *)&self->_multiProductAdContent, 0x0);
    objc_storeStrong((int64_t *)&self->_adViewAttributes, 0x0);
    objc_storeStrong((int64_t *)&self->_videoAutoplayEnabled, 0x0);
    objc_storeStrong((int64_t *)&self->_videoURL, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesText, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesLinkURL, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesIcon, 0x0);
    objc_storeStrong((int64_t *)&self->_commandURL, 0x0);
    objc_storeStrong((int64_t *)&self->_body, 0x0);
    objc_storeStrong((int64_t *)&self->_imageURL, 0x0);
    objc_storeStrong((int64_t *)&self->_image, 0x0);
    objc_storeStrong((int64_t *)&self->_iconURL, 0x0);
    objc_storeStrong((int64_t *)&self->_icon, 0x0);
    objc_storeStrong((int64_t *)&self->_callToAction, 0x0);
    objc_storeStrong((int64_t *)&self->_socialContext, 0x0);
    objc_storeStrong((int64_t *)&self->_subtitle, 0x0);
    objc_storeStrong((int64_t *)&self->_title, 0x0);
    objc_storeStrong((int64_t *)&self->_category, 0x0);
    objc_storeStrong((int64_t *)&self->_starRatingCount, 0x0);
    objc_storeStrong((int64_t *)&self->_starRatingValue, 0x0);
    objc_storeStrong((int64_t *)&self->_screenshots, 0x0);
    objc_storeStrong((int64_t *)&self->_portraitCallToActionTextColor, 0x0);
    objc_storeStrong((int64_t *)&self->_portraitCallToActionColor, 0x0);
    objc_storeStrong((int64_t *)&self->_portraitBackgroundColor, 0x0);
    objc_storeStrong((int64_t *)&self->_landscapeCallToActionTextColor, 0x0);
    objc_storeStrong((int64_t *)&self->_landscapeCallToActionColor, 0x0);
    objc_storeStrong((int64_t *)&self->_landscapeBackgroundColor, 0x0);
    objc_storeStrong((int64_t *)&self->_localizedRewardInText, 0x0);
    objc_storeStrong((int64_t *)&self->_localizedSkipText, 0x0);
    objc_storeStrong((int64_t *)&self->_localizedSponsoredText, 0x0);
    objc_storeStrong((int64_t *)&self->_localizedCancelText, 0x0);
    objc_storeStrong((int64_t *)&self->_localizedDelayClickText, 0x0);
    objc_storeStrong((int64_t *)&self->_promotedTranslation, 0x0);
    objc_storeStrong((int64_t *)&self->_adTranslation, 0x0);
    objc_storeStrong((int64_t *)&self->_sponsoredTranslation, 0x0);
    objc_storeStrong((int64_t *)&self->_advertiserName, 0x0);
    objc_storeStrong((int64_t *)&self->_linkDescription, 0x0);
    objc_storeStrong((int64_t *)&self->_headline, 0x0);
    objc_storeStrong((int64_t *)&self->_destinationURL, 0x0);
    objc_storeStrong((int64_t *)&self->_metadata, 0x0);
    return;
}

-(long long)placementType {
    r0 = self->_placementType;
    return r0;
}

-(void)setPlacementType:(long long)arg2 {
    self->_placementType = arg2;
    return;
}

-(void *)destinationURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_destinationURL)), 0x0);
    return r0;
}

-(void *)headline {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_headline)), 0x0);
    return r0;
}

-(void *)linkDescription {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_linkDescription)), 0x0);
    return r0;
}

-(void *)advertiserName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_advertiserName)), 0x0);
    return r0;
}

-(void *)sponsoredTranslation {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sponsoredTranslation)), 0x0);
    return r0;
}

-(void *)adTranslation {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adTranslation)), 0x0);
    return r0;
}

-(void *)promotedTranslation {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_promotedTranslation)), 0x0);
    return r0;
}

-(void *)localizedDelayClickText {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_localizedDelayClickText)), 0x0);
    return r0;
}

-(void *)localizedCancelText {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_localizedCancelText)), 0x0);
    return r0;
}

-(void *)localizedSponsoredText {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_localizedSponsoredText)), 0x0);
    return r0;
}

-(void *)localizedSkipText {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_localizedSkipText)), 0x0);
    return r0;
}

-(void *)localizedRewardInText {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_localizedRewardInText)), 0x0);
    return r0;
}

-(void *)landscapeBackgroundColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_landscapeBackgroundColor)), 0x0);
    return r0;
}

-(void *)landscapeCallToActionColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_landscapeCallToActionColor)), 0x0);
    return r0;
}

-(void *)landscapeCallToActionTextColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_landscapeCallToActionTextColor)), 0x0);
    return r0;
}

-(void *)portraitBackgroundColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_portraitBackgroundColor)), 0x0);
    return r0;
}

-(void *)portraitCallToActionColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_portraitCallToActionColor)), 0x0);
    return r0;
}

-(void *)portraitCallToActionTextColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_portraitCallToActionTextColor)), 0x0);
    return r0;
}

-(void *)screenshots {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_screenshots)), 0x0);
    return r0;
}

-(void *)starRatingValue {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_starRatingValue)), 0x0);
    return r0;
}

-(void *)starRatingCount {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_starRatingCount)), 0x0);
    return r0;
}

-(void *)category {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_category)), 0x0);
    return r0;
}

-(bool)showEndCard {
    r0 = *(int8_t *)(int64_t *)&self->_showEndCard;
    return r0;
}

-(void *)title {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_title)), 0x0);
    return r0;
}

-(void *)subtitle {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_subtitle)), 0x0);
    return r0;
}

-(void *)socialContext {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_socialContext)), 0x0);
    return r0;
}

-(void *)callToAction {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_callToAction)), 0x0);
    return r0;
}

-(void *)icon {
    r0 = self->_icon;
    return r0;
}

-(void *)iconURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_iconURL)), 0x0);
    return r0;
}

-(void *)image {
    r0 = self->_image;
    return r0;
}

-(void *)body {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_body)), 0x0);
    return r0;
}

-(void *)imageURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_imageURL)), 0x0);
    return r0;
}

-(void *)initWithMetadata:(void *)arg2 placementType:(long long)arg3 {
    r31 = r31 - 0x1a0;
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
    r21 = arg3;
    r28 = [arg2 retain];
    r0 = [[&var_F0 super] initWithMetadata:r28];
    r24 = r0;
    if (r0 == 0x0) goto loc_100b10108;

loc_100b0ec6c:
    r24->_placementType = r21;
    r0 = [r28 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_metadata));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r0 = [r28 stringForKeyOrNil:@"ad_creative_type"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adCreativeType));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r0 = [r28 stringForKeyOrNil:@"destination_url"];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [NSURL URLWithString:r2];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_destinationURL));
            r8 = *(r24 + r9);
            *(r24 + r9) = r0;
            [r8 release];
    }
    var_180 = r20;
    r0 = [r28 stringForKeyOrNil:@"title"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_title));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r0 = [r28 stringForKeyOrNil:@"subtitle"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_subtitle));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r0 = [r28 stringForKeyOrNil:@"headline"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_headline));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r0 = [r28 stringForKeyOrNil:@"link_description"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_linkDescription));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r0 = [r28 stringForKeyOrNil:@"advertiser_name"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_advertiserName));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r0 = [r28 stringForKeyOrNil:@"sponsored_translation"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_sponsoredTranslation));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r0 = [r28 stringForKeyOrNil:@"ad_translation"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adTranslation));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r0 = [r28 stringForKeyOrNil:@"promoted_translation"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_promotedTranslation));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r0 = [r28 stringForKeyOrNil:@"social_context"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_socialContext));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r0 = [r28 stringForKeyOrNil:@"call_to_action"];
    r29 = r29;
    r0 = [r0 retain];
    r23 = (int64_t *)&r24->_callToAction;
    r8 = *r23;
    *r23 = r0;
    [r8 release];
    r20 = @selector(isStringEmpty:);
    if ((objc_msgSend(@class(FBAdUtility), r20) & 0x1) != 0x0) {
            r1 = 0x0;
    }
    else {
            r1 = *r23;
    }
    r27 = @selector(stringForKeyOrNil:);
    objc_storeStrong(r23, r1);
    r0 = objc_msgSend(r28, r27);
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_body));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r22 = @selector(dictionaryForKeyOrNil:);
    r0 = objc_msgSend(r28, r22);
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    var_170 = r27;
    var_168 = r28;
    var_158 = r24;
    var_178 = r22;
    if (r0 != 0x0) {
            r0 = [r26 stringForKeyOrNil:@"url"];
            r29 = r29;
            r0 = [r0 retain];
            r27 = r0;
            if (r0 != 0x0) {
                    r0 = [NSURL URLWithString:r2];
                    r0 = [r0 retain];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_iconURL));
                    r22 = *(r24 + r8);
                    *(r24 + r8) = r0;
                    var_160 = [r0 retain];
                    [r22 release];
                    [FBAdImage alloc];
                    r0 = [r26 numberForKeyOrNil:r2];
                    r0 = [r0 retain];
                    [r0 intValue];
                    asm { sxtw       x21, w0 };
                    r0 = objc_msgSend(r26, r28);
                    r29 = r29;
                    r0 = [r0 retain];
                    objc_msgSend(r0, r25);
                    asm { sxtw       x4, w0 };
                    r0 = r22;
                    r22 = var_178;
                    r0 = [r0 initWithURL:var_160 width:r21 height:r4];
                    r21 = r20;
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_icon));
                    r8 = *(var_158 + r20);
                    *(var_158 + r20) = r0;
                    [r8 release];
                    r0 = r28;
                    r28 = var_168;
                    [r0 release];
                    r0 = r24;
                    r24 = var_158;
                    [r0 release];
                    r0 = *(r24 + r20);
                    r20 = r21;
                    [r0 setType:0x2];
                    [var_160 release];
            }
            [r27 release];
            r27 = var_170;
    }
    [r26 release];
    r0 = objc_msgSend(r28, r22);
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (r0 != 0x0) {
            r0 = objc_msgSend(r26, r27);
            r29 = r29;
            r0 = [r0 retain];
            r27 = r0;
            if (r0 != 0x0) {
                    r0 = [NSURL URLWithString:r2];
                    r0 = [r0 retain];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_imageURL));
                    r22 = *(r24 + r8);
                    *(r24 + r8) = r0;
                    var_160 = [r0 retain];
                    [r22 release];
                    [FBAdImage alloc];
                    r0 = [r26 numberForKeyOrNil:r2];
                    r0 = [r0 retain];
                    [r0 intValue];
                    asm { sxtw       x21, w0 };
                    r0 = objc_msgSend(r26, r24);
                    r29 = r29;
                    r0 = [r0 retain];
                    r1 = r28;
                    r28 = var_168;
                    objc_msgSend(r0, r1);
                    asm { sxtw       x4, w0 };
                    r0 = [r22 initWithURL:var_160 width:r21 height:r4];
                    r21 = r20;
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_image));
                    r8 = *(var_158 + r20);
                    *(var_158 + r20) = r0;
                    [r8 release];
                    r0 = r24;
                    r24 = var_158;
                    [r0 release];
                    [r25 release];
                    r0 = *(r24 + r20);
                    r20 = r21;
                    [r0 setType:0x1];
                    [var_160 release];
            }
            [r27 release];
            r27 = var_170;
    }
    [r26 release];
    r0 = objc_msgSend(r28, r27);
    r29 = r29;
    r21 = [r0 retain];
    if (objc_msgSend(@class(FBAdUtility), r20) != 0x0) {
            r20 = (int64_t *)&r24->_commandURL;
    }
    else {
            r0 = [NSURL URLWithString:r2];
            r29 = r29;
            r0 = [r0 retain];
            r20 = (int64_t *)&r24->_commandURL;
            r8 = *r20;
            *r20 = r0;
            [r8 release];
    }
    if (*r20 == 0x0) {
            r0 = *r23;
            *r23 = 0x0;
            [r0 release];
    }
    [r21 release];
    r0 = [r28 numberForKeyOrNil:@"manual_imp"];
    r0 = [r0 retain];
    *(int8_t *)(int64_t *)&r24->_manualImpressionEnabled = [r0 boolValue];
    [r0 release];
    r0 = [r28 numberForKeyOrNil:@"enable_view_log"];
    r0 = [r0 retain];
    *(int8_t *)(int64_t *)&r24->_viewJSONLoggingEnabled = [r0 boolValue];
    [r0 release];
    r0 = [r28 numberForKeyOrNil:@"enable_snapshot_log"];
    r0 = [r0 retain];
    *(int8_t *)(int64_t *)&r24->_viewSnapshotLoggingEnabled = [r0 boolValue];
    [r0 release];
    [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithInt:r2] retain];
    r0 = [r28 numberForKey:r2 orDefault:r3];
    r0 = [r0 retain];
    r8 = 0x101137000;
    r25 = *(r8 + 0x2e0);
    objc_msgSend(r0, r25);
    asm { sxtw       x8, w0 };
    r24->_snapshotDelayPostInSecond = r8;
    [r22 release];
    [r21 release];
    r22 = [objc_msgSend(*(r20 + 0xfc0), r26) retain];
    var_190 = r23;
    r0 = objc_msgSend(r28, r23);
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    r21 = objc_msgSend(r0, r25);
    [r23 release];
    [r22 release];
    if (r21 <= 0x64) {
            asm { scvtf      d0, w21 };
            asm { fdiv       d0, d0, d1 };
    }
    r26 = @selector(numberWithInt:);
    r24->_snapshotCompressionQuality = 0x0;
    r22 = var_178;
    r0 = objc_msgSend(r28, r22);
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = objc_msgSend(r21, r27);
            r0 = [r0 retain];
            [[NSURL URLWithString:r0] retain];
            [FBAdImage alloc];
            r0 = [r21 numberForKeyOrNil:r2];
            r0 = [r0 retain];
            r23 = r0;
            objc_msgSend(r0, r25);
            asm { sxtw       x24, w0 };
            r0 = objc_msgSend(r21, r28);
            r29 = r29;
            r0 = [r0 retain];
            objc_msgSend(r0, r25);
            asm { sxtw       x4, w0 };
            r0 = r22;
            r22 = var_178;
            r3 = r24;
            r24 = var_158;
            r0 = [r0 initWithURL:r27 width:r3 height:r4];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adChoicesIcon));
            r8 = *(r24 + r9);
            *(r24 + r9) = r0;
            [r8 release];
            r0 = r28;
            r28 = var_168;
            [r0 release];
            [r23 release];
            r0 = r27;
            r27 = var_170;
            [r0 release];
            r0 = r26;
            r26 = r20;
            [r0 release];
    }
    [r21 release];
    r0 = objc_msgSend(r28, r22);
    r0 = [r0 retain];
    r25 = r0;
    r1 = r27;
    r0 = objc_msgSend(r0, r1);
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r1 = r0;
            }
            else {
                    r1 = @"Cancel";
            }
    }
    objc_storeStrong((int64_t *)&r24->_localizedCancelText, r1);
    [r21 release];
    r1 = r27;
    r0 = objc_msgSend(r25, r1);
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r1 = r0;
            }
            else {
                    r1 = @"Sponsored";
            }
    }
    objc_storeStrong((int64_t *)&r24->_localizedSponsoredText, r1);
    [r21 release];
    r1 = r27;
    r0 = objc_msgSend(r25, r1);
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r1 = r0;
            }
            else {
                    r1 = @"Skip";
            }
    }
    objc_storeStrong((int64_t *)&r24->_localizedSkipText, r1);
    [r21 release];
    r1 = r27;
    r0 = objc_msgSend(r25, r1);
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r1 = r0;
            }
            else {
                    r1 = @"Reward in [secs]s";
            }
    }
    objc_storeStrong((int64_t *)&r24->_localizedRewardInText, r1);
    [r21 release];
    r1 = r27;
    r0 = objc_msgSend(r25, r1);
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r1 = r0;
            }
            else {
                    r1 = @"App Store will automatically open in [secs]s";
            }
    }
    objc_storeStrong((int64_t *)&r24->_localizedDelayClickText, r1);
    [r21 release];
    [r25 release];
    r0 = objc_msgSend(r28, r27);
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [NSURL URLWithString:r2];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adChoicesLinkURL));
            r8 = *(r24 + r9);
            *(r24 + r9) = r0;
            [r8 release];
    }
    [r21 release];
    r0 = [r28 stringForKey:@"ad_choices_text" orDefault:@"AdChoices"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adChoicesText));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r0 = objc_msgSend(r28, r22);
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0 && [r21 count] != 0x0) {
            r0 = [FBNativeAdViewAttributes alloc];
            r0 = [r0 initWithDictionary:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adViewAttributes));
            r8 = *(r24 + r9);
            *(r24 + r9) = r0;
            [r8 release];
    }
    [r21 release];
    *(int8_t *)(int64_t *)&r24->_fullyClickable = [r28 boolForKey:@"fully_clickable" orDefault:0x0];
    r0 = objc_msgSend(r28, r27);
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [FBSDKTypeUtility URLValue:r21];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoURL));
            r8 = *(r24 + r9);
            *(r24 + r9) = r0;
            [r8 release];
    }
    [r21 release];
    r0 = [r28 numberForKeyOrNil:r2];
    r29 = r29;
    r0 = [r0 retain];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_videoAutoplayEnabled));
    r8 = *(r24 + r20);
    *(r24 + r20) = r0;
    [r8 release];
    r0 = *(r24 + r20);
    if (r0 != 0x0) {
            r3 = [r0 boolValue];
    }
    else {
            r3 = 0x0;
    }
    *(int8_t *)(int64_t *)&r24->_audioMuted = [r28 boolForKey:@"is_video_audio_muted" orDefault:r3];
    *(int8_t *)(int64_t *)&r24->_watchAndInstallEligible = [r28 boolForKey:@"is_watch_and_install_eligible" orDefault:0x0];
    *(int8_t *)(int64_t *)&r24->_isWatchAndBrowseEligible = [r28 boolForKey:@"is_watch_and_browse" orDefault:0x0];
    *(int8_t *)(int64_t *)&r24->_videoHasAudio = [r28 boolForKey:@"video_has_audio" orDefault:0x1];
    r21 = [[r28 numberForKeyOrNil:r2] retain];
    r22 = [objc_msgSend(@class(NSNumber), r26) retain];
    r0 = objc_msgSend(r28, var_190);
    r29 = r29;
    r0 = [r0 retain];
    r20 = r24;
    r24 = r0;
    r0 = [r22 release];
    r20 = (int64_t *)&r20->_forcedViewTime;
    if (r21 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r21;
            }
            else {
                    r0 = r24;
            }
    }
    [r0 doubleValue];
    asm { fcvtzs     x23, d0 };
    if (*qword_1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(r23, 0x3e8);
    q0 = var_108;
    *(r20 + 0x10) = var_F8;
    *(int128_t *)r20 = q0;
    [r24 release];
    [r21 release];
    r0 = [FBAdUtility interfaceOrientationFromServerOrientation:[r28 integerForKey:@"orientation" orDefault:0x3]];
    r20 = var_158;
    r20->_orientation = r0;
    r0 = [FBPlayableAdDataModel alloc];
    r0 = [r0 initWithData:r28];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_playableAdDataModel));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r22 = [[r28 arrayForKeyOrNil:@"carousel"] retain];
    r0 = [r20 processMultiProductAdMetadata:r22];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_multiProductAdContent));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [r22 release];
    r0 = [r28 arrayForKeyOrNil:@"end_card_images"];
    r29 = r29;
    r21 = [r0 retain];
    r27 = [NSMutableArray new];
    if (r21 != 0x0) {
            var_140 = q0;
            var_190 = r21;
            r0 = [r21 retain];
            r21 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r24 = r0;
                    r26 = *var_140;
                    do {
                            r20 = 0x0;
                            do {
                                    if (*var_140 != r26) {
                                            objc_enumerationMutation(r21);
                                    }
                                    r0 = [NSURL URLWithString:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r22 = r0;
                                    if (r0 != 0x0) {
                                            [r27 addObject:r2];
                                    }
                                    [r22 release];
                                    r20 = r20 + 0x1;
                            } while (r20 < r24);
                            r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r24 = r0;
                    } while (r0 != 0x0);
            }
            [r21 release];
            r20 = var_158;
            objc_storeStrong((int64_t *)&r20->_screenshots, r27);
            r28 = var_168;
            r21 = var_190;
    }
    [r27 release];
    [r21 release];
    r0 = [r28 numberForKeyOrNil:r2];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_starRatingValue));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r0 = [r28 numberForKeyOrNil:r2];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_starRatingCount));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r0 = objc_msgSend(r28, var_170);
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_category));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r21 = **___NSDictionary0__;
    r0 = [r28 dictionaryForKey:@"end_card_layout" orDefault:r21];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 dictionaryForKey:@"landscape" orDefault:r21];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 stringForKey:r2 orDefault:r3];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_landscapeBackgroundColor));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r0 = [r23 stringForKey:r2 orDefault:r3];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_landscapeCallToActionColor));
    r8 = *(var_158 + r9);
    *(var_158 + r9) = r0;
    [r8 release];
    r0 = [r23 stringForKey:r2 orDefault:r3];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_landscapeCallToActionTextColor));
    r8 = *(var_158 + r9);
    *(var_158 + r9) = r0;
    [r8 release];
    r0 = [r22 dictionaryForKey:@"portrait" orDefault:r21];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 stringForKey:r2 orDefault:r3];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_portraitBackgroundColor));
    r8 = *(var_158 + r9);
    *(var_158 + r9) = r0;
    [r8 release];
    r24 = var_158;
    r0 = [r21 stringForKey:r2 orDefault:r3];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_portraitCallToActionColor));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r28 = var_168;
    r0 = [r21 stringForKey:r2 orDefault:r3];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_portraitCallToActionTextColor));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    [r21 release];
    [r23 release];
    [r22 release];
    *(int8_t *)(int64_t *)&r24->_showEndCard = [r28 boolForKey:r2 orDefault:r3];
    *(int8_t *)(int64_t *)&r24->_showIntroCardTransition = [r28 boolForKey:r2 orDefault:r3];
    *(int8_t *)(int64_t *)&r24->_showExitTransition = [r28 boolForKey:r2 orDefault:r3];
    [var_180 release];
    goto loc_100b10108;

loc_100b10108:
    var_60 = **___stack_chk_guard;
    [r28 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r24;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)commandURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_commandURL)), 0x0);
    return r0;
}

-(bool)manualImpressionEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_manualImpressionEnabled;
    return r0;
}

-(bool)viewJSONLoggingEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_viewJSONLoggingEnabled;
    return r0;
}

-(bool)viewSnapshotLoggingEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_viewSnapshotLoggingEnabled;
    return r0;
}

-(long long)snapshotDelayPostInSecond {
    r0 = self->_snapshotDelayPostInSecond;
    return r0;
}

-(double)snapshotCompressionQuality {
    r0 = self;
    return r0;
}

-(void *)adChoicesIcon {
    r0 = self->_adChoicesIcon;
    return r0;
}

-(void *)adChoicesLinkURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adChoicesLinkURL)), 0x0);
    return r0;
}

-(void *)adChoicesText {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adChoicesText)), 0x0);
    return r0;
}

-(bool)fullyClickable {
    r0 = *(int8_t *)(int64_t *)&self->_fullyClickable;
    return r0;
}

-(void *)videoURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_videoURL)), 0x0);
    return r0;
}

-(void *)videoAutoplayEnabled {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_videoAutoplayEnabled)), 0x0);
    return r0;
}

-(bool)audioMuted {
    r0 = *(int8_t *)(int64_t *)&self->_audioMuted;
    return r0;
}

-(union ?)forcedViewTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_forcedViewTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(long long)orientation {
    r0 = self->_orientation;
    return r0;
}

-(void *)adViewAttributes {
    r0 = self->_adViewAttributes;
    return r0;
}

-(void *)multiProductAdContent {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_multiProductAdContent)), 0x0);
    return r0;
}

-(bool)videoHasAudio {
    r0 = *(int8_t *)(int64_t *)&self->_videoHasAudio;
    return r0;
}

-(void *)playableAdDataModel {
    r0 = self->_playableAdDataModel;
    return r0;
}

-(bool)isWatchAndInstallEligible {
    r0 = *(int8_t *)(int64_t *)&self->_watchAndInstallEligible;
    return r0;
}

-(bool)isWatchAndBrowseEligible {
    r0 = *(int8_t *)(int64_t *)&self->_isWatchAndBrowseEligible;
    return r0;
}

-(void *)adCreativeType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adCreativeType)), 0x0);
    return r0;
}

-(bool)showIntroCardTransition {
    r0 = *(int8_t *)(int64_t *)&self->_showIntroCardTransition;
    return r0;
}

-(bool)showExitTransition {
    r0 = *(int8_t *)(int64_t *)&self->_showExitTransition;
    return r0;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBNativeAdDataModel");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end