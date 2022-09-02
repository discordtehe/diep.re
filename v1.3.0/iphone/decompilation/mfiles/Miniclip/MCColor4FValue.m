@implementation MCColor4FValue

-(void *)initWithColor4F:(struct _ccColor4F)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x40;
    var_20 = d11;
    stack[-40] = d10;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    if (r0 != 0x0) {
            *(int32_t *)(r0 + 0x8) = s11;
            *(int32_t *)(r0 + 0xc) = s10;
            *(int32_t *)(r0 + 0x10) = s9;
            *(int32_t *)(r0 + 0x14) = s8;
    }
    return r0;
}

+(void *)valueWithColor4F:(struct _ccColor4F)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [MCColor4FValue alloc];
    r0 = [r0 initWithColor4F:r2];
    r0 = [r0 autorelease];
    return r0;
}

-(struct _ccColor4F)color {
    r0 = [self value];
    return r0;
}

+(void *)getNSColor4F:(struct _ccColor4F)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self valueWithColor4F:r2];
    return r0;
}

+(void *)getNSColor4F {
    r0 = [self valueWithColor4F:r2];
    return r0;
}

-(struct _ccColor4F)value {
    r0 = self;
    return r0;
}

@end