@implementation FABOnboardingOperation

-(void *)initWithAPIKey:(void *)arg2 {
    [self release];
    return 0x0;
}

-(void)main {
    [self beginAppConfigure];
    return;
}

-(void *)initWithDelegate:(void *)arg2 shouldCreate:(bool)arg3 APIKey:(void *)arg4 kitVersionsByKitBundleIdentifier:(void *)arg5 appIdentifierModel:(void *)arg6 endpointString:(void *)arg7 networkClient:(void *)arg8 {
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
    r22 = arg7;
    r25 = arg6;
    r27 = arg3;
    r19 = [arg2 retain];
    r28 = [arg4 retain];
    r20 = [arg5 retain];
    r21 = [r25 retain];
    r23 = [r22 retain];
    r26 = [arg8 retain];
    r0 = [[&var_60 super] initWithAPIKey:r28];
    r24 = r0;
    [r28 release];
    if (r24 != 0x0) {
            *(int8_t *)(int64_t *)&r24->_shouldCreate = r27;
            r24->_delegate = r19;
            objc_storeStrong((int64_t *)&r24->_appIdentifierModel, r25);
            objc_storeStrong((int64_t *)&r24->_appEndpoint, r22);
            objc_storeWeak((int64_t *)&r24->_networkClient, r26);
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_kitVersionsByKitBundleIdentifier));
            r8 = *(r24 + r9);
            *(r24 + r9) = r0;
            [r8 release];
    }
    [r26 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;
}

-(void)beginAppConfigure {
    r31 = r31 - 0xe0;
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
    r21 = self;
    r19 = [[NSOutputStream alloc] initToMemory];
    r20 = [[FABMultipartMimeStreamEncoder generateBoundary] retain];
    r0 = @class(FABMultipartMimeStreamEncoder);
    r0 = [r0 encoderWithStream:r19 andBoundary:r20];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r22 retain];
            var_88 = r0;
            [r0 encode:&var_A8];
            r23 = [[r21 onboardingRequestForAppCreate:[r21 shouldCreate]] retain];
            r26 = [[r0 contentTypeHTTPHeaderValue] retain];
            [r23 setValue:r26 forHTTPHeaderField:@"Content-Type"];
            [r26 release];
            r25 = [[r0 contentLengthHTTPHeaderValue] retain];
            [r23 setValue:r25 forHTTPHeaderField:@"Content-Length"];
            [r25 release];
            r0 = [r19 propertyForKey:**_NSStreamDataWrittenToMemoryStreamKey];
            r29 = r29;
            r25 = [r0 retain];
            [r23 setHTTPBody:r25];
            [r25 release];
            if ([r21 shouldCreate] != 0x0) {
                    asm { csinc      x24, x8, xzr, ne };
            }
            r0 = [r21 networkClient];
            r0 = [r0 retain];
            [r0 startDataTaskWithRequest:r23 retryLimit:@selector(shouldCreate) completionHandler:&var_D0];
            [r0 release];
            [r23 release];
            r0 = var_88;
    }
    else {
            NSLog(@"[Fabric] configure failed during onboarding");
            r23 = [[NSDictionary dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1] retain];
            r24 = [[r21 errorForCode:0x0 userInfo:r23] retain];
            [r21 finishWithError:r24];
            [r24 release];
            r0 = r23;
    }
    var_68 = **___stack_chk_guard;
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void *)appPlatform {
    r0 = objc_retainAutoreleaseReturnValue(*0x100e68150);
    return r0;
}

-(void *)appBundleIdentifier {
    r0 = sub_10009523c();
    return r0;
}

-(void *)appDisplayVersion {
    r0 = sub_100095334();
    return r0;
}

-(void *)appBuildVersion {
    r0 = sub_1000952d0();
    return r0;
}

-(void *)appName {
    r0 = sub_100095398();
    return r0;
}

-(void *)errorForCode:(unsigned long long)arg2 userInfo:(void *)arg3 {
    r0 = [NSError errorWithDomain:@"FABSDKOnboardingErrorDomain" code:arg2 userInfo:arg3];
    return r0;
}

-(void *)appInstallSource {
    r0 = [NSNumber numberWithInteger:sub_100095458()];
    return r0;
}

-(void *)appCreateURL {
    r21 = [[self appEndpoint] retain];
    r20 = [[FABURLBuilder URLWithBase:r21] retain];
    [r21 release];
    [r20 appendComponent:@"/spi/v1/platforms/"];
    r19 = [[self appPlatform] retain];
    [r20 escapeAndAppendComponent:r19];
    [r19 release];
    [r20 appendComponent:@"/apps"];
    r19 = [[r20 URL] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)appUpdateURL {
    r21 = [[self appEndpoint] retain];
    r19 = [[FABURLBuilder URLWithBase:r21] retain];
    [r21 release];
    [r19 appendComponent:@"/spi/v1/platforms/"];
    r22 = [[self appPlatform] retain];
    [r19 escapeAndAppendComponent:r22];
    [r22 release];
    [r19 appendComponent:@"/apps/"];
    r20 = [[self appBundleIdentifier] retain];
    [r19 escapeAndAppendComponent:r20];
    [r20 release];
    r20 = [[r19 URL] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)onboardingRequestForAppCreate:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    if (arg2 != 0x0) {
            r19 = @"POST";
            [r19 retain];
            r0 = [r20 appCreateURL];
            r29 = r29;
    }
    else {
            r19 = @"PUT";
            [r19 retain];
            r0 = [r20 appUpdateURL];
            r29 = r29;
    }
    r21 = [r0 retain];
    r0 = [r20 mutableRequestWithDefaultHTTPHeadersForURL:r21 timeout:r3];
    r0 = [r0 retain];
    [r0 setHTTPMethod:r19];
    [r19 release];
    [r21 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)error {
    r0 = self->_error;
    return r0;
}

-(bool)shouldCreate {
    r0 = *(int8_t *)(int64_t *)&self->_shouldCreate;
    return r0;
}

-(void)setShouldCreate:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldCreate = arg2;
    return;
}

-(void *)appIdentifierModel {
    r0 = self->_appIdentifierModel;
    return r0;
}

-(void *)appEndpoint {
    r0 = self->_appEndpoint;
    return r0;
}

-(void *)kitVersionsByKitBundleIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_kitVersionsByKitBundleIdentifier)), 0x0);
    return r0;
}

-(void *)delegate {
    r0 = self->_delegate;
    return r0;
}

-(void *)networkClient {
    r0 = objc_loadWeakRetained((int64_t *)&self->_networkClient);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_kitVersionsByKitBundleIdentifier, 0x0);
    objc_destroyWeak((int64_t *)&self->_networkClient);
    objc_storeStrong((int64_t *)&self->_appEndpoint, 0x0);
    objc_storeStrong((int64_t *)&self->_appIdentifierModel, 0x0);
    objc_storeStrong((int64_t *)&self->_error, 0x0);
    return;
}

@end