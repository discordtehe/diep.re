@implementation UADSApiWebPlayer

+(void *)getWebPlayerSettings {
    r0 = *0x1011d1a48;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)getWebPlayerEventSettings {
    r0 = *0x1011d1a50;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)WebViewExposed_setUrl:(void *)arg2 viewId:(void *)arg3 callback:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r21 = [r20 retain];
    r0 = [self getWebPlayer:r23];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r22 != 0x0) {
            [r22 loadUrl:r19];
            [r20 invoke:0x0];
            r0 = r21;
    }
    else {
            r23 = [sub_1000be5fc() retain];
            [r20 error:r23 arg1:0x0];
            [r21 release];
            r0 = r23;
    }
    [r0 release];
    [r22 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_setDataWithUrl:(void *)arg2 data:(void *)arg3 mimeType:(void *)arg4 encoding:(void *)arg5 viewId:(void *)arg6 callback:(void *)arg7 {
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
    r23 = arg7;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r26 = [arg6 retain];
    r24 = [r23 retain];
    r0 = [self getWebPlayer:r26];
    r29 = &saved_fp;
    r25 = [r0 retain];
    [r26 release];
    if (r25 != 0x0) {
            [r25 loadData:r20 mimeType:r21 encoding:r22 baseUrl:r19];
            [r23 invoke:0x0];
            r0 = r24;
    }
    else {
            r26 = [sub_1000be5fc() retain];
            [r23 error:r26 arg1:0x0];
            [r24 release];
            r0 = r26;
    }
    [r0 release];
    [r25 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_setData:(void *)arg2 mimeType:(void *)arg3 encoding:(void *)arg4 viewId:(void *)arg5 callback:(void *)arg6 {
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
    r22 = arg6;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r25 = [arg5 retain];
    r23 = [r22 retain];
    r0 = [self getWebPlayer:r25];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r25 release];
    if (r24 != 0x0) {
            [r24 loadData:r19 mimeType:r20 encoding:r21];
            [r22 invoke:0x0];
            r0 = r23;
    }
    else {
            r25 = [sub_1000be5fc() retain];
            [r22 error:r25 arg1:0x0];
            [r23 release];
            r0 = r25;
    }
    [r0 release];
    [r24 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_setSettings:(void *)arg2 ignoredSettings:(void *)arg3 viewId:(void *)arg4 callback:(void *)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg2;
    r19 = [r22 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    if ([r20 isEqualToString:r2] == 0x0) goto loc_1000c55c0;

loc_1000c55ac:
    objc_storeStrong(0x1011d1a48, r22);
    goto loc_1000c55f0;

loc_1000c55f0:
    [r21 invoke:0x0];
    goto loc_1000c5654;

loc_1000c5654:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1000c55c0:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_1000c5608;

loc_1000c55d8:
    [UADSBannerView setWebPlayerSettings:r19];
    goto loc_1000c55f0;

loc_1000c5608:
    r22 = [[NSString stringWithFormat:@"Unknown view id %@"] retain];
    [r21 error:r22 arg1:0x0];
    [r22 release];
    goto loc_1000c5654;
}

+(void)WebViewExposed_setEventSettings:(void *)arg2 viewId:(void *)arg3 callback:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg2;
    r19 = [r22 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([r20 isEqualToString:r2] == 0x0) goto loc_1000c56fc;

loc_1000c56e8:
    objc_storeStrong(0x1011d1a50, r22);
    goto loc_1000c572c;

loc_1000c572c:
    [r21 invoke:0x0];
    goto loc_1000c5790;

loc_1000c5790:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1000c56fc:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_1000c5744;

loc_1000c5714:
    [UADSBannerView setWebPlayerEventSettings:r19];
    goto loc_1000c572c;

loc_1000c5744:
    r22 = [[NSString stringWithFormat:@"Unknown view id %@"] retain];
    [r21 error:r22 arg1:0x0];
    [r22 release];
    goto loc_1000c5790;
}

+(void)WebViewExposed_sendEvent:(void *)arg2 viewId:(void *)arg3 callback:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r21 = [r20 retain];
    r0 = [self getWebPlayer:r23];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r22 != 0x0) {
            [r22 receiveEvent:r19];
            [r20 invoke:0x0];
            r0 = r21;
    }
    else {
            r23 = [sub_1000be5fc() retain];
            [r20 error:r23 arg1:0x0];
            [r21 release];
            r0 = r23;
    }
    [r0 release];
    [r22 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_clearSettings:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    r22 = @selector(isEqualToString:);
    r21 = [r20 retain];
    if (objc_msgSend(r19, r22) != 0x0) {
            r0 = *0x1011d1a48;
            *0x1011d1a48 = 0x0;
            [r0 release];
            r0 = *0x1011d1a50;
            *0x1011d1a50 = 0x0;
    }
    else {
            if ([r19 isEqualToString:r2] != 0x0) {
                    r0 = [UADSBannerView getInstance];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 webPlayer];
                    r0 = [r0 retain];
                    [r0 setWebPlayerSettings:0x0];
                    [r0 release];
            }
            else {
                    r22 = [[NSString stringWithFormat:@"Unknown view id %@"] retain];
                    [r20 error:r22 arg1:0x0];
            }
            r0 = r22;
    }
    [r0 release];
    [r20 invoke:0x0];
    [r21 release];
    [r19 release];
    return;
}

+(void *)getWebPlayer:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_1000c5b34;

loc_1000c5a60:
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1000c5b90;

loc_1000c5a88:
    r0 = [UADSApiAdUnit getAdUnit];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 getViewHandler:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    [r21 release];
    if (r0 == 0x0) goto loc_1000c5b98;

loc_1000c5adc:
    r0 = [UADSApiAdUnit getAdUnit];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 getViewHandler:r2];
    r0 = [r0 retain];
    r20 = [[r0 getView] retain];
    [r0 release];
    goto loc_1000c5b84;

loc_1000c5b84:
    [r21 release];
    goto loc_1000c5b9c;

loc_1000c5b9c:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_1000c5b98:
    r20 = 0x0;
    goto loc_1000c5b9c;

loc_1000c5b90:
    [r21 release];
    goto loc_1000c5b98;

loc_1000c5b34:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1000c5b98;

loc_1000c5b4c:
    r0 = [UADSBannerView getInstance];
    r0 = [r0 retain];
    r21 = r0;
    r20 = [[r0 webPlayer] retain];
    goto loc_1000c5b84;
}

@end