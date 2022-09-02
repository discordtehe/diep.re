@implementation FBAdReportingConfig

-(void *)manageAdPreferencesURL {
    r20 = [[self adReportingConfig] retain];
    r19 = [[self manageAdPreferencesURLFromDict:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)manageAdPreferencesURLFromDict:(void *)arg2 {
    r19 = [[arg2 objectForKeyedSubscript:@"manage_ad_preferences_uri"] retain];
    r20 = [[NSURL URLWithString:r2] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)adChoicesURL {
    r20 = [[self adReportingConfig] retain];
    r19 = [[self adChoicesURLFromDict:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)adChoicesURLFromDict:(void *)arg2 {
    r19 = [[arg2 objectForKeyedSubscript:@"ad_choices_uri"] retain];
    r20 = [[NSURL URLWithString:r2] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)localisedStringForKey:(void *)arg2 orDefault:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [self adReportingConfig];
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:r21] retain];
    [r21 release];
    [r0 release];
    [NSString class];
    r0 = [r22 isKindOfClass:r2];
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = r19;
            }
            else {
                    r0 = r22;
            }
    }
    r20 = [r0 retain];
    [r22 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)loadFromDict:(void *)arg2 error:(void * *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r19 = self;
    r20 = [arg2 retain];
    if ([r19 validateConfigDict:r20] != 0x0) {
            r21 = [r20 mutableCopy];
            [r19 setAdReportingConfig:r21];
            [r21 release];
    }
    else {
            if (r21 != 0x0) {
                    *r21 = [[[FBAdError getNSError:0x7d1 domain:@"com.facebook.ads.sdk" description:@"Invalid reporting config." detail:0x0] retain] autorelease];
            }
            [FBAdDebugLogging logDebugEventWithType:@"internal_inconsistency" code:0x5 description:@"Invalid reporting config."];
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)save {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self isLoaded] != 0x0) {
            r0 = [r19 saveAsync:0x1];
            r0 = [r0 retain];
    }
    else {
            r0 = [r19 retain];
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void *)deleteConfig {
    r20 = [NSMutableDictionary new];
    [self setAdReportingConfig:r20];
    [r20 release];
    r20 = [[NSFileManager defaultManager] retain];
    r21 = [[self adConfigFileURL] retain];
    [r20 removeItemAtURL:r21 error:0x0];
    [r21 release];
    [r20 release];
    r0 = self;
    return r0;
}

-(bool)isLoaded {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adReportingConfig];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[r19 adReportingConfig] retain];
            r19 = [r19 validateConfigDict:r20];
            [r20 release];
            r0 = r19;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)isReadyForFullscreen {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [self isLoaded];
    if (r0 != 0x0) {
            r0 = [FBAdConfigManager sharedManager];
            r0 = [r0 retain];
            r20 = [r0 isInlineAdReportingFlowEnabled];
            [r0 release];
            r0 = r20;
    }
    return r0;
}

-(bool)isReadyForNonFullscreen {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [self isLoaded];
    if (r0 != 0x0) {
            r0 = [FBAdConfigManager sharedManager];
            r0 = [r0 retain];
            r20 = [r0 useNativeNonFullscreenXoutFlow];
            [r0 release];
            r0 = r20;
    }
    return r0;
}

-(void *)reportingItems {
    r20 = [[self adReportingConfig] retain];
    r19 = [[self reportingItemsFromDict:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)hidingItems {
    r20 = [[self adReportingConfig] retain];
    r19 = [[self hidingItemsFromDict:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)lastUpdateTime {
    r0 = [self adReportingConfig];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"ad_reporting_config_last_update_time"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)init {
    r0 = [self initWithAsyncLoad:0x0];
    return r0;
}

-(void *)objectForKeyedSubscript:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self adReportingConfig];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)reportingItemsFromDict:(void *)arg2 {
    r20 = [[arg2 objectForKeyedSubscript:@"report_ad_options"] retain];
    r19 = [[self extractItemsFromArray:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithAsyncLoad:(bool)arg2 {
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
    r19 = arg2;
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_adReportingConfig, **___NSDictionary0__);
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r22 = [[r0 URLsForDirectory:0xd inDomains:0x1] retain];
            [r0 release];
            r0 = [r22 firstObject];
            r0 = [r0 retain];
            r23 = [[r0 URLByAppendingPathComponent:@"fb_an_reporting_config.plist"] retain];
            [r0 release];
            [r22 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_adConfigFileURL));
            r0 = *(r20 + r8);
            *(r20 + r8) = r23;
            [r0 release];
            [r20 loadFromDiskAsync:r19];
            objc_unsafeClaimAutoreleasedReturnValue();
    }
    r0 = r20;
    return r0;
}

-(void)setObject:(void *)arg2 forKeyedSubscript:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [r19 adReportingConfig];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 mutableCopy];
    r24 = r0;
    if (r0 != 0x0) {
            r0 = [r24 retain];
    }
    else {
            r0 = [NSMutableDictionary new];
    }
    [r24 release];
    [r22 release];
    [r0 setObject:r20 forKeyedSubscript:r21];
    [r21 release];
    [r20 release];
    [r19 setAdReportingConfig:r0];
    [r0 release];
    return;
}

-(void *)hidingItemsFromDict:(void *)arg2 {
    r20 = [[arg2 objectForKeyedSubscript:@"hide_ad_options"] retain];
    r19 = [[self extractItemsFromArray:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)loadConfigFromPlist:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [FBAdUtility getObjectFromPropertyList:arg2];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r19 setAdReportingConfig:r20];
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)loadFromDiskAsync:(bool)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_retainBlock(&var_48);
    r20 = r0;
    if (arg2 != 0x0) {
            r0 = dispatch_get_global_queue(0x0, 0x0);
            r0 = [r0 retain];
            dispatch_async(r0, r20);
            [r21 release];
    }
    else {
            (*(r20 + 0x10))(r20);
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)extractItemsFromArray:(void *)arg2 {
    r31 = r31 - 0x190;
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
    var_138 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 count] != 0x0) {
            var_170 = [NSMutableArray new];
            var_110 = q0;
            var_180 = r19;
            r0 = [r19 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_148 = r0;
            var_178 = r1;
            r0 = objc_msgSend(r0, r1);
            var_130 = r0;
            if (r0 != 0x0) {
                    var_140 = *var_110;
                    do {
                            r20 = 0x0;
                            r25 = @selector(extractItemsFromArray:);
                            var_150 = r25;
                            do {
                                    if (*var_110 != var_140) {
                                            objc_enumerationMutation(var_148);
                                    }
                                    r21 = *(var_118 + r20 * 0x8);
                                    r24 = [[r21 objectForKeyOrNil:@"option_value"] retain];
                                    r27 = [[r21 objectForKeyOrNil:@"option_text"] retain];
                                    var_128 = [[r21 objectForKeyOrNil:@"children_heading"] retain];
                                    r21 = [[r21 objectForKeyOrNil:@"children_options"] retain];
                                    r0 = objc_msgSend(var_138, r25);
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    r26 = r24;
                                    if (r24 != 0x0) {
                                            asm { ccmp       x27, #0x0, #0x4, ne };
                                    }
                                    if (!CPU_FLAGS & E) {
                                            [[FBAdReportingItem alloc] initWithIdentifier:r26 title:r27 heading:var_128 subItems:r22];
                                            [var_170 addObject:r2];
                                            r0 = r25;
                                            r25 = var_150;
                                            [r0 release];
                                    }
                                    [r22 release];
                                    [r21 release];
                                    [var_128 release];
                                    [r27 release];
                                    [r26 release];
                                    r20 = r20 + 0x1;
                            } while (r20 < var_130);
                            r0 = objc_msgSend(var_148, var_178);
                            var_130 = r0;
                    } while (r0 != 0x0);
            }
            [var_148 release];
            r19 = var_180;
    }
    else {
            var_170 = 0x0;
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [var_170 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)validateConfigDict:(void *)arg2 {
    r31 = r31 - 0x110;
    var_40 = r28;
    stack[-72] = r27;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r20 = [arg2 retain];
    r19 = [[NSArray arrayWithObjects:&var_A8 count:0xc] retain];
    var_C0 = &var_C8;
    r0 = [r20 retain];
    r20 = r0;
    var_D8 = r0;
    [r19 enumerateObjectsUsingBlock:&var_F8];
    r0 = [r21 reportingItemsFromDict:r20];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 count] != 0x0) {
            r24 = @selector(count);
            r0 = [r21 hidingItemsFromDict:r20];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (objc_msgSend(r0, r24) != 0x0) {
                    r0 = [r21 adChoicesURLFromDict:r20];
                    r29 = r29;
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            r24 = r0;
                            r0 = [r21 manageAdPreferencesURLFromDict:r20];
                            r0 = [r0 retain];
                            if (r0 != 0x0) {
                                    if (*(int8_t *)(var_C0 + 0x18) != 0x0) {
                                            if (CPU_FLAGS & NE) {
                                                    r21 = 0x1;
                                            }
                                    }
                                    [r0 release];
                            }
                            else {
                                    r21 = 0x0;
                            }
                            [r24 release];
                    }
                    else {
                            r21 = 0x0;
                    }
            }
            else {
                    r21 = 0x0;
            }
            [r23 release];
    }
    else {
            r21 = 0x0;
    }
    var_48 = **___stack_chk_guard;
    [r22 release];
    [var_D8 release];
    _Block_object_dispose(&var_C8, 0x8);
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)saveAsync:(bool)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_retainBlock(&var_48);
    r20 = r0;
    if (arg2 != 0x0) {
            r0 = dispatch_get_global_queue(0x0, 0x0);
            r0 = [r0 retain];
            dispatch_async(r0, r20);
            [r21 release];
    }
    else {
            (*(r20 + 0x10))(r20);
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adReportingConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_adConfigFileURL, 0x0);
    return;
}

-(void *)adConfigFileURL {
    r0 = self->_adConfigFileURL;
    return r0;
}

-(void *)adReportingConfig {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adReportingConfig)), 0x1);
    return r0;
}

-(void)setAdReportingConfig:(void *)arg2 {
    objc_setProperty_atomic_copy();
    return;
}

+(void *)sharedConfig {
    r0 = [self sharedConfigAsync:0x0];
    return r0;
}

+(void *)sharedConfigAsync:(bool)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_retainBlock(&var_38);
    r19 = r0;
    if (*qword_1011ddae0 != -0x1) {
            dispatch_once(0x1011ddae0, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddae8);
    [r19 release];
    r0 = r20;
    return r0;
}

@end