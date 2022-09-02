@implementation USRVApiStorage

+(void)WebViewExposed_set:(void *)arg2 key:(void *)arg3 value:(void *)arg4 callback:(void *)arg5 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r0 = [USRVStorageManager getStorage:[USRVApiStorage getStorageTypeFromString:r19]];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 == 0x0 || r21 == 0x0 || r20 == 0x0) goto loc_1000dab20;

loc_1000daae8:
    if ([r23 set:r20 value:r21] == 0x0) goto loc_1000dab54;

loc_1000dab04:
    [r22 invoke:r20];
    goto loc_1000dab8c;

loc_1000dab8c:
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1000dab54:
    r24 = [sub_1000e5aa0() retain];
    r0 = r22;
    goto loc_1000dab80;

loc_1000dab80:
    [r0 error:r2 arg1:r3];
    [r24 release];
    goto loc_1000dab8c;

loc_1000dab20:
    r24 = [sub_1000e5aa0() retain];
    r0 = r22;
    goto loc_1000dab80;
}

+(void)WebViewExposed_get:(void *)arg2 key:(void *)arg3 callback:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [USRVStorageManager getStorage:[USRVApiStorage getStorageTypeFromString:r19]];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r20 == 0x0 || r22 == 0x0) goto loc_1000dac94;

loc_1000dac50:
    r0 = [r22 getValueForKey:r20];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    [r0 release];
    if (r23 == 0x0) goto loc_1000dacc4;

loc_1000dac78:
    [r21 invoke:r23];
    goto loc_1000dacfc;

loc_1000dacfc:
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1000dacc4:
    r23 = [sub_1000e5aa0() retain];
    r0 = r21;
    goto loc_1000dacf0;

loc_1000dacf0:
    [r0 error:r2 arg1:r3];
    [r23 release];
    goto loc_1000dacfc;

loc_1000dac94:
    r23 = [sub_1000e5aa0() retain];
    r0 = r21;
    goto loc_1000dacf0;
}

+(void)WebViewExposed_read:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [USRVStorageManager getStorage:[USRVApiStorage getStorageTypeFromString:r19]];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            [r22 readStorage];
            [r20 invoke:r19];
            r0 = r21;
    }
    else {
            r23 = [sub_1000e5aa0() retain];
            [r20 error:r23 arg1:r19];
            [r21 release];
            r0 = r23;
    }
    [r0 release];
    [r22 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_write:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [USRVStorageManager getStorage:[USRVApiStorage getStorageTypeFromString:r19]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1000daee0;

loc_1000daeb0:
    if ([r21 writeStorage] == 0x0) goto loc_1000daef0;

loc_1000daec4:
    [r20 invoke:r19];
    goto loc_1000daf28;

loc_1000daf28:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1000daef0:
    r0 = sub_1000e5aa0();
    goto loc_1000daefc;

loc_1000daefc:
    r22 = [r0 retain];
    [r20 error:r22 arg1:r19];
    [r22 release];
    goto loc_1000daf28;

loc_1000daee0:
    r0 = sub_1000e5aa0();
    goto loc_1000daefc;
}

+(void)WebViewExposed_clear:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [USRVStorageManager getStorage:[USRVApiStorage getStorageTypeFromString:r19]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1000daff0;

loc_1000dafc0:
    if ([r21 clearStorage] == 0x0) goto loc_1000db000;

loc_1000dafd4:
    [r20 invoke:r19];
    goto loc_1000db038;

loc_1000db038:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1000db000:
    r0 = sub_1000e5aa0();
    goto loc_1000db00c;

loc_1000db00c:
    r22 = [r0 retain];
    [r20 error:r22 arg1:r19];
    [r22 release];
    goto loc_1000db038;

loc_1000daff0:
    r0 = sub_1000e5aa0();
    goto loc_1000db00c;
}

+(void)WebViewExposed_delete:(void *)arg2 key:(void *)arg3 callback:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [USRVStorageManager getStorage:[USRVApiStorage getStorageTypeFromString:r19]];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r20 == 0x0 || r22 == 0x0) goto loc_1000db11c;

loc_1000db0e8:
    if ([r22 deleteKey:r20] == 0x0) goto loc_1000db12c;

loc_1000db100:
    [r21 invoke:r19];
    goto loc_1000db164;

loc_1000db164:
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1000db12c:
    r0 = sub_1000e5aa0();
    goto loc_1000db138;

loc_1000db138:
    r23 = [r0 retain];
    [r21 error:r23 arg1:r19];
    [r23 release];
    goto loc_1000db164;

loc_1000db11c:
    r0 = sub_1000e5aa0();
    goto loc_1000db138;
}

+(long long)getStorageTypeFromString:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            r20 = @selector(isEqualToString:);
            if (objc_msgSend(r19, r20) != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r20 = 0x0;
                    }
                    else {
                            r20 = 0x2;
                    }
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void)WebViewExposed_getKeys:(void *)arg2 key:(void *)arg3 recursive:(void *)arg4 callback:(void *)arg5 {
    r31 = r31 - 0x60;
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
    r21 = arg5;
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r20 = [arg4 retain];
    r23 = [r21 retain];
    r0 = [USRVStorageManager getStorage:[USRVApiStorage getStorageTypeFromString:r19]];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r25 = [[r24 getKeys:r22 recursive:[r20 boolValue]] retain];
            [r22 release];
            [r21 invoke:r25];
            r0 = r23;
    }
    else {
            r25 = [sub_1000e5aa0() retain];
            [r21 error:r25 arg1:r19];
            [r23 release];
            r0 = r22;
    }
    [r0 release];
    [r25 release];
    [r24 release];
    [r20 release];
    [r19 release];
    return;
}

@end