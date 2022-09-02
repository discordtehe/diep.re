@implementation CC2FramedSprite

-(void)visit {
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_visible != 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->_shouldFix != 0x0) {
                    sub_1003575dc();
                    [r19 transform];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
                    r8 = *(r19 + r8);
                    if (r8 != 0x0) {
                            r23 = r8->data;
                            if (*r23 != 0x0) {
                                    r0 = sub_1003575dc();
                                    if (*r23 != 0x0) {
                                            r24 = 0x0;
                                            do {
                                                    r20 = @selector(zOrder);
                                                    r22 = *(*(r23 + 0x10) + r24 * 0x8);
                                                    r1 = r20;
                                                    r0 = objc_msgSend(r22, r1);
                                                    if ((r0 & 0xffffffff80000000) == 0x0) {
                                                        break;
                                                    }
                                                    r1 = @selector(visit);
                                                    r0 = objc_msgSend(r22, r1);
                                                    r24 = r24 + 0x1;
                                            } while (r24 < *r23);
                                    }
                                    else {
                                            r1 = @selector(transform);
                                            r24 = 0x0;
                                    }
                                    loc_100357620(r0, r1);
                            }
                            else {
                                    r24 = 0x0;
                            }
                            r1 = @selector(draw);
                            r0 = objc_msgSend(r19, r1);
                            if (*r23 != 0x0) {
                                    r1 = @selector(draw);
                                    r0 = sub_1003575dc();
                                    if (r24 < *r23) {
                                            do {
                                                    r19 = @selector(visit);
                                                    r0 = *(*(r23 + 0x10) + r24 * 0x8);
                                                    r1 = r19;
                                                    r0 = objc_msgSend(r0, r1);
                                                    r24 = r24 + 0x1;
                                            } while (r24 < *r23);
                                    }
                                    r0 = loc_100357620(r0, r1);
                            }
                    }
                    else {
                            r1 = @selector(draw);
                            r0 = objc_msgSend(r19, r1);
                    }
                    loc_100357620(r0, r1);
            }
            else {
                    [[&var_40 super] visit];
            }
    }
    return;
}

@end