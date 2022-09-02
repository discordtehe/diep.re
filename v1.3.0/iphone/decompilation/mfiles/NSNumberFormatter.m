@implementation NSNumberFormatter

-(void *)safeNumberFromString:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_100aa2c4c;

loc_100aa2bc4:
    [NSString class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100aa2c18;

loc_100aa2bf8:
    r0 = [r20 numberFromString:r19];
    r0 = [r0 retain];
    goto loc_100aa2c44;

loc_100aa2c44:
    r20 = r0;
    goto loc_100aa2c50;

loc_100aa2c50:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_100aa2c18:
    r22 = @selector(isKindOfClass:);
    [NSNumber class];
    if (objc_msgSend(r19, r22) == 0x0) goto loc_100aa2c4c;

loc_100aa2c3c:
    r0 = [r19 retain];
    goto loc_100aa2c44;

loc_100aa2c4c:
    r20 = 0x0;
    goto loc_100aa2c50;
}

+(void *)defaultFormatter {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100eabc00);
    if (*qword_1011ddbf0 != -0x1) {
            dispatch_once(0x1011ddbf0, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddbf8);
    [r19 release];
    r0 = r20;
    return r0;
}

@end