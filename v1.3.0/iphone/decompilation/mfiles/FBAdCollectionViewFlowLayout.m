@implementation FBAdCollectionViewFlowLayout

-(void *)layoutAttributesForElementsInRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x170;
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
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
    r19 = self;
    r0 = [[&var_110 super] layoutAttributesForElementsInRect:r2];
    r0 = [r0 retain];
    r21 = [r0 copy];
    [r0 release];
    [r19 sectionInset];
    v8 = v1;
    v0 = 0x0;
    var_140 = q0;
    r0 = [r21 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r2 = &var_150;
    var_158 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r28 = *var_140;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_140 != r28) {
                                    objc_enumerationMutation(r21);
                            }
                            r27 = *(var_148 + r22 * 0x8);
                            CGRectGetMinY([r27 frame]);
                            if (d0 >= 0xbff0000000000000) {
                                    [r19 sectionInset];
                                    v8 = v1;
                            }
                            CGRectGetMinY([r27 frame]);
                            CGRectGetWidth([r27 frame]);
                            CGRectGetHeight([r27 frame]);
                            v0 = v8;
                            v1 = v9;
                            [r27 setFrame:r2];
                            CGRectGetWidth([r27 frame]);
                            objc_msgSend(r19, r26);
                            d0 = d9 + d0;
                            d8 = d8 + d0;
                            CGRectGetMaxY([r27 frame]);
                            if (d0 < 0xbff0000000000000) {
                                    asm { fcsel      d11, d11, d0, mi };
                            }
                            r22 = r22 + 0x1;
                    } while (r22 < r23);
                    r2 = &var_150;
                    r0 = objc_msgSend(r21, var_158);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_80 = **___stack_chk_guard;
    [r21 release];
    if (**___stack_chk_guard == var_80) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end