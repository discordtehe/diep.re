@implementation GADDynamicHeightSearchRequest

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_requestParameters));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)setQuery:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_query));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"query"];
    return;
}

-(void)setAdPage:(long long)arg2 {
    self->_adPage = arg2;
    r20 = [[NSNumber numberWithInteger:r2] retain];
    [self parameterHelperSetValue:r20 forKey:@"adPage"];
    [r20 release];
    return;
}

-(void)setAdTestEnabled:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int8_t *)(int64_t *)&r19->_adTestEnabled = arg2;
    r20 = @"on";
    [r20 retain];
    if ((arg2 & 0x1) == 0x0) {
            r20 = @"off";
            [r20 retain];
            [@"on" release];
    }
    [r19 parameterHelperSetValue:r20 forKey:@"adTest"];
    [r20 release];
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r20 = [[[self class] alloc] init];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_query));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adPage));
    *(r20 + r8) = *(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adTestEnabled));
    *(int8_t *)(r20 + r8) = *(int8_t *)(self + r8);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_channel));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_hostLanguage));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_locationExtensionTextColor));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_locationExtensionFontSize));
    *(r20 + r8) = *(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_clickToCallExtensionEnabled));
    *(int8_t *)(r20 + r8) = *(int8_t *)(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_locationExtensionEnabled));
    *(int8_t *)(r20 + r8) = *(int8_t *)(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_plusOnesExtensionEnabled));
    *(int8_t *)(r20 + r8) = *(int8_t *)(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_sellerRatingsExtensionEnabled));
    *(int8_t *)(r20 + r8) = *(int8_t *)(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_siteLinksExtensionEnabled));
    *(int8_t *)(r20 + r8) = *(int8_t *)(self + r8);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_CSSWidth));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_numberOfAds));
    *(r20 + r8) = *(self + r8);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_fontFamily));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_annotationFontSize));
    *(r20 + r8) = *(self + r8);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_attributionFontFamily));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_descriptionFontSize));
    *(r20 + r8) = *(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_domainLinkFontSize));
    *(r20 + r8) = *(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_titleFontSize));
    *(r20 + r8) = *(self + r8);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adBorderColor));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adSeparatorColor));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_annotationTextColor));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundColor));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_borderColor));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_domainLinkColor));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_textColor));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_titleLinkColor));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adBorderCSSSelections));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adjustableLineHeight));
    *(r20 + r8) = *(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_attributionBottomSpacing));
    *(r20 + r8) = *(self + r8);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_borderCSSSelections));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_titleUnderlineHidden));
    *(int8_t *)(r20 + r8) = *(int8_t *)(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_boldTitleEnabled));
    *(int8_t *)(r20 + r8) = *(int8_t *)(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_verticalSpacing));
    *(r20 + r8) = *(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_detailedAttributionExtensionEnabled));
    *(int8_t *)(r20 + r8) = *(int8_t *)(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_longerHeadlinesExtensionEnabled));
    *(int8_t *)(r20 + r8) = *(int8_t *)(self + r8);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_requestParameters));
    r0 = *(self + r21);
    r0 = [r0 mutableCopy];
    r8 = *(r20 + r21);
    *(r20 + r21) = r0;
    [r8 release];
    r0 = r20;
    return r0;
}

-(void)setChannel:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_channel));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"channel"];
    return;
}

-(void)setHostLanguage:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_hostLanguage));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"hl"];
    return;
}

-(void)setLocationExtensionTextColor:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [arg2 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_locationExtensionTextColor));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [self parameterHelperSetValue:arg2 forKey:@"colorLocation"];
    [r22 release];
    return;
}

-(void)setClickToCallExtensionEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_clickToCallExtensionEnabled = arg2;
    r20 = [[NSNumber numberWithBool:r2] retain];
    [self parameterHelperSetValue:r20 forKey:@"clickToCall"];
    [r20 release];
    return;
}

-(void)setLocationExtensionFontSize:(double)arg2 {
    self->_locationExtensionFontSize = d0;
    r20 = [[NSNumber numberWithDouble:arg2] retain];
    [self parameterHelperSetValue:r20 forKey:@"fontSizeLocation"];
    [r20 release];
    return;
}

-(void)setLocationExtensionEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_locationExtensionEnabled = arg2;
    r20 = [[NSNumber numberWithBool:r2] retain];
    [self parameterHelperSetValue:r20 forKey:@"location"];
    [r20 release];
    return;
}

-(void)setPlusOnesExtensionEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_plusOnesExtensionEnabled = arg2;
    r20 = [[NSNumber numberWithBool:r2] retain];
    [self parameterHelperSetValue:r20 forKey:@"plusOnes"];
    [r20 release];
    return;
}

-(void)setSiteLinksExtensionEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_siteLinksExtensionEnabled = arg2;
    r20 = [[NSNumber numberWithBool:r2] retain];
    [self parameterHelperSetValue:r20 forKey:@"siteLinks"];
    [r20 release];
    return;
}

-(void)setSellerRatingsExtensionEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_sellerRatingsExtensionEnabled = arg2;
    r20 = [[NSNumber numberWithBool:r2] retain];
    [self parameterHelperSetValue:r20 forKey:@"sellerRatings"];
    [r20 release];
    return;
}

-(void)setCSSWidth:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_CSSWidth));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"width"];
    return;
}

-(void)setNumberOfAds:(long long)arg2 {
    self->_numberOfAds = arg2;
    r20 = [[NSNumber numberWithInteger:r2] retain];
    [self parameterHelperSetValue:r20 forKey:@"number"];
    [r20 release];
    return;
}

-(void)setFontFamily:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_fontFamily));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"fontFamily"];
    return;
}

-(void)setAttributionFontFamily:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_attributionFontFamily));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"fontFamilyAttribution"];
    return;
}

-(void)setAnnotationFontSize:(double)arg2 {
    self->_annotationFontSize = d0;
    r20 = [[NSNumber numberWithDouble:arg2] retain];
    [self parameterHelperSetValue:r20 forKey:@"fontSizeAnnotation"];
    [r20 release];
    return;
}

-(void)setAttributionFontSize:(double)arg2 {
    self->_attributionFontSize = d0;
    r20 = [[NSNumber numberWithDouble:arg2] retain];
    [self parameterHelperSetValue:r20 forKey:@"fontSizeAttribution"];
    [r20 release];
    return;
}

-(void)setTitleFontSize:(double)arg2 {
    self->_titleFontSize = d0;
    r20 = [[NSNumber numberWithDouble:arg2] retain];
    [self parameterHelperSetValue:r20 forKey:@"fontSizeTitle"];
    [r20 release];
    return;
}

-(void)setDomainLinkFontSize:(double)arg2 {
    self->_domainLinkFontSize = d0;
    r20 = [[NSNumber numberWithDouble:arg2] retain];
    [self parameterHelperSetValue:r20 forKey:@"fontSizeDomainLink"];
    [r20 release];
    return;
}

-(void)setDescriptionFontSize:(double)arg2 {
    self->_descriptionFontSize = d0;
    r20 = [[NSNumber numberWithDouble:arg2] retain];
    [self parameterHelperSetValue:r20 forKey:@"fontSizeDescription"];
    [r20 release];
    return;
}

-(void)setAdBorderColor:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_adBorderColor));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"colorAdBorder"];
    return;
}

-(void)setAdSeparatorColor:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_adSeparatorColor));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"colorAdSeparator"];
    return;
}

-(void)setAnnotationTextColor:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_annotationTextColor));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"colorAnnotation"];
    return;
}

-(void)setAttributionTextColor:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_attributionTextColor));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"colorAttribution"];
    return;
}

-(void)setBackgroundColor:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundColor));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"colorBackground"];
    return;
}

-(void)setBorderColor:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_borderColor));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"colorBorder"];
    return;
}

-(void)setDomainLinkColor:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_domainLinkColor));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"colorDomainLink"];
    return;
}

-(void)setTextColor:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_textColor));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"colorText"];
    return;
}

-(void)setTitleLinkColor:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_titleLinkColor));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"colorTitleLink"];
    return;
}

-(void)setAdBorderCSSSelections:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_adBorderCSSSelections));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"adBorderSelections"];
    return;
}

-(void)setAdjustableLineHeight:(double)arg2 {
    self->_adjustableLineHeight = d0;
    r20 = [[NSNumber numberWithDouble:arg2] retain];
    [self parameterHelperSetValue:r20 forKey:@"adjustableLineHeight"];
    [r20 release];
    return;
}

-(void)setAttributionBottomSpacing:(double)arg2 {
    self->_attributionBottomSpacing = d0;
    r20 = [[NSNumber numberWithDouble:arg2] retain];
    [self parameterHelperSetValue:r20 forKey:@"attributionSpacingBelow"];
    [r20 release];
    return;
}

-(void)setBorderCSSSelections:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_borderCSSSelections));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [self parameterHelperSetValue:*(self + r20) forKey:@"borderSelections"];
    return;
}

-(void)setTitleUnderlineHidden:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_titleUnderlineHidden = arg2;
    r20 = [[NSNumber numberWithBool:r2] retain];
    [self parameterHelperSetValue:r20 forKey:@"noTitleUnderline"];
    [r20 release];
    return;
}

-(void)setBoldTitleEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_boldTitleEnabled = arg2;
    r20 = [[NSNumber numberWithBool:r2] retain];
    [self parameterHelperSetValue:r20 forKey:@"titleBold"];
    [r20 release];
    return;
}

-(void)setVerticalSpacing:(double)arg2 {
    self->_verticalSpacing = d0;
    r20 = [[NSNumber numberWithDouble:arg2] retain];
    [self parameterHelperSetValue:r20 forKey:@"verticalSpacing"];
    [r20 release];
    return;
}

-(void)setDetailedAttributionExtensionEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_detailedAttributionExtensionEnabled = arg2;
    r20 = [[NSNumber numberWithBool:r2] retain];
    [self parameterHelperSetValue:r20 forKey:@"detailedAttribution"];
    [r20 release];
    return;
}

-(void)setLongerHeadlinesExtensionEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_longerHeadlinesExtensionEnabled = arg2;
    r20 = [[NSNumber numberWithBool:r2] retain];
    [self parameterHelperSetValue:r20 forKey:@"longerHeadlines"];
    [r20 release];
    return;
}

-(void)setAdvancedOptionValue:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    [self parameterHelperSetValue:r21 forKey:arg3];
    [r21 release];
    return;
}

-(void)parameterHelperSetValue:(void *)arg2 forKey:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) {
            r23 = @selector(isKindOfClass:);
            [NSNumber class];
            if ((objc_msgSend(r19, r23) & 0x1) != 0x0) {
                    sub_100822058(r21->_requestParameters, r20, r19);
            }
            else {
                    sub_1007ce06c(0x0, @"Parameter value is invalid: %@.");
            }
    }
    else {
            sub_100822058(r21->_requestParameters, r20, r19);
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)dynamicHeightAdURLFragmentsWithAdUnitID:(void *)arg2 {
    r23 = [arg2 retain];
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 init];
    r19 = self->_requestParameters;
    r22 = [r0 retain];
    var_58 = r22;
    [r19 enumerateKeysAndObjectsUsingBlock:&var_78];
    [r22 addEntriesFromDictionary:[sub_1008b3600() retain]];
    r24 = sub_100891f24(r23);
    [r23 release];
    sub_100822058(r22, @"pubId", [r24 retain]);
    [r23 release];
    sub_100822058(r22, @"SDKVersion", *0x100e9f550);
    sub_100822058(r22, @"OSType", @"iOS");
    r0 = [r22 allKeys];
    r0 = [r0 retain];
    r23 = [[r0 sortedArrayUsingSelector:@selector(compare:)] retain];
    [r0 release];
    r20 = [[NSMutableArray alloc] init];
    var_88 = r22;
    r21 = [r22 retain];
    var_80 = r20;
    r20 = [r20 retain];
    [r23 enumerateObjectsUsingBlock:&var_A8];
    r22 = [[r20 componentsJoinedByString:r2] retain];
    [var_80 release];
    [var_88 release];
    [r20 release];
    [r23 release];
    [r19 release];
    [var_58 release];
    [r21 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)CSADynamicHeightSearchRequestURLWithAdUnitID:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r21 = [arg2 retain];
    r19 = @"www.google.com";
    [r19 retain];
    r0 = r22->_requestParameters;
    r0 = [r0 objectForKeyedSubscript:@"customDomain"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [NSString class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            if ([r20 length] != 0x0) {
                    r19 = [r20 retain];
                    [@"www.google.com" release];
            }
            else {
                    r19 = @"www.google.com";
            }
    }
    r23 = [NSString alloc];
    r22 = [r22 dynamicHeightAdURLFragmentsWithAdUnitID:r21];
    [r21 release];
    r21 = [r22 retain];
    r22 = [r23 initWithFormat:@"%@://%@/%@#%@"];
    [r21 release];
    r21 = [[NSURL URLWithString:r2] retain];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(long long)adPage {
    r0 = self->_adPage;
    return r0;
}

-(void *)query {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_query)), 0x0);
    return r0;
}

-(bool)adTestEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_adTestEnabled;
    return r0;
}

-(void *)channel {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_channel)), 0x0);
    return r0;
}

-(void *)locationExtensionTextColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_locationExtensionTextColor)), 0x0);
    return r0;
}

-(void *)hostLanguage {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_hostLanguage)), 0x0);
    return r0;
}

-(double)locationExtensionFontSize {
    r0 = self;
    return r0;
}

-(bool)clickToCallExtensionEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_clickToCallExtensionEnabled;
    return r0;
}

-(bool)locationExtensionEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_locationExtensionEnabled;
    return r0;
}

-(bool)plusOnesExtensionEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_plusOnesExtensionEnabled;
    return r0;
}

-(bool)sellerRatingsExtensionEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_sellerRatingsExtensionEnabled;
    return r0;
}

-(bool)siteLinksExtensionEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_siteLinksExtensionEnabled;
    return r0;
}

-(long long)numberOfAds {
    r0 = self->_numberOfAds;
    return r0;
}

-(void *)CSSWidth {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_CSSWidth)), 0x0);
    return r0;
}

-(void *)fontFamily {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_fontFamily)), 0x0);
    return r0;
}

-(void *)attributionFontFamily {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_attributionFontFamily)), 0x0);
    return r0;
}

-(double)attributionFontSize {
    r0 = self;
    return r0;
}

-(double)annotationFontSize {
    r0 = self;
    return r0;
}

-(double)descriptionFontSize {
    r0 = self;
    return r0;
}

-(double)domainLinkFontSize {
    r0 = self;
    return r0;
}

-(void *)adBorderColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adBorderColor)), 0x0);
    return r0;
}

-(double)titleFontSize {
    r0 = self;
    return r0;
}

-(void *)adSeparatorColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adSeparatorColor)), 0x0);
    return r0;
}

-(void *)annotationTextColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_annotationTextColor)), 0x0);
    return r0;
}

-(void *)attributionTextColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_attributionTextColor)), 0x0);
    return r0;
}

-(void *)borderColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_borderColor)), 0x0);
    return r0;
}

-(void *)backgroundColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_backgroundColor)), 0x0);
    return r0;
}

-(void *)titleLinkColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_titleLinkColor)), 0x0);
    return r0;
}

-(void *)domainLinkColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_domainLinkColor)), 0x0);
    return r0;
}

-(void *)textColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_textColor)), 0x0);
    return r0;
}

-(void *)adBorderCSSSelections {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adBorderCSSSelections)), 0x0);
    return r0;
}

-(double)adjustableLineHeight {
    r0 = self;
    return r0;
}

-(double)attributionBottomSpacing {
    r0 = self;
    return r0;
}

-(void *)borderCSSSelections {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_borderCSSSelections)), 0x0);
    return r0;
}

-(bool)titleUnderlineHidden {
    r0 = *(int8_t *)(int64_t *)&self->_titleUnderlineHidden;
    return r0;
}

-(bool)boldTitleEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_boldTitleEnabled;
    return r0;
}

-(double)verticalSpacing {
    r0 = self;
    return r0;
}

-(bool)detailedAttributionExtensionEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_detailedAttributionExtensionEnabled;
    return r0;
}

-(bool)longerHeadlinesExtensionEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_longerHeadlinesExtensionEnabled;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_borderCSSSelections, 0x0);
    objc_storeStrong((int64_t *)&self->_adBorderCSSSelections, 0x0);
    objc_storeStrong((int64_t *)&self->_titleLinkColor, 0x0);
    objc_storeStrong((int64_t *)&self->_textColor, 0x0);
    objc_storeStrong((int64_t *)&self->_domainLinkColor, 0x0);
    objc_storeStrong((int64_t *)&self->_borderColor, 0x0);
    objc_storeStrong((int64_t *)&self->_backgroundColor, 0x0);
    objc_storeStrong((int64_t *)&self->_attributionTextColor, 0x0);
    objc_storeStrong((int64_t *)&self->_annotationTextColor, 0x0);
    objc_storeStrong((int64_t *)&self->_adSeparatorColor, 0x0);
    objc_storeStrong((int64_t *)&self->_adBorderColor, 0x0);
    objc_storeStrong((int64_t *)&self->_attributionFontFamily, 0x0);
    objc_storeStrong((int64_t *)&self->_fontFamily, 0x0);
    objc_storeStrong((int64_t *)&self->_CSSWidth, 0x0);
    objc_storeStrong((int64_t *)&self->_locationExtensionTextColor, 0x0);
    objc_storeStrong((int64_t *)&self->_hostLanguage, 0x0);
    objc_storeStrong((int64_t *)&self->_channel, 0x0);
    objc_storeStrong((int64_t *)&self->_query, 0x0);
    objc_storeStrong((int64_t *)&self->_requestParameters, 0x0);
    return;
}

@end