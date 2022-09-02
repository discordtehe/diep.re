@implementation ShmoopiKeychainUtils

+(void)deleteItemForUsername:(void *)arg2 andServiceName:(void *)arg3 error:(void * *)arg4 {
    r29 = &saved_fp;
    r21 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && r20 != 0x0) {
            *r21 = 0x0;
            r0 = @class(NSArray);
            r0 = [r0 alloc];
            r2 = **_kSecClass;
            r8 = *_kSecAttrAccount;
            r9 = *_kSecAttrService;
            r22 = [r0 initWithObjects:r2];
            r0 = @class(NSArray);
            r0 = [r0 alloc];
            var_60 = r19;
            stack[-104] = r20;
            r23 = [r0 initWithObjects:**_kSecClassGenericPassword];
            r0 = [NSDictionary alloc];
            r0 = [r0 initWithObjects:r23 forKeys:r22];
            r24 = r0;
            if (SecItemDelete(r0) != 0x0) {
                    r8 = &@class(MCConfigurationData);
                    asm { sxtw       x3, w0 };
                    r0 = *(r8 + 0x578);
                    r0 = [r0 errorWithDomain:@"SFHFKeychainUtilsErrorDomain" code:r3 userInfo:0x0];
                    r29 = r29;
                    *r21 = [[r0 retain] autorelease];
            }
            [r24 release];
            [r23 release];
            [r22 release];
    }
    else {
            r0 = [NSError errorWithDomain:@"SFHFKeychainUtilsErrorDomain" code:0xfffffffffffff830 userInfo:0x0];
            r29 = r29;
            *r21 = [[r0 retain] autorelease];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void *)getPasswordForUsername:(void *)arg2 andServiceName:(void *)arg3 error:(void * *)arg4 {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x40;
    r21 = arg4;
    r23 = [arg2 retain];
    r20 = [arg3 retain];
    if (r23 == 0x0 || r20 == 0x0) goto loc_1005f555c;

loc_1005f559c:
    *r21 = 0x0;
    r0 = @class(NSArray);
    r0 = [r0 alloc];
    r2 = **_kSecClass;
    r8 = *_kSecAttrAccount;
    r24 = [r0 initWithObjects:r2];
    var_70 = r24;
    r0 = @class(NSArray);
    r0 = [r0 alloc];
    var_88 = r20;
    var_90 = r23;
    var_68 = r23;
    r23 = [r0 initWithObjects:**_kSecClassGenericPassword];
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 initWithObjects:r23 forKeys:r24];
    r24 = r0;
    r0 = [r0 mutableCopy];
    r25 = r0;
    [r0 setObject:r2 forKey:r3];
    r0 = SecItemCopyMatching(r25, &var_58);
    if (r0 != 0x0) goto loc_1005f5740;

loc_1005f56c0:
    r0 = [r24 mutableCopy];
    r26 = r0;
    [r0 setObject:r2 forKey:r3];
    r8 = SecItemCopyMatching(r26, &var_60);
    if (r8 == 0x0) goto loc_1005f5790;

loc_1005f5704:
    if (r8 == 0xffffffffffff9d2c) {
            r0 = [NSError errorWithDomain:@"SFHFKeychainUtilsErrorDomain" code:0xfffffffffffff831 userInfo:0x0];
            r29 = r29;
    }
    else {
            r3 = **_kSecReturnData;
            r0 = @class(NSError);
            asm { sxtw       x3, w8 };
            r0 = [r0 errorWithDomain:@"SFHFKeychainUtilsErrorDomain" code:r3 userInfo:0x0];
            r29 = r29;
    }
    goto loc_1005f5824;

loc_1005f5824:
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    r27 = 0x0;
    *r21 = r0;
    goto loc_1005f5834;

loc_1005f5834:
    [r26 release];
    goto loc_1005f583c;

loc_1005f583c:
    [r25 release];
    [r24 release];
    [r23 release];
    [var_70 release];
    r23 = var_68;
    goto loc_1005f5860;

loc_1005f5860:
    [r20 release];
    [r23 release];
    r0 = [r27 autorelease];
    return r0;

loc_1005f5790:
    r22 = var_60;
    if (r22 == 0x0) goto loc_1005f57f8;

loc_1005f5798:
    r27 = [[NSString alloc] initWithData:r22 encoding:0x4];
    [r22 release];
    goto loc_1005f5834;

loc_1005f57f8:
    r0 = [NSError errorWithDomain:@"SFHFKeychainUtilsErrorDomain" code:0xfffffffffffff831 userInfo:0x0];
    r29 = r29;
    goto loc_1005f5824;

loc_1005f5740:
    r27 = 0x0;
    if (r0 != 0xffffffffffff9d2c) {
            r3 = **_kSecReturnAttributes;
            r8 = &@class(MCConfigurationData);
            asm { sxtw       x3, w0 };
            r0 = *(r8 + 0x578);
            r0 = [r0 errorWithDomain:@"SFHFKeychainUtilsErrorDomain" code:r3 userInfo:0x0];
            r29 = r29;
            r0 = [r0 retain];
            r0 = [r0 autorelease];
            r27 = 0x0;
            *r21 = r0;
    }
    goto loc_1005f583c;

loc_1005f555c:
    r0 = [NSError errorWithDomain:@"SFHFKeychainUtilsErrorDomain" code:0xfffffffffffff830 userInfo:0x0];
    r29 = r29;
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    r27 = 0x0;
    *r21 = r0;
    goto loc_1005f5860;
}

+(void)storeUsername:(void *)arg2 andPassword:(void *)arg3 forServiceName:(void *)arg4 updateExisting:(bool)arg5 error:(void * *)arg6 {
    r29 = &saved_fp;
    r22 = arg6;
    r24 = arg5;
    r25 = self;
    r19 = [arg2 retain];
    var_58 = [arg3 retain];
    r21 = [arg4 retain];
    if (r21 == 0x0 || r19 == 0x0 || var_58 == 0x0) goto loc_1005f58fc;

loc_1005f5968:
    r0 = [ShmoopiKeychainUtils getPasswordForUsername:r19 andServiceName:r21 error:r22];
    r29 = r29;
    r23 = [r0 retain];
    if ([*r22 code] == -0x7cf) {
            *r22 = 0x0;
            [r25 deleteItemForUsername:r19 andServiceName:r21 error:r22];
    }
    if ([*r22 code] != 0x0) goto loc_1005f5cb8;

loc_1005f59ec:
    *r22 = 0x0;
    if (r23 == 0x0) goto loc_1005f5b48;

loc_1005f59f4:
    if (r23 == var_58 || ((r24 ^ 0x1) & 0x1) != 0x0) goto loc_1005f5cb8;

loc_1005f5a08:
    r0 = @class(NSArray);
    r0 = [r0 alloc];
    r2 = **_kSecClass;
    r8 = *_kSecAttrService;
    r9 = *_kSecAttrLabel;
    r24 = [r0 initWithObjects:r2];
    r0 = @class(NSArray);
    r0 = [r0 alloc];
    var_80 = r21;
    var_78 = r21;
    r25 = [r0 initWithObjects:**_kSecClassGenericPassword];
    r27 = [[NSDictionary alloc] initWithObjects:r25 forKeys:r24];
    r26 = @class(NSDictionary);
    r0 = [var_58 dataUsingEncoding:0x4];
    r29 = r29;
    r28 = [r0 retain];
    r26 = SecItemUpdate(r27, [r26 dictionaryWithObject:r28 forKey:**_kSecValueData]);
    [r28 release];
    [r27 release];
    [r25 release];
    r0 = r24;
    goto loc_1005f5c78;

loc_1005f5c78:
    [r0 release];
    if (r26 != 0x0) {
            r8 = &@class(MCConfigurationData);
            asm { sxtw       x3, w26 };
            r0 = *(r8 + 0x578);
            r0 = [r0 errorWithDomain:@"SFHFKeychainUtilsErrorDomain" code:r3 userInfo:0x0];
            r29 = r29;
            *r22 = [[r0 retain] autorelease];
    }
    goto loc_1005f5cb8;

loc_1005f5cb8:
    [r23 release];
    goto loc_1005f5934;

loc_1005f5934:
    [r21 release];
    [var_58 release];
    [r19 release];
    return;

loc_1005f5b48:
    r0 = @class(NSArray);
    r0 = [r0 alloc];
    r2 = **_kSecClass;
    r8 = *_kSecAttrService;
    r9 = *_kSecAttrLabel;
    r10 = *_kSecAttrAccount;
    r25 = [r0 initWithObjects:r2];
    r27 = [NSArray alloc];
    r28 = **_kSecClassGenericPassword;
    r0 = [var_58 dataUsingEncoding:0x4];
    r29 = r29;
    r20 = [r0 retain];
    var_78 = r21;
    var_80 = r21;
    r27 = [r27 initWithObjects:r28];
    [r20 release];
    r0 = [NSDictionary alloc];
    r0 = [r0 initWithObjects:r27 forKeys:r25];
    r26 = SecItemAdd(r0, 0x0);
    [r0 release];
    [r27 release];
    r0 = r25;
    goto loc_1005f5c78;

loc_1005f58fc:
    r0 = [NSError errorWithDomain:@"SFHFKeychainUtilsErrorDomain" code:0xfffffffffffff830 userInfo:0x0];
    r29 = r29;
    *r22 = [[r0 retain] autorelease];
    goto loc_1005f5934;
}

@end