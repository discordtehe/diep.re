@implementation MCPURLParser

-(void *)initWithURLString:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r20 = arg2;
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [NSScanner scannerWithString:r20];
            [r20 setCharactersToBeSkipped:[NSCharacterSet characterSetWithCharactersInString:@"&?"]];
            r21 = [NSMutableArray new];
            [r20 scanUpToString:r2 intoString:r3];
            if (objc_msgSend(r20, r22) != 0x0) {
                    do {
                            r25 = @selector(addObject:);
                            [[var_58 copy] autorelease];
                            objc_msgSend(r21, r25);
                    } while ((objc_msgSend(r20, r22) & 0x1) != 0x0);
            }
            [r19 setVariables:r21];
            [r21 release];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [self setVariables:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void *)variables {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)valueForVariable:(void *)arg2 {
    r31 = r31 - 0x140;
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
    r19 = arg2;
    var_110 = q0;
    r0 = [self variables];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    var_128 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_10097a14c;

loc_10097a02c:
    r22 = r0;
    r23 = *var_110;
    goto loc_10097a048;

loc_10097a048:
    r20 = 0x0;
    goto loc_10097a05c;

loc_10097a05c:
    if (*var_110 != r23) {
            objc_enumerationMutation(var_128);
    }
    r24 = @selector(length);
    r28 = *(var_118 + r20 * 0x8);
    if (objc_msgSend(r28, r24) < objc_msgSend(r19, r24) + 0x1) goto loc_10097a0f0;

loc_10097a0a4:
    [r19 length] + 0x1;
    [r28 substringWithRange:r2];
    [r19 stringByAppendingString:r2];
    if ((objc_msgSend(r21, r27) & 0x1) != 0x0) goto loc_10097a12c;

loc_10097a0f0:
    r20 = r20 + 0x1;
    if (r20 < r22) goto loc_10097a05c;

loc_10097a0fc:
    r0 = objc_msgSend(var_128, var_130);
    r22 = r0;
    if (r0 != 0x0) goto loc_10097a048;

loc_10097a14c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10097a12c:
    r0 = [r28 substringFromIndex:[r19 length] + 0x1];
    goto loc_10097a14c;
}

-(void)setVariables:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end