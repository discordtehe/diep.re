@implementation CCFlipX3D

+(void *)actionWithDuration:(double)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 size:r3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 {
    r0 = [[&var_10 super] initWithDuration:arg2 size:r3];
    return r0;
}

-(void *)initWithSize:(struct CGSize)arg2 duration:(double)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v9 = v2;
    v8 = v1;
    v10 = v0;
    r19 = self;
    if (d10 == 0x3ff0000000000000) {
            asm { fccmp      d1, d0, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            [NSException raise:@"FlipX3D" format:@"Grid size must be (1,1)"];
    }
    r0 = [[&var_40 super] initWithDuration:r2 size:r3];
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithSize:arg2 duration:r3];
    return r0;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    r0 = self;
    var_50 = d13;
    stack[-88] = d12;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    asm { fcvt       s0, d8 };
    r0 = sinf(r0);
    asm { fcvt       d12, s0 };
    asm { fcvt       s0, d0 };
    cosf(r0);
    asm { fcvt       d13, s0 };
    v1 = v8;
    [r19 originalVertex:r2];
    v10 = v8;
    objc_msgSend(r19, r20);
    if (s10 > s0) {
            asm { fcsel      d9, d8, d11, gt };
    }
    if (CPU_FLAGS & G) {
            asm { fcsel      d11, d11, d8, gt };
    }
    if (CPU_FLAGS & G) {
            asm { fcsel      s0, s10, s0, gt };
    }
    r20 = @selector(originalVertex:);
    asm { fcvt       d0, s0 };
    asm { fcvt       s10, d1 };
    asm { fcvt       s0, d0 };
    asm { frintm     s0, s0 };
    objc_msgSend(r19, r20);
    [r19 setVertex:r2 vertex:r3];
    objc_msgSend(r19, r20);
    [r19 setVertex:r2 vertex:r3];
    objc_msgSend(r19, r20);
    [r19 setVertex:r2 vertex:r3];
    objc_msgSend(r19, r20);
    [r19 setVertex:r2 vertex:r3];
    return;
}

@end