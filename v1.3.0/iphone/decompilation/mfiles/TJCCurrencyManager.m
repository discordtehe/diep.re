@implementation TJCCurrencyManager

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [TJCCurrencyModel alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_currencyModelObj));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r19 updateURLArray];
    }
    r0 = r19;
    return r0;
}

-(void)updateURLArray {
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
    var_58 = **___stack_chk_guard;
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r20 = [[r0 serviceURL] retain];
    [r0 release];
    [r21 release];
    r21 = [[NSDictionary dictionaryWithObjects:&saved_fp - 0x90 forKeys:&var_B0 count:0x4] retain];
    r23 = [[NSDictionary dictionaryWithObjects:&var_D0 forKeys:&var_F0 count:0x4] retain];
    r22 = [[NSDictionary dictionaryWithObjects:&var_110 forKeys:&var_130 count:0x4] retain];
    r0 = [NSArray arrayWithObjects:&saved_fp - 0x70 count:0x3];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_URLArray));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [r22 release];
    [r23 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)startRequestWithType:(int)arg2 parameters:(void *)arg3 completion:(void *)arg4 {
    r31 = r31 - 0xc0;
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
    r26 = arg2;
    r27 = self;
    r23 = [arg3 retain];
    var_90 = [arg4 retain];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_currencyModelObj));
    r0 = *(r27 + r19);
    r0 = [r0 currencyID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [Tapjoy sharedTapjoyConnect];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 appID];
            r29 = r29;
            r25 = [r0 retain];
            [*(r27 + r19) setCurrencyID:r25];
            [r25 release];
            [r24 release];
    }
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r22 = [[r0 genericParametersWithUserID] retain];
    [r0 release];
    [r24 release];
    [r22 addEntriesFromDictionary:r23];
    [r23 release];
    r20 = [[FRUtils postStringFromDictionary:r22 multiDepths:0x0 last:0x1] retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_URLArray));
    r0 = *(r27 + r21);
    r0 = [r0 objectAtIndexedSubscript:r26];
    r0 = [r0 retain];
    r25 = r0;
    r19 = [[r0 objectForKeyedSubscript:@"host"] retain];
    r0 = *(r27 + r21);
    r0 = [r0 objectAtIndexedSubscript:r26];
    r0 = [r0 retain];
    r27 = [[r0 objectForKeyedSubscript:@"path"] retain];
    r24 = [[NSString stringWithFormat:@"%@%@?%@"] retain];
    [r27 release];
    [r0 release];
    [r19 release];
    [r25 release];
    r26 = [[NSURL URLWithString:r24] retain];
    r25 = [[TJCUtil createRequestWithURL:r26 cachePolicy:0x1 timeoutInterval:0x1] retain];
    [r26 release];
    [r25 setHTTPMethod:@"GET"];
    [TJCLog logWithBaseURL:r24 path:@"" params:r22];
    r26 = [[NSOperationQueue mainQueue] retain];
    r21 = [var_90 retain];
    [NSURLConnection sendAsynchronousRequest:r25 queue:r26 completionHandler:&var_88];
    [r26 release];
    [var_90 release];
    [r21 release];
    [r25 release];
    [r24 release];
    [r20 release];
    [r22 release];
    return;
}

-(void)getCurrencyBalance {
    [self getCurrencyWithCompletion:0x0];
    return;
}

-(void)getCurrencyWithCompletion:(void *)arg2 {
    [self startRequestWithType:0x0 parameters:0x0 completion:arg2];
    return;
}

-(void)spendCurrency:(int)arg2 {
    [self spendCurrency:arg2 completion:0x0];
    return;
}

-(void)spendCurrency:(int)arg2 completion:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r23 = [arg3 retain];
    r19 = [[NSNumber numberWithInt:arg2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1];
    r21 = [r0 retain];
    [self startRequestWithType:0x1 parameters:r21 completion:r23];
    [r23 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)awardCurrency:(int)arg2 {
    [self awardCurrency:arg2 completion:0x0];
    return;
}

-(void *)currencyModelObj {
    r0 = self->_currencyModelObj;
    return r0;
}

-(void)dealloc {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currencyModelObj));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)awardCurrency:(int)arg2 completion:(void *)arg3 {
    r31 = r31 - 0x70;
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
    r22 = arg2;
    r20 = self;
    r21 = [arg3 retain];
    r19 = [[NSMutableDictionary alloc] init];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 userID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r25 release];
    if (r0 != 0x0) {
            r0 = [Tapjoy sharedTapjoyConnect];
            r0 = [r0 retain];
            r0 = [r0 userID];
            r29 = r29;
            [r0 retain];
            [r19 setObject:r2 forKeyedSubscript:r3];
            [r24 release];
            [r25 release];
    }
    [[NSNumber numberWithInt:r22] retain];
    [r19 setObject:r2 forKeyedSubscript:r3];
    [r24 release];
    [[TJCUtil getTimeStamp] retain];
    [r19 setObject:r2 forKeyedSubscript:r3];
    [[TJCUtil generateGUID] retain];
    r22 = [[NSString stringWithFormat:@"%d"] retain];
    r26 = [[NSString stringWithFormat:@"%@:%@"] retain];
    [r22 release];
    [[TJCUtil TJCSHA256CommonParamsWithTimeStamp:r24 string:r26] retain];
    [r19 setObject:r2 forKeyedSubscript:r3];
    [r19 setObject:r2 forKeyedSubscript:r3];
    [r20 startRequestWithType:0x2 parameters:r19 completion:r21];
    [r21 release];
    [r22 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r19 release];
    return;
}

-(void)setCurrencyModelObj:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currencyModelObj, arg2);
    return;
}

-(void *)URLArray {
    r0 = self->_URLArray;
    return r0;
}

-(void)setURLArray:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_URLArray, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_URLArray, 0x0);
    objc_storeStrong((int64_t *)&self->_currencyModelObj, 0x0);
    return;
}

@end