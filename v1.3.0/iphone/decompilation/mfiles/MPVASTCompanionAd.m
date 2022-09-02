@implementation MPVASTCompanionAd

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
            r22 = [[r22 generateModelsFromDictionaryValue:r19 modelProvider:0x100e7f120] retain];
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

-(double)assetHeight {
    r0 = self;
    return r0;
}

-(double)assetWidth {
    r0 = self;
    return r0;
}

-(void *)clickThroughURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_clickThroughURL)), 0x0);
    return r0;
}

-(void *)clickTrackingURLs {
    r0 = self->_clickTrackingURLs;
    return r0;
}

-(double)height {
    r0 = self;
    return r0;
}

+(void *)modelMap {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1e0;
    var_60 = **___stack_chk_guard;
    var_1B8 = [sub_1004ca404(0x1) retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_120 count:0x2];
    var_1C0 = [r0 retain];
    var_1C8 = [sub_1004ca404(0x1) retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_130 count:0x2];
    var_1D0 = [r0 retain];
    var_1D8 = [sub_1004ca404(0x1) retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_140 count:0x2];
    var_1E0 = [r0 retain];
    var_1E8 = [sub_1004ca404(0x1) retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_150 count:0x2];
    var_1F0 = [r0 retain];
    var_1F8 = [sub_1004ca3dc() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_160 count:0x2];
    var_200 = [r0 retain];
    var_208 = [sub_1004ca3dc() retain];
    var_210 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_170 count:0x2];
    var_218 = [r0 retain];
    var_220 = [sub_1004ca3dc() retain];
    var_228 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_180 count:0x2];
    var_230 = [r0 retain];
    r27 = [sub_1004ca464([MPVASTResource class]) retain];
    r28 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_190 count:0x2];
    r19 = [r0 retain];
    r20 = [sub_1004ca464([MPVASTResource class]) retain];
    r21 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_1A0 count:0x2];
    r23 = [r0 retain];
    r22 = [sub_1004ca464([MPVASTResource class]) retain];
    r24 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_1B0 count:0x2];
    r25 = [r0 retain];
    r0 = [NSDictionary dictionaryWithObjects:&saved_fp - 0xb8 forKeys:&var_110 count:0xb];
    r26 = [r0 retain];
    [r25 release];
    [r24 release];
    [r22 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r28 release];
    [r27 release];
    [var_230 release];
    [var_228 release];
    [var_220 release];
    [var_218 release];
    [var_210 release];
    [var_208 release];
    [var_200 release];
    [var_1F8 release];
    [var_1F0 release];
    [var_1E8 release];
    [var_1E0 release];
    [var_1D8 release];
    [var_1D0 release];
    [var_1C8 release];
    [var_1C0 release];
    [var_1B8 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r26 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)HTMLResources {
    r0 = self->_HTMLResources;
    return r0;
}

-(void *)identifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_identifier)), 0x0);
    return r0;
}

-(void *)iframeResources {
    r0 = self->_iframeResources;
    return r0;
}

-(void *)staticResources {
    r0 = self->_staticResources;
    return r0;
}

-(void *)trackingEvents {
    r0 = self->_trackingEvents;
    return r0;
}

-(double)width {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_trackingEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_staticResources, 0x0);
    objc_storeStrong((int64_t *)&self->_iframeResources, 0x0);
    objc_storeStrong((int64_t *)&self->_identifier, 0x0);
    objc_storeStrong((int64_t *)&self->_HTMLResources, 0x0);
    objc_storeStrong((int64_t *)&self->_clickTrackingURLs, 0x0);
    objc_storeStrong((int64_t *)&self->_clickThroughURL, 0x0);
    return;
}

@end