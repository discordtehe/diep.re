@implementation MCPromoConfigurationManager

+(void *)sharedMCPromoConfigurationManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011db208;
    if (r0 == 0x0) {
            r0 = [MCPromoConfigurationManager alloc];
            r0 = [r0 init];
            *0x1011db208 = r0;
    }
    return r0;
}

+(bool)isMCPromoConfigurationManagerInitialized {
    r0 = self;
    if (*qword_1011db208 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void)releaseSharedMCPromoConfigurationManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011db208 != 0x0) {
            [*0x1011db208 release];
            *0x1011db208 = 0x0;
    }
    return;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x10) = [[NSMutableDictionary dictionaryWithCapacity:0x1] retain];
            *(r19 + 0x18) = [[NSMutableDictionary dictionaryWithCapacity:0xc8] retain];
            *(r19 + 0x28) = [[NSMutableArray arrayWithCapacity:0x3e8] retain];
            *(int128_t *)(r19 + 0x30) = [[NSMutableDictionary dictionaryWithCapacity:0xc8] retain];
            *(int128_t *)(r19 + 0x38) = 0x405e000000000000;
            *(r19 + 0x40) = [Callback new];
            *(r19 + 0x48) = [Callback new];
            *(int8_t *)(r19 + 0x50) = 0x0;
            *(r19 + 0x58) = [[NSMutableDictionary dictionary] retain];
            *(int8_t *)(r19 + 0x80) = 0x0;
            *(int32_t *)(r19 + 0x90) = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)setPromoChecksums:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(r0 + 0x8) == 0x0) {
            r20 = r2;
            r19 = r0;
            r0 = *(r0 + 0x78);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r19 + 0x78) = 0x0;
            }
            *(r19 + 0x78) = [[NSArray arrayWithArray:r20] retain];
    }
    return;
}

-(void)stopPromoDownloader {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(self + 0x90) = 0x0;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x88);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x88) = 0x0;
    }
    return;
}

-(void)setMaxRetryTime:(double)arg2 {
    r0 = self;
    asm { fmax       d0, d0, d1 };
    *(r0 + 0x38) = d0;
    return;
}

-(void)initializePromoBundleManager {
    r0 = self;
    r31 = r31 - 0x140;
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
    if (*(r0 + 0x8) == 0x0) {
            r19 = r0;
            r0 = *(r0 + 0x78);
            if (r0 != 0x0 && [r0 count] != 0x0) {
                    sub_1005cbb44();
                    r0 = [MCBundleManager bundleManagerWithPersistencyDelegate:r19 bundleVersion:[NSString stringWithFormat:@"%d"] checksumFiles:*(r19 + 0x78) andManagerDelegate:r19];
                    r0 = [r0 retain];
                    *(r19 + 0x8) = r0;
                    [r0 setDelegate:r19];
                    *(int32_t *)(r19 + 0x94) = sub_1005d83b0([*(r19 + 0x8) activeBundleVersionString], 0x0);
                    r0 = [NSArray arrayWithArray:[r19 getNewDownloadFilesManifest]];
                    r0 = [r0 retain];
                    r21 = r0;
                    *(r19 + 0x88) = r0;
                    var_110 = q0;
                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r23 = r0;
                            r26 = *var_110;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_110 != r26) {
                                                    objc_enumerationMutation(r21);
                                            }
                                            if ([r19 promoFileStateInTheNewBundle:r2] == 0x1) {
                                                    asm { cinc       w25, w25, eq };
                                            }
                                            r28 = r28 + 0x1;
                                    } while (r28 < r23);
                                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r23 = r0;
                            } while (r0 != 0x0);
                    }
                    *(int32_t *)(r19 + 0x90) = [*(r19 + 0x88) count] - 0x0;
                    *(int8_t *)(r19 + 0x80) = [*(r19 + 0x8) isReadyToActivate];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)setBaseServerURL:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = *(self + 0x68);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x68) = 0x0;
    }
    if (r20 != 0x0 && ([r20 isEqualToString:r2] & 0x1) == 0x0) {
            r2 = @"";
            if ([r20 hasSuffix:@"/"] != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r2 = @"/%d";
                    }
                    else {
                            r2 = @"%d";
                    }
            }
            *(r19 + 0x68) = [[r20 stringByAppendingString:r2] retain];
    }
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setCryptoPassword:0x0];
    [r19 setBaseServerURL:0x0];
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x88);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x88) = 0x0;
    }
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x28) = 0x0;
    }
    r0 = *(r19 + 0x30);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x30) = 0x0;
    }
    r0 = *(r19 + 0x40);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x40) = 0x0;
    }
    r0 = *(r19 + 0x48);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x48) = 0x0;
    }
    r0 = *(r19 + 0x58);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x58) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)getLatestPromoDownloadFilesManifest {
    r0 = sub_1005d8554(sub_1005d980c(@"downloadPromoManifest.plist", 0x1, 0x0, 0x0), [NSArray class], 0x0);
    return r0;
}

-(void *)getNewDownloadFilesManifest {
    r0 = sub_1005d8554(sub_1005d9798([[self getTempPath] stringByAppendingPathComponent:@"downloadPromoManifest.plist"], 0x0, 0x0), [NSArray class], 0x0);
    return r0;
}

-(void)loadPromoConfiguration:(bool)arg2 {
    [self loadPromoConfiguration:arg2 skipActivation:0x0];
    return;
}

-(void)setConfigurationParallelDownloaders:(int)arg2 {
    [*(self + 0x8) setParallelDownloadersCount:arg2];
    return;
}

-(bool)isNewPromoConfigurationAvailable {
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            r0 = [r0 isReadyToActivate];
    }
    return r0;
}

-(bool)loadNewPromoConfigurationIfAvailable {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(self + 0x8) == 0x0) {
            r0 = *(r19 + 0x78);
            if (r0 != 0x0 && [r0 count] != 0x0) {
                    [r19 initializePromoBundleManager];
            }
            if (*(r19 + 0x8) != 0x0) {
                    r0 = [r19 isNewPromoConfigurationAvailable];
                    if (r0 != 0x0) {
                            [*(r19 + 0x8) activateBundleWithError:&var_28];
                            [r19 setPromoConfiguration:sub_1005d980c(@"PromoConfiguration.plist", 0x3, 0x1, *(r19 + 0x60))];
                            [r19 setPromoValueMap:sub_1005d980c(@"PromoValueMap.plist", 0x3, 0x1, *(r19 + 0x60))];
                            if ([r19 delegate] != 0x0 && [[r19 delegate] respondsToSelector:r2] != 0x0) {
                                    [[r19 delegate] promoConfigurationLoaded];
                            }
                            r0 = 0x1;
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = [r19 isNewPromoConfigurationAvailable];
            if (r0 != 0x0) {
                    [*(r19 + 0x8) activateBundleWithError:&var_28];
                    [r19 setPromoConfiguration:sub_1005d980c(@"PromoConfiguration.plist", 0x3, 0x1, *(r19 + 0x60))];
                    [r19 setPromoValueMap:sub_1005d980c(@"PromoValueMap.plist", 0x3, 0x1, *(r19 + 0x60))];
                    if ([r19 delegate] != 0x0 && [[r19 delegate] respondsToSelector:r2] != 0x0) {
                            [[r19 delegate] promoConfigurationLoaded];
                    }
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)loadPromoConfiguration:(bool)arg2 skipActivation:(bool)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = self;
    if ((arg2 & 0x1) != 0x0) {
            [r19 initializePromoBundleManager];
    }
    if ([r19 isNewPromoConfigurationAvailable] != 0x0 && (r20 & 0x1) == 0x0) {
            [*(r19 + 0x8) activateBundleWithError:&var_28];
    }
    [r19 setPromoConfiguration:sub_1005d980c(@"PromoConfiguration.plist", 0x3, 0x1, *(r19 + 0x60))];
    [r19 setPromoValueMap:sub_1005d980c(@"PromoValueMap.plist", 0x3, 0x1, *(r19 + 0x60))];
    if ([r19 delegate] != 0x0 && [[r19 delegate] respondsToSelector:r2] != 0x0) {
            [[r19 delegate] promoConfigurationLoaded];
    }
    r0 = *(r19 + 0x8);
    if (r0 != 0x0 && [r0 isDownloading] != 0x0) {
            r0 = *(r19 + 0x8);
            r0 = [r0 getNewResourcePath:r2];
            if (r0 != 0x0) {
                    [r19 mergeValueMap:sub_1005d9798([r0 stringByAppendingPathComponent:@"PromoValueMap.plist"], 0x1, *(r19 + 0x60))];
            }
            r20 = @selector(delegate);
            r21 = [[*(r19 + 0x8) getNewResourcePath:r2] stringByDeletingLastPathComponent];
            if (objc_msgSend(r19, r20) != 0x0 && [[r19 delegate] respondsToSelector:@selector(promoConfigurationLoadedWithDownloadInProgress:)] != 0x0) {
                    [[r19 delegate] promoConfigurationLoadedWithDownloadInProgress:r21];
            }
    }
    return;
}

-(void)setConfigurationDownloadUpdateInterval:(double)arg2 {
    [*(self + 0x8) setCurrentDownloadUpdateInterval:arg2];
    return;
}

-(bool)downloadNewPromoConfigurationVersion:(unsigned int)arg2 {
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
    r20 = arg2;
    r19 = self;
    if (*(self + 0x8) == 0x0) {
            [r19 initializePromoBundleManager];
            if (*(r19 + 0x8) != 0x0) {
                    r21 = [NSArray arrayWithObjects:&stack[-88] count:0x0];
                    if ([r19 delegate] != 0x0 && [[r19 delegate] respondsToSelector:r2] != 0x0) {
                            r21 = [[r19 delegate] promoConfigurationMandatoryFiles];
                    }
                    r21 = [NSMutableSet setWithArray:r21];
                    [r21 addObjectsFromArray:[NSArray arrayWithObject:@"PromoValueMap.plist"]];
                    [*(r19 + 0x8) downloadBundleAtUrl:[NSString stringWithFormat:*(r19 + 0x68)] withVersionString:[NSString stringWithFormat:@"%u"] withPriorityDownloads:[r21 allObjects]];
                    r0 = *(r19 + 0x8);
                    r0 = [r0 isDownloading];
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r21 = [NSArray arrayWithObjects:&stack[-88] count:0x0];
            if ([r19 delegate] != 0x0 && [[r19 delegate] respondsToSelector:r2] != 0x0) {
                    r21 = [[r19 delegate] promoConfigurationMandatoryFiles];
            }
            r21 = [NSMutableSet setWithArray:r21];
            [r21 addObjectsFromArray:[NSArray arrayWithObject:@"PromoValueMap.plist"]];
            [*(r19 + 0x8) downloadBundleAtUrl:[NSString stringWithFormat:*(r19 + 0x68)] withVersionString:[NSString stringWithFormat:@"%u"] withPriorityDownloads:[r21 allObjects]];
            r0 = *(r19 + 0x8);
            r0 = [r0 isDownloading];
    }
    return r0;
}

-(long long)newConfigurationTotalDownloadSize {
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            r0 = [r0 newBundleTotalDownloadSize];
    }
    return r0;
}

-(void)wipePromoData {
    sub_1005d8c80();
    sub_1005d90fc();
    return;
}

-(void)bundleManagerReadyToActivate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int8_t *)(self + 0x80) = 0x1;
    if ([self delegate] != 0x0 && [[r19 delegate] respondsToSelector:r2] != 0x0) {
            [[r19 delegate] promoConfigurationDownloaded];
    }
    if (*(int8_t *)(r19 + 0x50) != 0x0) {
            [r19 loadPromoConfiguration:0x1];
    }
    return;
}

-(void)bundleManagerFinishedDownloadingChecksums:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [r19 saveDownloadFilesManifest:[*(self + 0x8) newFilesInNewBundle]];
    r0 = *(r19 + 0x88);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x88) = 0x0;
    }
    *(r19 + 0x88) = [[*(r19 + 0x8) newFilesInNewBundle] copy];
    *(int32_t *)(r19 + 0x90) = [[*(r19 + 0x8) newFilesInNewBundle] count];
    return;
}

-(void)bundleManagerUpgradedBinary:(void *)arg2 {
    [self getTempPath];
    sub_1005d8ea0();
    sub_1005d8fc8(@"downloadPromoManifest.plist", 0x1);
    return;
}

-(void)bundleManager:(void *)arg2 fileDownloadComplete:(void *)arg3 intoAbsolutePath:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r19 = self;
    r0 = [arg3 lastPathComponent];
    r21 = r0;
    if (([r0 hasPrefix:@"_checksum"] & 0x1) == 0x0) {
            if ([r21 isEqualToString:r2] != 0x0 && sub_1005d8e20() != 0x0) {
                    [r19 mergeValueMap:sub_1005d9798(r20, 0x1, *(r19 + 0x60))];
            }
            if ([r19 delegate] != 0x0 && [[r19 delegate] respondsToSelector:@selector(promoFileDownloadComplete:)] != 0x0) {
                    [[r19 delegate] promoFileDownloadComplete:r20];
            }
            *(int32_t *)(r19 + 0x90) = *(int32_t *)(r19 + 0x90) - 0x1;
    }
    return;
}

-(void)bundleManagerActivated:(void *)arg2 {
    r31 = r31 - 0x120;
    var_40 = r28;
    stack[-72] = r27;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    var_100 = q0;
    r0 = *(self + 0x8);
    r0 = [r0 newFilesInActiveBundle];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r23 = *var_100;
            do {
                    r24 = 0x0;
                    do {
                            if (*var_100 != r23) {
                                    objc_enumerationMutation(r20);
                            }
                            r24 = r24 + 0x1;
                    } while (r24 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_48 = **___stack_chk_guard;
    *(int32_t *)(r19 + 0x94) = sub_1005d83b0([*(r19 + 0x8) activeBundleVersionString], 0x0);
    [r19 copyResourceFrom:[[r19 getTempPath] stringByAppendingPathComponent:@"downloadPromoManifest.plist"] to:[[r19 getPathForCache] stringByAppendingPathComponent:@"downloadPromoManifest.plist"] deleteOriginal:0x1 allowOverrite:0x1];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(int)valueMapStateInNewBundle {
    r0 = [self promoFileStateInTheNewBundle:@"PromoValueMap.plist"];
    return r0;
}

-(int)promoFileStateInTheNewBundle:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = *(self + 0x88);
    if (r0 != 0x0) {
            r19 = r2;
            if ([r0 count] != 0x0) {
                    if ([*(r20 + 0x88) containsObject:r2] != 0x0) {
                            r0 = *(r20 + 0x8);
                            r0 = [r0 getNewResourcePath:r19];
                            if (r0 != 0x0) {
                                    if (CPU_FLAGS & NE) {
                                            r0 = 0x1;
                                    }
                            }
                    }
                    else {
                            r0 = 0x2;
                    }
            }
            else {
                    r0 = 0xffffffffffffffff;
            }
    }
    else {
            r0 = 0xffffffffffffffff;
    }
    return r0;
}

-(bool)isPromoFileAvailableOnInProgressDownload:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [self isPromoDownloading];
    if (r0 != 0x0) {
            r0 = *(r20 + 0x8);
            r0 = [r0 getNewResourcePath:r19];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(bool)isPromoDownloading {
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            r0 = [r0 isDownloading];
    }
    return r0;
}

-(unsigned long long)remainingPromoFilesToDownload {
    r0 = *(int32_t *)(self + 0x90);
    return r0;
}

-(bool)hasABTestFormat:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = 0x101137000;
    r20 = *(r8 + 0x220);
    r21 = objc_msgSend(arg2, r20);
    r0 = objc_msgSend(arg2, r20);
    if (r21 != 0x0) {
            r8 = 0x101137000;
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r9 = 0x1;
            }
    }
    r0 = r8 & r9;
    return r0;
}

-(void)setPromoValueMap:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r21 = r2;
            r19 = r0;
            if ([r2 count] != 0x0) {
                    r21 = [r21 objectForKey:@"valueMap"];
                    r0 = [NSDictionary class];
                    r0 = sub_1005d8554(r21, r0, 0x0);
                    if (r0 != 0x0) {
                            r21 = r0;
                            if ([r0 count] != 0x0) {
                                    [*(r19 + 0x10) setDictionary:r21];
                                    *(int8_t *)(r19 + 0x98) = 0x1;
                            }
                    }
            }
    }
    return;
}

-(void)setPromoConfiguration:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r21 = r2;
            r19 = r0;
            if ([r2 count] != 0x0) {
                    r21 = [r21 objectForKey:@"promoConfig"];
                    r0 = [NSDictionary class];
                    r0 = sub_1005d8554(r21, r0, 0x0);
                    if (r0 != 0x0) {
                            r21 = r0;
                            if ([r0 count] != 0x0) {
                                    r0 = *(r19 + 0x20);
                                    if (r0 != 0x0) {
                                            [r0 release];
                                            *(r19 + 0x20) = 0x0;
                                    }
                                    *(r19 + 0x20) = [r21 retain];
                                    *(int8_t *)(r19 + 0x98) = 0x1;
                            }
                    }
            }
    }
    return;
}

-(void)processData {
    r0 = self;
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x98) != 0x0) {
            [*(r0 + 0x18) removeAllObjects];
            [*(r0 + 0x20) enumerateKeysAndObjectsUsingBlock:&var_38];
            *(int8_t *)(r0 + 0x98) = 0x0;
    }
    return;
}

-(void *)promoValueForField:(void *)arg2 atTable:(void *)arg3 searchByField:(void *)arg4 withValue:(void *)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg5;
    r20 = arg4;
    r21 = arg3;
    r22 = arg2;
    r23 = self;
    if (*(int8_t *)(self + 0x98) != 0x0) {
            [r23 processData];
    }
    r0 = sub_100766e30(r22, r21, r20, r19, *(r23 + 0x18));
    return r0;
}

-(void)mergeValueMap:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x140;
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
    if (r2 != 0x0) {
            r21 = r2;
            r19 = r0;
            if ([r2 count] != 0x0) {
                    r21 = [r21 objectForKey:@"valueMap"];
                    r0 = [NSDictionary class];
                    r0 = sub_1005d8554(r21, r0, 0x0);
                    if (r0 != 0x0) {
                            r21 = r0;
                            if ([r0 count] != 0x0) {
                                    var_110 = q0;
                                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                                    var_130 = r1;
                                    r0 = objc_msgSend(r21, r1);
                                    if (r0 != 0x0) {
                                            r23 = r0;
                                            r22 = *var_110;
                                            do {
                                                    r25 = 0x0;
                                                    do {
                                                            if (*var_110 != r22) {
                                                                    objc_enumerationMutation(r21);
                                                            }
                                                            r26 = *(var_118 + r25 * 0x8);
                                                            r0 = *(r19 + 0x10);
                                                            r0 = [r0 objectForKey:r26];
                                                            if (r0 != 0x0) {
                                                                    r28 = r0;
                                                                    r0 = [r21 objectForKey:r26];
                                                                    if (r0 != 0x0) {
                                                                            r27 = r0;
                                                                            if (([r28 isEqual:r27] & 0x1) == 0x0) {
                                                                                    [*(r19 + 0x10) setObject:r2 forKey:r3];
                                                                            }
                                                                    }
                                                            }
                                                            r25 = r25 + 0x1;
                                                    } while (r25 < r23);
                                                    r0 = objc_msgSend(r21, var_130);
                                                    r23 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    [[NSNotificationCenter defaultCenter] postNotificationName:@"PromoValueMapMergedNotification" object:r19];
                                    *(int8_t *)(r19 + 0x98) = 0x1;
                            }
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)promoValueForField:(void *)arg2 atTable:(void *)arg3 atIndex:(unsigned long long)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    if (*(int8_t *)(self + 0x98) != 0x0) {
            [r22 processData];
    }
    r0 = sub_100766f18(r21, r20, r19, *(r22 + 0x18));
    return r0;
}

-(unsigned int)getPromoConfigVersion {
    r0 = *(int32_t *)(self + 0x94);
    return r0;
}

-(void *)recordFromTable:(void *)arg2 searchByField:(void *)arg3 withValue:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    if (*(int8_t *)(self + 0x98) != 0x0) {
            [r22 processData];
    }
    r0 = sub_100767008(r21, r20, r19, *(r22 + 0x18));
    return r0;
}

-(void *)recordFromTable:(void *)arg2 atIndex:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if (*(int8_t *)(self + 0x98) != 0x0) {
            [r21 processData];
    }
    r0 = sub_10076718c(r20, r19, *(r21 + 0x18));
    return r0;
}

-(void *)promoTableWithId:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if (*(int8_t *)(self + 0x98) != 0x0) {
            [r20 processData];
    }
    r0 = sub_100766f94(r19, *(r20 + 0x18));
    return r0;
}

-(void *)insertPromoValue:(void *)arg2 inField:(void *)arg3 entry:(void *)arg4 {
    r21 = [[arg4 mutableCopy] autorelease];
    [NSDictionary dictionaryWithObjectsAndKeys:arg2];
    [r21 setObject:r2 forKey:r3];
    r0 = r21;
    return r0;
}

-(bool)removeResourceAtPath:(void *)arg2 {
    r0 = sub_1005d8ea0();
    return r0;
}

-(bool)createPath:(void *)arg2 {
    r0 = sub_1005d8cfc(arg2, 0x1);
    return r0;
}

-(bool)copyResourceFrom:(void *)arg2 to:(void *)arg3 deleteOriginal:(bool)arg4 allowOverrite:(bool)arg5 {
    r0 = sub_1005d9294(arg2, arg3, arg4, arg5);
    return r0;
}

-(bool)pathExists:(void *)arg2 {
    r0 = [NSFileManager defaultManager];
    r0 = [r0 fileExistsAtPath:arg2];
    return r0;
}

-(bool)canWriteFileAtPath:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 UTF8String];
    r19 = r0;
    r0 = fopen(r0, "wb");
    if (r0 != 0x0) {
            fclose(r0);
            remove(r19);
            r0 = 0x1;
    }
    return r0;
}

-(void *)getPathForMetadata {
    r0 = sub_1005d8c80();
    r0 = [r0 stringByAppendingString:@"/PromoCache/"];
    return r0;
}

-(void *)getPathForCache {
    r0 = sub_1005d8c80();
    r0 = [r0 stringByAppendingString:@"/"];
    return r0;
}

-(void *)findFilename:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r23 = [[self getPathForCache] stringByAppendingPathComponent:r20];
    if (([r19 pathExists:r2] & 0x1) == 0x0) {
            r20 = [[r19 getPathForBundle] stringByAppendingPathComponent:r20];
            if ([r19 pathExists:r2] != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r23 = 0x0;
                    }
                    else {
                            r23 = r20;
                    }
            }
    }
    r0 = r23;
    return r0;
}

-(void *)getPathForBundle {
    r0 = sub_1005d8c80();
    r0 = [r0 stringByAppendingString:@"/"];
    return r0;
}

-(void *)getPathForAuxiliaryCache {
    r0 = sub_1005d8c80();
    r0 = [r0 stringByAppendingPathComponent:@"__aux_cache__"];
    r0 = [r0 stringByAppendingString:@"/"];
    return r0;
}

-(void *)getPathToCompleteChecksums {
    r0 = [self getPathForBundle];
    r0 = [r0 stringByAppendingPathComponent:@"complete_checksums"];
    return r0;
}

-(void *)loadDataAtPath:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (sub_1005d8e20() != 0x0) {
            r0 = r19;
            r0 = sub_1005d95f8(r0, 0x0, 0x0);
    }
    else {
            r0 = sub_1005d8bf8(r19, 0x3);
            if (r0 != 0x0) {
                    r0 = sub_1005d95f8(r0, 0x0, 0x0);
            }
    }
    return r0;
}

-(bool)saveData:(void *)arg2 atPath:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = arg2;
    r20 = self;
    r22 = [[arg3 stringByDeletingLastPathComponent] stringByAppendingString:@"/"];
    if ((sub_1005d8da0() & 0x1) == 0x0) {
            [r20 createPath:r22];
    }
    r22 = fopen([r19 UTF8String], "wb");
    r23 = [r21 length];
    goto loc_100767698;

loc_100767698:
    r0 = [r21 bytes];
    r0 = fwrite(r0, 0x1, r23, r22);
    if (r0 == -0x1) goto loc_1007676d0;

loc_1007676bc:
    r23 = r23 - r0;
    if (r23 != 0x0) goto loc_100767698;

loc_1007676c4:
    fclose(r22);
    goto loc_1007676f0;

loc_1007676f0:
    r0 = sub_1005d8e20();
    return r0;

loc_1007676d0:
    fclose(r22);
    if (r23 != 0x0) {
            [r20 removeResourceAtPath:r19];
    }
    goto loc_1007676f0;
}

-(unsigned long long)getFreeDiskspace {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[NSFileManager defaultManager] attributesOfFileSystemForPath:[NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1) lastObject] error:&var_28];
    if (r0 != 0x0) {
            r21 = [r0 objectForKey:**_NSFileSystemSize];
            r19 = [r0 objectForKey:**_NSFileSystemFreeSize];
            [r21 unsignedLongLongValue];
            r0 = [r19 unsignedLongLongValue];
    }
    return r0;
}

-(unsigned long long)fileSizeAtPath:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSFileManager defaultManager];
    r0 = [r0 attributesOfItemAtPath:arg2 error:&var_18];
    if (r0 != 0x0) {
            asm { ccmp       x8, #0x0, #0x0, ne };
    }
    r1 = 0x0;
    if (!CPU_FLAGS & NE) {
            r1 = [[r0 objectForKey:**_NSFileSize] unsignedLongLongValue];
    }
    r0 = r1;
    return r0;
}

-(void *)promoConfigurationUpdatedCallback {
    r0 = *(self + 0x40);
    return r0;
}

-(void *)promoConfigurationDownloadedCallback {
    r0 = *(self + 0x48);
    return r0;
}

-(void)setReloadPromoConfigurationOnDownload:(bool)arg2 {
    *(int8_t *)(self + 0x50) = arg2;
    return;
}

-(void *)cryptoPassword {
    r0 = *(self + 0x60);
    return r0;
}

-(bool)reloadPromoConfigurationOnDownload {
    r0 = *(int8_t *)(self + 0x50) & 0x1;
    return r0;
}

-(void)setCryptoPassword:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)baseServerURL {
    r0 = *(self + 0x68);
    return r0;
}

-(double)maxRetryTime {
    r0 = self;
    return r0;
}

-(void *)delegate {
    r0 = *(self + 0x70);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)getTempPath {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [sub_1005d8c80() stringByAppendingPathComponent:@"__PROMOTEMP__"];
    if ((sub_1005d8da0() & 0x1) == 0x0 && (sub_1005d8cfc(r19, 0x0) & 0x1) == 0x0) {
            r0 = sub_1007678d0();
    }
    else {
            r0 = r19;
    }
    return r0;
}

-(void)saveDownloadFilesManifest:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if (arg2 == 0x0) {
            r19 = [NSArray array];
    }
    sub_1005d9880(r19, [[r20 getTempPath] stringByAppendingPathComponent:@"downloadPromoManifest.plist"], 0xc8, 0x0, 0x0);
    return;
}

@end