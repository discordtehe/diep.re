@implementation FBAdLabel

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setupViewWithText:0x0 numberOfLines:0x0 font:0x0];
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
            [r19 setupViewWithText:0x0 numberOfLines:0x0 font:0x0];
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
            [r19 setupViewWithText:0x0 numberOfLines:0x0 font:0x0];
    }
    r0 = r19;
    return r0;
}

-(void)setupViewWithText:(void *)arg2 numberOfLines:(unsigned long long)arg3 font:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r20 = self;
    r19 = [arg4 retain];
    r0 = [UIColor colorWithUInt:0xffffff withAlpha:r3];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r20 setBackgroundColor:r23];
    [r23 release];
    if (r19 != 0x0) {
            [r20 setFont:r19];
    }
    else {
            r0 = [r20 font];
            r29 = r29;
            r23 = [r0 retain];
            [r20 setFont:r23];
            [r23 release];
    }
    [r20 setNumberOfLines:r22];
    [r20 setTextAlignment:0x0];
    [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r20 setTextColor:r2];
    [r21 release];
    [r19 release];
    return;
}

-(void *)initWithText:(void *)arg2 numberOfLines:(unsigned long long)arg3 font:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 setupViewWithText:r19 numberOfLines:r21 font:r20];
            [r22 setText:r19];
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

@end