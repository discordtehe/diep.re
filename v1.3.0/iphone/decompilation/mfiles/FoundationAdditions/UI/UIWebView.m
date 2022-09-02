@implementation UIWebView

-(void)disableJavaScriptDialogs {
    [[[self stringByEvaluatingJavaScriptFromString:@"window.alert = function() { }; window.prompt = function() { }; window.confirm = function() { };"] retain] release];
    return;
}

-(void)mp_setScrollable:(bool)arg2 {
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
    r19 = arg2;
    r20 = self;
    if ([self respondsToSelector:r2] == 0x0) goto loc_100490cc0;

loc_100490c48:
    var_60 = **___stack_chk_guard;
    r0 = [r20 scrollView];
    r0 = [r0 retain];
    r20 = r0;
    [r0 setScrollEnabled:r19];
    [r20 setBounces:r19];
    if (**___stack_chk_guard == var_60) {
            [r20 release];
    }
    else {
            __stack_chk_fail();
    }
    return;

loc_100490cc0:
    var_110 = q0;
    r0 = [r20 subviews];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100490da0;

loc_100490d08:
    r22 = r0;
    r26 = *var_110;
    goto loc_100490d20;

loc_100490d20:
    r28 = 0x0;
    goto loc_100490d2c;

loc_100490d2c:
    if (*var_110 != r26) {
            objc_enumerationMutation(r20);
    }
    r23 = @selector(class);
    r25 = *(var_118 + r28 * 0x8);
    objc_msgSend(@class(UIScrollView), r23);
    if (objc_msgSend(r25, r24) != 0x0) goto loc_100490da8;

loc_100490d6c:
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_100490d2c;

loc_100490d78:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_100490d20;

loc_100490da0:
    r21 = 0x0;
    goto loc_100490db4;

loc_100490db4:
    var_60 = **___stack_chk_guard;
    [r20 release];
    [r21 setScrollEnabled:r19];
    [r21 setBounces:r19];
    [r21 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_100490da8:
    r21 = [r25 retain];
    goto loc_100490db4;
}

@end