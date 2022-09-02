@implementation MRScreenSizeProperty

+(void *)propertyWithSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = objc_alloc();
    r0 = [r0 init];
    [r0 setScreenSize:r2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)description {
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(struct CGSize)screenSize {
    r0 = self;
    return r0;
}

-(void)setScreenSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_screenSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

@end