@implementation CCAnimationFrame

-(void *)initWithSpriteFrame:(void *)arg2 delayUnits:(float)arg3 userInfo:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    v8 = v0;
    r21 = arg2;
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setSpriteFrame:r21];
            [r20 setDelayUnits:r21];
            [r20 setUserInfo:r19];
    }
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [*(self + 0x18) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)description {
    r20 = @class(NSString);
    [self class];
    asm { fcvt       d0, s0 };
    r0 = [r20 stringWithFormat:r2];
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[[self class] allocWithZone:arg2] initWithSpriteFrame:[[*(self + 0x8) copy] autorelease] delayUnits:[[*(self + 0x18) copy] autorelease] userInfo:r4];
    return r0;
}

-(void *)spriteFrame {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setSpriteFrame:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(float)delayUnits {
    r0 = self;
    return r0;
}

-(void)setDelayUnits:(float)arg2 {
    *(int32_t *)(self + 0x10) = s0;
    return;
}

-(void *)userInfo {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setUserInfo:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end