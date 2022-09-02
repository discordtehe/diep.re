@implementation VungleWillPlayAdRequestBodyBuilder

-(void *)initWithPlacement:(void *)arg2 publisherInformation:(void *)arg3 playOptions:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [[&var_40 super] initWithPublisherInformation:r23];
    r21 = r0;
    [r23 release];
    if (r21 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_placement));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_playOptions));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)placement {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placement)), 0x0);
    return r0;
}

-(void *)playOptions {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_playOptions)), 0x0);
    return r0;
}

-(void)setPlacement:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)buildRequestParameters {
    r31 = r31 - 0xc0;
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
    r21 = self;
    r0 = [[&var_A8 super] buildRequestParameters];
    r0 = [r0 retain];
    r19 = [r0 mutableCopy];
    [r0 release];
    r0 = [r21 placement];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 uniqueID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            r0 = [r20 referenceID];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            if (r0 != 0x0) {
                    r23 = [[r20 uniqueID] retain];
                    r24 = [[r20 referenceID] retain];
                    r25 = [[NSNumber numberWithBool:[r20 isIncentivized]] retain];
                    r26 = [[NSNumber numberWithBool:[r20 isCacheable]] retain];
                    r27 = [[NSDictionary dictionaryWithObjects:&var_78 forKeys:&var_98 count:0x4] retain];
                    [r19 setObject:r27 forKeyedSubscript:@"placement"];
                    [r27 release];
                    [r26 release];
                    [r25 release];
                    [r24 release];
                    [r23 release];
                    r0 = [r20 adUnit];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 adToken];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r25 release];
                    if (r0 != 0x0) {
                            r0 = [r20 adUnit];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 adToken];
                            r29 = r29;
                            r24 = [r0 retain];
                            [r19 setObject:r24 forKeyedSubscript:@"ad_token"];
                            [r24 release];
                            [r23 release];
                    }
                    r0 = [r21 playOptions];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 user];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r25 release];
                    if (r0 != 0x0) {
                            r0 = [r21 playOptions];
                            r0 = [r0 retain];
                            r23 = [[r0 user] retain];
                            [r19 setObject:r23 forKeyedSubscript:@"user"];
                            [r23 release];
                            [r0 release];
                    }
                    r0 = [r19 copy];
            }
            else {
                    r0 = **___NSDictionary0__;
                    r0 = [r0 retain];
            }
    }
    else {
            [r23 release];
            r0 = **___NSDictionary0__;
            r0 = [r0 retain];
    }
    var_58 = **___stack_chk_guard;
    r21 = r0;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setPlayOptions:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_playOptions, 0x0);
    objc_storeStrong((int64_t *)&self->_placement, 0x0);
    return;
}

@end