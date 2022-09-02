@implementation FBAdExtraHint

-(void *)initWithKeywords:(void *)arg2 {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)addKeyword:(void *)arg2 {
    return;
}

-(void)removeKeyword:(void *)arg2 {
    return;
}

-(void *)contentURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_contentURL)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_keywords, 0x0);
    objc_storeStrong((int64_t *)&self->_mediationData, 0x0);
    objc_storeStrong((int64_t *)&self->_extraData, 0x0);
    objc_storeStrong((int64_t *)&self->_contentURL, 0x0);
    return;
}

-(void *)stringRepresentation {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [NSMutableDictionary new];
    r0 = [r21 contentURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r19 setObject:r20 forKeyedSubscript:@"content_url"];
    }
    r0 = [r21 extraData];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r19 setObject:r21 forKeyedSubscript:@"extra_data"];
    }
    r0 = [r19 allKeys];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    if (r23 != 0x0) {
            r24 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
            r0 = [NSJSONSerialization dataWithJSONObject:r24 options:0x0 error:&var_50];
            r22 = [r0 retain];
            r23 = [var_50 retain];
            [r24 release];
            r24 = 0x0;
            if (r22 != 0x0) {
                    r24 = 0x0;
                    if (r23 == 0x0) {
                            r24 = [[NSString alloc] initWithData:r22 encoding:0x4];
                    }
            }
            [r22 release];
            [r23 release];
    }
    else {
            r24 = 0x0;
    }
    var_38 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r24 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setContentURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setExtraData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)extraData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_extraData)), 0x0);
    return r0;
}

-(void *)mediationData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mediationData)), 0x0);
    return r0;
}

-(void)setMediationData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setKeywords:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_keywords, arg2);
    return;
}

-(void *)keywords {
    r0 = self->_keywords;
    return r0;
}

+(void *)createFromJSONString:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r19 = [[arg2 dataUsingEncoding:0x4] retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r19 options:0x0 error:&var_48];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [var_48 retain];
    if (r20 != 0x0) {
            asm { ccmp       x0, #0x0, #0x0, ne };
    }
    r22 = 0x0;
    if (!CPU_FLAGS & NE) {
            r23 = [[r20 objectForKeyedSubscript:@"keywords"] retain];
            r22 = [[FBAdExtraHint alloc] initWithKeywords:r23];
            r25 = [[r20 objectForKeyedSubscript:@"contentURL"] retain];
            [r22 setContentURL:r25];
            [r25 release];
            r24 = [[r20 objectForKeyedSubscript:@"extraData"] retain];
            [r22 setExtraData:r24];
            [r24 release];
            [r23 release];
    }
    [r20 release];
    [r21 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

@end