@implementation APMKeychainWrapper

+(void *)keychainValueWithIdentifier:(void *)arg2 appID:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [[self keychainDataWithIdentifier:r21 appID:arg3] retain];
    [r21 release];
    if ([r19 length] != 0x0) {
            r20 = [[NSString alloc] initWithData:r19 encoding:0x4];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)deleteKeychainValueWithIdentifier:(void *)arg2 appID:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [[self searchDirectoryForIdentifier:r21 withAppID:arg3] retain];
    [r21 release];
    if (r19 != 0x0) {
            SecItemDelete(r19);
    }
    [r19 release];
    return;
}

+(bool)upsertKeychainValue:(void *)arg2 withIdentifier:(void *)arg3 appID:(void *)arg4 {
    r31 = r31 - 0x70;
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    [NSString class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r0 = [r19 dataUsingEncoding:0x4];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if ([r0 length] != 0x0) {
                    r0 = [r23 searchDirectoryForIdentifier:r20 withAppID:r21];
                    r29 = r29;
                    r23 = [r0 retain];
                    if (r23 != 0x0) {
                            r25 = @selector(length);
                            [r23 setObject:r22 forKeyedSubscript:**_kSecValueData];
                            [r23 setObject:**_kSecAttrAccessibleAlwaysThisDeviceOnly forKeyedSubscript:**_kSecAttrAccessible];
                            r0 = [APMKeychainWrapper keychainValueWithIdentifier:r20 appID:r21];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = r0;
                            if (objc_msgSend(r0, r25) != 0x0) {
                                    [r23 removeObjectForKey:**_kSecValueData];
                                    r26 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
                                    r25 = SecItemUpdate(r23, r26);
                                    [r26 release];
                            }
                            else {
                                    r25 = SecItemAdd(r23, 0x0);
                            }
                            if (r25 == 0x0) {
                                    if (CPU_FLAGS & E) {
                                            r25 = 0x1;
                                    }
                            }
                            [r24 release];
                    }
                    else {
                            r25 = 0x0;
                    }
                    [r23 release];
            }
            else {
                    r25 = 0x0;
            }
            [r22 release];
    }
    else {
            r25 = 0x0;
    }
    var_48 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r25;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)keychainDataWithIdentifier:(void *)arg2 appID:(void *)arg3 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r19 = [[APMKeychainWrapper searchDirectoryForIdentifier:r20 withAppID:arg3] retain];
    [r20 release];
    if (r19 != 0x0) {
            r20 = @selector(setObject:forKeyedSubscript:);
            objc_msgSend(r19, r20);
            objc_msgSend(r19, r20);
            r0 = SecItemCopyMatching(r19, &var_18);
            r8 = var_18;
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r20 = 0x0;
                    }
                    else {
                            r20 = r8;
                    }
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)searchDirectoryForIdentifier:(void *)arg2 withAppID:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r19 length] != 0x0 && [r20 length] != 0x0) {
            r22 = @selector(length);
            r0 = [r19 dataUsingEncoding:0x4];
            r0 = [r0 retain];
            r21 = r0;
            if (objc_msgSend(r0, r22) != 0x0) {
                    r0 = [NSMutableDictionary alloc];
                    r0 = [r0 init];
                    r22 = r0;
                    [r0 setObject:**_kSecClassGenericPassword forKeyedSubscript:**_kSecClass];
                    [r22 setObject:r20 forKeyedSubscript:**_kSecAttrService];
                    [r22 setObject:r21 forKeyedSubscript:**_kSecAttrGeneric];
                    [r22 setObject:r21 forKeyedSubscript:**_kSecAttrAccount];
            }
            else {
                    r22 = 0x0;
            }
            [r21 release];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

@end