@implementation MPAdTargeting

-(void *)initWithCreativeSafeSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setCreativeSafeSize:r2];
    }
    r0 = r19;
    return r0;
}

+(void *)targetingWithCreativeSafeSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = objc_alloc();
    r0 = [r0 initWithCreativeSafeSize:r2];
    r0 = [r0 autorelease];
    return r0;
}

-(struct CGSize)creativeSafeSize {
    r0 = self;
    return r0;
}

-(void)setCreativeSafeSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x28) = d0;
    *(self + 0x30) = d1;
    return;
}

-(void *)keywords {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x0);
    return r0;
}

-(void *)localExtras {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setKeywords:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setLocalExtras:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)location {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void)setUserDataKeywords:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)userDataKeywords {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void)setLocation:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end