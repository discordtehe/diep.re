@implementation FBAdMediationOverlay

-(void *)init {
    r0 = [self initWithString:0x0];
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r0 = [self initWithString:0x0];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithString:0x0];
    return r0;
}

-(void)attachToView:(void *)arg2 {
    r0 = [arg2 retain];
    r19 = r0;
    [r0 bounds];
    [self setFrame:r2];
    [r19 addSubview:self];
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setZPosition:self];
    [r0 release];
    [self setTranslatesAutoresizingMaskIntoConstraints:0x0];
    r23 = [[NSLayoutConstraint constraintWithItem:self attribute:0x9 relatedBy:0x0 toItem:r19 attribute:0x9 multiplier:r7 constant:var_40] retain];
    [r19 addConstraint:r23];
    [r23 release];
    r23 = [[NSLayoutConstraint constraintWithItem:self attribute:0xa relatedBy:0x0 toItem:r19 attribute:0xa multiplier:r7 constant:var_40] retain];
    [r19 addConstraint:r23];
    [r23 release];
    r23 = [[NSLayoutConstraint constraintWithItem:self attribute:0x7 relatedBy:0x0 toItem:r19 attribute:0x7 multiplier:r7 constant:var_40] retain];
    [r19 addConstraint:r23];
    [r23 release];
    r20 = [[NSLayoutConstraint constraintWithItem:self attribute:0x8 relatedBy:0x0 toItem:r19 attribute:0x8 multiplier:r7 constant:var_40] retain];
    [r19 addConstraint:r20];
    [r19 release];
    [r20 release];
    return;
}

-(void *)initWithString:(void *)arg2 {
    r31 = r31 - 0x80;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_100a6694c;

loc_100a66904:
    r0 = [r19 retain];
    r21 = r0;
    if ([r0 length] < 0xfa1) goto loc_100a66954;

loc_100a66924:
    [FBAdDebugLogging logDebugEventWithType:@"bidding" code:0x1 info:0x0];
    goto loc_100a66b28;

loc_100a66b28:
    r22 = 0x0;
    goto loc_100a66b2c;

loc_100a66b2c:
    [r21 release];
    goto loc_100a66b34;

loc_100a66b34:
    var_48 = **___stack_chk_guard;
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100a66954:
    r0 = [[&var_68 super] initWithFrame:r2];
    r20 = r0;
    if (r0 == 0x0) goto loc_100a66a9c;

loc_100a66988:
    r0 = [r21 dataUsingEncoding:0x4];
    r29 = r29;
    r23 = [r0 retain];
    r22 = [[NSData alloc] initWithBase64EncodedData:r23 options:0x0];
    [r23 release];
    r23 = [UIImage alloc];
    [FBAdScreen scale];
    r23 = [r23 initWithData:r22 scale:0x0];
    if (([r20 isValidImage:r23] & 0x1) == 0x0) goto loc_100a66ab0;

loc_100a66a38:
    [r20 setUserInteractionEnabled:0x0];
    r24 = [[UIColor alloc] initWithPatternImage:r23];
    [r20 setBackgroundColor:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    goto loc_100a66a9c;

loc_100a66a9c:
    r0 = [r20 retain];
    r20 = r0;
    r22 = r0;
    goto loc_100a66b2c;

loc_100a66ab0:
    r0 = [NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1];
    r25 = [r0 retain];
    [FBAdDebugLogging logDebugEventWithType:@"bidding" code:0x0 info:r25];
    [r25 release];
    [r23 release];
    [r22 release];
    goto loc_100a66b28;

loc_100a6694c:
    r22 = 0x0;
    goto loc_100a66b34;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdMediationOverlay");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

-(bool)isValidImage:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    [r0 size];
    asm { fcvtzu     x24, d0 };
    objc_msgSend(r23, r19);
    asm { fcvtzu     x25, d1 };
    r19 = 0x1;
    r0 = calloc(r25 * r24, 0x1);
    r20 = r0;
    r2 = r25;
    r22 = CGBitmapContextCreate(r0, r24, r2, 0x8, r24, 0x0, 0x7);
    r0 = objc_retainAutorelease(r23);
    r26 = [r0 CGImage];
    [r0 release];
    asm { ucvtf      d2, x24 };
    asm { ucvtf      d3, x25 };
    CGContextDrawImage(r22, r26, r2);
    if (r21 != 0x0) {
            r8 = 0x0;
            r19 = 0x1;
            r9 = 0x100bfb000;
            d1 = *(r9 + 0xab0);
            do {
                    asm { ucvtf      d2, d2 };
                    asm { fdiv       d2, d2, d0 };
                    if (d2 <= d1) {
                            if (CPU_FLAGS & LE) {
                                    r9 = 0x1;
                            }
                    }
                    r19 = r19 & r9;
                    r8 = r8 + 0x1;
                    if (CPU_FLAGS & LE) {
                            asm { ccmp       x8, x21, #0x2, le };
                    }
            } while (CPU_FLAGS & B);
    }
    CGContextRelease(r22);
    free(r20);
    r0 = r19;
    return r0;
}

@end