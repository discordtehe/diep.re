@implementation ADJDeviceInfo

+(void *)deviceInfoWithSdkPrefix:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[ADJDeviceInfo alloc] initWithSdkPrefix:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)idForAdvertisers {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_idForAdvertisers)), 0x0);
    return r0;
}

-(void)injectInstallReceipt:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [r19 appStoreReceiptURL];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [NSData dataWithContentsOfURL:r21];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            r23 = [[r22 adjEncodeBase64] retain];
                            [r20 setInstallReceiptBase64:r23];
                            [r23 release];
                    }
                    [r22 release];
            }
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)setIdForAdvertisers:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)fbAttributionId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_fbAttributionId)), 0x0);
    return r0;
}

-(void)setFbAttributionId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)trackingEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_trackingEnabled;
    return r0;
}

-(void *)initWithSdkPrefix:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r19 = [arg2 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = [[UIDevice currentDevice] retain];
            r22 = [[NSLocale currentLocale] retain];
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r23 = r0;
            r24 = [[r0 infoDictionary] retain];
            r0 = @class(UIDevice);
            r0 = [r0 currentDevice];
            r0 = [r0 retain];
            [r20 setTrackingEnabled:[r0 adjTrackingEnabled]];
            [r0 release];
            r0 = @class(UIDevice);
            r0 = [r0 currentDevice];
            r0 = [r0 retain];
            r27 = [[r0 adjIdForAdvertisers] retain];
            [r20 setIdForAdvertisers:r27];
            [r27 release];
            [r0 release];
            r0 = @class(UIDevice);
            r0 = [r0 currentDevice];
            r0 = [r0 retain];
            r27 = [[r0 adjFbAttributionId] retain];
            [r20 setFbAttributionId:r27];
            [r27 release];
            [r0 release];
            r0 = @class(UIDevice);
            r0 = [r0 currentDevice];
            r0 = [r0 retain];
            r26 = [[r0 adjVendorId] retain];
            [r20 setVendorId:r26];
            [r26 release];
            [r0 release];
            r26 = [[r24 objectForKey:**_kCFBundleIdentifierKey] retain];
            [r20 setBundeIdentifier:r26];
            [r26 release];
            r26 = [[r24 objectForKey:**_kCFBundleVersionKey] retain];
            [r20 setBundleVersion:r26];
            [r26 release];
            r26 = [[r23 objectForInfoDictionaryKey:@"CFBundleShortVersionString"] retain];
            [r20 setBundleShortVersion:r26];
            [r26 release];
            r26 = [[r22 objectForKey:**_NSLocaleLanguageCode] retain];
            [r20 setLanguageCode:r26];
            [r26 release];
            r25 = [[r22 objectForKey:**_NSLocaleCountryCode] retain];
            [r20 setCountryCode:r25];
            [r25 release];
            [r20 setOsName:@"ios"];
            r25 = [[r21 adjDeviceType] retain];
            [r20 setDeviceType:r25];
            [r25 release];
            r25 = [[r21 adjDeviceName] retain];
            [r20 setDeviceName:r25];
            [r25 release];
            r25 = [[r21 systemVersion] retain];
            [r20 setSystemVersion:r25];
            [r25 release];
            r25 = [[ADJSystemProfile machineModel] retain];
            [r20 setMachineModel:r25];
            [r25 release];
            r25 = [[ADJSystemProfile cpuSubtype] retain];
            [r20 setCpuSubtype:r25];
            [r25 release];
            r0 = @class(ADJSystemProfile);
            r0 = [r0 osVersion];
            r29 = r29;
            r25 = [r0 retain];
            [r20 setOsBuild:r25];
            [r25 release];
            if (r19 != 0x0) {
                    r26 = [[ADJUtil clientSdk] retain];
                    r25 = [[NSString stringWithFormat:@"%@@%@"] retain];
                    [r20 setClientSdk:r25];
                    [r25 release];
                    r0 = r26;
            }
            else {
                    r25 = [[ADJUtil clientSdk] retain];
                    [r20 setClientSdk:r25];
                    r0 = r25;
            }
            [r0 release];
            [r20 injectInstallReceipt:r23];
            r25 = [r20 retain];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
    }
    else {
            r25 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r25;
    return r0;
}

-(void)setTrackingEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_trackingEnabled = arg2;
    return;
}

-(void *)vendorId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_vendorId)), 0x0);
    return r0;
}

-(void)setVendorId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setClientSdk:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)clientSdk {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_clientSdk)), 0x0);
    return r0;
}

-(void *)bundeIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_bundeIdentifier)), 0x0);
    return r0;
}

-(void)setBundeIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)bundleVersion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_bundleVersion)), 0x0);
    return r0;
}

-(void)setBundleVersion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)bundleShortVersion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_bundleShortVersion)), 0x0);
    return r0;
}

-(void)setBundleShortVersion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)deviceType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_deviceType)), 0x0);
    return r0;
}

-(void *)deviceName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_deviceName)), 0x0);
    return r0;
}

-(void)setDeviceType:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)osName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_osName)), 0x0);
    return r0;
}

-(void)setDeviceName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)systemVersion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_systemVersion)), 0x0);
    return r0;
}

-(void)setOsName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)languageCode {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_languageCode)), 0x0);
    return r0;
}

-(void)setSystemVersion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setLanguageCode:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)countryCode {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_countryCode)), 0x0);
    return r0;
}

-(void *)machineModel {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_machineModel)), 0x0);
    return r0;
}

-(void)setCountryCode:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setMachineModel:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)cpuSubtype {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_cpuSubtype)), 0x0);
    return r0;
}

-(void)setCpuSubtype:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)installReceiptBase64 {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_installReceiptBase64)), 0x0);
    return r0;
}

-(void)setInstallReceiptBase64:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)osBuild {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_osBuild)), 0x0);
    return r0;
}

-(void)setOsBuild:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_osBuild, 0x0);
    objc_storeStrong((int64_t *)&self->_installReceiptBase64, 0x0);
    objc_storeStrong((int64_t *)&self->_cpuSubtype, 0x0);
    objc_storeStrong((int64_t *)&self->_machineModel, 0x0);
    objc_storeStrong((int64_t *)&self->_countryCode, 0x0);
    objc_storeStrong((int64_t *)&self->_languageCode, 0x0);
    objc_storeStrong((int64_t *)&self->_systemVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_osName, 0x0);
    objc_storeStrong((int64_t *)&self->_deviceName, 0x0);
    objc_storeStrong((int64_t *)&self->_deviceType, 0x0);
    objc_storeStrong((int64_t *)&self->_bundleShortVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_bundleVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_bundeIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_clientSdk, 0x0);
    objc_storeStrong((int64_t *)&self->_vendorId, 0x0);
    objc_storeStrong((int64_t *)&self->_fbAttributionId, 0x0);
    objc_storeStrong((int64_t *)&self->_idForAdvertisers, 0x0);
    return;
}

@end