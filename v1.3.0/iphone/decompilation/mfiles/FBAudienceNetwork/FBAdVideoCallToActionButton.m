@implementation FBAdVideoCallToActionButton

-(void *)init {
    r0 = [self initWithText:@""];
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r0 = [self initWithText:@""];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithText:@""];
    return r0;
}

-(void *)initWithText:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] initWithFrame:r2];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setTitle:r19 forState:0x0];
            [r20 sizeToFitText];
            [r20 setDefaults];
    }
    [r19 release];
    r0 = r20;
    return r0;
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
    r19 = self;
    [self frame];
    v8 = v0;
    v9 = v1;
    r0 = [r19 titleLabel];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 font];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r20 release];
    r0 = [r21 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [[r19 titleForState:0x0] retain];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1];
            r22 = [r0 retain];
            [r21 sizeWithAttributes:r22];
            v10 = v0;
            [r22 release];
            [r21 release];
    }
    var_48 = **___stack_chk_guard;
    [r19 setFrame:r2];
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)setDefaults {
    [self setUserInteractionEnabled:0x1];
    r21 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
    [self setBackgroundColor:r21];
    [r21 release];
    [FBAdFont fontSizeExtraSmall];
    r21 = [[FBAdFont sfuiDisplaySemiboldWithSize:r21] retain];
    r0 = [self titleLabel];
    r0 = [r0 retain];
    [r0 setFont:r21];
    [r0 release];
    [r21 release];
    r0 = [self titleLabel];
    r0 = [r0 retain];
    [r0 setLineBreakMode:0x2];
    [r0 release];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [self setTitleColor:r21 forState:0x0];
    [r21 release];
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:r21];
    [r0 release];
    r0 = @class(UIColor);
    r0 = [r0 colorWithUInt:0xffffff withAlpha:0x0];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r20 = r0;
    r22 = [r0 CGColor];
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setBorderColor:r22];
    [r0 release];
    [r20 release];
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setBorderWidth:r22];
    [r0 release];
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setMasksToBounds:0x1];
    [r0 release];
    return;
}

@end