@implementation UIColor

+(void *)mp_colorFromHexString:(void *)arg2 alpha:(double)arg3 {
    r0 = [NSScanner scannerWithString:arg2];
    r0 = [r0 retain];
    r19 = r0;
    [r0 setScanLocation:0x1];
    [r19 scanHexInt:&var_24];
    r0 = @class(UIColor);
    asm { ubfx       w9, w8, #0x10, #0x8 };
    asm { ucvtf      d0, w9 };
    asm { fdiv       d0, d0, d2 };
    asm { ubfx       w9, w8, #0x8, #0x8 };
    asm { ucvtf      d1, w9 };
    asm { fdiv       d1, d1, d2 };
    asm { ucvtf      d3, w8 };
    r1 = @selector(colorWithRed:green:blue:alpha:);
    asm { fdiv       d2, d3, d2 };
    r20 = [objc_msgSend(r0, r1) retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(double)alpha {
    r0 = objc_retainAutorelease(self);
    CGColorGetComponents([r0 CGColor]);
    r0 = objc_retainAutorelease(r0);
    r0 = [r0 CGColor];
    r0 = CGColorGetNumberOfComponents(r0);
    return r0;
}

+(void *)colorWithUInt:(unsigned int)arg2 withAlpha:(float)arg3 {
    r3 = arg3;
    r2 = arg2;
    r8 = &@class(MCConfigurationData);
    asm { ubfx       w9, w2, #0x10, #0x8 };
    asm { ucvtf      s1, w9 };
    r0 = *(r8 + 0x700);
    asm { fdiv       s1, s1, s2 };
    asm { fcvt       d4, s1 };
    asm { ubfx       w8, w2, #0x8, #0x8 };
    asm { ucvtf      s1, w8 };
    asm { fdiv       s1, s1, s2 };
    asm { ucvtf      s3, w8 };
    asm { fcvt       d1, s1 };
    asm { fdiv       s2, s3, s2 };
    asm { fcvt       d2, s2 };
    asm { fcvt       d3, s0 };
    r0 = [r0 colorWithRed:r2 green:r3 blue:r4 alpha:r5];
    return r0;
}

+(void *)colorWithInteger:(unsigned long long)arg2 {
    r2 = arg2;
    r0 = @class(UIColor);
    asm { ubfx       x8, x2, #0x10, #0x8 };
    asm { ucvtf      s0, x8 };
    asm { fdiv       s0, s0, s3 };
    asm { fcvt       d0, s0 };
    asm { ubfx       x8, x2, #0x8, #0x8 };
    asm { ucvtf      s1, x8 };
    asm { fdiv       s1, s1, s3 };
    asm { fcvt       d1, s1 };
    asm { ucvtf      s2, x8 };
    asm { fdiv       s2, s2, s3 };
    asm { fcvt       d2, s2 };
    asm { ubfx       x8, x2, #0x18, #0x8 };
    asm { ucvtf      s4, x8 };
    asm { fdiv       s3, s4, s3 };
    asm { fcvt       d3, s3 };
    r0 = [r0 colorWithRed:r2 green:r3 blue:r4 alpha:r5];
    return r0;
}

+(void *)colorFromHexString:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0 && [r19 length] >= 0x6) {
            if ([r19 hasPrefix:@"#"] != 0x0) {
                    r0 = [r19 substringFromIndex:0x1];
                    r29 = r29;
                    r0 = [r0 retain];
            }
            else {
                    r0 = [r19 retain];
            }
            r20 = r0;
            r0 = [NSScanner scannerWithString:r20];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 scanHexInt:&var_24] != 0x0) {
                    r0 = @class(UIColor);
                    asm { ubfx       w9, w8, #0x10, #0x8 };
                    asm { ucvtf      d0, w9 };
                    asm { fdiv       d0, d0, d2 };
                    asm { ubfx       w9, w8, #0x8, #0x8 };
                    asm { ucvtf      d1, w9 };
                    asm { fdiv       d1, d1, d2 };
                    asm { ucvtf      d3, w8 };
                    r1 = @selector(colorWithRed:green:blue:alpha:);
                    asm { fdiv       d2, d3, d2 };
                    r22 = [objc_msgSend(r0, r1) retain];
            }
            else {
                    r22 = 0x0;
            }
            [r21 release];
            [r20 release];
    }
    else {
            r22 = 0x0;
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

@end