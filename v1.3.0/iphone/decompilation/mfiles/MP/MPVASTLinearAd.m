@implementation MPVASTLinearAd

-(void *)clickThroughURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_clickThroughURL)), 0x0);
    return r0;
}

-(void *)clickTrackingURLs {
    r0 = self->_clickTrackingURLs;
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x170;
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
    r20 = [arg2 retain];
    r0 = [[&var_F0 super] initWithDictionary:r20];
    r22 = r0;
    if (r0 != 0x0) {
            var_158 = r20;
            r0 = [r20 objectForKeyedSubscript:@"TrackingEvents"];
            r0 = [r0 retain];
            r19 = [[r0 objectForKeyedSubscript:@"Tracking"] retain];
            var_160 = r22;
            r22 = [[r22 generateModelsFromDictionaryValue:r19 modelProvider:0x100e7fa58] retain];
            [r19 release];
            [r0 release];
            r0 = [NSMutableDictionary dictionary];
            r29 = r29;
            r21 = [r0 retain];
            var_120 = q0;
            r0 = [r22 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_138 = r0;
            var_150 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r24 = r0;
                    r27 = *var_120;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_120 != r27) {
                                            objc_enumerationMutation(var_138);
                                    }
                                    r20 = *(var_128 + r28 * 0x8);
                                    r22 = [[r20 eventType] retain];
                                    r0 = [r21 objectForKey:r22];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    [r22 release];
                                    if (r23 == 0x0) {
                                            r22 = [[NSMutableArray array] retain];
                                            r23 = [[r20 eventType] retain];
                                            [r21 setObject:r22 forKey:r23];
                                            [r23 release];
                                            [r22 release];
                                            r22 = [[r20 eventType] retain];
                                            r0 = [r21 objectForKey:r22];
                                            r29 = r29;
                                            r23 = [r0 retain];
                                            [r22 release];
                                    }
                                    [r23 addObject:r2];
                                    [r23 release];
                                    r28 = r28 + 0x1;
                            } while (r28 < r24);
                            r0 = objc_msgSend(var_138, var_150);
                            r24 = r0;
                    } while (r0 != 0x0);
            }
            [var_138 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_trackingEvents));
            r22 = var_160;
            r0 = *(r22 + r8);
            *(r22 + r8) = r21;
            [r0 release];
            [var_138 release];
            r20 = var_158;
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setClickTrackingURLs:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_clickTrackingURLs, arg2);
    return;
}

-(void *)customClickURLs {
    r0 = self->_customClickURLs;
    return r0;
}

-(void)setCustomClickURLs:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_customClickURLs, arg2);
    return;
}

+(void *)modelMap {
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
    var_60 = **___stack_chk_guard;
    var_148 = [sub_1004ca3dc() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_E0 count:0x2];
    var_150 = [r0 retain];
    var_158 = [sub_1004ca3dc() retain];
    var_160 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_F0 count:0x2];
    var_168 = [r0 retain];
    var_170 = [sub_1004ca3dc() retain];
    var_178 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_100 count:0x2];
    var_180 = [r0 retain];
    var_188 = [sub_1004ca43c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_110 count:0x2];
    var_190 = [r0 retain];
    r20 = [sub_1004ca464([MPVASTIndustryIcon class]) retain];
    r21 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_120 count:0x2];
    r22 = [r0 retain];
    r23 = [sub_1004ca464([MPVASTMediaFile class]) retain];
    r26 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_130 count:0x2];
    r27 = [r0 retain];
    r28 = [sub_1004ca464([MPVASTDurationOffset class]) retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_140 count:0x2];
    r25 = [r0 retain];
    r0 = [NSDictionary dictionaryWithObjects:&saved_fp - 0x98 forKeys:&var_D0 count:0x7];
    r24 = [r0 retain];
    [r25 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [var_190 release];
    [var_188 release];
    [var_180 release];
    [var_178 release];
    [var_170 release];
    [var_168 release];
    [var_160 release];
    [var_158 release];
    [var_150 release];
    [var_148 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r24 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)industryIcons {
    r0 = self->_industryIcons;
    return r0;
}

-(void *)mediaFiles {
    r0 = self->_mediaFiles;
    return r0;
}

-(double)duration {
    r0 = self;
    return r0;
}

-(void)setIndustryIcons:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_industryIcons, arg2);
    return;
}

-(void)setTrackingEvents:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_trackingEvents, arg2);
    return;
}

-(void *)trackingEvents {
    r0 = self->_trackingEvents;
    return r0;
}

-(void *)skipOffset {
    r0 = self->_skipOffset;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_trackingEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_skipOffset, 0x0);
    objc_storeStrong((int64_t *)&self->_mediaFiles, 0x0);
    objc_storeStrong((int64_t *)&self->_industryIcons, 0x0);
    objc_storeStrong((int64_t *)&self->_customClickURLs, 0x0);
    objc_storeStrong((int64_t *)&self->_clickTrackingURLs, 0x0);
    objc_storeStrong((int64_t *)&self->_clickThroughURL, 0x0);
    return;
}

-(void *)validVideoMimeTypes {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011d84d0 != -0x1) {
            dispatch_once(0x1011d84d0, 0x100e7fa78);
    }
    r0 = *0x1011d84d8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)highestBitrateMediaFile {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self validVideoMimeTypes];
    r0 = [r0 retain];
    r19 = [[NSPredicate predicateWithFormat:@"mimeType IN %@"] retain];
    [r0 release];
    r0 = [self mediaFiles];
    r0 = [r0 retain];
    r20 = [[r0 filteredArrayUsingPredicate:r19] retain];
    [r0 release];
    r0 = [r20 sortedArrayUsingComparator:0x100e7fab8];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 count] != 0x0) {
            r22 = [[[r21 objectAtIndexedSubscript:0x0] retain] autorelease];
    }
    else {
            r22 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

@end