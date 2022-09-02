@implementation MCAdjustableLabelAtlasTTF

+(void *)labelWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 vAlignment:(int)arg7 lineBreakMode:(int)arg8 singleLine:(bool)arg9 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:r5 hAlignment:r6 vAlignment:r7 lineBreakMode:var_50 singleLine:stack[-88]];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 vAlignment:(int)arg7 lineBreakMode:(int)arg8 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [self initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:r5 hAlignment:r6 vAlignment:0x0 lineBreakMode:arg8 singleLine:stack[8]];
    return r0;
}

-(void)setDimensions:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    return;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 vAlignment:(int)arg7 lineBreakMode:(int)arg8 singleLine:(bool)arg9 {
    memcpy(&r5, &arg5, 0x8);
    [self setRequestedDimensions:r2];
    [self setForceSingleLine:r7];
    var_70 = self;
    r0 = [[&var_70 super] initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:r5 hAlignment:r6 vAlignment:r7 lineBreakMode:var_70];
    return r0;
}

-(void)setRequestedDimensions:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_10 super] setRequestedDimensions:r2];
    return;
}

-(struct CGSize)requestedDimensions {
    r0 = [[&var_10 super] requestedDimensions];
    return r0;
}

-(void)setMaxFontSize:(double)arg2 {
    r31 = r31 - 0x20;
    asm { fcvt       s0, d0 };
    [[&var_10 super] setFontSize:r2];
    return;
}

-(double)maxFontSize {
    r0 = [[&var_10 super] fontSize];
    asm { fcvt       d0, s0 };
    return r0;
}

-(void)setForceSingleLine:(bool)arg2 {
    [[&var_10 super] setForceSingleLine:arg2];
    return;
}

-(bool)forceSingleLine {
    r0 = [[&var_10 super] forceSingleLine];
    return r0;
}

+(void)setMaxIterations:(unsigned int)arg2 {
    return;
}

+(void)setStabilizationAceptableError:(float)arg2 {
    return;
}

@end