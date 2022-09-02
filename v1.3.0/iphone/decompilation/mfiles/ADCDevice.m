@implementation ADCDevice

+(void *)sharedDevice {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d2228 != -0x1) {
            dispatch_once(0x1011d2228, &var_28);
    }
    r0 = *0x1011d2230;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)getInfo:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            var_18 = [r19 retain];
            [r20 getInfoAsync:&var_40];
            [var_18 release];
    }
    [r19 release];
    return;
}

-(bool)pathIsAllowable:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r19 hasPrefix:r2] & 0x1) == 0x0 && ([r0 hasPrefix:r2] & 0x1) == 0x0 && ([r19 hasPrefix:r2] & 0x1) == 0x0) {
            if (([r19 hasPrefix:r2] & 0x1) != 0x0) {
                    r20 = 0x1;
            }
            else {
                    r20 = [r19 hasPrefix:r2];
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)getInfoAsync:(void *)arg2 {
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            if (([NSThread isMainThread] & 0x1) != 0x0) {
                    [r19 retain];
                    sub_1001af4a4(&var_38);
                    r0 = r20;
            }
            else {
                    var_40 = [r19 retain];
                    dispatch_async(*__dispatch_main_q, &var_60);
                    r0 = var_40;
            }
            [r0 release];
    }
    [r19 release];
    return;
}

-(bool)createADC3Directories {
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
    r19 = [[NSFileManager defaultManager] retain];
    r22 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1] retain];
    r0 = [r19 URLsForDirectory:0xe inDomains:0x1];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 firstObject];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 URLByAppendingPathComponent:@"adc3" isDirectory:0x1];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 path];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r25 release];
    [r24 release];
    [r23 release];
    if ([r19 fileExistsAtPath:r20] != 0x0) {
            [r19 removeItemAtPath:r20 error:&var_70];
            r23 = [var_70 retain];
            if (r23 != 0x0) {
                    r0 = [r23 localizedDescription];
                    r29 = r29;
                    r25 = [r0 retain];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCDevice createADC3Directories]" line:0x127 withFormat:@"Error deleting application support directory: %@"];
                    [r25 release];
                    [r23 release];
            }
    }
    var_A8 = r20;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_dataPath));
    [r19 createDirectoryAtPath:r2 withIntermediateDirectories:r3 attributes:r4 error:r5];
    r24 = [0x0 retain];
    if (r24 != 0x0) {
            r0 = [r24 localizedDescription];
            r29 = r29;
            r26 = [r0 retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCDevice createADC3Directories]" line:0x12e withFormat:@"Error creating protected data directory: %@"];
            [r26 release];
            [r24 release];
    }
    var_B0 = sign_extend_64(*(int32_t *)ivar_offset(_mediaPath));
    var_A0 = r22;
    [r19 createDirectoryAtPath:r2 withIntermediateDirectories:r3 attributes:r4 error:r5];
    r24 = [0x0 retain];
    if (r24 != 0x0) {
            r0 = [r24 localizedDescription];
            r29 = r29;
            r26 = [r0 retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCDevice createADC3Directories]" line:0x134 withFormat:@"Error creating protected media directory: %@"];
            [r26 release];
            [r24 release];
    }
    r22 = [[NSURL fileURLWithPath:*(r21 + r20)] retain];
    r0 = @(YES);
    r29 = r29;
    [r0 retain];
    [r22 setResourceValue:r2 forKey:r3 error:r4];
    r28 = [0x0 retain];
    [r20 release];
    [r22 release];
    if (r28 != 0x0) {
            r0 = [r28 localizedDescription];
            r29 = r29;
            r22 = [r0 retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCDevice createADC3Directories]" line:0x13a withFormat:@"Error excluding AdColony data directory from backup: %@"];
            [r22 release];
            [r28 release];
    }
    r28 = var_A0;
    [r19 createDirectoryAtPath:r2 withIntermediateDirectories:r3 attributes:r4 error:r5];
    r23 = [0x0 retain];
    if (r23 != 0x0) {
            r0 = [r23 localizedDescription];
            r29 = r29;
            r22 = [r0 retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCDevice createADC3Directories]" line:0x140 withFormat:@"Error creating protected temporary storage directory: %@"];
            [r22 release];
            [r23 release];
    }
    r20 = [[NSURL fileURLWithPath:*(r21 + var_B0)] retain];
    r0 = @(YES);
    r29 = r29;
    [r0 retain];
    [r20 setResourceValue:r2 forKey:r3 error:r4];
    r21 = [0x0 retain];
    [r22 release];
    [r20 release];
    if (r21 != 0x0) {
            r22 = [[r21 localizedDescription] retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCDevice createADC3Directories]" line:0x146 withFormat:@"Error excluding AdColony media directory from backup: %@"];
            [r22 release];
    }
    if (r21 == 0x0) {
            if (CPU_FLAGS & E) {
                    r23 = 0x1;
            }
    }
    var_58 = **___stack_chk_guard;
    [var_A8 release];
    [r28 release];
    [r19 release];
    [r21 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)isPlusModel {
    if (*qword_1011d2240 != -0x1) {
            dispatch_once(0x1011d2240, 0x100e702c8);
    }
    return *(int8_t *)0x1011d2238;
}

-(void *)collectDeviceModel {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sysctlbyname("hw.machine", 0x0, &var_18, 0x0, 0x0);
    sysctlbyname("hw.machine", malloc(var_18), &var_18, 0x0, 0x0);
    r19 = [[NSString stringWithCString:r20 encoding:0x4] retain];
    r0 = free(r20);
    if (r19 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r19;
            }
            else {
                    r0 = @"";
            }
    }
    r20 = [r0 retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)supportsPhoneCalls {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [CTTelephonyNetworkInfo new];
    r19 = r0;
    r0 = [r0 subscriberCellularProvider];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r20 = 0x1;
            }
    }
    [r0 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)collectMACAddress:(void * *)arg2 {
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    if (if_nametoindex("en0") == 0x0) goto loc_1001b0a90;

loc_1001b09c0:
    r0 = sysctl(r29 - 0x40, 0x6, 0x0, &var_58, 0x0, 0x0);
    if ((r0 & 0xffffffff80000000) != 0x0) goto loc_1001b0a9c;

loc_1001b09e0:
    r21 = malloc(var_58);
    if (r21 == 0x0) goto loc_1001b0aa8;

loc_1001b09f0:
    r0 = sysctl(r29 - 0x40, 0x6, r21, &var_58, 0x0, 0x0);
    if ((r0 & 0xffffffff80000000) == 0x0) {
            r8 = *(int8_t *)(r21 + 0x75);
            r0 = [NSString stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X"];
            r0 = [r0 retain];
            r20 = [[r0 lowercaseString] retain];
            [r0 release];
            free(r21);
    }
    else {
            r20 = @"sysctl msgBuffer failure";
            [r20 retain];
            free(r21);
            if (r19 == 0x0) {
                    r20 = @"sysctl msgBuffer failure";
            }
            else {
                    r22 = [[NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_50 count:0x1] retain];
                    *r19 = [[[NSError errorWithDomain:@"ADCDeviceErrorDomain" code:0x1 userInfo:r22] retain] autorelease];
                    [r22 release];
            }
    }
    goto loc_1001b0b38;

loc_1001b0b38:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1001b0aa8:
    r20 = @"buffer allocation failure";
    goto loc_1001b0ab0;

loc_1001b0ab0:
    [r20 retain];
    if (r19 != 0x0) {
            r22 = [[NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_50 count:0x1] retain];
            *r19 = [[[NSError errorWithDomain:@"ADCDeviceErrorDomain" code:0x1 userInfo:r22] retain] autorelease];
            [r22 release];
    }
    goto loc_1001b0b38;

loc_1001b0a9c:
    r20 = @"sysctl mgmtInfoBase failure";
    goto loc_1001b0ab0;

loc_1001b0a90:
    r20 = @"if_nametoindex failure";
    goto loc_1001b0ab0;
}

-(bool)supportsSMS {
    r0 = [MFMessageComposeViewController canSendText];
    return r0;
}

-(void *)advertiserId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_advertiserId)), 0x1);
    return r0;
}

-(bool)supportsMail {
    r0 = [MFMailComposeViewController canSendMail];
    return r0;
}

-(void)setAdcAltID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adcAltID, arg2);
    return;
}

-(void *)adcAltID {
    r0 = self->_adcAltID;
    return r0;
}

-(void)setWatchPaired:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_watchPaired = arg2;
    return;
}

-(bool)watchPaired {
    r0 = *(int8_t *)(int64_t *)&self->_watchPaired;
    return r0;
}

-(void *)userId {
    r0 = self->_userId;
    return r0;
}

-(void *)carrier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_carrier)), 0x1);
    return r0;
}

-(void)setUserId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_userId, arg2);
    return;
}

-(void *)dataPath {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_dataPath)), 0x1);
    return r0;
}

-(void *)legacyDataPath {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_legacyDataPath)), 0x1);
    return r0;
}

-(double)screenHeight {
    r0 = self;
    return r0;
}

-(double)screenWidth {
    r0 = self;
    return r0;
}

-(double)screenHeightPixels {
    r0 = self;
    return r0;
}

-(double)screenWidthPixels {
    r0 = self;
    return r0;
}

-(void *)localeCountryCode {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_localeCountryCode)), 0x1);
    return r0;
}

-(void *)localeCountryCodeShort {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_localeCountryCodeShort)), 0x1);
    return r0;
}

-(void *)localeLanguageCode {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_localeLanguageCode)), 0x1);
    return r0;
}

-(void *)localeLanguageCodeShort {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_localeLanguageCodeShort)), 0x1);
    return r0;
}

-(void *)macAddress {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_macAddress)), 0x1);
    return r0;
}

-(void *)mediaPath {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mediaPath)), 0x1);
    return r0;
}

-(void *)legacyMediaPath {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_legacyMediaPath)), 0x1);
    return r0;
}

-(void *)tempStoragePath {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_tempStoragePath)), 0x1);
    return r0;
}

-(void *)model {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_model)), 0x1);
    return r0;
}

-(void *)type {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_type)), 0x1);
    return r0;
}

-(void *)brand {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_brand)), 0x1);
    return r0;
}

-(void *)networkType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_networkType)), 0x1);
    return r0;
}

-(void *)OSName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_OSName)), 0x1);
    return r0;
}

-(void *)OSVersion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_OSVersion)), 0x1);
    return r0;
}

-(void *)SDKVersion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_SDKVersion)), 0x1);
    return r0;
}

-(void *)capabilitiesMaskString {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_capabilitiesMaskString)), 0x1);
    return r0;
}

-(void *)appBundleName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_appBundleName)), 0x1);
    return r0;
}

-(void *)appBundleVersion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_appBundleVersion)), 0x1);
    return r0;
}

-(void *)getInfoWithoutAsyncData {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x2d0;
    r20 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_advertiserId));
    r19 = *(r20 + r21);
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r21);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_carrier));
    r19 = *(r20 + r21);
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r21);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_userId));
    r19 = *(r20 + r21);
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r21);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_dataPath));
    r0 = *(r20 + r21);
    r0 = [r0 stringByAppendingString:r2];
    r29 = r29;
    r0 = [r0 retain];
    var_2B8 = r0;
    if (r0 != 0x0) {
            r0 = *(r20 + r21);
            r0 = [r0 stringByAppendingString:r2];
            r29 = r29;
            r22 = [r0 retain];
            r2 = [NSString class];
            var_308 = r22;
            if ([r22 isKindOfClass:r2] != 0x0) {
                    r0 = *(r20 + r21);
                    r2 = @"/";
                    r0 = [r0 stringByAppendingString:r2];
                    r29 = r29;
                    r8 = [r0 retain];
                    var_2BC = 0x1;
                    var_2C0 = 0x1;
            }
            else {
                    r8 = @"";
                    var_2C0 = 0x0;
                    var_2BC = 0x1;
            }
    }
    else {
            r2 = @"/";
            var_2C0 = 0x0;
            r8 = @"";
    }
    var_2F8 = r8;
    var_2C8 = [[NSNumber numberWithDouble:r2] retain];
    var_2D0 = [[NSNumber numberWithDouble:r2] retain];
    var_2D8 = [[NSNumber numberWithDouble:r2] retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithDouble:r2];
    r29 = r29;
    var_2E0 = [r0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_localeCountryCode));
    r22 = *(r20 + r23);
    if (r22 != 0x0) {
            [NSString class];
            if ([r22 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r23);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_localeCountryCodeShort));
    r22 = *(r20 + r23);
    if (r22 != 0x0) {
            [NSString class];
            if ([r22 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r23);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_localeLanguageCode));
    r22 = *(r20 + r23);
    if (r22 != 0x0) {
            [NSString class];
            if ([r22 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r23);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_localeLanguageCodeShort));
    r22 = *(r20 + r23);
    if (r22 != 0x0) {
            [NSString class];
            if ([r22 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r23);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_macAddress));
    r22 = *(r20 + r23);
    if (r22 != 0x0) {
            [NSString class];
            if ([r22 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r23);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    var_2E8 = [[r20->_mediaPath stringByAppendingString:r2] retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_tempStoragePath));
    r0 = *(r20 + r23);
    r0 = [r0 stringByAppendingString:r2];
    r29 = r29;
    r28 = [r0 retain];
    if (r28 != 0x0) {
            r0 = *(r20 + r23);
            r0 = [r0 stringByAppendingString:r2];
            r29 = r29;
            r22 = [r0 retain];
            [NSString class];
            var_310 = r22;
            if ([r22 isKindOfClass:r2] != 0x0) {
                    r0 = *(r20 + r23);
                    r0 = [r0 stringByAppendingString:r2];
                    r29 = r29;
                    r9 = [r0 retain];
                    var_2EC = 0x1;
                    var_2F0 = 0x1;
            }
            else {
                    r9 = @"";
                    var_2F0 = 0x0;
                    var_2EC = 0x1;
            }
    }
    else {
            var_2F0 = 0x0;
            r9 = @"";
    }
    var_300 = r9;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_brand));
    r19 = *(r20 + r22);
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r22);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_model));
    r19 = *(r20 + r22);
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r22);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_type));
    r19 = *(r20 + r22);
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r22);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_networkType));
    r19 = *(r20 + r22);
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r22);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_OSName));
    r19 = *(r20 + r22);
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r22);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_OSVersion));
    r19 = *(r20 + r22);
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r22);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_SDKVersion));
    r19 = *(r20 + r22);
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r22);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r0 = @class(NSNumber);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_limitAdTracking));
    r23 = @selector(numberWithBool:);
    r2 = *(int8_t *)(r20 + r8);
    r19 = [objc_msgSend(r0, r23) retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithDouble:r2];
    r29 = r29;
    r21 = [r0 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_vendorId));
    r24 = *(r20 + r22);
    if (r24 != 0x0) {
            [NSString class];
            if ([r24 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r22);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_capabilitiesMaskString));
    r24 = *(r20 + r22);
    if (r24 != 0x0) {
            [NSString class];
            if ([r24 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r22);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adcAltID));
    r24 = *(r20 + r22);
    if (r24 != 0x0) {
            [NSString class];
            if ([r24 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r22);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r0 = [NSNumber numberWithBool:r2];
    r29 = r29;
    r23 = [r0 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_appBundleName));
    r24 = *(r20 + r22);
    if (r24 != 0x0) {
            [NSString class];
            if ([r24 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r22);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_appBundleVersion));
    r24 = *(r20 + r22);
    if (r24 != 0x0) {
            [NSString class];
            if ([r24 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r22);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_timezoneIETF));
    r24 = *(r20 + r22);
    if (r24 != 0x0) {
            [NSString class];
            if ([r24 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r22);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r24 = [[NSNumber numberWithInt:*(int32_t *)(int64_t *)&r20->_timezoneGMTOffsetMinutes] retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithInt:*(int32_t *)(int64_t *)&r20->_timezoneDSTOffsetMinutes];
    r29 = r29;
    r25 = [r0 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_cellServiceCountryCode));
    r26 = *(r20 + r22);
    if (r26 != 0x0) {
            [NSString class];
            if ([r26 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r22);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_launchServerResponseMetadata));
    r26 = *(r20 + r27);
    if (r26 != 0x0) {
            [NSDictionary class];
            if ([r26 isKindOfClass:r2] != 0x0) {
                    r22 = 0x0;
                    r26 = *(r20 + r27);
            }
            else {
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                    r29 = r29;
                    r26 = [r0 retain];
                    r22 = 0x1;
            }
    }
    else {
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r26 = [r0 retain];
            r22 = 0x1;
    }
    r20 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    if (r22 != 0x0) {
            [r26 release];
    }
    [r25 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r19 release];
    if (var_2F0 != 0x0) {
            [var_300 release];
    }
    if (var_2EC != 0x0) {
            [var_310 release];
    }
    [r28 release];
    [var_2E8 release];
    [var_2E0 release];
    [var_2D8 release];
    [var_2D0 release];
    [var_2C8 release];
    if (var_2C0 != 0x0) {
            [var_2F8 release];
    }
    if (var_2BC != 0x0) {
            [var_308 release];
    }
    var_58 = **___stack_chk_guard;
    [var_2B8 release];
    r0 = objc_retainAutoreleaseReturnValue(r20);
    r19 = r0;
    [r0 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(long long)currOrientation {
    r0 = self->_currOrientation;
    return r0;
}

-(int)timezoneGMTOffsetMinutes {
    r0 = *(int32_t *)(int64_t *)&self->_timezoneGMTOffsetMinutes;
    return r0;
}

-(void *)timezoneIETF {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_timezoneIETF)), 0x1);
    return r0;
}

-(int)timezoneDSTOffsetMinutes {
    r0 = *(int32_t *)(int64_t *)&self->_timezoneDSTOffsetMinutes;
    return r0;
}

-(void *)cellServiceCountryCode {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_cellServiceCountryCode)), 0x1);
    return r0;
}

-(bool)isViewControllerBasedStatusBarAppearanceEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_viewControllerBasedStatusBarAppearanceEnabled & 0x1;
    return r0;
}

-(void *)launchServerResponseMetadata {
    r0 = self->_launchServerResponseMetadata;
    return r0;
}

-(void)setLaunchServerResponseMetadata:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_launchServerResponseMetadata, arg2);
    return;
}

-(bool)limitAdTracking {
    r0 = *(int8_t *)(int64_t *)&self->_limitAdTracking & 0x1;
    return r0;
}

-(double)screenScale {
    r0 = self;
    return r0;
}

-(void *)vendorId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_vendorId)), 0x1);
    return r0;
}

-(float)batteryLevel {
    r0 = self;
    return r0;
}

-(long long)batteryState {
    r0 = self->_batteryState;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_vendorId, 0x0);
    objc_storeStrong((int64_t *)&self->_launchServerResponseMetadata, 0x0);
    objc_storeStrong((int64_t *)&self->_cellServiceCountryCode, 0x0);
    objc_storeStrong((int64_t *)&self->_timezoneIETF, 0x0);
    objc_storeStrong((int64_t *)&self->_appBundleVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_appBundleName, 0x0);
    objc_storeStrong((int64_t *)&self->_capabilitiesMaskString, 0x0);
    objc_storeStrong((int64_t *)&self->_SDKVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_OSVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_OSName, 0x0);
    objc_storeStrong((int64_t *)&self->_networkType, 0x0);
    objc_storeStrong((int64_t *)&self->_brand, 0x0);
    objc_storeStrong((int64_t *)&self->_type, 0x0);
    objc_storeStrong((int64_t *)&self->_model, 0x0);
    objc_storeStrong((int64_t *)&self->_tempStoragePath, 0x0);
    objc_storeStrong((int64_t *)&self->_legacyMediaPath, 0x0);
    objc_storeStrong((int64_t *)&self->_mediaPath, 0x0);
    objc_storeStrong((int64_t *)&self->_macAddress, 0x0);
    objc_storeStrong((int64_t *)&self->_localeLanguageCodeShort, 0x0);
    objc_storeStrong((int64_t *)&self->_localeLanguageCode, 0x0);
    objc_storeStrong((int64_t *)&self->_localeCountryCodeShort, 0x0);
    objc_storeStrong((int64_t *)&self->_localeCountryCode, 0x0);
    objc_storeStrong((int64_t *)&self->_legacyDataPath, 0x0);
    objc_storeStrong((int64_t *)&self->_dataPath, 0x0);
    objc_storeStrong((int64_t *)&self->_userId, 0x0);
    objc_storeStrong((int64_t *)&self->_carrier, 0x0);
    objc_storeStrong((int64_t *)&self->_adcAltID, 0x0);
    objc_storeStrong((int64_t *)&self->_advertiserId, 0x0);
    return;
}

-(void *)init {
    r31 = r31 - 0x1d0;
    var_60 = d9;
    stack[-104] = d8;
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
    r19 = [[r29 - 0x70 super] init];
    if (r19 == 0x0) goto loc_1001ae890;

loc_1001ad170:
    r0 = [ASIdentifierManager sharedManager];
    r0 = [r0 retain];
    var_100 = r0;
    r0 = [r0 advertisingIdentifier];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 UUIDString];
    r29 = r29;
    r0 = [r0 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_advertiserId));
    r8 = *(r19 + r21);
    *(r19 + r21) = r0;
    [r8 release];
    [r20 release];
    r0 = *(r19 + r21);
    r1 = @selector(isEqualToString:);
    var_188 = r1;
    if (objc_msgSend(r0, r1) != 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCDevice init]" line:0x36 withFormat:@"Advertising identifier string contains all zeros: %@"];
    }
    r0 = [CTTelephonyNetworkInfo new];
    r20 = r0;
    r0 = [r0 subscriberCellularProvider];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 carrierName];
    r29 = r29;
    r0 = [r0 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_carrier));
    r8 = *(r19 + r22);
    *(r19 + r22) = r0;
    [r8 release];
    [r21 release];
    [r20 release];
    r20 = *(r19 + r22);
    if (r20 == 0x0) {
            [@"none" retain];
            *(r19 + r22) = @"none";
            [r20 release];
    }
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 URLsForDirectory:0xd inDomains:0x1];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 firstObject];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 URLByAppendingPathComponent:@"adc3" isDirectory:0x1];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 path];
    var_120 = [r0 retain];
    [r26 release];
    [r28 release];
    [r27 release];
    [r25 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mediaPath));
    var_180 = r19 + r8;
    objc_storeStrong(r19 + r8, r0);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_dataPath));
    var_190 = r19 + r8;
    objc_storeStrong(r19 + r8, r20);
    r19 = r19;
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 URLsForDirectory:0xd inDomains:0x1];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 firstObject];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 URLByAppendingPathComponent:@"adc" isDirectory:0x1];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 path];
    var_128 = [r0 retain];
    [r22 release];
    [r21 release];
    [r20 release];
    [r25 release];
    objc_storeStrong((int64_t *)&r19->_legacyDataPath, r0);
    objc_storeStrong((int64_t *)&r19->_legacyMediaPath, r23);
    r0 = NSTemporaryDirectory();
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 stringByAppendingPathComponent:@"adc3"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_tempStoragePath));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    [r20 release];
    r0 = @class(UIScreen);
    r0 = [r0 mainScreen];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_screenHeight));
    *(r19 + r21) = d9;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_screenWidth));
    *(r19 + r23) = d8;
    r0 = @class(UIScreen);
    r0 = [r0 mainScreen];
    r0 = [r0 retain];
    [r0 scale];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_screenScale));
    *(r19 + r22) = d0;
    [r0 release];
    r19->_screenWidthPixels = *(r19 + r23) * *(r19 + r22);
    r19->_screenHeightPixels = *(r19 + r21) * *(r19 + r22);
    *(int32_t *)(int64_t *)&r19->_batteryLevel = 0x3f800000;
    r19->_batteryState = 0x3;
    r0 = [NSLocale currentLocale];
    r0 = [r0 retain];
    r21 = **_NSLocaleIdentifier;
    r23 = [[r0 localeIdentifier] retain];
    var_130 = r0;
    r0 = [r0 displayNameForKey:r21 value:r23];
    r29 = r29;
    r0 = [r0 retain];
    r22 = (int64_t *)&r19->_localeCountryCode;
    r8 = *r22;
    *r22 = r0;
    [r8 release];
    [r23 release];
    r0 = *r22;
    if (r0 == 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCDevice init]" line:0x55 withFormat:@"Received a nil locale country code"];
            objc_storeStrong(r22, @"");
            r0 = *r22;
    }
    if ([r0 length] >= 0x81) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCDevice init]" line:0x59 withFormat:@"Locale country code length is greater than 128 characters"];
            objc_storeStrong(r22, @"");
    }
    r0 = [NSLocale preferredLanguages];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectAtIndexedSubscript:0x0];
    r29 = r29;
    r0 = [r0 retain];
    r22 = (int64_t *)&r19->_localeLanguageCode;
    r8 = *r22;
    *r22 = r0;
    [r8 release];
    [r23 release];
    r0 = *r22;
    if (r0 == 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCDevice init]" line:0x5e withFormat:@"Received a nil locale language code"];
            objc_storeStrong(r22, @"");
            r0 = *r22;
    }
    if ([r0 length] >= 0x81) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCDevice init]" line:0x62 withFormat:@"Locale language code length is greater than 128 characters"];
            objc_storeStrong(r22, @"");
    }
    r0 = [NSLocale currentLocale];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKey:**_NSLocaleLanguageCode];
    r29 = r29;
    r0 = [r0 retain];
    r22 = (int64_t *)&r19->_localeLanguageCodeShort;
    r8 = *r22;
    *r22 = r0;
    [r8 release];
    [r23 release];
    r0 = *r22;
    if (r0 == 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCDevice init]" line:0x69 withFormat:@"Received a nil short locale language code"];
            objc_storeStrong(r22, @"");
            r0 = *r22;
    }
    if ([r0 length] >= 0x81) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCDevice init]" line:0x6d withFormat:@"Locale language code length is greater than 128 characters"];
            objc_storeStrong(r22, @"");
    }
    r0 = [NSLocale currentLocale];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKey:**_NSLocaleCountryCode];
    r29 = r29;
    r0 = [r0 retain];
    r20 = (int64_t *)&r19->_localeCountryCodeShort;
    r8 = *r20;
    *r20 = r0;
    [r8 release];
    [r22 release];
    r0 = *r20;
    if (r0 == 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCDevice init]" line:0x73 withFormat:@"Received a nil short locale language code"];
            objc_storeStrong(r20, @"");
            r0 = *r20;
    }
    if ([r0 length] >= 0x81) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCDevice init]" line:0x77 withFormat:@"Short locale language code length is greater than 128 characters"];
            objc_storeStrong(r20, @"");
    }
    r0 = [r19 collectMACAddress:r29 - 0x78];
    r29 = r29;
    r20 = [r0 retain];
    r21 = [0x0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_macAddress));
    r0 = *(r19 + r23);
    *(r19 + r23) = r20;
    [r0 release];
    r20 = *(r19 + r23);
    var_178 = r21;
    if (r21 != 0x0 || r20 == 0x0) {
            [@"" retain];
            *(r19 + r23) = @"";
            [r20 release];
    }
    objc_storeStrong((int64_t *)&r19->_brand, @"apple");
    r0 = [r19 collectDeviceModel];
    r0 = [r0 retain];
    r20 = (int64_t *)&r19->_model;
    r8 = *r20;
    *r20 = r0;
    [r8 release];
    r22 = (int64_t *)&r19->_type;
    objc_storeStrong(r22, @"media_player");
    r0 = *r20;
    r0 = [r0 lowercaseString];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 rangeOfString:r2];
    [r0 release];
    if (r26 != 0x7fffffffffffffff) goto loc_1001adc50;

loc_1001adb3c:
    r0 = *r20;
    r0 = [r0 lowercaseString];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 rangeOfString:r2];
    [r0 release];
    if (r26 != 0x7fffffffffffffff) goto loc_1001adc5c;

loc_1001adb78:
    r0 = *r20;
    r0 = [r0 lowercaseString];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 rangeOfString:r2];
    [r0 release];
    if (r24 == 0x7fffffffffffffff) goto loc_1001adc6c;

loc_1001adbb8:
    r0 = [UIDevice currentDevice];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [UIDevice currentDevice];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 userInterfaceIdiom];
            [r0 release];
            [r23 release];
            if (r25 == 0x1) {
                    objc_storeStrong(r22, @"tablet");
                    r1 = @"ipad_simulator";
            }
            else {
                    objc_storeStrong(r22, @"phone");
                    r1 = @"iphone_simulator";
            }
    }
    else {
            [r23 release];
            objc_storeStrong(r22, @"phone");
            r1 = @"iphone_simulator";
    }
    r0 = r20;
    goto loc_1001adc68;

loc_1001adc68:
    objc_storeStrong(r0, r1);
    goto loc_1001adc6c;

loc_1001adc6c:
    r0 = [ADCNetwork sharedNetwork];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 host];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [r25 setHost:@"www.adtilt.com"];
    }
    r28 = [r19 retain];
    var_80 = r28;
    [r25 startMonitoringWithReachabilityChangeHandler:r29 - 0xa0];
    objc_storeStrong((int64_t *)&r28->_networkType, @"unknown");
    [[UIDevice currentDevice] retain];
    objc_storeStrong((int64_t *)&r28->_OSName, @"ios");
    r0 = [r20 systemVersion];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_OSVersion));
    r8 = *(r28 + r9);
    *(r28 + r9) = r0;
    [r8 release];
    r0 = [NSString stringWithFormat:@"%d.%d.%d.%d"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_SDKVersion));
    r8 = *(r28 + r9);
    *(r28 + r9) = r0;
    [r8 release];
    *(int8_t *)(int64_t *)&r28->_limitAdTracking = [var_100 isAdvertisingTrackingEnabled];
    var_150 = r20;
    r0 = [r20 identifierForVendor];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 UUIDString];
    r29 = r29;
    r0 = [r0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_vendorId));
    r8 = *(r28 + r23);
    *(r28 + r23) = r0;
    [r8 release];
    [r20 release];
    r20 = *(r28 + r23);
    if (r20 == 0x0) {
            [@"" retain];
            *(r28 + r23) = @"";
            [r20 release];
    }
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 stringForKey:r2];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) {
            r0 = [ADCUtil getUUID];
            r29 = r29;
            r23 = [r0 retain];
            [r21 release];
            [r26 setObject:r23 forKey:@"adc_alt_id"];
            [r26 synchronize];
            r21 = r23;
    }
    var_158 = r21;
    objc_storeStrong((int64_t *)&r28->_adcAltID, r21);
    r0 = [r26 boolForKey:@"watch"];
    *(int8_t *)(int64_t *)&r28->_watchPaired = r0;
    if ((r0 & 0x1) == 0x0) {
            r0 = dispatch_get_global_queue(0x0, 0x0);
            r29 = r29;
            r23 = [r0 retain];
            var_B0 = [r28 retain];
            var_A8 = [r26 retain];
            dispatch_async(r23, r29 - 0xd0);
            [r23 release];
            [var_A8 release];
            [var_B0 release];
    }
    var_108 = @selector(subscriberCellularProvider);
    var_F8 = @selector(new);
    r0 = [NSTimeZone defaultTimeZone];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 daylightSavingTimeOffset];
    r0 = [r21 secondsFromGMT];
    r8 = 0x8888888888888889;
    asm { smulh      x8, x0, x8 };
    *(int32_t *)(int64_t *)&r28->_timezoneGMTOffsetMinutes = (r8 + r0 >> 0x5) + (r8 + r0 >> 0x3f);
    r8 = 0x100ba2000;
    asm { fdiv       d0, d8, d0 };
    asm { fcvtzs     w8, d0 };
    *(int32_t *)(int64_t *)&r28->_timezoneDSTOffsetMinutes = r8;
    r0 = [r21 name];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_timezoneIETF));
    r8 = *(r28 + r9);
    *(r28 + r9) = r0;
    [r8 release];
    r0 = objc_msgSend(@class(CTTelephonyNetworkInfo), var_F8);
    r23 = r0;
    r0 = objc_msgSend(r0, var_108);
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 isoCountryCode];
    r29 = r29;
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_cellServiceCountryCode));
    r8 = *(r28 + r9);
    *(r28 + r9) = r0;
    [r8 release];
    r0 = NSClassFromString(@"SLComposeViewController");
    var_148 = r25;
    var_168 = r23;
    var_160 = r21;
    var_170 = r24;
    if (r0 != 0x0) {
            r25 = [SLComposeViewController isAvailableForServiceType:**_SLServiceTypeTwitter];
            r8 = r25 | 0x2;
            if ([SLComposeViewController isAvailableForServiceType:**_SLServiceTypeFacebook] != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r25 = r25;
                    }
                    else {
                            r25 = r8;
                    }
            }
            r8 = r25 | 0x4;
            if ([SLComposeViewController isAvailableForServiceType:**_SLServiceTypeSinaWeibo] != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = r25;
                    }
                    else {
                            r8 = r8;
                    }
            }
    }
    else {
            r8 = 0x0;
    }
    r24 = var_180;
    r25 = @selector(defaultManager);
    r0 = @class(NSString);
    r0 = [r0 stringWithFormat:@"0x%08X"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_capabilitiesMaskString));
    r8 = *(r28 + r9);
    *(r28 + r9) = r0;
    [r8 release];
    [var_178 release];
    var_108 = [objc_msgSend(@class(NSFileManager), r25) retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r22 = [[r0 stringForKey:r2] retain];
    [r0 release];
    r0 = @class(NSString);
    r0 = [r0 stringWithFormat:@"%d.%d.%d.%d"];
    r29 = r29;
    var_F8 = [r0 retain];
    r20 = @selector(stringByAppendingPathComponent:);
    var_110 = r22;
    if ([var_108 fileExistsAtPath:*r24] != 0x0 && r22 != 0x0 && (objc_msgSend(var_110, var_188) & 0x1) == 0x0) {
            r0 = *var_190;
            r0 = objc_msgSend(r0, r20);
            r29 = r29;
            [r0 retain];
            r27 = var_108;
            [r27 removeItemAtPath:r2 error:r3];
            r21 = [0x0 retain];
            [r25 release];
            if (r21 != 0x0) {
                    r0 = [r21 userInfo];
                    r29 = r29;
                    r25 = [r0 retain];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCDevice init]" line:0xf4 withFormat:@"Failed to remove media pool while updating native SDK: %@"];
                    [r21 release];
                    [r25 release];
                    r25 = @selector(defaultManager);
            }
            else {
                    [r27 removeItemAtPath:r2 error:r3];
                    r23 = [0x0 retain];
                    [r21 release];
                    r25 = @selector(defaultManager);
                    if (r23 != 0x0) {
                            r0 = [r23 userInfo];
                            r29 = r29;
                            r25 = [r0 retain];
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCDevice init]" line:0xf8 withFormat:@"Failed to remove AdColony cache while updating native SDK: %@"];
                            r0 = r25;
                            r25 = @selector(defaultManager);
                            [r0 release];
                            [r23 release];
                    }
            }
    }
    var_118 = r26;
    r23 = [objc_msgSend(@class(NSFileManager), r25) retain];
    r26 = [objc_msgSend(*r24, r20) retain];
    r0 = [r23 attributesOfItemAtPath:r26 error:&var_E8];
    r29 = r29;
    r0 = [r0 retain];
    r27 = r20;
    r25 = [var_E8 retain];
    r21 = [r0 fileSize];
    [r0 release];
    [r26 release];
    [r23 release];
    if (r21 >= 0x400000) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCDevice init]" line:0x104 withFormat:@"Network request file is excedding limit for file size: %lu"];
            r0 = *r24;
            r0 = objc_msgSend(r0, r27);
            r29 = r29;
            r20 = [r0 retain];
            [var_108 removeItemAtPath:r20 error:&var_F0];
            r21 = [var_F0 retain];
            [r25 release];
            [r20 release];
            r25 = r21;
    }
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:var_F8 forKey:@"adc_sdk_version"];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r0 release];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 localizedInfoDictionary];
    r0 = [r0 retain];
    r22 = r0;
    r24 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r24);
    r29 = r29;
    r0 = [r0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_appBundleName));
    r8 = *(r28 + r23);
    *(r28 + r23) = r0;
    [r8 release];
    [r22 release];
    [r20 release];
    if (*(r28 + r23) == 0x0) {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 infoDictionary];
            r0 = [r0 retain];
            r21 = r0;
            r0 = objc_msgSend(r0, r24);
            r29 = r29;
            r0 = [r0 retain];
            r8 = *(r28 + r23);
            *(r28 + r23) = r0;
            [r8 release];
            [r21 release];
            [r20 release];
            r21 = *(r28 + r23);
            if (r21 == 0x0) {
                    [@"" retain];
                    *(r28 + r23) = @"";
                    [r21 release];
            }
    }
    r0 = [ADCUtil appBundleInfo];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r21 = [r0 retain];
    r27 = var_108;
    if (r21 != 0x0) {
            r0 = [r22 objectForKeyedSubscript:r2];
            r29 = r29;
            r23 = [r0 retain];
            [NSString class];
            if ([r23 isKindOfClass:r2] != 0x0) {
                    r26 = [[r22 objectForKeyedSubscript:r2] retain];
                    r20 = 0x1;
                    r24 = 0x1;
            }
            else {
                    r24 = 0x0;
                    r26 = @"";
                    r20 = 0x1;
            }
    }
    else {
            r20 = 0x0;
            r24 = 0x0;
            r26 = @"";
    }
    objc_storeStrong((int64_t *)&r28->_appBundleVersion, r26);
    if (r24 != 0x0) {
            [r26 release];
    }
    if (r20 != 0x0) {
            [r23 release];
    }
    [r21 release];
    [r28 createADC3Directories];
    [r22 release];
    [var_F8 release];
    [var_110 release];
    [r27 release];
    [var_170 release];
    [var_168 release];
    [var_160 release];
    [var_158 release];
    [var_118 release];
    [var_150 release];
    [var_80 release];
    [var_148 release];
    [r25 release];
    [var_130 release];
    [var_128 release];
    [var_120 release];
    [var_100 release];
    goto loc_1001ae890;

loc_1001ae890:
    r0 = r19;
    return r0;

loc_1001adc5c:
    r1 = @"phone";
    goto loc_1001adc64;

loc_1001adc64:
    r0 = r22;
    goto loc_1001adc68;

loc_1001adc50:
    r1 = @"tablet";
    goto loc_1001adc64;
}

@end