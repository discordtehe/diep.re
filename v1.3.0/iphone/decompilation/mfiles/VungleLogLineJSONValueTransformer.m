@implementation VungleLogLineJSONValueTransformer

+(bool)allowsReverseTransformation {
    return 0x0;
}

+(void *)transformedValueClass {
    r0 = [NSDictionary class];
    return r0;
}

-(void *)transformedValue:(void *)arg2 {
    r31 = r31 - 0x150;
    var_50 = r28;
    stack[-88] = r27;
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
    r19 = [arg2 retain];
    [NSString class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r0 = [r19 retain];
            r20 = r0;
            r0 = [r0 componentsSeparatedByString:@"','"];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 count] == 0x9) {
                    r0 = [r21 objectAtIndexedSubscript:0x0];
                    r0 = [r0 retain];
                    r28 = [[r0 substringFromIndex:0x1] retain];
                    [r0 release];
                    r26 = [[r21 objectAtIndexedSubscript:0x1] retain];
                    r23 = [[r21 objectAtIndexedSubscript:0x2] retain];
                    r25 = [[NSCharacterSet whitespaceCharacterSet] retain];
                    var_118 = [[r23 stringByTrimmingCharactersInSet:r25] retain];
                    [r25 release];
                    [r23 release];
                    r25 = [[r21 objectAtIndexedSubscript:0x3] retain];
                    var_120 = [[r21 objectAtIndexedSubscript:0x4] retain];
                    r0 = [r21 objectAtIndexedSubscript:0x5];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r0;
                    if (r0 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r0 = r0;
                            }
                            else {
                                    r0 = @"";
                            }
                    }
                    var_128 = [r0 retain];
                    [r23 release];
                    r0 = [r21 objectAtIndexedSubscript:0x6];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r0;
                    if (r0 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r0 = r0;
                            }
                            else {
                                    r0 = @"";
                            }
                    }
                    var_130 = [r0 retain];
                    [r23 release];
                    r0 = [r21 objectAtIndexedSubscript:0x7];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = r0;
                    if (r0 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r0 = r0;
                            }
                            else {
                                    r0 = @"";
                            }
                    }
                    var_138 = [r0 retain];
                    [r27 release];
                    r0 = [r21 objectAtIndexedSubscript:0x8];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = r0;
                    if (r0 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r0 = r0;
                            }
                            else {
                                    r0 = @"";
                            }
                    }
                    r22 = [r0 retain];
                    [r27 release];
                    if ([r22 length] != 0x0) {
                            r0 = [r22 substringToIndex:[r22 length] - 0x1];
                            r29 = r29;
                            r27 = [r0 retain];
                            [r22 release];
                            r22 = r27;
                    }
                    r0 = [NSMutableDictionary dictionary];
                    r29 = r29;
                    r27 = [r0 retain];
                    r24 = var_120;
                    r23 = var_118;
                    if (r28 != 0x0 && r23 != 0x0 && r25 != 0x0) {
                            if (r24 != 0x0) {
                                    r0 = @class(NSDictionary);
                                    var_140 = r26;
                                    r26 = r28;
                                    r0 = [r0 dictionaryWithObjects:&var_A8 forKeys:&var_F0 count:0x9];
                                    r24 = [r0 retain];
                                    r0 = @class(NSDictionary);
                                    r0 = [r0 dictionaryWithObjects:&var_100 forKeys:&var_110 count:0x2];
                                    r28 = [r0 retain];
                                    [r27 addEntriesFromDictionary:r28];
                                    r0 = r28;
                                    r28 = r26;
                                    r26 = var_140;
                                    r23 = var_118;
                                    [r0 release];
                                    r0 = r24;
                                    r24 = var_120;
                                    [r0 release];
                            }
                    }
                    [r22 release];
                    [var_138 release];
                    [var_130 release];
                    [var_128 release];
                    [r24 release];
                    [r25 release];
                    [r23 release];
                    [r26 release];
                    [r28 release];
            }
            else {
                    r27 = 0x0;
            }
            [r21 release];
            [r20 release];
    }
    else {
            r27 = 0x0;
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r27 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end