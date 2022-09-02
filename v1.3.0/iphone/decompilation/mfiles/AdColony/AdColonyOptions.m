@implementation AdColonyOptions

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([r19 isMemberOfClass:[AdColonyOptions class]] == 0x0) {
            r0 = [[&var_20 super] init];
            r19 = r0;
            if (r19 != 0x0) {
                    r0 = [NSMutableDictionary new];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_options));
                    r8 = *(r19 + r9);
                    *(r19 + r9) = r0;
                    [r8 release];
            }
            r0 = r19;
    }
    else {
            r0 = [NSException exceptionWithName:@"AdColonyUsageException" reason:@"AdColonyOptions instance must not be created directly. Initialize one of its subclasses instead." userInfo:0x0];
            r0 = [r0 retain];
            r0 = [r0 autorelease];
            r0 = objc_exception_throw(r0);
    }
    return r0;
}

-(bool)setOption:(void *)arg2 withStringValue:(void *)arg3 lengthCheck:(bool)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 == 0x0 || r20 == 0x0) goto loc_1002460c8;

loc_100246038:
    if (r22 == 0x0) goto loc_10024611c;

loc_10024603c:
    if ([r19 length] < 0x81) goto loc_1002460dc;

loc_100246108:
    [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    goto loc_1002460d4;

loc_1002460d4:
    r21 = 0x0;
    goto loc_100246160;

loc_100246160:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_1002460dc:
    if ([r20 length] < 0x81) goto loc_10024611c;
    goto loc_100246108;

loc_10024611c:
    r0 = *(r21 + sign_extend_64(*(int32_t *)ivar_offset(_options)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [*(r21 + r23) setObject:r20 forKeyedSubscript:r19];
    objc_sync_exit(r22);
    [r22 release];
    r21 = 0x1;
    goto loc_100246160;

loc_1002460c8:
    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
    goto loc_1002460d4;
}

-(bool)setOption:(void *)arg2 withStringValue:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [self setOption:r21 withStringValue:arg3 lengthCheck:0x1];
    [r21 release];
    r0 = r19;
    return r0;
}

-(bool)setOption:(void *)arg2 withNumericValue:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 == 0x0) goto loc_100246318;

loc_100246234:
    if ([r19 length] < 0x81) goto loc_1002462a4;

loc_10024624c:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Invalid usage: AdColony option keys must be 128 characters or less"];
    goto loc_100246324;

loc_100246324:
    r21 = 0x0;
    goto loc_100246328;

loc_100246328:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_1002462a4:
    if (r20 == 0x0) goto loc_100246318;

loc_1002462a8:
    r0 = *(r21 + sign_extend_64(*(int32_t *)ivar_offset(_options)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [*(r21 + r23) setObject:r20 forKeyedSubscript:r19];
    objc_sync_exit(r22);
    [r22 release];
    r21 = 0x1;
    goto loc_100246328;

loc_100246318:
    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
    goto loc_100246324;
}

-(void *)getStringOptionWithKey:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = *(r20 + sign_extend_64(*(int32_t *)ivar_offset(_options)));
            r0 = [r0 retain];
            objc_sync_enter(r0);
            r20 = [[*(r20 + r22) objectForKeyedSubscript:r19] retain];
            objc_sync_exit(r21);
            [r21 release];
            if (r20 != 0x0) {
                    [NSString class];
                    if ([r20 isKindOfClass:r2] != 0x0) {
                            r21 = [r20 retain];
                    }
                    else {
                            r21 = 0x0;
                    }
            }
            else {
                    r21 = 0x0;
            }
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)getNumericOptionWithKey:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = *(r20 + sign_extend_64(*(int32_t *)ivar_offset(_options)));
            r0 = [r0 retain];
            objc_sync_enter(r0);
            r20 = [[*(r20 + r22) objectForKeyedSubscript:r19] retain];
            objc_sync_exit(r21);
            [r21 release];
            if (r20 != 0x0) {
                    [NSNumber class];
                    if ([r20 isKindOfClass:r2] != 0x0) {
                            r21 = [r20 retain];
                    }
                    else {
                            r21 = 0x0;
                    }
            }
            else {
                    r21 = 0x0;
            }
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)userMetadata {
    r0 = self->_userMetadata;
    return r0;
}

-(void)setUserMetadata:(void *)arg2 {
    [arg2 retain];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_options)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r22 = *(self + r22);
    r23 = [[r21 getData] retain];
    [r22 setObject:r23 forKeyedSubscript:@"user_metadata"];
    [r23 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_userMetadata));
    r22 = *(self + r8);
    *(self + r8) = r21;
    [r21 retain];
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userMetadata, 0x0);
    objc_storeStrong((int64_t *)&self->_options, 0x0);
    return;
}

-(bool)boolOptionForKey:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[self optionForKey:r22 type:[NSNumber class]] retain];
    [r22 release];
    r20 = [r19 boolValue];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)stringOptionForKey:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[self optionForKey:r22 type:[NSString class]] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)numberOptionForKey:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[self optionForKey:r22 type:[NSNumber class]] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)arrayOptionForKey:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[self optionForKey:r22 type:[NSArray class]] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)getUserMetadata {
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_options)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [[*(self + r21) objectForKeyedSubscript:@"user_metadata"] retain];
    objc_sync_exit(r19);
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)getOptions {
    r0 = self->_options;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)optionForKey:(void *)arg2 type:(void *)arg3 {
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
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = *(r20 + sign_extend_64(*(int32_t *)ivar_offset(_options)));
            r0 = [r0 retain];
            objc_sync_enter(r0);
            r20 = [[*(r20 + r23) objectForKeyedSubscript:r19] retain];
            objc_sync_exit(r22);
            [r22 release];
            if (r20 != 0x0 && ([r20 isKindOfClass:r2] & 0x1) != 0x0) {
                    r21 = [r20 retain];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
                    r21 = 0x0;
            }
            [r20 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[AdColonyOptions(Private) optionForKey:type:]" line:0xa0 withFormat:@"Invalid option key"];
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)setOptions:(void *)arg2 {
    [arg2 retain];
    objc_sync_enter(*(self + sign_extend_64(*(int32_t *)ivar_offset(_options))));
    r21 = [r21 retain];
    r22 = *(self + r23);
    *(self + r23) = r20;
    [r20 retain];
    [r22 release];
    objc_sync_exit(r21);
    [r21 release];
    [r19 release];
    return;
}

@end