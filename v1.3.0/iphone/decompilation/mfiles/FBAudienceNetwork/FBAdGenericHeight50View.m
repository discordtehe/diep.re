@implementation FBAdGenericHeight50View

-(void)updateView:(bool)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            r21 = [@(0x0) retain];
            [r0 setHeaderSize:r21];
            [r21 release];
            r20 = [@(0x0) retain];
            r2 = r20;
            [r0 setMediaViewSize:r2];
            [r20 release];
            r20 = @class(NSNumber);
            [r0 bounds];
            r20 = [[r20 numberWithDouble:r2] retain];
            [r0 setDetailsSize:r20];
            [r20 release];
            [r0 setBodyTextEnabled:0x1];
            [[&var_40 super] updateView:0x1];
    }
    return;
}

-(void *)fixedHeight {
    r0 = [NSNumber numberWithInt:r2];
    return r0;
}

-(long long)nativeBannerAdViewType {
    return 0x5;
}

+(void *)defaultAttributes {
    r0 = [[&var_50 super] defaultAttributes];
    r19 = [r0 retain];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r19 setBackgroundColor:r21];
    [r21 release];
    r21 = [[FBAdFont sfuiTextRegularWithSize:r21] retain];
    [r19 setDescriptionFont:r21];
    [r21 release];
    r21 = [[UIColor colorWithUInt:0x1c1e21 withAlpha:r3] retain];
    [r19 setTitleColor:r21];
    [r21 release];
    r21 = [[FBAdFont sfuiDisplaySemiboldWithSize:r21] retain];
    [r19 setButtonTitleFont:r21];
    [r21 release];
    r20 = [[UIColor colorWithUInt:0x616671 withAlpha:r3] retain];
    [r19 setDescriptionColor:r20];
    [r20 release];
    r20 = [@(NO) retain];
    [r19 setRatingEnabled:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

@end