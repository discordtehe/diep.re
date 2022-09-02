@implementation FBAdQualityRule

-(void *)init {
    r0 = [self initWithViewableRatio:0x0 viewableSeconds:0x0 continuous:r4 endCallback:r5];
    return r0;
}

-(void *)initWithViewableRatio:(float)arg2 viewableSeconds:(double)arg3 continuous:(bool)arg4 endCallback:(void *)arg5 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r20->_continuous = r21;
            r0 = objc_retainBlock(r19);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_endCallback));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            *(int32_t *)(int64_t *)&r20->_viewableRatio = s9;
            r20->_viewableSeconds = d8;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_endCallback, 0x0);
    return;
}

-(bool)isContinuous {
    r0 = *(int8_t *)(int64_t *)&self->_continuous;
    return r0;
}

-(void *)endCallback {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_endCallback)), 0x0);
    return r0;
}

-(float)viewableRatio {
    r0 = self;
    return r0;
}

-(double)viewableSeconds {
    r0 = self;
    return r0;
}

+(void *)mrcRuleWithEndCallback:(void *)arg2 {
    r0 = [self ruleWithViewableRatio:0x1 viewableSeconds:arg2 continuous:r4 endCallback:r5];
    return r0;
}

+(void *)viewableImpressionRuleWithEndCallback:(void *)arg2 {
    r0 = [self ruleWithViewableRatio:0x0 viewableSeconds:arg2 continuous:r4 endCallback:r5];
    return r0;
}

+(void *)ruleWithViewableRatio:(float)arg2 viewableSeconds:(double)arg3 continuous:(bool)arg4 endCallback:(void *)arg5 {
    r22 = [arg3 retain];
    r19 = [[self alloc] initWithViewableRatio:arg2 viewableSeconds:r22 continuous:arg4 endCallback:arg5];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

@end