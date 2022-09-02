@implementation CCEaseBounce

-(double)bounceTime:(double)arg2 {
    r0 = self;
    if (d0 >= *0x100ba6580) {
            if (d0 < *0x100ba6588) {
                    d0 = (d0 + *0x100ba65b8) * (d0 + *0x100ba65b8) * *0x100ba65a0;
                    d1 = 0x3fe8000000000000;
            }
            else {
                    if (d0 < *0x100ba6590) {
                            d0 = (d0 + *0x100ba65b0) * (d0 + *0x100ba65b0) * *0x100ba65a0;
                            d1 = 0x3fee000000000000;
                    }
                    else {
                            d0 = (d0 + *0x100ba6598) * (d0 + *0x100ba6598) * *0x100ba65a0;
                            d1 = *0x100ba65a8;
                    }
            }
    }
    return r0;
}

@end