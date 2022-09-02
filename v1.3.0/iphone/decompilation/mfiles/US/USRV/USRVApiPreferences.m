@implementation USRVApiPreferences

+(void)WebViewExposed_hasKey:(void *)arg2 callback:(void *)arg3 {
    r20 = [arg2 retain];
    r24 = [arg3 retain];
    r22 = [USRVPreferences hasKey:r20];
    [r20 release];
    r20 = [[NSNumber numberWithBool:r22] retain];
    [arg3 invoke:r20];
    [r24 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getString:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [USRVPreferences getString:r21];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            [r19 invoke:r20];
    }
    else {
            r21 = [sub_1000cc4c0() retain];
            [r19 error:r21 arg1:0x0];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_getInt:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [USRVPreferences getInteger:r21];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            [r19 invoke:r20];
    }
    else {
            r21 = [sub_1000cc4c0() retain];
            [r19 error:r21 arg1:0x0];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_getLong:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [USRVPreferences getLong:r21];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            [r19 invoke:r20];
    }
    else {
            r21 = [sub_1000cc4c0() retain];
            [r19 error:r21 arg1:0x0];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_getBoolean:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [USRVPreferences getBoolean:r21];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            [r19 invoke:r20];
    }
    else {
            r21 = [sub_1000cc4c0() retain];
            [r19 error:r21 arg1:0x0];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_getFloat:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [USRVPreferences getFloat:r21];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            [r19 invoke:r20];
    }
    else {
            r21 = [sub_1000cc4c0() retain];
            [r19 error:r21 arg1:0x0];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_setString:(void *)arg2 forKey:(void *)arg3 callback:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = [arg4 retain];
    [USRVPreferences setString:r21 forKey:r20];
    [r20 release];
    [r21 release];
    [arg4 invoke:0x0];
    [r24 release];
    return;
}

+(void)WebViewExposed_setInt:(void *)arg2 forKey:(void *)arg3 callback:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = [arg4 retain];
    r21 = [arg2 intValue];
    [r22 release];
    [USRVPreferences setInteger:r21 forKey:r20];
    [r20 release];
    [arg4 invoke:0x0];
    [r25 release];
    return;
}

+(void)WebViewExposed_setLong:(void *)arg2 forKey:(void *)arg3 callback:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = [arg4 retain];
    r21 = [arg2 longValue];
    [r22 release];
    [USRVPreferences setLong:r21 forKey:r20];
    [r20 release];
    [arg4 invoke:0x0];
    [r25 release];
    return;
}

+(void)WebViewExposed_setBoolean:(void *)arg2 forKey:(void *)arg3 callback:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = [arg4 retain];
    r21 = [arg2 boolValue];
    [r22 release];
    [USRVPreferences setBoolean:r21 forKey:r20];
    [r20 release];
    [arg4 invoke:0x0];
    [r25 release];
    return;
}

+(void)WebViewExposed_removeKey:(void *)arg2 callback:(void *)arg3 {
    r20 = [arg2 retain];
    r23 = [arg3 retain];
    [USRVPreferences removeKey:r20];
    [r20 release];
    [arg3 invoke:0x0];
    [r23 release];
    return;
}

+(void)WebViewExposed_setFloat:(void *)arg2 forKey:(void *)arg3 callback:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = [arg4 retain];
    [arg2 floatValue];
    [r22 release];
    [USRVPreferences setFloat:r20 forKey:r3];
    [r20 release];
    [arg4 invoke:0x0];
    [r25 release];
    return;
}

@end