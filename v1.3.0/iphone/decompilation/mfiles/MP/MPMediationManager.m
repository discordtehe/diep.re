@implementation MPMediationManager

+(void *)sharedManager {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011d8368 != -0x1) {
            dispatch_once(0x1011d8368, 0x100e7e9a8);
    }
    r0 = *0x1011d8360;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSMutableDictionary dictionary];
            r0 = [r0 retain];
            r8 = *(r19 + 0x10);
            *(r19 + 0x10) = r0;
            [r8 release];
            r0 = [MPMediationManager certifiedAdapterInformationProviderClasses];
            r0 = [r0 retain];
            r8 = *(r19 + 0x18);
            *(r19 + 0x18) = r0;
            [r8 release];
            *(int8_t *)(r19 + 0x8) = 0x0;
            r0 = dispatch_queue_create("Mediated Adapter Initialization Queue", 0x0);
            r8 = *(r19 + 0x20);
            *(r19 + 0x20) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)initializeWithAdditionalProviders:(void *)arg2 configurations:(void *)arg3 requestOptions:(void *)arg4 complete:(void *)arg5 {
    r31 = r31 - 0xa0;
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
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    if ([r24 isInitializing] == 0x0) goto loc_10049fd14;

loc_10049fce0:
    if (r22 == 0x0) goto loc_10049fed8;

loc_10049fce4:
    r23 = [[NSError sdkInitializationInProgress] retain];
    r8 = *(r22 + 0x10);
    r0 = r22;
    r1 = r23;
    goto loc_10049fec8;

loc_10049fec8:
    (r8)(r0, r1, 0x0);
    goto loc_10049fed0;

loc_10049fed0:
    [r23 release];
    goto loc_10049fed8;

loc_10049fed8:
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10049fd14:
    [r24 setIsInitializing:0x1];
    r0 = [r24 certifiedAdapterClasses];
    r29 = r29;
    r23 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r23 setByAddingObjectsFromArray:r19];
            r29 = r29;
            r26 = [r0 retain];
            [r23 release];
            r23 = r26;
    }
    if ([r23 count] == 0x0) goto loc_10049fea8;

loc_10049fd90:
    r0 = [NSMutableDictionary dictionaryWithCapacity:[r23 count]];
    r29 = r29;
    r0 = [r0 retain];
    r0 = [r0 retain];
    r26 = r0;
    var_70 = r0;
    var_60 = [r20 retain];
    var_58 = [r21 retain];
    [r23 enumerateObjectsUsingBlock:&var_90];
    [r24 setAdapters:r26];
    [r24 setIsInitializing:0x0];
    if (r22 != 0x0) {
            (*(r22 + 0x10))(r22, 0x0, [[r26 allValues] retain]);
            [r24 release];
    }
    [var_58 release];
    [var_60 release];
    [var_70 release];
    [r26 release];
    goto loc_10049fed0;

loc_10049fea8:
    [r24 setIsInitializing:0x0];
    if (r22 == 0x0) goto loc_10049fed0;

loc_10049febc:
    r8 = *(r22 + 0x10);
    r0 = r22;
    r1 = 0x0;
    goto loc_10049fec8;
}

-(void *)adRequestPayload {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adapters];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    if (r23 != 0x0) {
            r21 = @selector(count);
            r0 = [r19 adapters];
            r0 = [r0 retain];
            r21 = [[NSMutableDictionary dictionaryWithCapacity:objc_msgSend(r0, r21)] retain];
            [r0 release];
            r20 = [[r19 adapters] retain];
            r0 = [r21 retain];
            r19 = r0;
            [r20 enumerateKeysAndObjectsUsingBlock:&var_58];
            [r20 release];
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void *)adapterInformationProvidersFilePath {
    r0 = [NSBundle resourceBundleForClass:[self class]];
    r0 = [r0 retain];
    r20 = [[r0 pathForResource:@"MPAdapters" ofType:@"plist"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)certifiedAdapterInformationProviderClasses {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [MPMediationManager adapterInformationProvidersFilePath];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSArray arrayWithContentsOfFile:r19];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [NSMutableSet setWithCapacity:[r0 count]];
            r0 = [r0 retain];
            r0 = [r0 retain];
            r20 = r0;
            [r21 enumerateObjectsUsingBlock:&var_58];
            [r0 release];
            [r21 release];
    }
    else {
            r23 = [[NSString stringWithFormat:@"Could not find MPAdapters.plist."] retain];
            r22 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
            [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
            [r22 release];
            [r23 release];
            r20 = [[NSSet set] retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)parametersForAdapter:(void *)arg2 overrideConfiguration:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [r21 class];
    [r21 release];
    r0 = [self cachedInitializationParametersForNetwork:r22];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [NSMutableDictionary dictionaryWithDictionary:r20];
    }
    else {
            r0 = [NSMutableDictionary dictionary];
    }
    r21 = [r0 retain];
    if (r19 != 0x0) {
            [r21 addEntriesFromDictionary:r19];
    }
    r0 = [r21 count];
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r21;
            }
            else {
                    r0 = 0x0;
            }
    }
    r22 = objc_retainAutoreleaseReturnValue(r0);
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)cachedInitializationParametersForNetwork:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = NSStringFromClass(arg2);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r0 = [r20 retain];
            r20 = r0;
            objc_sync_enter(r0);
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r21 = [r0 retain];
            [r23 release];
            if (r21 != 0x0) {
                    r22 = [[r21 objectForKey:r2] retain];
            }
            else {
                    r22 = 0x0;
            }
            [r21 release];
            objc_sync_exit(r20);
            [r20 release];
    }
    else {
            r22 = 0x0;
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)setCachedInitializationParameters:(void *)arg2 forNetwork:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = NSStringFromClass(arg3);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 length];
    if (r19 != 0x0 && r0 != 0x0) {
            r0 = [r21 retain];
            r21 = r0;
            objc_sync_enter(r0);
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKey:@"com.mopub.mopub-ios-sdk.network-init-info"];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 mutableCopy];
            [r0 release];
            [r24 release];
            if (r22 == 0x0) {
                    r0 = [NSMutableDictionary dictionaryWithCapacity:r2];
                    r29 = r29;
                    r22 = [r0 retain];
            }
            [r22 setObject:r19 forKeyedSubscript:r20];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            [r0 setObject:r22 forKey:@"com.mopub.mopub-ios-sdk.network-init-info"];
            [r0 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            [r0 synchronize];
            [r0 release];
            r24 = [[NSString stringWithFormat:@"Cached SDK initialization parameters for %@:\n%@"] retain];
            r25 = [[MPLogEvent eventWithMessage:r24 level:0x1e] retain];
            [MPLogging logEvent:r25 source:0x0 fromClass:[r21 class]];
            [r25 release];
            [r24 release];
            [r22 release];
            objc_sync_exit(r21);
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)advancedBiddingTokens {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adapters];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 != 0x0) {
            r21 = [[NSMutableDictionary dictionary] retain];
            r20 = [[r19 adapters] retain];
            r0 = [r21 retain];
            r19 = r0;
            [r20 enumerateKeysAndObjectsUsingBlock:&var_48];
            [r20 release];
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)clearCache {
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 removeObjectForKey:@"com.mopub.mopub-ios-sdk.network-init-info"];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r0 release];
    r21 = [[NSString stringWithFormat:@"Cleared cached SDK initialization parameters"] retain];
    r22 = [[MPLogEvent eventWithMessage:r21 level:0x14] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
    [r22 release];
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void *)adapters {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)certifiedAdapterClasses {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setAdapters:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(bool)isInitializing {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setIsInitializing:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void *)queue {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setQueue:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end