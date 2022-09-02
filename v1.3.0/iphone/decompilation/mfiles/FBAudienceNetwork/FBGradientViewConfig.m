@implementation FBGradientViewConfig

-(void *)_initWithColors:(void *)arg2 locations:(void *)arg3 startPoint:(struct CGPoint)arg4 endPoint:(struct CGPoint)arg5 backgroundColor:(void *)arg6 opacity:(double)arg7 {
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r4, &arg4, 0x8);
    r31 = r31 - 0x80;
    var_60 = d13;
    stack[-104] = d12;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [r4 retain];
    r0 = [[&var_70 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_colors));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_locations));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_startPoint));
            *(int128_t *)(r22 + r8) = d12;
            *(int128_t *)(0x8 + r22 + r8) = d11;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_endPoint));
            *(int128_t *)(r22 + r8) = d10;
            *(int128_t *)(0x8 + r22 + r8) = d9;
            r0 = [r21 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundColor));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r22->_opacity = d8;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self colors];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [r0 copy];
    r0 = [self locations];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [r0 copy];
    [self startPoint];
    [self endPoint];
    r0 = [self backgroundColor];
    r0 = [r0 retain];
    r25 = [r0 copy];
    [self opacity];
    r21 = [FBGradientViewConfig newWithColors:r20 locations:r24 startPoint:r25 endPoint:r5 backgroundColor:r6 opacity:r7];
    [r25 release];
    [r0 release];
    [r24 release];
    [r23 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_backgroundColor, 0x0);
    objc_storeStrong((int64_t *)&self->_locations, 0x0);
    objc_storeStrong((int64_t *)&self->_colors, 0x0);
    return;
}

-(void *)colors {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_colors)), 0x0);
    return r0;
}

-(void *)locations {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_locations)), 0x0);
    return r0;
}

-(struct CGPoint)startPoint {
    r0 = self;
    return r0;
}

-(struct CGPoint)endPoint {
    r0 = self;
    return r0;
}

-(void *)backgroundColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_backgroundColor)), 0x0);
    return r0;
}

-(double)opacity {
    r0 = self;
    return r0;
}

+(void *)newWithColors:(void *)arg2 locations:(void *)arg3 startPoint:(struct CGPoint)arg4 endPoint:(struct CGPoint)arg5 backgroundColor:(void *)arg6 opacity:(double)arg7 {
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r4, &arg4, 0x8);
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [r4 retain];
    r21 = [[self alloc] _initWithColors:r22 locations:r20 startPoint:r19 endPoint:r5 backgroundColor:r6 opacity:r7];
    [r19 release];
    [r20 release];
    [r22 release];
    r0 = r21;
    return r0;
}

+(void *)viewClass {
    r0 = [FBGradientView class];
    return r0;
}

@end