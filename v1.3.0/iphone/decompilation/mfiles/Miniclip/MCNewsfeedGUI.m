@implementation MCNewsfeedGUI

-(void)preloadMessage:(struct NewsfeedMessage *)arg2 withData:(struct Data *)arg3 landscapeOrientation:(bool)arg4 {
    r31 = r31 - 0xb0;
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
    r24 = arg4;
    r23 = arg2;
    r21 = self;
    r20 = sub_10039b720(arg2);
    r0 = [MCNMessageImageView alloc];
    r0 = [r0 initWithData:arg3 andDelegate:r21 andID:r20];
    r19 = r0;
    if (([r0 hasloaded] & 0x1) == 0x0) goto loc_1003b287c;

loc_1003b269c:
    r22 = r21 + 0x8;
    r25 = *r22;
    r8 = *(r22 + 0x8);
    if (r25 == r8) goto loc_1003b26c8;

loc_1003b26b0:
    if (*(int32_t *)(r25 + 0x28) == r20) goto loc_1003b28a0;

loc_1003b26bc:
    r25 = r25 + 0x30;
    if (r8 != r25) goto loc_1003b26b0;

loc_1003b26c8:
    var_A0 = q0;
    var_90 = q0;
    r0 = r19;
    if (r24 != 0x0) {
            var_98 = [r0 retain];
    }
    else {
            var_A0 = [r0 retain];
    }
    r0 = sub_10039b728(r23);
    r8 = *(int8_t *)(r0 + 0x17);
    r10 = *(r0 + 0x8);
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r8;
            }
            else {
                    r8 = r10;
            }
    }
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    r1 = sub_10039b740(r23);
    r23 = &var_A0 + 0x10;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
    r24 = &var_A0 + 0x28;
    r3 = r21 + 0x18;
    r10 = *r3;
    r8 = *(r3 + 0xfffffffffffffff8);
    if (r8 >= r10) goto loc_1003b2798;

loc_1003b2754:
    q0 = var_A0;
    var_A0 = q1;
    *(int128_t *)r8 = q0;
    q0 = *(int128_t *)r23;
    *(r8 + 0x20) = *(r23 + 0x10);
    *(int128_t *)(r8 + 0x10) = q0;
    *(int128_t *)(r23 + 0x8) = q1;
    *r23 = 0x0;
    r9 = *(int32_t *)r24;
    *(int8_t *)(r8 + 0x2c) = *(int8_t *)(r24 + 0x4);
    *(int32_t *)(r8 + 0x28) = r9;
    *(r21 + 0x10) = r8 + 0x30;
    goto loc_1003b2850;

loc_1003b2850:
    sub_1003d5ff0(sub_1003d44a4());
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    [var_98 release];
    [var_A0 release];
    goto loc_1003b287c;

loc_1003b287c:
    [r19 release];
    return;

loc_1003b2798:
    r11 = *r22;
    r2 = (SAR(r8 - r11, 0x4)) * 0xaaaaaaaaaaaaaaab;
    r8 = r2 + 0x1;
    if (r8 > 0x5555555555555555) goto loc_1003b28e8;

loc_1003b27c4:
    r10 = (SAR(r10 - r11, 0x4)) * 0xaaaaaaaaaaaaaaab;
    r11 = r10 << 0x1;
    if (r11 < r8) {
            if (!CPU_FLAGS & B) {
                    r8 = r11;
            }
            else {
                    r8 = r8;
            }
    }
    if (r10 < 0xaaaaaaaaaaaaaaaa) {
            if (!CPU_FLAGS & B) {
                    r1 = 0x5555555555555555;
            }
            else {
                    r1 = r8;
            }
    }
    sub_1003b5c1c(&stack[-120], r1, r2, r3);
    q0 = var_A0;
    var_A0 = q1;
    *(int128_t *)var_58 = q0;
    q0 = *(int128_t *)r23;
    *(var_58 + 0x20) = *(r23 + 0x10);
    *(int128_t *)(var_58 + 0x10) = q0;
    *(int128_t *)(r23 + 0x8) = q1;
    *r23 = 0x0;
    r9 = *(int32_t *)r24;
    *(int8_t *)(var_58 + 0x2c) = *(int8_t *)(r24 + 0x4);
    *(int32_t *)(var_58 + 0x28) = r9;
    sub_1003b5b80(r22, &stack[-120]);
    sub_1003b5c94(&stack[-120]);
    goto loc_1003b2850;

loc_1003b28e8:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1003b28a0:
    if (r24 == 0x0) goto loc_1003b28bc;

loc_1003b28a4:
    r21 = *(r25 + 0x8);
    if (r21 != 0x0) goto loc_1003b287c;

loc_1003b28ac:
    [r19 retain];
    r25 = r25 + 0x8;
    goto loc_1003b28cc;

loc_1003b28cc:
    *r25 = r19;
    [r21 release];
    sub_1003d5ff0(sub_1003d44a4());
    goto loc_1003b287c;

loc_1003b28bc:
    r21 = *r25;
    if (r21 != 0x0) goto loc_1003b287c;

loc_1003b28c4:
    [r19 retain];
    goto loc_1003b28cc;
}

-(void)removeMessage:(struct NewsfeedMessage *)arg2 {
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
    r22 = self;
    r23 = sub_10039b720(arg2);
    r19 = r22 + 0x8;
    r21 = *r19;
    r20 = *(r19 + 0x8);
    if (r21 == r20 || *(int32_t *)(r21 + 0x28) == r23) goto loc_1003b29b0;

loc_1003b2990:
    r8 = r21 + 0x30;
    goto loc_1003b2994;

loc_1003b2994:
    if (r20 == r8) goto loc_1003b2a4c;

loc_1003b299c:
    r9 = *(int32_t *)(r8 + 0x28);
    r8 = r8 + 0x30;
    if (r9 != r23) goto loc_1003b2994;

loc_1003b29ac:
    r21 = r8 - 0x30;
    goto loc_1003b29b0;

loc_1003b29b0:
    if (r21 != r20) {
            r24 = r21 + 0x30;
            if (r24 != r20) {
                    do {
                            if (*(int32_t *)(r24 + 0x28) != r23) {
                                    r8 = *r24;
                                    *r24 = 0x0;
                                    r0 = *r21;
                                    *r21 = r8;
                                    [r0 release];
                                    r8 = *(r24 + 0x8);
                                    *(r24 + 0x8) = 0x0;
                                    r0 = *(r21 + 0x8);
                                    *(r21 + 0x8) = r8;
                                    [r0 release];
                                    r25 = r21 + 0x10;
                                    if ((sign_extend_64(*(int8_t *)(r21 + 0x27)) & 0xffffffff80000000) != 0x0) {
                                            operator delete(*r25);
                                    }
                                    q0 = *(int128_t *)(r24 + 0x10);
                                    *(r25 + 0x10) = *(r24 + 0x20);
                                    *(int128_t *)r25 = q0;
                                    *(int8_t *)(r24 + 0x27) = 0x0;
                                    *(int8_t *)(r24 + 0x10) = 0x0;
                                    r8 = *(int32_t *)(r24 + 0x28);
                                    *(int8_t *)(r21 + 0x2c) = *(int8_t *)(r24 + 0x2c);
                                    *(int32_t *)(r21 + 0x28) = r8;
                                    r21 = r21 + 0x30;
                            }
                            r24 = r24 + 0x30;
                    } while (r20 != r24);
                    r20 = *(r22 + 0x10);
            }
    }
    goto loc_1003b2a50;

loc_1003b2a50:
    if (r20 != r21) {
            sub_1003b2a94(r19, r21, r20);
    }
    return;

loc_1003b2a4c:
    r21 = r20;
    goto loc_1003b2a50;
}

-(void)clearAllMessages {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = *(int128_t *)(self + 0x8);
    r20 = *(int128_t *)(self + 0x10);
    if (r20 != r21) {
            do {
                    r20 = r20 - 0x30;
                    sub_1003b5ce0(r20);
            } while (r21 != r20);
    }
    *(r19 + 0x10) = r21;
    return;
}

-(bool)alertVisible {
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
    var_110 = q0;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 windows];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    var_130 = r19;
    r0 = objc_msgSend(r19, r1);
    r21 = r0;
    if (r0 == 0x0) goto loc_1003b2d9c;

loc_1003b2c94:
    r19 = *var_110;
    goto loc_1003b2cb0;

loc_1003b2cb0:
    r24 = 0x0;
    goto loc_1003b2ccc;

loc_1003b2ccc:
    if (*var_110 != r19) {
            objc_enumerationMutation(var_130);
    }
    r23 = @selector(count);
    r0 = *(var_118 + r24 * 0x8);
    r0 = [r0 subviews];
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    if (objc_msgSend(r0, r23) == 0x0) goto loc_1003b2d58;

loc_1003b2d0c:
    var_128 = @selector(objectAtIndex:);
    r25 = @selector(class);
    r0 = objc_msgSend(r27, var_128);
    r29 = r29;
    [r0 retain];
    objc_msgSend(@class(UIAlertView), r25);
    r20 = objc_msgSend(r28, r26);
    [r28 release];
    if ((r20 & 0x1) != 0x0) goto loc_1003b2da4;

loc_1003b2d58:
    [r27 release];
    r24 = r24 + 0x1;
    if (r24 < r21) goto loc_1003b2ccc;

loc_1003b2d6c:
    r0 = objc_msgSend(var_130, var_138);
    r21 = r0;
    if (r0 != 0x0) goto loc_1003b2cb0;

loc_1003b2d9c:
    r20 = 0x0;
    goto loc_1003b2db0;

loc_1003b2db0:
    var_60 = **___stack_chk_guard;
    [var_130 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1003b2da4:
    [r27 release];
    r20 = 0x1;
    goto loc_1003b2db0;
}

-(void)newsfeedImageWasPressed:(void *)arg2 {
    sub_1003d6370(sub_1003d44a4(), [[arg2 retain] messageID]);
    [r19 release];
    return;
}

-(unsigned int)loadedMessagesCount {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r21 = [r0 statusBarOrientation];
    [r0 release];
    r8 = *(int128_t *)(r19 + 0x8);
    if (*(int128_t *)(r19 + 0x10) != r8) goto loc_1003b2f18;

loc_1003b2f10:
    r20 = 0x0;
    goto loc_1003b2fb8;

loc_1003b2fb8:
    r0 = r20;
    return r0;

loc_1003b2f18:
    r23 = 0x0;
    r24 = 0x0;
    r20 = 0x0;
    r25 = r21 - 0x3;
    r26 = r21 - 0x1;
    goto loc_1003b2f3c;

loc_1003b2f3c:
    if (r25 > 0x1) goto loc_1003b2f68;

loc_1003b2f44:
    r0 = *(0x8 + r8 + r23);
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) goto loc_1003b2f90;

loc_1003b2f58:
    r0 = [r22 hasloaded];
    goto loc_1003b2f8c;

loc_1003b2f8c:
    r20 = r20 + r0;
    goto loc_1003b2f90;

loc_1003b2f90:
    [r22 release];
    goto loc_1003b2f98;

loc_1003b2f98:
    r24 = r24 + 0x1;
    r8 = *(int128_t *)(r19 + 0x8);
    r23 = r23 + 0x30;
    if ((SAR(*(int128_t *)(r19 + 0x10) - r8, 0x4)) * 0xaaaaaaaaaaaaaaab > r24) goto loc_1003b2f3c;
    goto loc_1003b2fb8;

loc_1003b2f68:
    if (r26 > 0x1) goto loc_1003b2f98;

loc_1003b2f70:
    r0 = *(r8 + r23);
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) goto loc_1003b2f90;

loc_1003b2f80:
    r0 = [r22 hasloaded];
    goto loc_1003b2f8c;
}

-(bool)showBoard:(struct vector<mc::NewsfeedMessage, std::__1::allocator<mc::NewsfeedMessage> > *)arg2 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x270;
    r21 = arg2;
    var_288 = self;
    r0 = @class(UIApplication);
    r0 = [r0 sharedApplication];
    r0 = [r0 retain];
    var_298 = [[r0 keyWindow] retain];
    [r0 release];
    r0 = @class(UIApplication);
    r0 = [r0 sharedApplication];
    r22 = var_288;
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 statusBarOrientation];
    [r0 release];
    if (([r22 hasBuggyRVC] & 0x1) != 0x0) {
            var_290 = 0x0;
    }
    else {
            r0 = sub_1003b0774();
            r29 = r29;
            var_290 = [r0 retain];
    }
    if (var_298 != 0x0 || var_290 != 0x0) goto loc_1003b3444;

loc_1003b3710:
    r19 = 0x0;
    goto loc_1003b3da8;

loc_1003b3da8:
    [var_290 release];
    [var_298 release];
    r0 = r19;
    return r0;

loc_1003b3444:
    r0 = [NSMutableArray arrayWithCapacity:0x5];
    r29 = r29;
    r19 = [r0 retain];
    [r22 setViewsDisplayed:r19];
    [r19 release];
    r25 = *(int128_t *)r21;
    r20 = *(int128_t *)(r21 + 0x8);
    if (r25 == r20) goto loc_1003b3608;

loc_1003b3498:
    var_2C8 = r24;
    stack[-720] = r21;
    r19 = r24 - 0x1;
    r23 = r24 - 0x3;
    goto loc_1003b34e0;

loc_1003b34e0:
    sub_10039b720(r25);
    r0 = objc_msgSend(r22, r26);
    r24 = r0;
    if (*(int32_t *)(r0 + 0x28) == -0x1) goto loc_1003b35f0;

loc_1003b3508:
    r22 = [*r24 retain];
    r28 = [*(r24 + 0x8) retain];
    if (r19 > 0x1 || r22 == 0x0) goto loc_1003b357c;

loc_1003b352c:
    if ([r22 hasloaded] == 0x0) goto loc_1003b35dc;

loc_1003b353c:
    [var_288 portraitWebViewSize];
    [r22 setFrame:r2];
    r0 = objc_msgSend(var_288, r21);
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    [r0 addObject:r22];
    goto loc_1003b35d4;

loc_1003b35d4:
    [r24 release];
    goto loc_1003b35dc;

loc_1003b35dc:
    [r28 release];
    [r22 release];
    r22 = var_288;
    goto loc_1003b35f0;

loc_1003b35f0:
    r25 = r25 + 0x80;
    if (r20 != r25) goto loc_1003b34e0;

loc_1003b35fc:
    r23 = @selector(viewsDisplayed);
    r24 = var_2C8;
    r21 = stack[-720];
    goto loc_1003b360c;

loc_1003b360c:
    r0 = objc_msgSend(r22, r23);
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 count];
    [r0 release];
    if (r20 == 0x0) goto loc_1003b3710;

loc_1003b3644:
    if (var_290 == 0x0) goto loc_1003b3718;

loc_1003b364c:
    if (r24 != 0x1) goto loc_1003b3de0;

loc_1003b3654:
    r0 = [r22 portraitFrame];
    r29 = r29;
    r19 = [r0 retain];
    [r22 setActiveView:r19];
    [r19 release];
    r0 = [r22 portraitContentFrame];
    goto loc_1003b36a4;

loc_1003b36a4:
    r29 = r29;
    r24 = [r0 retain];
    goto loc_1003b36b0;

loc_1003b36b0:
    r19 = [[var_290 view] retain];
    r0 = [r22 activeView];
    r29 = r29;
    r2 = [r0 retain];
    [r19 addSubview:r2];
    [r20 release];
    goto loc_1003b3810;

loc_1003b3810:
    r25 = @selector(count);
    [r19 release];
    r0 = [r22 activeView];
    r0 = [r0 retain];
    [r0 setAlpha:r2];
    [r0 release];
    r0 = objc_msgSend(r22, r23);
    r0 = [r0 retain];
    r19 = r0;
    r0 = objc_msgSend(r0, r25);
    r8 = r0 + r0 * 0x4 << 0x2;
    *(r22 + 0x58) = r8;
    [r19 release];
    r19 = [objc_msgSend(r22, r23) retain];
    r0 = r22;
    r22 = *(r22 + 0x58);
    var_2A0 = r24;
    r0 = objc_msgSend(r0, r23);
    r24 = r23;
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    r0 = objc_msgSend(r0, r25);
    asm { udiv       x8, x22, x0 };
    r0 = [r19 objectAtIndex:r22 - r8 * r0];
    r22 = r21;
    r27 = [r0 retain];
    [r20 release];
    [r19 release];
    r0 = [r27 messageID];
    r21 = var_288;
    var_2B0 = r0;
    r19 = [r21 messageViewInfoForID:r0];
    r0 = [r21 longestActionButtonTextString:r22];
    r29 = r29;
    r20 = [r0 retain];
    [r21 adjustButtonsForButtonText:r20];
    [r20 release];
    if (*(int8_t *)(r19 + 0x2c) != 0x0) {
            r0 = [r21 getIt];
            r0 = [r0 retain];
            [r0 setHidden:0x0];
            [r0 release];
            r0 = [r21 pgetIt];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setHidden:0x0];
            [r0 release];
            r2 = r19 + 0x10;
            if ((sign_extend_64(*(int8_t *)(r19 + 0x27)) & 0xffffffff80000000) != 0x0) {
                    r2 = *r2;
            }
            r0 = [NSString stringWithUTF8String:r2];
            r29 = r29;
            r19 = [r0 retain];
            [r21 setActionButtonText:r19];
    }
    else {
            r0 = [r21 getIt];
            r0 = [r0 retain];
            [r0 setHidden:0x1];
            [r0 release];
            r0 = [r21 pgetIt];
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            [r0 setHidden:0x1];
    }
    r28 = @selector(addSubview:);
    [r19 release];
    objc_msgSend(var_2A0, r28);
    r0 = objc_msgSend(r21, r26);
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 respondsToSelector:@selector(setTitle:)];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [var_288 activeView];
            r29 = r29;
            r0 = [r0 retain];
            r3 = @"News";
            [r0 performSelector:@selector(setTitle:) withObject:r3];
            [r20 release];
    }
    r25 = @selector(count);
    r21 = var_288;
    r0 = objc_msgSend(r21, r24);
    r29 = r29;
    r0 = [r0 retain];
    r20 = objc_msgSend(r0, r25);
    [r0 release];
    if (r20 >= 0x2) {
            r0 = [r21 next];
            r0 = [r0 retain];
            [r0 setHidden:0x0];
            [r0 release];
            r0 = [r21 prev];
            r0 = [r0 retain];
            [r0 setHidden:0x0];
            [r0 release];
            r0 = [r21 pnext];
            r0 = [r0 retain];
            [r0 setHidden:0x0];
            [r0 release];
            r0 = [r21 pprev];
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            [r0 setHidden:0x0];
    }
    else {
            r0 = [r21 next];
            r0 = [r0 retain];
            [r0 setHidden:0x1];
            [r0 release];
            r0 = [r21 prev];
            r0 = [r0 retain];
            [r0 setHidden:0x1];
            [r0 release];
            r0 = [r21 pnext];
            r0 = [r0 retain];
            [r0 setHidden:0x1];
            [r0 release];
            r0 = [r21 pprev];
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            [r0 setHidden:0x1];
    }
    [r19 release];
    [UIView beginAnimations:@"fadein" context:r3];
    [UIView setAnimationDelegate:r21];
    [UIView setAnimationDidStopSelector:@selector(animationDidEnd:finished:), 0x0];
    [UIView setAnimationWillStartSelector:@selector(animationDidStart:context:), 0x0];
    r0 = [r21 activeView];
    r0 = [r0 retain];
    [r0 setAlpha:@selector(animationDidStart:context:), 0x0];
    [r19 release];
    [UIView setAnimationDuration:@selector(animationDidStart:context:), 0x0];
    [UIView commitAnimations];
    [r21 setShowingNews:0x1];
    sub_1003d6158(sub_1003d44a4(), var_2B0);
    [r27 release];
    [var_2A0 release];
    r19 = 0x1;
    goto loc_1003b3da8;

loc_1003b3de0:
    if (r24 == 0x4) goto loc_1003b3f6c;

loc_1003b3de8:
    if (r24 == 0x3) goto loc_1003b3fc0;

loc_1003b3df0:
    if (r24 != 0x2) goto loc_1003b4014;

loc_1003b3df8:
    r0 = [r22 portraitFrame];
    r29 = r29;
    r19 = [r0 retain];
    [r22 setActiveView:r19];
    [r19 release];
    r0 = [r22 portraitContentFrame];
    goto loc_1003b36a4;

loc_1003b4014:
    r24 = 0x0;
    goto loc_1003b36b0;

loc_1003b3fc0:
    r0 = [r22 landscapeFrame];
    r29 = r29;
    r19 = [r0 retain];
    [r22 setActiveView:r19];
    [r19 release];
    r0 = [r22 landscapeContentFrame];
    goto loc_1003b36a4;

loc_1003b3f6c:
    r0 = [r22 landscapeFrame];
    r29 = r29;
    r19 = [r0 retain];
    [r22 setActiveView:r19];
    [r19 release];
    r0 = [r22 landscapeContentFrame];
    goto loc_1003b36a4;

loc_1003b3718:
    if (r24 != 0x1) goto loc_1003b3e4c;

loc_1003b3720:
    r19 = [[r22 portraitFrame] retain];
    [r22 setActiveView:r19];
    [r19 release];
    r8 = *_CGAffineTransformIdentity;
    r0 = [r22 activeView];
    r0 = [r0 retain];
    [r0 setTransform:r29 - 0xd0];
    [r0 release];
    r0 = [r22 portraitContentFrame];
    r29 = r29;
    goto loc_1003b37d8;

loc_1003b37d8:
    r24 = [r0 retain];
    goto loc_1003b37e0;

loc_1003b37e0:
    r0 = [r22 activeView];
    r29 = r29;
    r19 = [r0 retain];
    r2 = r19;
    [var_298 addSubview:r2];
    goto loc_1003b3810;

loc_1003b3e4c:
    if (r24 == 0x2) goto loc_1003b401c;

loc_1003b3e54:
    if (r24 == 0x3) goto loc_1003b40e4;

loc_1003b3e5c:
    if (r24 != 0x4) goto loc_1003b41ec;

loc_1003b3e64:
    r19 = [[r22 landscapeFrame] retain];
    [r22 setActiveView:r19];
    CGAffineTransformMakeRotation([r19 release]);
    r0 = [r22 activeView];
    r0 = [r0 retain];
    [r0 setTransform:&var_1F0];
    [r0 release];
    [var_298 center];
    [[r22 activeView] setCenter:&var_1F0];
    r0 = [r22 landscapeContentFrame];
    r29 = r29;
    goto loc_1003b37d8;

loc_1003b41ec:
    r24 = 0x0;
    goto loc_1003b37e0;

loc_1003b40e4:
    r19 = [[r22 landscapeFrame] retain];
    [r22 setActiveView:r19];
    CGAffineTransformMakeRotation([r19 release]);
    r0 = [r22 activeView];
    r0 = [r0 retain];
    [r0 setTransform:&var_280];
    [r0 release];
    [var_298 center];
    [[r22 activeView] setCenter:&var_280];
    r0 = [r22 landscapeContentFrame];
    r29 = r29;
    goto loc_1003b37d8;

loc_1003b401c:
    r19 = [[r22 portraitFrame] retain];
    [r22 setActiveView:r19];
    CGAffineTransformMakeRotation([r19 release]);
    r0 = [r22 activeView];
    r0 = [r0 retain];
    [r0 setTransform:&var_160];
    [r0 release];
    r0 = [r22 portraitContentFrame];
    r29 = r29;
    goto loc_1003b37d8;

loc_1003b357c:
    if ([r28 hasloaded] == 0x0 || r23 > 0x1 || r28 == 0x0) goto loc_1003b35dc;

loc_1003b3598:
    [var_288 landscapeWebViewSize];
    [r28 setFrame:r2];
    r0 = objc_msgSend(var_288, r21);
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    [r0 addObject:r28];
    goto loc_1003b35d4;

loc_1003b3608:
    r23 = @selector(viewsDisplayed);
    goto loc_1003b360c;
}

-(void *)longestActionButtonTextString:(struct vector<mc::NewsfeedMessage, std::__1::allocator<mc::NewsfeedMessage> > *)arg2 {
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
    r29 = &saved_fp;
    r20 = *(int128_t *)arg2;
    r23 = *(int128_t *)(arg2 + 0x8);
    if (r23 != r20 && r20 != r23) {
            r22 = 0x0;
            r19 = @"";
            do {
                    r0 = sub_10039b740(r20);
                    r8 = *(int8_t *)(r0 + 0x17);
                    r10 = *(int32_t *)(r0 + 0x8);
                    if (sign_extend_64(r8) < 0x0) {
                            if (!CPU_FLAGS & L) {
                                    r25 = r8;
                            }
                            else {
                                    r25 = r10;
                            }
                    }
                    if (r22 < r25) {
                            r0 = sub_10039b740(r20);
                            r8 = sign_extend_64(*(int8_t *)(r0 + 0x17));
                            r9 = *r0;
                            if (r8 < 0x0) {
                            }
                            r0 = [NSString stringWithUTF8String:r2];
                            r29 = r29;
                            r22 = [r0 retain];
                            [r19 release];
                            r19 = r22;
                            r22 = r25;
                    }
                    r20 = r20 + 0x80;
            } while (r23 != r20);
    }
    else {
            r19 = @"";
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)adjustButtonsForButtonText:(void *)arg2 {
    [arg2 retain];
    r0 = [self getIt];
    r0 = [r0 retain];
    [r0 originalFrame];
    [r22 release];
    r0 = [r20 getIt];
    r0 = [r0 retain];
    [r0 adjustToButtonText:r2];
    [r21 release];
    r0 = [r20 next];
    r0 = [r0 retain];
    [r0 resetPosition];
    [r25 release];
    r0 = [r20 next];
    asm { fcvt       s8, d0 };
    r0 = [r0 retain];
    asm { fcvt       d0, s8 };
    [r0 moveHorizontally:r2];
    [r25 release];
    r0 = [r20 prev];
    r0 = [r0 retain];
    objc_msgSend(r0, r21);
    [r26 release];
    r0 = [r20 prev];
    r0 = [r0 retain];
    asm { fcvt       d0, s0 };
    objc_msgSend(r0, r22);
    [r25 release];
    r0 = [r20 pgetIt];
    r0 = [r0 retain];
    objc_msgSend(r0, r23);
    [r26 release];
    r0 = [r20 pgetIt];
    r0 = [r0 retain];
    objc_msgSend(r0, r24);
    [r23 release];
    r0 = [r20 pnext];
    r0 = [r0 retain];
    objc_msgSend(r0, r21);
    [r24 release];
    r0 = [r20 pnext];
    asm { fcvt       s8, d0 };
    r0 = [r0 retain];
    asm { fcvt       d0, s8 };
    objc_msgSend(r0, r22);
    [r23 release];
    r0 = [r20 pprev];
    r0 = [r0 retain];
    objc_msgSend(r0, r21);
    [r24 release];
    r0 = [r20 pprev];
    r0 = [r0 retain];
    asm { fcvt       d0, s0 };
    objc_msgSend(r0, r22);
    [r21 release];
    [r19 release];
    return;
}

-(void)setActionButtonText:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [self getIt];
    r0 = [r0 retain];
    [r0 setButtonText:r19];
    [r0 release];
    r0 = [self pgetIt];
    r0 = [r0 retain];
    [r0 setButtonText:r19];
    [r0 release];
    [r19 release];
    return;
}

-(void)dismissBoard {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self showingNews] != 0x0) {
            [UIView beginAnimations:@"fadeout" context:r3];
            [UIView setAnimationDelegate:r19];
            [UIView setAnimationDidStopSelector:@selector(animationDidEnd:finished:), 0x0];
            [UIView setAnimationWillStartSelector:@selector(animationDidStart:context:), 0x0];
            r0 = [r19 activeView];
            r0 = [r0 retain];
            [r0 setAlpha:@selector(animationDidStart:context:), 0x0];
            [r0 release];
            [UIView setAnimationDuration:@selector(animationDidStart:context:), 0x0];
            [UIView commitAnimations];
    }
    return;
}

-(void)closePressed:(void *)arg2 {
    [self dismissBoard];
    return;
}

-(struct NewsfeedMessageViewInfo *)messageViewInfoForID:(int)arg2 {
    r2 = arg2;
    r0 = *(self + 0x8);
    r8 = *(self + 0x10);
    if (r0 == r8) goto loc_1003b4a00;

loc_1003b49e0:
    if (*(int32_t *)(r0 + 0x28) == r2) goto .l1;

loc_1003b49ec:
    r0 = r0 + 0x30;
    if (r8 != r0) goto loc_1003b49e0;

loc_1003b49f8:
    r0 = 0x1011d68a0;
    return r0;

.l1:
    return r0;

loc_1003b4a00:
    r0 = 0x1011d68a0;
    return r0;
}

-(void)showNext {
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
    r29 = &saved_fp;
    r20 = self;
    if ([self showingNews] != 0x0) {
            r22 = @selector(viewsDisplayed);
            r19 = [objc_msgSend(r20, r22) retain];
            r0 = objc_msgSend(r20, r22);
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            r23 = *0x101137410;
            objc_msgSend(r0, r23);
            asm { udiv       x8, x21, x0 };
            r21 = @selector(objectAtIndex:);
            r0 = objc_msgSend(r19, r21);
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r0 release];
            [r24 release];
            [r19 release];
            *(r20 + 0x58) = *(r20 + 0x58) + 0x1;
            r24 = [objc_msgSend(r20, r22) retain];
            r0 = objc_msgSend(r20, r22);
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            objc_msgSend(r0, r23);
            asm { udiv       x8, x19, x0 };
            r0 = objc_msgSend(r24, r21);
            r29 = r29;
            r19 = [r0 retain];
            [r22 release];
            [r24 release];
            r22 = [r19 messageID];
            r0 = [r20 messageViewInfoForID:r22];
            r23 = r0;
            if (*(int32_t *)(r0 + 0x28) != -0x1) {
                    if (*(int8_t *)(r23 + 0x2c) != 0x0) {
                            r0 = [r20 getIt];
                            r0 = [r0 retain];
                            [r0 setHidden:0x0];
                            [r0 release];
                            r0 = [r20 pgetIt];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = r0;
                            [r0 setHidden:0x0];
                    }
                    else {
                            r0 = [r20 getIt];
                            r0 = [r0 retain];
                            [r0 setHidden:0x1];
                            [r0 release];
                            r0 = [r20 pgetIt];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = r0;
                            [r0 setHidden:0x1];
                    }
                    [r24 release];
                    r2 = r23 + 0x10;
                    if ((sign_extend_64(*(int8_t *)(r23 + 0x27)) & 0xffffffff80000000) != 0x0) {
                            r2 = *r2;
                    }
                    r23 = [[NSString stringWithUTF8String:r2] retain];
                    [r20 setActionButtonText:r23];
                    [r23 release];
                    r0 = [r20 activeView];
                    r0 = [r0 retain];
                    r0 = [r0 subviews];
                    r0 = [r0 retain];
                    r0 = [r0 objectAtIndex:0x0];
                    r0 = [r0 retain];
                    [r0 addSubview:r2];
                    [r21 release];
                    [r24 release];
                    [r23 release];
                    sub_1003d6158(sub_1003d44a4(), r22);
            }
            else {
                    [r20 dismissBoard];
            }
            [r19 release];
    }
    return;
}

-(void)nextPressed:(void *)arg2 {
    [self showNext];
    return;
}

-(void)showPrevious {
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
    r29 = &saved_fp;
    r20 = self;
    if ([self showingNews] != 0x0) {
            r22 = @selector(viewsDisplayed);
            r19 = [objc_msgSend(r20, r22) retain];
            r0 = objc_msgSend(r20, r22);
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            r23 = *0x101137410;
            objc_msgSend(r0, r23);
            asm { udiv       x8, x21, x0 };
            r21 = @selector(objectAtIndex:);
            r0 = objc_msgSend(r19, r21);
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r0 release];
            [r24 release];
            [r19 release];
            *(r20 + 0x58) = *(r20 + 0x58) - 0x1;
            r24 = [objc_msgSend(r20, r22) retain];
            r0 = objc_msgSend(r20, r22);
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            objc_msgSend(r0, r23);
            asm { udiv       x8, x19, x0 };
            r0 = objc_msgSend(r24, r21);
            r29 = r29;
            r19 = [r0 retain];
            [r22 release];
            [r24 release];
            r22 = [r19 messageID];
            r0 = [r20 messageViewInfoForID:r22];
            r23 = r0;
            if (*(int32_t *)(r0 + 0x28) != -0x1) {
                    if (*(int8_t *)(r23 + 0x2c) != 0x0) {
                            r0 = [r20 getIt];
                            r0 = [r0 retain];
                            [r0 setHidden:0x0];
                            [r0 release];
                            r0 = [r20 pgetIt];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = r0;
                            [r0 setHidden:0x0];
                    }
                    else {
                            r0 = [r20 getIt];
                            r0 = [r0 retain];
                            [r0 setHidden:0x1];
                            [r0 release];
                            r0 = [r20 pgetIt];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = r0;
                            [r0 setHidden:0x1];
                    }
                    [r24 release];
                    r2 = r23 + 0x10;
                    if ((sign_extend_64(*(int8_t *)(r23 + 0x27)) & 0xffffffff80000000) != 0x0) {
                            r2 = *r2;
                    }
                    r23 = [[NSString stringWithUTF8String:r2] retain];
                    [r20 setActionButtonText:r23];
                    [r23 release];
                    r0 = [r20 activeView];
                    r0 = [r0 retain];
                    r0 = [r0 subviews];
                    r0 = [r0 retain];
                    r0 = [r0 objectAtIndex:0x0];
                    r0 = [r0 retain];
                    [r0 addSubview:r2];
                    [r21 release];
                    [r24 release];
                    [r23 release];
                    sub_1003d6158(sub_1003d44a4(), r22);
            }
            else {
                    [r20 dismissBoard];
            }
            [r19 release];
    }
    return;
}

-(void)prevPressed:(void *)arg2 {
    [self showPrevious];
    return;
}

-(void)getItPressed:(void *)arg2 {
    r19 = [[self viewsDisplayed] retain];
    r22 = *(self + 0x58);
    r0 = [self viewsDisplayed];
    r0 = [r0 retain];
    r21 = r0;
    r8 = 0x101137000;
    r0 = objc_msgSend(r0, *(r8 + 0x410));
    asm { udiv       x8, x22, x0 };
    r20 = [[r19 objectAtIndex:r22 - r8 * r0] retain];
    [r21 release];
    [r19 release];
    sub_1003d6310(sub_1003d44a4(), [r20 messageID]);
    [r20 release];
    return;
}

-(void)animationDidEnd:(void *)arg2 finished:(void *)arg3 {
    r31 = r31 - 0x130;
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 isEqualToString:r2] != 0x0) {
            sub_1003d5d20(sub_1003d44a4());
    }
    if ([r19 isEqualToString:r2] != 0x0) {
            var_110 = q0;
            r0 = [r20 viewsDisplayed];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            r23 = r0;
            if (r0 != 0x0) {
                    r26 = *var_110;
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_110 != r26) {
                                            objc_enumerationMutation(r21);
                                    }
                                    [*(var_118 + r27 * 0x8) removeFromSuperview];
                                    r27 = r27 + 0x1;
                            } while (r27 < r23);
                            r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r23 = r0;
                    } while (r0 != 0x0);
            }
            [r21 release];
            r0 = [r20 activeView];
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r21 release];
            [r20 setShowingNews:0x0];
            sub_1003d5e88(sub_1003d44a4());
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)animationDidStart:(void *)arg2 context:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 isEqualToString:r2] != 0x0) {
            sub_1003d5a50(sub_1003d44a4());
    }
    if ([r19 isEqualToString:r2] != 0x0) {
            sub_1003d5bb8(sub_1003d44a4());
    }
    [r19 release];
    return;
}

-(bool)hasBuggyRVC {
    var_30 = r28;
    stack[-56] = r27;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xffffffffffffffc0 - 0x510;
    uname(&stack[-1352]);
    r19 = [[NSString stringWithCString:&stack[-1352] + 0x400 encoding:[NSString defaultCStringEncoding]] retain];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 isEqualToString:r2] != 0x0) {
            r22 = @selector(isEqualToString:);
            r22 = objc_msgSend(r19, r22);
            [r21 release];
            [r20 release];
            if ((r22 & 0x1) != 0x0) {
                    r20 = 0x1;
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            [r21 release];
            [r20 release];
            r20 = 0x0;
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)showingNews {
    r0 = *(int8_t *)(self + 0x20);
    return r0;
}

-(void)setShowingNews:(bool)arg2 {
    *(int8_t *)(self + 0x20) = arg2;
    return;
}

-(void *)landscapeFrame {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setLandscapeFrame:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void *)portraitFrame {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setPortraitFrame:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void *)landscapeContentFrame {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setLandscapeContentFrame:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void *)portraitContentFrame {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setPortraitContentFrame:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(struct CGRect)landscapeWebViewSize {
    r0 = self;
    return r0;
}

-(void)setLandscapeWebViewSize:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x90) = d0;
    *(self + 0x98) = d1;
    *(self + 0xa0) = d2;
    *(self + 0xa8) = d3;
    return;
}

-(struct CGRect)portraitWebViewSize {
    r0 = self;
    return r0;
}

-(void)initBoard {
    r31 = r31 - 0xd0;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    [r0 bounds];
    v10 = v0;
    v9 = v1;
    v8 = v2;
    v12 = v3;
    [r0 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 systemVersion];
    r29 = &var_10;
    r0 = [r0 retain];
    r22 = r0;
    [r0 floatValue];
    if (s0 >= 0x4020000000000000) {
            if (CPU_FLAGS & GE) {
                    r24 = 0x1;
            }
    }
    if (d8 > d12) {
            if (CPU_FLAGS & G) {
                    r25 = 0x1;
            }
    }
    [r22 release];
    [r21 release];
    if ((r25 & r24) != 0x0) {
            asm { fcsel      d11, d12, d8, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { fcsel      d8, d8, d12, ne };
    }
    r0 = [UIDevice currentDevice];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [UIDevice currentDevice];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 userInterfaceIdiom];
            [r0 release];
            [r21 release];
            if (r22 != 0x0) {
                    r21 = [[UIView alloc] initWithFrame:@selector(userInterfaceIdiom)];
                    [r19 setLandscapeFrame:r21];
                    [r21 release];
                    r21 = [[UIColor colorWithRed:r21 green:r3 blue:r4 alpha:r5] retain];
                    r0 = [r19 landscapeFrame];
                    r0 = [r0 retain];
                    [r0 setBackgroundColor:r21];
                    [r0 release];
                    [r21 release];
                    r0 = [r19 landscapeFrame];
                    r0 = [r0 retain];
                    [r0 setUserInteractionEnabled:0x1];
                    [r0 release];
                    r21 = [[UIView alloc] initWithFrame:0x1];
                    [r19 setPortraitFrame:r21];
                    [r21 release];
                    r21 = [[UIColor colorWithRed:r21 green:r3 blue:r4 alpha:r5] retain];
                    r0 = [r19 portraitFrame];
                    r0 = [r0 retain];
                    [r0 setBackgroundColor:r21];
                    [r0 release];
                    [r21 release];
                    r0 = [r19 portraitFrame];
                    r0 = [r0 retain];
                    [r0 setUserInteractionEnabled:0x1];
                    [r0 release];
                    r21 = [[MCNNewsFrameViewPortraitiPad alloc] initWithFrame:0x1];
                    [r19 setPortraitContentFrame:r21];
                    [r21 release];
                    r21 = [[MCNNewsFrameViewLandscapeiPad alloc] initWithFrame:r21];
                    [r19 setLandscapeContentFrame:r21];
                    [r21 release];
                    r0 = @class(MCNCloseButton);
                    r0 = [r0 alloc];
                    r0 = [r0 initWithFrame:r21];
                    r23 = r0;
                    [r0 addTarget:r19 action:@selector(closePressed:) forControlEvents:0x40];
                    r0 = [r19 landscapeContentFrame];
                    r0 = [r0 retain];
                    [r0 addSubview:r23];
                    [r0 release];
                    r20 = [[MCNCloseButton alloc] initWithFrame:r23];
                    [r23 release];
                    [r20 addTarget:r19 action:@selector(closePressed:) forControlEvents:0x40];
                    r0 = [r19 portraitContentFrame];
                    r0 = [r0 retain];
                    [r0 addSubview:r20];
                    [r0 release];
                    r23 = [[MCNNextButton alloc] initWithFrame:r20 forScale:@selector(closePressed:)];
                    [r19 setNext:r23];
                    [r23 release];
                    r23 = [[MCNBackButton alloc] initWithFrame:r23 forScale:@selector(closePressed:)];
                    [r19 setPrev:r23];
                    [r23 release];
                    r23 = [[MCNGetitButton alloc] initWithFrame:r23 forScale:@selector(closePressed:)];
                    [r19 setGetIt:r23];
                    [r23 release];
                    r0 = [r19 next];
                    r0 = [r0 retain];
                    [r0 addTarget:r19 action:@selector(closePressed:) forControlEvents:0x40];
                    [r0 release];
                    r0 = [r19 prev];
                    r0 = [r0 retain];
                    [r0 addTarget:r19 action:@selector(closePressed:) forControlEvents:0x40];
                    [r0 release];
                    r0 = [r19 getIt];
                    r0 = [r0 retain];
                    [r0 addTarget:r19 action:@selector(closePressed:) forControlEvents:0x40];
                    [r0 release];
                    r26 = [[r19 landscapeContentFrame] retain];
                    r23 = [[r19 next] retain];
                    [r26 addSubview:r23];
                    [r23 release];
                    [r26 release];
                    r23 = [[r19 landscapeContentFrame] retain];
                    r25 = [[r19 prev] retain];
                    [r23 addSubview:r25];
                    [r25 release];
                    [r23 release];
                    r23 = [[r19 landscapeContentFrame] retain];
                    r25 = [[r19 getIt] retain];
                    [r23 addSubview:r25];
                    [r25 release];
                    [r23 release];
                    r0 = [r19 landscapeFrame];
                    r0 = [r0 retain];
                    [r0 center];
                    [[r19 landscapeContentFrame] setCenter:r25];
                    [r0 release];
                    r23 = [[r19 landscapeFrame] retain];
                    r22 = [[r19 landscapeContentFrame] retain];
                    [r23 addSubview:r22];
                    [r22 release];
                    [r23 release];
                    r22 = [[MCNNextButton alloc] initWithFrame:r22 forScale:@selector(closePressed:)];
                    [r19 setPnext:r22];
                    [r22 release];
                    r22 = [[MCNBackButton alloc] initWithFrame:r22 forScale:@selector(closePressed:)];
                    [r19 setPprev:r22];
                    [r22 release];
                    r22 = [[MCNGetitButton alloc] initWithFrame:r22 forScale:@selector(closePressed:)];
                    [r19 setPgetIt:r22];
                    [r22 release];
                    r0 = [r19 pnext];
                    r0 = [r0 retain];
                    [r0 addTarget:r19 action:@selector(nextPressed:) forControlEvents:0x40];
                    [r0 release];
                    r0 = [r19 pprev];
                    r0 = [r0 retain];
                    [r0 addTarget:r19 action:@selector(prevPressed:) forControlEvents:0x40];
                    [r0 release];
                    r0 = [r19 pgetIt];
                    r0 = [r0 retain];
                    [r0 addTarget:r19 action:@selector(getItPressed:) forControlEvents:0x40];
                    [r0 release];
                    r25 = [[r19 portraitContentFrame] retain];
                    r23 = [[r19 pnext] retain];
                    [r25 addSubview:r23];
                    [r23 release];
                    [r25 release];
                    r23 = [[r19 portraitContentFrame] retain];
                    r24 = [[r19 pprev] retain];
                    [r23 addSubview:r24];
                    [r24 release];
                    [r23 release];
                    r23 = [[r19 portraitContentFrame] retain];
                    r22 = [[r19 pgetIt] retain];
                    [r23 addSubview:r22];
                    [r22 release];
                    [r23 release];
                    r0 = [r19 portraitFrame];
                    r0 = [r0 retain];
                    [r0 center];
                    [[r19 portraitContentFrame] setCenter:r22];
                    [r0 release];
                    r22 = [[r19 portraitFrame] retain];
                    r23 = [[r19 portraitContentFrame] retain];
                    [r22 addSubview:r23];
                    [r23 release];
                    [r22 release];
                    [r19 setLandscapeWebViewSize:r23];
                    [r19 setPortraitWebViewSize:r23];
            }
            else {
                    r0 = @class(UIView);
                    r25 = @selector(alloc);
                    r0 = objc_msgSend(r0, r25);
                    var_98 = @selector(initWithFrame:);
                    r21 = [r0 initWithFrame:@selector(userInterfaceIdiom)];
                    [r19 setLandscapeFrame:r21];
                    [r21 release];
                    r21 = [objc_msgSend(@class(UIColor), r25) initWithRed:r21 green:r3 blue:r4 alpha:r5];
                    r27 = @selector(landscapeFrame);
                    r0 = objc_msgSend(r19, r27);
                    r0 = [r0 retain];
                    [r0 setBackgroundColor:r21];
                    [r0 release];
                    [r21 release];
                    r0 = objc_msgSend(r19, r27);
                    r0 = [r0 retain];
                    [r0 setUserInteractionEnabled:0x1];
                    [r0 release];
                    r0 = @class(UIView);
                    r0 = objc_msgSend(r0, r25);
                    r21 = objc_msgSend(r0, var_98);
                    [r19 setPortraitFrame:r21];
                    [r21 release];
                    r21 = [objc_msgSend(@class(UIColor), r25) initWithRed:r21 green:r3 blue:r4 alpha:r5];
                    r24 = @selector(portraitFrame);
                    r0 = objc_msgSend(r19, r24);
                    r0 = [r0 retain];
                    [r0 setBackgroundColor:r21];
                    [r0 release];
                    [r21 release];
                    r0 = objc_msgSend(r19, r24);
                    r0 = [r0 retain];
                    r21 = r0;
                    r2 = 0x1;
                    [r0 setUserInteractionEnabled:r2];
                    asm { fcvt       s8, d0 };
                    asm { fcvt       d9, s0 };
                    [r21 release];
                    r21 = [objc_msgSend(@class(MCNNewsFrameViewPortrait), r25) initWithFrame:r2 yOffset:r3];
                    [r19 setPortraitContentFrame:r21];
                    var_B8 = r24;
                    var_B0 = r27;
                    [r21 release];
                    r0 = objc_msgSend(@class(MCNNewsFrameViewLandscape), r25);
                    r21 = [r0 initWithFrame:r21 xOffset:r3];
                    [r19 setLandscapeContentFrame:r21];
                    [r21 release];
                    r0 = *(&@class(ADCTransitionalContainer) + 0x8d0);
                    r0 = objc_msgSend(r0, r25);
                    asm { fcvt       d0, s0 };
                    r0 = objc_msgSend(r0, var_98);
                    [r0 addTarget:r2 action:r3 forControlEvents:r4];
                    r0 = [r19 landscapeContentFrame];
                    r0 = [r0 retain];
                    var_A0 = @selector(addSubview:);
                    [r0 addSubview:r23];
                    [r0 release];
                    r0 = *(r24 + 0x8d0);
                    r0 = objc_msgSend(r0, r25);
                    asm { fcvt       d1, s0 };
                    r20 = objc_msgSend(r0, var_98);
                    [r23 release];
                    objc_msgSend(r20, r28);
                    var_A8 = @selector(portraitContentFrame);
                    r0 = [r19 portraitContentFrame];
                    r0 = [r0 retain];
                    objc_msgSend(r0, var_A0);
                    [r23 release];
                    r0 = objc_msgSend(@class(MCNNextButton), r25);
                    asm { fcvt       d0, s0 };
                    r23 = objc_msgSend(r0, var_98);
                    [r19 setNext:r23];
                    [r23 release];
                    r0 = objc_msgSend(@class(MCNBackButton), r25);
                    asm { fcvt       d0, s0 };
                    r23 = objc_msgSend(r0, var_98);
                    [r19 setPrev:r23];
                    [r23 release];
                    r0 = objc_msgSend(@class(MCNGetitButton), r25);
                    asm { fcvt       d0, s0 };
                    r23 = objc_msgSend(r0, var_98);
                    [r19 setGetIt:r23];
                    [r23 release];
                    r0 = [r19 next];
                    r0 = [r0 retain];
                    objc_msgSend(r0, r28);
                    [r24 release];
                    r0 = [r19 prev];
                    r0 = [r0 retain];
                    objc_msgSend(r0, r28);
                    [r24 release];
                    r0 = [r19 getIt];
                    r0 = [r0 retain];
                    objc_msgSend(r0, r28);
                    [r24 release];
                    r24 = [objc_msgSend(r19, r22) retain];
                    [[r19 next] retain];
                    objc_msgSend(r24, var_A0);
                    [r23 release];
                    [r24 release];
                    r23 = [objc_msgSend(r19, r22) retain];
                    [[r19 prev] retain];
                    objc_msgSend(r23, var_A0);
                    [r24 release];
                    [r23 release];
                    r23 = [objc_msgSend(r19, r22) retain];
                    [[r19 getIt] retain];
                    objc_msgSend(r23, var_A0);
                    [r24 release];
                    [r23 release];
                    r0 = objc_msgSend(r19, var_B0);
                    r0 = [r0 retain];
                    [r0 center];
                    r0 = objc_msgSend(r19, r22);
                    [r0 setCenter:r2];
                    [r23 release];
                    r23 = [objc_msgSend(r19, var_B0) retain];
                    r0 = objc_msgSend(r19, r22);
                    [r0 retain];
                    objc_msgSend(r23, var_A0);
                    [r22 release];
                    [r23 release];
                    r0 = objc_msgSend(@class(MCNNextButton), r25);
                    asm { fcvt       d0, s8 };
                    r22 = objc_msgSend(r0, var_98);
                    [r19 setPnext:r22];
                    [r22 release];
                    r22 = objc_msgSend(objc_msgSend(@class(MCNBackButton), r25), var_98);
                    [r19 setPprev:r22];
                    [r22 release];
                    r22 = objc_msgSend(objc_msgSend(@class(MCNGetitButton), r25), var_98);
                    [r19 setPgetIt:r22];
                    [r22 release];
                    r0 = [r19 pnext];
                    r0 = [r0 retain];
                    objc_msgSend(r0, r28);
                    [r22 release];
                    r0 = [r19 pprev];
                    r0 = [r0 retain];
                    objc_msgSend(r0, r28);
                    [r22 release];
                    r0 = [r19 pgetIt];
                    r0 = [r0 retain];
                    objc_msgSend(r0, r28);
                    [r25 release];
                    r25 = [objc_msgSend(r19, var_A8) retain];
                    [[r19 pnext] retain];
                    objc_msgSend(r25, var_A0);
                    [r23 release];
                    [r25 release];
                    r23 = [objc_msgSend(r19, var_A8) retain];
                    [[r19 pprev] retain];
                    objc_msgSend(r23, var_A0);
                    [r24 release];
                    [r23 release];
                    r23 = [objc_msgSend(r19, var_A8) retain];
                    [[r19 pgetIt] retain];
                    objc_msgSend(r23, var_A0);
                    [r22 release];
                    [r23 release];
                    r0 = objc_msgSend(r19, var_B8);
                    r0 = [r0 retain];
                    objc_msgSend(r0, r26);
                    objc_msgSend(objc_msgSend(r19, var_A8), r27);
                    [r22 release];
                    r22 = [objc_msgSend(r19, var_B8) retain];
                    [objc_msgSend(r19, var_A8) retain];
                    objc_msgSend(r22, var_A0);
                    [r23 release];
                    [r22 release];
                    asm { fcvt       d0, s0 };
                    [r19 setLandscapeWebViewSize:r2];
                    asm { fcvt       d1, s0 };
                    [r19 setPortraitWebViewSize:r2];
            }
    }
    else {
            [r21 release];
            r0 = @class(UIView);
            r25 = @selector(alloc);
            r0 = objc_msgSend(r0, r25);
            var_98 = @selector(initWithFrame:);
            r21 = [r0 initWithFrame:@selector(userInterfaceIdiom)];
            [r19 setLandscapeFrame:r21];
            [r21 release];
            r21 = [objc_msgSend(@class(UIColor), r25) initWithRed:r21 green:r3 blue:r4 alpha:r5];
            r27 = @selector(landscapeFrame);
            r0 = objc_msgSend(r19, r27);
            r0 = [r0 retain];
            [r0 setBackgroundColor:r21];
            [r0 release];
            [r21 release];
            r0 = objc_msgSend(r19, r27);
            r0 = [r0 retain];
            [r0 setUserInteractionEnabled:0x1];
            [r0 release];
            r0 = @class(UIView);
            r0 = objc_msgSend(r0, r25);
            r21 = objc_msgSend(r0, var_98);
            [r19 setPortraitFrame:r21];
            [r21 release];
            r21 = [objc_msgSend(@class(UIColor), r25) initWithRed:r21 green:r3 blue:r4 alpha:r5];
            r24 = @selector(portraitFrame);
            r0 = objc_msgSend(r19, r24);
            r0 = [r0 retain];
            [r0 setBackgroundColor:r21];
            [r0 release];
            [r21 release];
            r0 = objc_msgSend(r19, r24);
            r0 = [r0 retain];
            r21 = r0;
            r2 = 0x1;
            [r0 setUserInteractionEnabled:r2];
            asm { fcvt       s8, d0 };
            asm { fcvt       d9, s0 };
            [r21 release];
            r21 = [objc_msgSend(@class(MCNNewsFrameViewPortrait), r25) initWithFrame:r2 yOffset:r3];
            [r19 setPortraitContentFrame:r21];
            var_B8 = r24;
            var_B0 = r27;
            [r21 release];
            r0 = objc_msgSend(@class(MCNNewsFrameViewLandscape), r25);
            r21 = [r0 initWithFrame:r21 xOffset:r3];
            [r19 setLandscapeContentFrame:r21];
            [r21 release];
            r0 = *(&@class(ADCTransitionalContainer) + 0x8d0);
            r0 = objc_msgSend(r0, r25);
            asm { fcvt       d0, s0 };
            r0 = objc_msgSend(r0, var_98);
            [r0 addTarget:r2 action:r3 forControlEvents:r4];
            r0 = [r19 landscapeContentFrame];
            r0 = [r0 retain];
            var_A0 = @selector(addSubview:);
            [r0 addSubview:r23];
            [r0 release];
            r0 = *(r24 + 0x8d0);
            r0 = objc_msgSend(r0, r25);
            asm { fcvt       d1, s0 };
            r20 = objc_msgSend(r0, var_98);
            [r23 release];
            objc_msgSend(r20, r28);
            var_A8 = @selector(portraitContentFrame);
            r0 = [r19 portraitContentFrame];
            r0 = [r0 retain];
            objc_msgSend(r0, var_A0);
            [r23 release];
            r0 = objc_msgSend(@class(MCNNextButton), r25);
            asm { fcvt       d0, s0 };
            r23 = objc_msgSend(r0, var_98);
            [r19 setNext:r23];
            [r23 release];
            r0 = objc_msgSend(@class(MCNBackButton), r25);
            asm { fcvt       d0, s0 };
            r23 = objc_msgSend(r0, var_98);
            [r19 setPrev:r23];
            [r23 release];
            r0 = objc_msgSend(@class(MCNGetitButton), r25);
            asm { fcvt       d0, s0 };
            r23 = objc_msgSend(r0, var_98);
            [r19 setGetIt:r23];
            [r23 release];
            r0 = [r19 next];
            r0 = [r0 retain];
            objc_msgSend(r0, r28);
            [r24 release];
            r0 = [r19 prev];
            r0 = [r0 retain];
            objc_msgSend(r0, r28);
            [r24 release];
            r0 = [r19 getIt];
            r0 = [r0 retain];
            objc_msgSend(r0, r28);
            [r24 release];
            r24 = [objc_msgSend(r19, r22) retain];
            [[r19 next] retain];
            objc_msgSend(r24, var_A0);
            [r23 release];
            [r24 release];
            r23 = [objc_msgSend(r19, r22) retain];
            [[r19 prev] retain];
            objc_msgSend(r23, var_A0);
            [r24 release];
            [r23 release];
            r23 = [objc_msgSend(r19, r22) retain];
            [[r19 getIt] retain];
            objc_msgSend(r23, var_A0);
            [r24 release];
            [r23 release];
            r0 = objc_msgSend(r19, var_B0);
            r0 = [r0 retain];
            [r0 center];
            r0 = objc_msgSend(r19, r22);
            [r0 setCenter:r2];
            [r23 release];
            r23 = [objc_msgSend(r19, var_B0) retain];
            r0 = objc_msgSend(r19, r22);
            [r0 retain];
            objc_msgSend(r23, var_A0);
            [r22 release];
            [r23 release];
            r0 = objc_msgSend(@class(MCNNextButton), r25);
            asm { fcvt       d0, s8 };
            r22 = objc_msgSend(r0, var_98);
            [r19 setPnext:r22];
            [r22 release];
            r22 = objc_msgSend(objc_msgSend(@class(MCNBackButton), r25), var_98);
            [r19 setPprev:r22];
            [r22 release];
            r22 = objc_msgSend(objc_msgSend(@class(MCNGetitButton), r25), var_98);
            [r19 setPgetIt:r22];
            [r22 release];
            r0 = [r19 pnext];
            r0 = [r0 retain];
            objc_msgSend(r0, r28);
            [r22 release];
            r0 = [r19 pprev];
            r0 = [r0 retain];
            objc_msgSend(r0, r28);
            [r22 release];
            r0 = [r19 pgetIt];
            r0 = [r0 retain];
            objc_msgSend(r0, r28);
            [r25 release];
            r25 = [objc_msgSend(r19, var_A8) retain];
            [[r19 pnext] retain];
            objc_msgSend(r25, var_A0);
            [r23 release];
            [r25 release];
            r23 = [objc_msgSend(r19, var_A8) retain];
            [[r19 pprev] retain];
            objc_msgSend(r23, var_A0);
            [r24 release];
            [r23 release];
            r23 = [objc_msgSend(r19, var_A8) retain];
            [[r19 pgetIt] retain];
            objc_msgSend(r23, var_A0);
            [r22 release];
            [r23 release];
            r0 = objc_msgSend(r19, var_B8);
            r0 = [r0 retain];
            objc_msgSend(r0, r26);
            objc_msgSend(objc_msgSend(r19, var_A8), r27);
            [r22 release];
            r22 = [objc_msgSend(r19, var_B8) retain];
            [objc_msgSend(r19, var_A8) retain];
            objc_msgSend(r22, var_A0);
            [r23 release];
            [r22 release];
            asm { fcvt       d0, s0 };
            [r19 setLandscapeWebViewSize:r2];
            asm { fcvt       d1, s0 };
            [r19 setPortraitWebViewSize:r2];
    }
    [r20 release];
    return;
}

-(void)setPortraitWebViewSize:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0xb0) = d0;
    *(self + 0xb8) = d1;
    *(self + 0xc0) = d2;
    *(self + 0xc8) = d3;
    return;
}

-(void *)activeView {
    r0 = *(self + 0x48);
    return r0;
}

-(void)setActiveView:(void *)arg2 {
    objc_storeStrong(self + 0x48, arg2);
    return;
}

-(void *)viewsDisplayed {
    r0 = *(self + 0x50);
    return r0;
}

-(void)setViewsDisplayed:(void *)arg2 {
    objc_storeStrong(self + 0x50, arg2);
    return;
}

-(long long)currentWebView {
    r0 = *(self + 0x58);
    return r0;
}

-(void)setCurrentWebView:(long long)arg2 {
    *(self + 0x58) = arg2;
    return;
}

-(void *)prev {
    r0 = *(self + 0x60);
    return r0;
}

-(void)setPrev:(void *)arg2 {
    objc_storeStrong(self + 0x60, arg2);
    return;
}

-(void *)next {
    r0 = *(self + 0x68);
    return r0;
}

-(void)setNext:(void *)arg2 {
    objc_storeStrong(self + 0x68, arg2);
    return;
}

-(void *)getIt {
    r0 = *(self + 0x70);
    return r0;
}

-(void)setGetIt:(void *)arg2 {
    objc_storeStrong(self + 0x70, arg2);
    return;
}

-(void *)pprev {
    r0 = *(self + 0x78);
    return r0;
}

-(void)setPprev:(void *)arg2 {
    objc_storeStrong(self + 0x78, arg2);
    return;
}

-(void *)pnext {
    r0 = *(self + 0x80);
    return r0;
}

-(void)setPnext:(void *)arg2 {
    objc_storeStrong(self + 0x80, arg2);
    return;
}

-(void *)pgetIt {
    r0 = *(self + 0x88);
    return r0;
}

-(void)setPgetIt:(void *)arg2 {
    objc_storeStrong(self + 0x88, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x88, 0x0);
    objc_storeStrong(self + 0x80, 0x0);
    objc_storeStrong(self + 0x78, 0x0);
    objc_storeStrong(self + 0x70, 0x0);
    objc_storeStrong(self + 0x68, 0x0);
    objc_storeStrong(self + 0x60, 0x0);
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    sub_1003b5d18(self + 0x8);
    return;
}

-(void *).cxx_construct {
    r0 = self;
    *(int128_t *)(r0 + 0x8) = 0x0;
    *(int128_t *)(r0 + 0x10) = 0x0;
    *(r0 + 0x18) = 0x0;
    return r0;
}

-(struct vector<int, std::__1::allocator<int> >)loadedMessages {
    r31 = r31 - 0x90;
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
    r20 = self;
    r28 = r8;
    *(int128_t *)r8 = 0x0;
    *(int128_t *)(r8 + 0x8) = 0x0;
    *(r8 + 0x10) = 0x0;
    var_70 = r28;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r22 = [r0 statusBarOrientation];
    r0 = [r0 release];
    r23 = *(int128_t *)(r20 + 0x8);
    if (*(int128_t *)(r20 + 0x10) != r23) goto loc_1003b3090;

.l21:
    return r0;

loc_1003b3090:
    r26 = 0x0;
    r27 = 0x0;
    r19 = r22 - 0x3;
    var_60 = r19;
    var_58 = r22 - 0x1;
    goto loc_1003b30b8;

loc_1003b30b8:
    if (r19 > 0x1) goto loc_1003b3108;

loc_1003b30c0:
    r0 = *(0x8 + r23 + r26);
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) goto loc_1003b3170;

loc_1003b30d4:
    if ([r21 hasloaded] == 0x0) goto loc_1003b3160;

loc_1003b30e4:
    r22 = r23 + r26;
    r28 = var_70;
    r9 = *(int128_t *)(r28 + 0x8);
    r8 = *(int128_t *)(r28 + 0x10);
    if (r9 == r8) goto loc_1003b319c;

loc_1003b30f8:
    *(int32_t *)r9 = *(int32_t *)(r22 + 0x28);
    *(r28 + 0x8) = r9 + 0x4;
    goto loc_1003b3164;

loc_1003b3164:
    r19 = var_60;
    goto loc_1003b3170;

loc_1003b3170:
    r0 = [r21 release];
    goto loc_1003b3178;

loc_1003b3178:
    r27 = r27 + 0x1;
    r23 = *(int128_t *)(r20 + 0x8);
    r26 = r26 + 0x30;
    if ((SAR(*(int128_t *)(r20 + 0x10) - r23, 0x4)) * 0xaaaaaaaaaaaaaaab > r27) goto loc_1003b30b8;
    goto .l21;

loc_1003b319c:
    r23 = *r28;
    r24 = r9 - r23;
    r19 = SAR(r24, 0x2);
    r9 = r19 + 0x1;
    if (r9 >> 0x3e != 0x0) goto loc_1003b32fc;

loc_1003b31b4:
    r8 = r8 - r23;
    r10 = SAR(r8, 0x1);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0x1fffffffffffffff > r8 / 0x4) {
            if (!CPU_FLAGS & A) {
                    r28 = 0x3fffffffffffffff;
            }
            else {
                    r28 = r9;
            }
    }
    if (r28 == 0x0) goto loc_1003b324c;

loc_1003b31d8:
    if (r28 >> 0x3e != 0x0) goto loc_1003b3308;

loc_1003b31e0:
    r25 = operator new();
    goto loc_1003b3250;

loc_1003b3250:
    r28 = r25 + r28 * 0x4;
    *(int32_t *)(r25 + r19 * 0x4) = *(int32_t *)(r22 + 0x28);
    r19 = 0x4 + r25 + r19 * 0x4;
    if (r24 >= 0x1) {
            memcpy(r25, r23, r24);
    }
    *(int128_t *)var_70 = r25;
    *(int128_t *)(var_70 + 0x8) = r19;
    *(var_70 + 0x10) = r28;
    r28 = var_70;
    if (r23 != 0x0) {
            operator delete(r23);
    }
    r19 = var_60;
    goto loc_1003b3170;

loc_1003b3308:
    r0 = sub_1003b5b08();
    return r0;

loc_1003b324c:
    r25 = 0x0;
    goto loc_1003b3250;

loc_1003b32fc:
    r0 = std::__1::__vector_base_common<true>::__throw_length_error();
    return r0;

loc_1003b3160:
    r28 = var_70;
    goto loc_1003b3164;

loc_1003b3108:
    if (var_58 > 0x1) goto loc_1003b3178;

loc_1003b3114:
    r0 = *(r23 + r26);
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) goto loc_1003b3170;

loc_1003b3124:
    if ([r21 hasloaded] == 0x0) goto loc_1003b3164;

loc_1003b3134:
    r11 = r23 + r26;
    r9 = *(int128_t *)(r28 + 0x8);
    r8 = *(int128_t *)(r28 + 0x10);
    r19 = var_60;
    if (r9 == r8) goto loc_1003b31f0;

loc_1003b3150:
    *(int32_t *)r9 = *(int32_t *)(r11 + 0x28);
    *(r28 + 0x8) = r9 + 0x4;
    goto loc_1003b3170;

loc_1003b31f0:
    r23 = *r28;
    r24 = r9 - r23;
    r22 = SAR(r24, 0x2);
    r9 = r22 + 0x1;
    if (r9 >> 0x3e != 0x0) goto loc_1003b32e8;

loc_1003b3208:
    r8 = r8 - r23;
    r10 = SAR(r8, 0x1);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0x1fffffffffffffff > r8 / 0x4) {
            if (!CPU_FLAGS & A) {
                    r19 = 0x3fffffffffffffff;
            }
            else {
                    r19 = r9;
            }
    }
    if (r19 == 0x0) goto loc_1003b32a4;

loc_1003b322c:
    var_78 = r11;
    if (r19 >> 0x3e != 0x0) goto loc_1003b32f4;

loc_1003b3238:
    r25 = operator new();
    r11 = var_78;
    goto loc_1003b32a8;

loc_1003b32a8:
    r19 = r25 + r19 * 0x4;
    *(int32_t *)(r25 + r22 * 0x4) = *(int32_t *)(r11 + 0x28);
    r22 = 0x4 + r25 + r22 * 0x4;
    if (r24 >= 0x1) {
            memcpy(r25, r23, r24);
    }
    *(int128_t *)r28 = r25;
    *(int128_t *)(r28 + 0x8) = r22;
    *(r28 + 0x10) = r19;
    if (r23 != 0x0) {
            operator delete(r23);
    }
    goto loc_1003b3164;

loc_1003b32f4:
    r0 = sub_1003b5b08();
    return r0;

loc_1003b32a4:
    r25 = 0x0;
    goto loc_1003b32a8;

loc_1003b32e8:
    r0 = std::__1::__vector_base_common<true>::__throw_length_error();
    return r0;
}

@end