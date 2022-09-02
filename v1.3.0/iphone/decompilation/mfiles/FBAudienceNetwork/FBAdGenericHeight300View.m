@implementation FBAdGenericHeight300View

-(void)updateView:(bool)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            r20 = [@(0x0) retain];
            [r0 setHeaderSize:r20];
            [r20 release];
            [[&var_30 super] updateView:0x1];
    }
    return;
}

-(void *)fixedHeight {
    r0 = [NSNumber numberWithInt:r2];
    return r0;
}

@end