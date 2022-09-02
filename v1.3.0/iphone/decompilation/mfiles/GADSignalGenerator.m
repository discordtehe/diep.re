@implementation GADSignalGenerator

-(void *)initWithSignalConfiguration:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [r19 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_configuration, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)generateSignalsWithCompletionHandler:(void *)arg2 {
    r31 = r31 - 0xd0;
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
    r21 = self;
    r20 = [arg2 retain];
    r19 = [GADEventContext alloc];
    r22 = [[GADEventContext rootContext] retain];
    r19 = [r19 initWithParent:r22 component:*0x100e97460];
    [r22 release];
    r24 = [[GADServerRequest alloc] initWithContext:r19];
    r0 = [GADRequest request];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
    r27 = *(r21 + r28);
    [GADBannerSignalConfiguration class];
    if ([r27 isKindOfClass:r2] == 0x0) goto loc_10083b880;

loc_10083b84c:
    r0 = [NSArray arrayWithObjects:&var_60 count:0x1];
    r29 = r29;
    goto loc_10083b990;

loc_10083b990:
    r25 = [r0 retain];
    [r22 setAdTypes:r25];
    [r25 release];
    goto loc_10083b9b4;

loc_10083b9b4:
    var_58 = **___stack_chk_guard;
    r23 = [GADTargeting alloc];
    r25 = [[*(r21 + r28) adUnitID] retain];
    r23 = [r23 initWithRequest:r22 adUnitID:r25];
    [r25 release];
    var_98 = r23;
    [r23 retain];
    var_90 = [r21 retain];
    [r24 retain];
    var_80 = r20;
    [r20 retain];
    sub_100860a80();
    [var_80 release];
    [r24 release];
    [var_90 release];
    [var_98 release];
    [r20 release];
    [r21 release];
    [r23 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_10083b880:
    r26 = @selector(isKindOfClass:);
    r27 = *(r21 + r28);
    [GADInterstitialSignalConfiguration class];
    if (objc_msgSend(r27, r26) == 0x0) goto loc_10083b8dc;

loc_10083b8a8:
    r0 = [NSArray arrayWithObjects:&var_68 count:0x1];
    r29 = r29;
    goto loc_10083b990;

loc_10083b8dc:
    r26 = @selector(isKindOfClass:);
    r27 = *(r21 + r28);
    [GADNativeSignalConfiguration class];
    if (objc_msgSend(r27, r26) == 0x0) goto loc_10083b938;

loc_10083b904:
    r0 = [NSArray arrayWithObjects:&var_70 count:0x1];
    r29 = r29;
    goto loc_10083b990;

loc_10083b938:
    r26 = @selector(isKindOfClass:);
    r27 = *(r21 + r28);
    [GADRewardedSignalConfiguration class];
    if (objc_msgSend(r27, r26) == 0x0) goto loc_10083b9b4;

loc_10083b960:
    r0 = [NSArray arrayWithObjects:&var_78 count:0x1];
    r29 = r29;
    goto loc_10083b990;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    return;
}

@end