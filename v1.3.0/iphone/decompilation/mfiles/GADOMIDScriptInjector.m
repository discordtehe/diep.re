@implementation GADOMIDScriptInjector

+(void *)injectScriptContent:(void *)arg2 intoHTML:(void *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0x80;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_10 = self;
    objc_storeStrong(r29 - 0x20, arg2);
    objc_storeStrong(r29 - 0x28, arg3);
    var_30 = arg4;
    if (([0x0 isEqualToString:@""] & 0x1) != 0x0) {
            [GADOMIDError setGADOMIDErrorFor:var_30 code:0x5dd message:@"Script can not be empty."];
            var_8 = 0x0;
    }
    else {
            stack[-128] = 0x0;
            r0 = [var_10 stringFromHtml:0x0 byInsertingScript:[[NSString stringWithFormat:@"<script type=\"text/javascript\">%@</script>"] retain]];
            r29 = r29;
            var_8 = [r0 retain];
            objc_storeStrong(&var_40, 0x0);
    }
    objc_storeStrong(r29 - 0x28, 0x0);
    objc_storeStrong(r29 - 0x20, 0x0);
    r0 = [var_8 autorelease];
    return r0;
}

+(void *)stringFromHtml:(void *)arg2 byInsertingScript:(void *)arg3 {
    objc_storeStrong(&saved_fp - 0x18, arg2);
    objc_storeStrong(&saved_fp - 0x20, arg3);
    var_28 = [0x0 mutableCopy];
    [var_28 insertString:0x0 atIndex:[self indexForScriptInHtml:var_28]];
    var_58 = [var_28 retain];
    objc_storeStrong(&saved_fp - 0x28, 0x0);
    objc_storeStrong(&saved_fp - 0x20, 0x0);
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    r0 = [var_58 autorelease];
    return r0;
}

+(void *)tagFromHtml:(void *)arg2 inRange:(struct _NSRange)arg3 {
    memcpy(&r3, &arg3, 0x8);
    objc_storeStrong(&var_58, arg2);
    var_80 = [[var_58 substringWithRange:r3 + 0x1] retain];
    objc_storeStrong(&var_58, 0x0);
    r0 = [var_80 autorelease];
    return r0;
}

+(struct _NSRange)replaceSelfClosingTagInHtml:(void *)arg2 tagRange:(struct _NSRange)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x140;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    var_90 = r3;
    var_88 = r4;
    var_98 = self;
    r0 = objc_storeStrong(&var_A8, arg2);
    var_F0 = var_90 + var_88 - [@"/>" length];
    [@"/>" length];
    var_B0 = var_48;
    var_B8 = var_F0;
    r0 = [var_A8 substringWithRange:var_B8];
    r29 = &saved_fp;
    if (([@"/>" isEqualToString:[r0 retain]] & 0x1) == 0x0) {
            var_80 = var_90;
            var_78 = var_88;
    }
    else {
            stack[-320] = [[var_98 tagFromHtml:var_A8 inRange:var_90] retain];
            var_120 = [[NSString stringWithFormat:@"></%@>"] retain];
            [var_A8 replaceCharactersInRange:var_B8 withString:var_B0];
            [var_120 release];
            var_78 = var_18;
            var_80 = var_90;
            objc_storeStrong(&var_D0, 0x0);
    }
    objc_storeStrong(&var_C0, 0x0);
    objc_storeStrong(&var_A8, 0x0);
    r0 = var_80;
    return r0;
}

+(void *)commentsInHtml:(void *)arg2 {
    r31 = r31 - 0x140;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    objc_storeStrong(&var_A8, arg2);
    var_B0 = [[NSRegularExpression regularExpressionWithPattern:@"\<![ \r\n\t]*(--([^\-]|[\r\n]|-[^\-])*--[ \r\n\t]*)\>" options:0x1 error:0x0] retain];
    [var_A8 length];
    var_120 = [[var_B0 matchesInString:var_A8 options:0x0 range:0x0] retain];
    var_B8 = [[NSMutableArray arrayWithArray:var_120] retain];
    [var_120 release];
    [var_A8 length];
    [var_B8 addObject:[[NSTextCheckingResult regularExpressionCheckingResultWithRanges:&saved_fp - 0x28 count:0x1 regularExpression:var_B0] retain]];
    var_128 = [var_B8 retain];
    objc_storeStrong(&var_D0, 0x0);
    objc_storeStrong(&var_B8, 0x0);
    objc_storeStrong(&var_B0, 0x0);
    objc_storeStrong(&var_A8, 0x0);
    var_130 = [var_128 autorelease];
    if (**___stack_chk_guard == var_18) {
            r0 = var_130;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(unsigned long long)indexForScriptInHtml:(void *)arg2 {
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xffffffffffffffe0 - 0x470;
    var_168 = self;
    var_358 = &var_160;
    r0 = objc_storeStrong(&var_178, arg2);
    r0 = [var_168 commentsInHtml:var_178];
    r29 = &saved_fp;
    var_180 = [r0 retain];
    var_1A8 = &var_1B0;
    *(int128_t *)(var_358 + 0x20) = *(int128_t *)var_358;
    var_1D8 = &var_1E0;
    *(int128_t *)(var_358 + 0x50) = *(int128_t *)(var_358 + 0x30);
    *(&var_1E0 + 0x20) = var_110;
    *(&var_1E0 + 0x28) = var_108;
    var_218 = &var_220;
    *(int128_t *)(var_358 + 0x80) = *(int128_t *)(var_358 + 0x60);
    *(&var_220 + 0x20) = var_E0;
    *(&var_220 + 0x28) = var_D8;
    var_3A0 = &var_270 + 0x28;
    [var_178 retain];
    var_228 = objc_retainBlock(&var_270);
    var_3A8 = [NSRegularExpression regularExpressionWithPattern:@"(<head[^>]*>|<body[^>]*>|<html[^>]*>|<!DOCTYPE[^>]*>)" options:0x1 error:0x0];
    r29 = r29;
    var_278 = [var_3A8 retain];
    var_280 = 0x0;
    r0 = [var_180 retain];
    var_3B0 = r0;
    var_3B8 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (var_3B8 == 0x0) goto loc_1008dca8c;

loc_1008dc850:
    var_3C8 = &var_2C8 + 0x10;
    var_3D0 = 0x0;
    var_3D8 = var_3B8;
    goto loc_1008dc878;

loc_1008dc878:
    var_3E0 = var_3D8;
    var_3E8 = var_3D0;
    if (**var_3C8 != *0x0) {
            objc_enumerationMutation(var_3B0);
    }
    var_288 = *(0x0 + var_3E8 * 0x8);
    var_3F8 = [var_288 range];
    *(int128_t *)(var_358 + 0xb0) = *(int128_t *)(var_358 + 0x90);
    [var_278 enumerateMatchesInString:var_178 options:0x0 range:var_B0 usingBlock:var_A8];
    if (*(var_1A8 + 0x28) < 0x0) goto loc_1008dc9c0;

loc_1008dc990:
    var_2F4 = 0x2;
    goto loc_1008dca90;

loc_1008dca90:
    [var_3B0 release];
    var_44C = var_2F4;
    if (var_2F4 != 0x0 && r9 != 0x0) {
            r0 = __stack_chk_fail();
    }
    else {
            var_328 = *(var_218 + 0x20);
            var_320 = *(var_218 + 0x28);
            if (*(var_1A8 + 0x28) >= 0x0) {
                    var_460 = [var_168 replaceSelfClosingTagInHtml:var_178 tagRange:*(var_1A8 + 0x20)];
                    var_328 = var_460;
                    var_320 = @selector(replaceSelfClosingTagInHtml:tagRange:);
            }
            else {
                    if (*(var_1D8 + 0x28) >= 0x0) {
                            var_470 = [var_168 replaceSelfClosingTagInHtml:var_178 tagRange:*(var_1D8 + 0x20)];
                            var_328 = var_470;
                            var_320 = @selector(replaceSelfClosingTagInHtml:tagRange:);
                    }
            }
            var_350 = **___stack_chk_guard;
            var_478 = var_328 + var_320;
            objc_storeStrong(&var_278, 0x0);
            objc_storeStrong(&var_228, 0x0);
            objc_storeStrong(var_3A0, 0x0);
            _Block_object_dispose(&var_220, 0x8);
            _Block_object_dispose(&var_1E0, 0x8);
            _Block_object_dispose(&var_1B0, 0x8);
            objc_storeStrong(&var_180, 0x0);
            objc_storeStrong(&var_178, 0x0);
            if (**___stack_chk_guard == var_350) {
                    r0 = var_478;
            }
            else {
                    r0 = __stack_chk_fail();
            }
    }
    return r0;

loc_1008dc9c0:
    var_428 = [var_288 range];
    var_430 = var_428;
    var_440 = [var_288 range];
    var_280 = var_430 + @selector(range);
    var_3D8 = var_3E0;
    var_3D0 = var_3E8 + 0x1;
    if (var_3E8 + 0x1 < var_3E0) goto loc_1008dc878;

loc_1008dca4c:
    var_448 = [var_3B0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    var_3D0 = 0x0;
    var_3D8 = var_448;
    if (var_448 != 0x0) goto loc_1008dc878;

loc_1008dca8c:
    var_2F4 = 0x0;
    goto loc_1008dca90;
}

@end