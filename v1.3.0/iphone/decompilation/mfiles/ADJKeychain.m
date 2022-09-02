@implementation ADJKeychain

+(void *)getInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dab58 != -0x1) {
            dispatch_once(0x1011dab58, &var_28);
    }
    r0 = *0x1011dab50;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)setValue:(void *)arg2 forKeychainKey:(void *)arg3 inService:(void *)arg4 {
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
    r21 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0) {
            r24 = [r21 retain];
            r0 = [ADJKeychain getInstance];
            r0 = [r0 retain];
            r21 = [r0 setValue:r19 forKeychainKey:r20 inService:r24];
            [r24 release];
            [r0 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)valueForKeychainKeyOld:(void *)arg2 service:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r20 = [r20 retain];
            r0 = [ADJKeychain getInstance];
            r0 = [r0 retain];
            r22 = [r0 valueForKeychainKeyOld:r19 service:r20];
            [r20 release];
            r20 = [r22 retain];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)valueForKeychainKeyNew:(void *)arg2 service:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r20 = [r20 retain];
            r0 = [ADJKeychain getInstance];
            r0 = [r0 retain];
            r22 = [r0 valueForKeychainKeyNew:r19 service:r20];
            [r20 release];
            r20 = [r22 retain];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)valueForKeychainKeyNew:(void *)arg2 service:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[self keychainItemForKeyNew:r21 service:r19] retain];
    r20 = [self valueForKeychainItem:r22 key:r21 service:r19];
    [r19 release];
    [r21 release];
    r19 = [r20 retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)setValue:(void *)arg2 forKeychainKey:(void *)arg3 inService:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([r22 setValueWithStatus:r19 forKeychainKey:r20 inService:r21] == 0x0) goto loc_1006a4ed0;

loc_1006a4e90:
    r22 = [[ADJAdjustFactory logger] retain];
    if (*_kSecAttrAccessGroupToken == 0x0) {
            r2 = @"Value unsuccessfully written to the keychain old way";
    }
    else {
            r2 = @"Value unsuccessfully written to the keychain new way";
    }
    goto loc_1006a4f88;

loc_1006a4f88:
    [r22 warn:r2];
    [r22 release];
    r22 = 0x0;
    goto loc_1006a4f9c;

loc_1006a4f9c:
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;

loc_1006a4ed0:
    r23 = [r22 wasWritingSuccessful:r19 forKeychainKey:r20 inService:r21];
    r22 = [[ADJAdjustFactory logger] retain];
    if (r23 == 0x0) goto loc_1006a4f40;

loc_1006a4f14:
    if (*_kSecAttrAccessGroupToken == 0x0) {
            r2 = @"Value successfully written to the keychain old way";
    }
    else {
            r2 = @"Value successfully written to the keychain new way";
    }
    [r22 verbose:r2];
    [r22 release];
    r22 = 0x1;
    goto loc_1006a4f9c;

loc_1006a4f40:
    if (*_kSecAttrAccessGroupToken == 0x0) {
            r2 = @"Value unsuccessfully written to the keychain after the check old way";
    }
    else {
            r2 = @"Value unsuccessfully written to the keychain after the check new way";
    }
    goto loc_1006a4f88;
}

-(void *)valueForKeychainKeyOld:(void *)arg2 service:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[self keychainItemForKeyOld:r21 service:r19] retain];
    r20 = [self valueForKeychainItem:r22 key:r21 service:r19];
    [r19 release];
    [r21 release];
    r19 = [r20 retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)valueForKeychainItem:(void *)arg2 key:(void *)arg3 service:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = [arg2 retain];
    r3 = **_kSecReturnData;
    r21 = **_kCFBooleanTrue;
    [arg2 setObject:r21 forKeyedSubscript:r3];
    [arg2 setObject:r21 forKeyedSubscript:**_kSecReturnAttributes];
    r0 = SecItemCopyMatching(r20, &var_28);
    [r20 release];
    r21 = 0x0;
    if (r0 == 0x0) {
            r19 = var_28;
            r20 = [[r19 objectForKeyedSubscript:**_kSecValueData] retain];
            if (r20 != 0x0) {
                    r21 = [[NSString alloc] initWithData:r20 encoding:0x4];
            }
            else {
                    r21 = 0x0;
            }
            [r20 release];
            [r19 release];
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)keychainItemForKeyNew:(void *)arg2 service:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 init];
    [r0 setObject:**_kSecAttrAccessGroupToken forKeyedSubscript:**_kSecAttrAccessGroup];
    [self keychainItemForKey:r0 key:r21 service:r19];
    [r19 release];
    [r21 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)keychainItemForKeyOld:(void *)arg2 service:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 init];
    [r0 setObject:**_kSecAttrAccessibleAlways forKeyedSubscript:**_kSecAttrAccessible];
    [self keychainItemForKey:r0 key:r21 service:r19];
    [r19 release];
    [r21 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void)keychainItemForKey:(void *)arg2 key:(void *)arg3 service:(void *)arg4 {
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r24 = **_kSecClass;
    r25 = **_kSecClassGenericPassword;
    r27 = [arg4 retain];
    [arg2 setObject:r25 forKeyedSubscript:r24];
    [arg2 setObject:arg3 forKeyedSubscript:**_kSecAttrAccount];
    [r23 release];
    [arg2 setObject:arg4 forKeyedSubscript:**_kSecAttrService];
    [r27 release];
    [r22 release];
    return;
}

-(int)setValueWithStatus:(void *)arg2 forKeychainKey:(void *)arg3 inService:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r19 = arg2;
    r23 = self;
    r20 = [r19 retain];
    r22 = [arg3 retain];
    if (*_kSecAttrAccessGroupToken == 0x0) {
            r1 = @selector(keychainItemForKeyOld:service:);
    }
    else {
            r1 = @selector(keychainItemForKeyNew:service:);
    }
    r21 = objc_msgSend(r23, r1);
    [r22 release];
    r21 = [r21 retain];
    r22 = **_kSecValueData;
    r19 = [r19 dataUsingEncoding:0x4];
    [r20 release];
    r19 = [r19 retain];
    [r21 setObject:r19 forKeyedSubscript:r22];
    [r19 release];
    r19 = SecItemAdd(r21, 0x0);
    [r21 release];
    r0 = r19;
    return r0;
}

-(bool)wasWritingSuccessful:(void *)arg2 forKeychainKey:(void *)arg3 inService:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    if (*_kSecAttrAccessGroupToken == 0x0) {
            r1 = @selector(valueForKeychainKeyOld:service:);
    }
    else {
            r1 = @selector(valueForKeychainKeyNew:service:);
    }
    r20 = objc_msgSend(r22, r1);
    [r21 release];
    r0 = [r20 retain];
    r21 = [r0 isEqualToString:r2];
    [r19 release];
    [r0 release];
    r0 = r21;
    return r0;
}

@end