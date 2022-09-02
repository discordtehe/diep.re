@implementation FBInstreamAdButton

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setDefaults];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setDefaults];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithCoder:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setDefaults];
    }
    r0 = r19;
    return r0;
}

-(void)setDefaults {
    [self setUserInteractionEnabled:0x1];
    r20 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
    [self setBackgroundColor:r20];
    [r20 release];
    r20 = [[UIFont systemFontOfSize:r20] retain];
    [self setFont:r20];
    [r20 release];
    [self setLineBreakMode:0x2];
    [self setTextAlignment:0x1];
    [[UIColor colorWithWhite:0x1 alpha:r3] retain];
    [self setTextColor:r2];
    [r20 release];
    return;
}

-(void)sizeToFitText {
    r31 = r31 - 0x70;
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
    var_48 = **___stack_chk_guard;
    [self frame];
    r20 = [[self text] retain];
    r21 = [[self font] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1];
    r22 = [r0 retain];
    [r20 sizeWithAttributes:r22];
    [r22 release];
    [r21 release];
    [r20 release];
    [self setFrame:r22];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

@end