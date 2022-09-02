@implementation CLSSerializeSymbolicatedFramesOperation

-(void *)outputPath {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_outputPath)), 0x0);
    return r0;
}

-(void)setOutputPath:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_outputPath, 0x0);
    return;
}

-(void)main {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x200;
    r19 = self;
    r0 = [self outputPath];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r20 = r0;
    r0 = [r0 fileSystemRepresentation];
    r0 = sub_10011cc0c(&stack[-400], r0, 0x0, 0x0);
    [r20 release];
    if ((r0 & 0x1) != 0x0) {
            sub_10011d2d0(&stack[-400], "threads");
            sub_10011d8b8(&stack[-400]);
            var_1B0 = q0;
            r0 = [r19 threadArray];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_248 = r0;
            var_228 = r1;
            r0 = objc_msgSend(r0, r1);
            var_238 = r0;
            if (r0 != 0x0) {
                    var_240 = *var_1B0;
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_1B0 != var_240) {
                                            objc_enumerationMutation(var_248);
                                    }
                                    var_230 = r19;
                                    sub_10011d8b8(&stack[-400]);
                                    var_1F0 = q0;
                                    r0 = [r19 retain];
                                    var_220 = r0;
                                    r0 = objc_msgSend(r0, var_228);
                                    var_208 = r0;
                                    if (r0 != 0x0) {
                                            var_218 = *var_1F0;
                                            do {
                                                    r20 = 0x0;
                                                    do {
                                                            if (*var_1F0 != var_218) {
                                                                    objc_enumerationMutation(var_220);
                                                            }
                                                            r23 = *(var_1F8 + r20 * 0x8);
                                                            sub_10011d300();
                                                            r0 = [r23 symbol];
                                                            r0 = [r0 retain];
                                                            r0 = objc_retainAutorelease(r0);
                                                            sub_10011d5d4(&stack[-400], "symbol", [r0 UTF8String]);
                                                            [r24 release];
                                                            r24 = [[r23 rawSymbol] retain];
                                                            r0 = [r23 symbol];
                                                            r29 = r29;
                                                            r26 = [r0 retain];
                                                            r27 = [r24 isEqualToString:r26];
                                                            [r26 release];
                                                            [r24 release];
                                                            if ((r27 & 0x1) == 0x0) {
                                                                    r0 = [r23 rawSymbol];
                                                                    r29 = r29;
                                                                    r0 = [r0 retain];
                                                                    r0 = objc_retainAutorelease(r0);
                                                                    sub_10011d5d4(&stack[-400], "raw_symbol", [r0 UTF8String]);
                                                                    [r24 release];
                                                            }
                                                            sub_10011d560(&stack[-400], "offset", [r23 offset]);
                                                            r0 = objc_msgSend(r23, r22);
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            r0 = objc_retainAutorelease(r0);
                                                            sub_10011d5d4(&stack[-400], "library", [r0 UTF8String]);
                                                            [r23 release];
                                                            sub_10011d398();
                                                            r20 = r20 + 0x1;
                                                    } while (r20 < var_208);
                                                    r0 = objc_msgSend(var_220, var_228);
                                                    var_208 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    [var_220 release];
                                    sub_10011d8c0(&stack[-400]);
                                    r19 = var_230 + 0x1;
                            } while (r19 < var_238);
                            r0 = objc_msgSend(var_248, var_228);
                            var_238 = r0;
                    } while (r0 != 0x0);
            }
            [var_248 release];
            sub_10011d8c0(&stack[-400]);
            sub_10011d364(&stack[-400]);
            loc_10011cd44(&stack[-400]);
    }
    else {
            NSLog(@"[Crashlytics:Crash:Symbolication] Failed to create output file");
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

@end