@implementation FBAdGenericHeight100View

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
            [[&var_40 super] updateView:0x1];
    }
    return;
}

-(void *)fixedHeight {
    r0 = [NSNumber numberWithInt:r2];
    return r0;
}

-(long long)nativeBannerAdViewType {
    return 0x1;
}

@end