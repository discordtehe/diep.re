@implementation FBGradientView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setUserInteractionEnabled:0x0];
            r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r19 setBackgroundColor:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)setOpacity:(double)arg2 {
    r0 = self;
    asm { fcvt       s8, d0 };
    r0 = [r0 layer];
    r0 = [r0 retain];
    [r0 setOpacity:r2];
    [r19 release];
    return;
}

-(void)setColors:(void *)arg2 {
    r31 = r31 - 0x140;
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
    var_128 = self;
    r20 = [arg2 retain];
    r19 = [NSMutableArray new];
    var_110 = q0;
    r0 = [r20 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r26 = *var_110;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_110 != r26) {
                                    objc_enumerationMutation(r20);
                            }
                            [objc_retainAutorelease(*(var_118 + r21 * 0x8)) CGColor];
                            objc_msgSend(r19, r25);
                            r21 = r21 + 0x1;
                    } while (r21 < r23);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    r0 = [var_128 layer];
    r0 = [r0 retain];
    [r0 setColors:r19];
    [r0 release];
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)setLocations:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setLocations:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)setStartPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setStartPoint:r2];
    [r0 release];
    return;
}

-(void)setEndPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setEndPoint:r2];
    [r0 release];
    return;
}

+(void *)newWithColors:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self new];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setColors:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)newWithColors:(void *)arg2 opacity:(double)arg3 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r0 = [self newWithColors:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setOpacity:r2];
    }
    r0 = r19;
    return r0;
}

+(void *)newWithColors:(void *)arg2 locations:(void *)arg3 opacity:(double)arg4 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [self newWithColors:r21 opacity:r3];
    [r21 release];
    if (r20 != 0x0) {
            [r20 setLocations:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)newWithColors:(void *)arg2 locations:(void *)arg3 startPoint:(struct CGPoint)arg4 endPoint:(struct CGPoint)arg5 opacity:(double)arg6 {
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r4, &arg4, 0x8);
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r21 = [arg2 retain];
    r19 = [self newWithColors:r21 locations:arg3 opacity:r4];
    [r21 release];
    if (r19 != 0x0) {
            [r19 setStartPoint:r2];
            [r19 setEndPoint:r2];
    }
    r0 = r19;
    return r0;
}

+(void *)newWithColors:(void *)arg2 locations:(void *)arg3 startPoint:(struct CGPoint)arg4 endPoint:(struct CGPoint)arg5 backgroundColor:(void *)arg6 opacity:(double)arg7 {
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r4, &arg4, 0x8);
    var_60 = d13;
    stack[-104] = d12;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r19 = [r4 retain];
    r20 = [self newWithColors:r22 locations:r23 startPoint:r4 endPoint:r5 opacity:r6];
    [r23 release];
    [r22 release];
    if (r20 != 0x0) {
            [r20 setBackgroundColor:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)layerClass {
    r0 = [CAGradientLayer class];
    return r0;
}

@end