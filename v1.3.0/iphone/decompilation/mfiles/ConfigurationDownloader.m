@implementation ConfigurationDownloader

+(void *)sharedConfigurationDownloader {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011da110;
    if (r0 == 0x0) {
            r0 = [ConfigurationDownloader alloc];
            r0 = [r0 init];
            *0x1011da110 = r0;
    }
    return r0;
}

+(bool)isConfigurationDownloaderInitialized {
    r0 = self;
    if (*qword_1011da110 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [[[CCDirector sharedDirector] scheduler] scheduleSelector:@selector(update:) forTarget:r19 interval:0x0 paused:r5];
            *(r19 + 0x18) = 0x405e000000000000;
            *(int128_t *)(r19 + 0x60) = q0;
            *(int8_t *)(r19 + 0x20) = 0x0;
            *(r19 + 0x50) = [[NSMutableArray arrayWithCapacity:0x3] retain];
            *(r19 + 0x58) = [[NSMutableArray arrayWithCapacity:0x3] retain];
            *(r19 + 0x48) = [[NSMutableArray array] retain];
            [r19 setMaxNumOnDemandParallelDownloads:0x5];
            *(r19 + 0x40) = 0x0;
    }
    r0 = r19;
    return r0;
}

+(void)releaseSharedConfigurationDownloader {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011da110 != 0x0) {
            [*0x1011da110 release];
            *0x1011da110 = 0x0;
    }
    return;
}

-(void)setChecksums:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(r0 + 0x10) == 0x0) {
            r20 = r2;
            r19 = r0;
            r0 = *(r0 + 0x30);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r19 + 0x30) = 0x0;
            }
            *(r19 + 0x30) = [[NSArray arrayWithArray:r20] retain];
    }
    return;
}

-(void)stopDownloader {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x38);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x38) = 0x0;
    }
    *(r19 + 0x40) = 0x0;
    return;
}

-(void)setMaxNumOnDemandParallelDownloads:(unsigned long long)arg2 {
    r0 = self;
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    if (arg2 > 0x1) {
            asm { csinc      x8, x2, xzr, hi };
    }
    *(r0 + 0x70) = r8;
    r0 = *(r0 + 0x48);
    r0 = [r0 count];
    if (r0 < *(r19 + 0x70)) {
            r20 = r0;
            r25 = 0x0;
            do {
                    r23 = @selector(addObject:);
                    r0 = [MCURLFileDownloader fileDownloaderWithPersistenceDelegate:r19];
                    [r0 setDelegate:r19];
                    objc_msgSend(*(r19 + 0x48), r23);
                    r25 = r25 + 0x1;
            } while (r25 < *(r19 + 0x70) - r20);
    }
    return;
}

-(void)initializeBundleManager {
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
    if (*(r0 + 0x10) == 0x0) {
            r19 = r0;
            r0 = *(r0 + 0x30);
            if (r0 != 0x0 && [r0 count] != 0x0) {
                    sub_1005cbb44();
                    r0 = [MCBundleManager bundleManagerWithPersistencyDelegate:r19 bundleVersion:[NSString stringWithFormat:@"%d"] checksumFiles:*(r19 + 0x30) andManagerDelegate:r19];
                    r0 = [r0 retain];
                    *(r19 + 0x10) = r0;
                    *(int32_t *)(r19 + 0x44) = sub_1005d83b0([r0 activeBundleVersionString], 0x0);
                    r0 = [NSArray arrayWithArray:[r19 getNewDownloadFilesManifest]];
                    r0 = [r0 retain];
                    r21 = r0;
                    *(r19 + 0x38) = r0;
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
                                            if ([r19 fileStateInTheNewBundle:r2] == 0x1) {
                                                    asm { cinc       w25, w25, eq };
                                            }
                                            r28 = r28 + 0x1;
                                    } while (r28 < r23);
                                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r23 = r0;
                            } while (r0 != 0x0);
                    }
                    *(int32_t *)(r19 + 0x40) = [*(r19 + 0x38) count] - 0x0;
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
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
    [self setBaseServerURL:0x0];
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x30);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x30) = 0x0;
    }
    r0 = *(r19 + 0x38);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x38) = 0x0;
    }
    r0 = *(r19 + 0x48);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x48) = 0x0;
    }
    r0 = *(r19 + 0x50);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x50) = 0x0;
    }
    r0 = *(r19 + 0x58);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x58) = 0x0;
    }
    [[&var_20 super] dealloc];
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
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x28) = 0x0;
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
            *(r19 + 0x28) = [[r20 stringByAppendingString:r2] retain];
    }
    return;
}

-(void)setMaxRetryTime:(double)arg2 {
    r0 = self;
    asm { fmax       d0, d0, d1 };
    *(r0 + 0x18) = d0;
    return;
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
    sub_1005d9880(r19, [[r20 getTempPath] stringByAppendingPathComponent:@"downloadManifest.plist"], 0xc8, 0x0, 0x0);
    return;
}

-(void *)getTempPath {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [sub_1005d8c80() stringByAppendingPathComponent:@"__TEMP__"];
    if ((sub_1005d8da0() & 0x1) == 0x0) {
            sub_1005d8cfc(r19, 0x0);
    }
    r0 = r19;
    return r0;
}

-(void *)getLatestDownloadFilesManifest {
    r0 = sub_1005d8554(sub_1005d980c(@"downloadManifest.plist", 0x1, 0x0, 0x0), [NSArray class], 0x0);
    return r0;
}

-(void *)getNewDownloadFilesManifest {
    r0 = sub_1005d8554(sub_1005d9798([[self getTempPath] stringByAppendingPathComponent:@"downloadManifest.plist"], 0x0, 0x0), [NSArray class], [NSArray array]);
    return r0;
}

-(void)update:(double)arg2 {
    [self updateOnDemandDownloads:arg2];
    return;
}

-(void)download:(void *)arg2 withProgress:(float)arg3 {
    return;
}

-(void)loadConfiguration:(bool)arg2 {
    [self loadConfiguration:arg2 skipActivation:0x0];
    return;
}

-(void)downloadFailed:(void *)arg2 withError:(void *)arg3 {
    r31 = r31 - 0x120;
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
    var_100 = q0;
    r21 = *(self + 0x48);
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1005dd018;

loc_1005dcf18:
    r23 = r0;
    r24 = *var_100;
    goto loc_1005dcf24;

loc_1005dcf24:
    r25 = 0x0;
    goto loc_1005dcf28;

loc_1005dcf28:
    if (*var_100 != r24) {
            objc_enumerationMutation(r21);
    }
    if (*(var_108 + r25 * 0x8) == r20) goto loc_1005dcf80;

loc_1005dcf50:
    r25 = r25 + 0x1;
    if (r25 < r23) goto loc_1005dcf28;

loc_1005dcf5c:
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r23 = r0;
    if (r0 != 0x0) goto loc_1005dcf24;

loc_1005dd018:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1005dcf80:
    r8 = *(r19 + 0x60);
    *(r19 + 0x68) = r8;
    d0 = *(r19 + 0x18);
    if (d0 < r8 + r8) {
            asm { fcsel      d0, d0, d1, mi };
    }
    *(r19 + 0x60) = d0;
    r0 = [r19 getOnDemandDownloadEntryWithFilename:[r20 filename]];
    if (r0 != 0x0) {
            r20 = r0;
            if ([r0 count] != 0x0) {
@(0x1);
                    [r20 setObject:r2 forKey:r3];
                    *(int8_t *)(r19 + 0x78) = 0x1;
            }
    }
    goto loc_1005dd018;
}

-(void)downloadComplete:(void *)arg2 {
    r31 = r31 - 0x130;
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
    var_100 = q0;
    r21 = *(self + 0x48);
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1005dce78;

loc_1005dcc14:
    r23 = r0;
    r24 = *var_100;
    goto loc_1005dcc20;

loc_1005dcc20:
    r25 = 0x0;
    goto loc_1005dcc24;

loc_1005dcc24:
    if (*var_100 != r24) {
            objc_enumerationMutation(r21);
    }
    if (*(var_108 + r25 * 0x8) == r20) goto loc_1005dcc7c;

loc_1005dcc4c:
    r25 = r25 + 0x1;
    if (r25 < r23) goto loc_1005dcc24;

loc_1005dcc58:
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r23 = r0;
    if (r0 != 0x0) goto loc_1005dcc20;

loc_1005dce78:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1005dcc7c:
    r0 = [r20 filename];
    if (r0 != 0x0) {
            r20 = r0;
            if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                    sub_1005d9294([[r19 getTempOnDemandPath] stringByAppendingPathComponent:r20], [sub_1005d8c80() stringByAppendingPathComponent:r20], 0x1, 0x1);
                    r0 = [r19 getOnDemandDownloadEntryWithFilename:r20];
                    r22 = r0;
                    if (r0 != 0x0) {
                            if ([r22 count] != 0x0) {
                                    r22 = sub_1005d85d8([r22 objectForKey:r2], 0x0);
                            }
                            else {
                                    r22 = 0x0;
                            }
                    }
                    r23 = [NSMutableDictionary dictionaryWithObjectsAndKeys:r20];
                    if (r22 != 0x0) {
                            if (([r22 isEqualToString:r2] & 0x1) == 0x0) {
                                    [r23 setObject:r2 forKey:r3];
                            }
                            if ([r22 isEqualToString:r2] != 0x0) {
                                    r8 = &@selector(removeOnDemandDownloadEntryWithFilename:);
                            }
                            else {
                                    r8 = &@selector(removeOnDemandDownloadEntryForKey:);
                            }
                    }
                    else {
                            r8 = &@selector(removeOnDemandDownloadEntryWithFilename:);
                    }
                    objc_msgSend(r19, *r8);
                    *(int8_t *)(r19 + 0x78) = 0x1;
                    r24 = [NSNotificationCenter defaultCenter];
                    if (r22 == 0x0 || [r22 isEqualToString:r2] != 0x0) {
                            r22 = r20;
                    }
                    [r24 postNotificationName:[@"OnDemandDownloadNotification_" stringByAppendingString:r22] object:0x0 userInfo:r23];
            }
    }
    *(int128_t *)(r19 + 0x60) = q0;
    goto loc_1005dce78;
}

-(void)loadConfiguration:(bool)arg2 skipActivation:(bool)arg3 {
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
            [r19 initializeBundleManager];
    }
    if ([r19 isNewConfigurationAvailable] != 0x0 && (r20 & 0x1) == 0x0) {
            [*(r19 + 0x10) activateBundleWithError:&var_28];
    }
    if ([r19 delegate] != 0x0 && [[r19 delegate] respondsToSelector:r2] != 0x0) {
            [[r19 delegate] configurationLoaded];
    }
    r0 = *(r19 + 0x10);
    if (r0 != 0x0 && [r0 isDownloading] != 0x0 && [r19 delegate] != 0x0) {
            if ([[r19 delegate] respondsToSelector:@selector(configurationLoadedWithBundleDownloadInProgress:)] != 0x0) {
                    [[r19 delegate] configurationLoadedWithBundleDownloadInProgress:*(r19 + 0x10)];
            }
    }
    return;
}

-(bool)isNewConfigurationAvailable {
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            r0 = [r0 isReadyToActivate];
    }
    return r0;
}

-(bool)downloadNewConfigurationVersion:(unsigned int)arg2 {
    r0 = [self downloadNewConfigurationVersion:arg2 withUpdateInterval:0x2 withParallelDownloadersCount:r4];
    return r0;
}

-(bool)loadNewConfigurationIfAvailable {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self isNewConfigurationAvailable];
    if (r0 != 0x0) {
            if (*(r19 + 0x10) == 0x0) {
                    r0 = *(r19 + 0x30);
                    if (r0 != 0x0 && [r0 count] != 0x0) {
                            [r19 initializeBundleManager];
                    }
                    if (*(r19 + 0x10) != 0x0) {
                            r0 = [r19 isNewConfigurationAvailable];
                            if (r0 != 0x0) {
                                    [r19 cleanOnDemandDownloads];
                                    [*(r19 + 0x10) activateBundleWithError:&var_28];
                                    if ([r19 delegate] != 0x0 && [[r19 delegate] respondsToSelector:r2] != 0x0) {
                                            [[r19 delegate] configurationLoaded];
                                    }
                                    r0 = 0x1;
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
            }
            else {
                    r0 = [r19 isNewConfigurationAvailable];
                    if (r0 != 0x0) {
                            [r19 cleanOnDemandDownloads];
                            [*(r19 + 0x10) activateBundleWithError:&var_28];
                            if ([r19 delegate] != 0x0 && [[r19 delegate] respondsToSelector:r2] != 0x0) {
                                    [[r19 delegate] configurationLoaded];
                            }
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(void)setCurrentDownloadUpdateInterval:(double)arg2 {
    r2 = arg2;
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            [r0 setCurrentDownloadUpdateInterval:r2];
    }
    return;
}

-(int)parallelDownloadersCount {
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            r0 = [r0 parallelDownloadersCount];
    }
    else {
            r0 = 0xffffffffffffffff;
    }
    return r0;
}

-(void)setParallelDownloadersCount:(int)arg2 {
    r2 = arg2;
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            [r0 setParallelDownloadersCount:r2];
    }
    return;
}

-(double)currentUpdateInterval {
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            r0 = [r0 currentUpdateInterval];
    }
    return r0;
}

-(bool)downloadNewConfigurationVersion:(unsigned int)arg2 withUpdateInterval:(double)arg3 withParallelDownloadersCount:(int)arg4 {
    r31 = r31 - 0x170;
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
    r20 = arg3;
    v8 = v0;
    r21 = arg2;
    r19 = self;
    if (*(self + 0x10) == 0x0) {
            [r19 initializeBundleManager];
            if (*(r19 + 0x10) != 0x0) {
                    r22 = [NSArray arrayWithObjects:&stack[-264] count:0x0];
                    r0 = [r19 delegate];
                    var_158 = r21;
                    if (r0 != 0x0 && [[r19 delegate] respondsToSelector:r2] != 0x0) {
                            r22 = [[r19 delegate] configurationMandatoryFiles];
                    }
                    var_14C = r20;
                    var_148 = r19;
                    r23 = [NSMutableArray array];
                    var_130 = q0;
                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r25 = r0;
                            r20 = *var_130;
                            do {
                                    r19 = 0x0;
                                    do {
                                            if (*var_130 != r20) {
                                                    objc_enumerationMutation(r22);
                                            }
                                            r28 = *(var_138 + r19 * 0x8);
                                            if ([r23 indexOfObject:r28] == 0x7fffffffffffffff) {
                                                    [r23 addObject:r2];
                                            }
                                            r19 = r19 + 0x1;
                                    } while (r19 < r25);
                                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r25 = r0;
                            } while (r0 != 0x0);
                    }
                    [*(var_148 + 0x10) downloadBundleAtUrl:[NSString stringWithFormat:*(var_148 + 0x28)] withVersionString:[NSString stringWithFormat:@"%u"] withPriorityDownloads:r23 withUpdateInterval:var_14C withParallelDownloadersCount:r6];
                    r0 = *(var_148 + 0x10);
                    r0 = [r0 isDownloading];
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r22 = [NSArray arrayWithObjects:&stack[-264] count:0x0];
            r0 = [r19 delegate];
            var_158 = r21;
            if (r0 != 0x0 && [[r19 delegate] respondsToSelector:r2] != 0x0) {
                    r22 = [[r19 delegate] configurationMandatoryFiles];
            }
            var_14C = r20;
            var_148 = r19;
            r23 = [NSMutableArray array];
            var_130 = q0;
            r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r25 = r0;
                    r20 = *var_130;
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_130 != r20) {
                                            objc_enumerationMutation(r22);
                                    }
                                    r28 = *(var_138 + r19 * 0x8);
                                    if ([r23 indexOfObject:r28] == 0x7fffffffffffffff) {
                                            [r23 addObject:r2];
                                    }
                                    r19 = r19 + 0x1;
                            } while (r19 < r25);
                            r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r25 = r0;
                    } while (r0 != 0x0);
            }
            [*(var_148 + 0x10) downloadBundleAtUrl:[NSString stringWithFormat:*(var_148 + 0x28)] withVersionString:[NSString stringWithFormat:@"%u"] withPriorityDownloads:r23 withUpdateInterval:var_14C withParallelDownloadersCount:r6];
            r0 = *(var_148 + 0x10);
            r0 = [r0 isDownloading];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
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
    if ([self delegate] != 0x0 && [[r19 delegate] respondsToSelector:@selector(configurationDownloaded:)] != 0x0) {
            [[r19 delegate] configurationDownloaded:[*(r19 + 0x10) downloadingBundleVersionString]];
    }
    if (*(int8_t *)(r19 + 0x20) != 0x0) {
            [r19 loadConfiguration:0x1];
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
    r0 = *(self + 0x10);
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
    *(int32_t *)(r19 + 0x44) = sub_1005d83b0([*(r19 + 0x10) activeBundleVersionString], 0x0);
    [r19 copyResourceFrom:[[r19 getTempPath] stringByAppendingPathComponent:@"downloadManifest.plist"] to:[[r19 getPathForCache] stringByAppendingPathComponent:@"downloadManifest.plist"] deleteOriginal:0x1 allowOverrite:0x1];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
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
    if (([[arg3 lastPathComponent] hasPrefix:@"_checksum"] & 0x1) == 0x0) {
            if ([r19 delegate] != 0x0 && [[r19 delegate] respondsToSelector:@selector(fileDownloadComplete:)] != 0x0) {
                    [[r19 delegate] fileDownloadComplete:r20];
            }
            *(int32_t *)(r19 + 0x40) = *(int32_t *)(r19 + 0x40) - 0x1;
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
    [r19 saveDownloadFilesManifest:[*(self + 0x10) newFilesInNewBundle]];
    r0 = *(r19 + 0x38);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x38) = 0x0;
    }
    *(r19 + 0x38) = [[*(r19 + 0x10) newFilesInNewBundle] copy];
    *(int32_t *)(r19 + 0x40) = [[*(r19 + 0x10) newFilesInNewBundle] count];
    return;
}

-(void)bundleManagerUpgradedBinary:(void *)arg2 fromVersion:(void *)arg3 toVersion:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r21 = self;
    [self eraseOnDemandDownloadJobData];
    [r21 getTempOnDemandPath];
    sub_1005d8ea0();
    [r21 getTempPath];
    sub_1005d8ea0();
    sub_1005d8fc8(@"downloadManifest.plist", 0x1);
    if ([r21 delegate] != 0x0 && [[r21 delegate] respondsToSelector:@selector(binaryUpgradedFromVersion:toVersion:), r3] != 0x0) {
            [[r21 delegate] binaryUpgradedFromVersion:r20 toVersion:r19];
    }
    return;
}

-(void *)baseURLForBundleChecksums {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([[self delegate] respondsToSelector:r2] != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 baseURLForBundleChecksums];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(int)fileStateInTheNewBundle:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = *(self + 0x38);
    if (r0 != 0x0) {
            r19 = r2;
            if ([r0 count] != 0x0) {
                    if ([*(r20 + 0x38) containsObject:r2] != 0x0) {
                            r0 = *(r20 + 0x10);
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

-(bool)isFileAvailableOnInProgressDownload:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [self isDownloading];
    if (r0 != 0x0) {
            r0 = *(r20 + 0x10);
            r0 = [r0 getNewResourcePath:r19];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(long long)newConfigurationTotalDownloadSize {
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            r0 = [r0 newBundleTotalDownloadSize];
    }
    return r0;
}

-(bool)isDownloading {
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            r0 = [r0 isDownloading];
    }
    return r0;
}

-(unsigned long long)remainingFilesToDownload {
    r0 = *(int32_t *)(self + 0x40);
    return r0;
}

-(unsigned int)getConfigVersion {
    r0 = *(int32_t *)(self + 0x44);
    return r0;
}

-(void *)getOnDemandDownloadEntryForKey:(void *)arg2 {
    r0 = [self getOnDemandDownloadEntryForKey:arg2 isTopPriority:&saved_fp - 0x1];
    return r0;
}

-(void *)getOnDemandDownloadEntry:(void *)arg2 InQueue:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x130;
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
    if (r2 == 0x0) goto loc_1005ddcec;

loc_1005ddbe0:
    r19 = r3;
    r20 = r2;
    r0 = [r20 isEqualToString:r2];
    r25 = 0x0;
    if (r19 == 0x0) goto loc_1005ddcf0;

loc_1005ddc0c:
    r25 = 0x0;
    if ((r0 & 0x1) != 0x0) goto loc_1005ddcf0;

loc_1005ddc10:
    if ([r19 count] == 0x0) goto loc_1005ddcec;

loc_1005ddc24:
    var_110 = q0;
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1005ddcec;

loc_1005ddc54:
    r24 = r0;
    r27 = *var_110;
    goto loc_1005ddc6c;

loc_1005ddc6c:
    r28 = 0x0;
    goto loc_1005ddc74;

loc_1005ddc74:
    if (*var_110 != r27) {
            objc_enumerationMutation(r19);
    }
    r26 = @selector(objectForKey:);
    r21 = @selector(isEqualToString:);
    r25 = *(var_118 + r28 * 0x8);
    if ((objc_msgSend(objc_msgSend(r25, r26), r21) & 0x1) != 0x0) goto loc_1005ddcf0;

loc_1005ddcb4:
    r28 = r28 + 0x1;
    if (r28 < r24) goto loc_1005ddc74;

loc_1005ddcc0:
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r24 = r0;
    if (r0 != 0x0) goto loc_1005ddc6c;

loc_1005ddce8:
    r25 = 0x0;
    goto loc_1005ddcf0;

loc_1005ddcf0:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r25;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005ddcec:
    r25 = 0x0;
    goto loc_1005ddcf0;
}

-(void *)getOnDemandDownloadEntryForKey:(void *)arg2 isTopPriority:(bool *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = arg2;
    r20 = self;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
            if (r21 != 0x0) {
                    r1 = [r21 UTF8String];
            }
            else {
                    r1 = "";
            }
            sub_1005ddf24(&var_60, r1);
            r21 = &var_48;
            r0 = sub_10042ccfc(&var_60);
            r9 = var_48;
            if (sign_extend_64(var_31) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r2 = r21;
                    }
                    else {
                            r2 = r9;
                    }
            }
            r21 = [NSString stringWithUTF8String:r2];
            if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_48);
            }
            if ((sign_extend_64(var_49) & 0xffffffff80000000) == 0x0) {
                    if (r21 != 0x0) {
                            if (([r21 isEqualToString:r2] & 0x1) != 0x0) {
                                    r22 = 0x0;
                            }
                            else {
                                    r0 = [r20 getOnDemandDownloadEntry:r2 InQueue:r3];
                                    if (r0 != 0x0) {
                                            r22 = r0;
                                            if ([r0 count] != 0x0) {
                                                    *(int8_t *)r19 = 0x1;
                                            }
                                            else {
                                                    r0 = [r20 getOnDemandDownloadEntry:r2 InQueue:r3];
                                                    r22 = r0;
                                                    if (r0 != 0x0) {
                                                            if ([r22 count] != 0x0) {
                                                                    *(int8_t *)r19 = 0x0;
                                                            }
                                                            else {
                                                                    r22 = 0x0;
                                                            }
                                                    }
                                            }
                                    }
                                    else {
                                            r0 = [r20 getOnDemandDownloadEntry:r2 InQueue:r3];
                                            r22 = r0;
                                            if (r0 != 0x0) {
                                                    if ([r22 count] != 0x0) {
                                                            *(int8_t *)r19 = 0x0;
                                                    }
                                                    else {
                                                            r22 = 0x0;
                                                    }
                                            }
                                    }
                            }
                    }
                    else {
                            r22 = 0x0;
                    }
            }
            else {
                    operator delete(var_60);
                    if (r21 == 0x0) {
                            r22 = 0x0;
                    }
                    else {
                            if (([r21 isEqualToString:r2] & 0x1) != 0x0) {
                                    r22 = 0x0;
                            }
                            else {
                                    r0 = [r20 getOnDemandDownloadEntry:r2 InQueue:r3];
                                    if (r0 != 0x0) {
                                            r22 = r0;
                                            if ([r0 count] != 0x0) {
                                                    *(int8_t *)r19 = 0x1;
                                            }
                                            else {
                                                    r0 = [r20 getOnDemandDownloadEntry:r2 InQueue:r3];
                                                    r22 = r0;
                                                    if (r0 != 0x0) {
                                                            if ([r22 count] != 0x0) {
                                                                    *(int8_t *)r19 = 0x0;
                                                            }
                                                            else {
                                                                    r22 = 0x0;
                                                            }
                                                    }
                                            }
                                    }
                                    else {
                                            r0 = [r20 getOnDemandDownloadEntry:r2 InQueue:r3];
                                            r22 = r0;
                                            if (r0 != 0x0) {
                                                    if ([r22 count] != 0x0) {
                                                            *(int8_t *)r19 = 0x0;
                                                    }
                                                    else {
                                                            r22 = 0x0;
                                                    }
                                            }
                                    }
                            }
                    }
            }
    }
    else {
            r21 = [[CCFileUtils sharedFileUtils] removeSuffixFromFile:r21];
            if (r21 == 0x0) {
                    r22 = 0x0;
            }
            else {
                    if (([r21 isEqualToString:r2] & 0x1) != 0x0) {
                            r22 = 0x0;
                    }
                    else {
                            r0 = [r20 getOnDemandDownloadEntry:r2 InQueue:r3];
                            if (r0 != 0x0) {
                                    r22 = r0;
                                    if ([r0 count] != 0x0) {
                                            *(int8_t *)r19 = 0x1;
                                    }
                                    else {
                                            r0 = [r20 getOnDemandDownloadEntry:r2 InQueue:r3];
                                            r22 = r0;
                                            if (r0 != 0x0) {
                                                    if ([r22 count] != 0x0) {
                                                            *(int8_t *)r19 = 0x0;
                                                    }
                                                    else {
                                                            r22 = 0x0;
                                                    }
                                            }
                                    }
                            }
                            else {
                                    r0 = [r20 getOnDemandDownloadEntry:r2 InQueue:r3];
                                    r22 = r0;
                                    if (r0 != 0x0) {
                                            if ([r22 count] != 0x0) {
                                                    *(int8_t *)r19 = 0x0;
                                            }
                                            else {
                                                    r22 = 0x0;
                                            }
                                    }
                            }
                    }
            }
    }
    r0 = r22;
    return r0;
}

-(void)addOnDemandDownloadEntryForFilename:(void *)arg2 withKey:(void *)arg3 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = arg2;
    r19 = self;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
            if (r21 != 0x0) {
                    r1 = [r21 UTF8String];
            }
            else {
                    r1 = "";
            }
            sub_1005ddf24(&var_60, r1);
            r21 = &var_48;
            r0 = sub_10042ccfc(&var_60);
            r9 = var_48;
            if (sign_extend_64(var_31) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r2 = r21;
                    }
                    else {
                            r2 = r9;
                    }
            }
            r21 = [NSString stringWithUTF8String:r2];
            if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_48);
            }
            if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_60);
            }
    }
    else {
            r21 = [[CCFileUtils sharedFileUtils] removeSuffixFromFile:r21];
    }
    if (r21 != 0x0) {
            r0 = [r21 isEqualToString:r2];
            if (([r20 isEqualToString:r2] & 0x1) == 0x0 && r20 != 0x0 && (r0 & 0x1) == 0x0) {
                    r22 = *(r19 + 0x50);
@(0x0);
                    [r22 addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:r21]];
                    *(int8_t *)(r19 + 0x78) = 0x1;
            }
    }
    return;
}

-(void)addOnDemandDownloadEntryForPossibleFilenames:(void *)arg2 withKey:(void *)arg3 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = arg2;
    r19 = self;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
            if (r21 != 0x0) {
                    r1 = [r21 UTF8String];
            }
            else {
                    r1 = "";
            }
            sub_1005ddf24(&var_60, r1);
            r21 = &var_48;
            r0 = sub_10042ccfc(&var_60);
            r9 = var_48;
            if (sign_extend_64(var_31) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r2 = r21;
                    }
                    else {
                            r2 = r9;
                    }
            }
            r21 = [NSString stringWithUTF8String:r2];
            if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_48);
            }
            if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_60);
            }
    }
    else {
            r21 = [[CCFileUtils sharedFileUtils] removeSuffixFromFile:r21];
    }
    if (r21 != 0x0) {
            r0 = [r21 isEqualToString:r2];
            if ([r20 count] != 0x0 && r20 != 0x0 && (r0 & 0x1) == 0x0) {
                    r22 = *(r19 + 0x50);
@(0x0);
                    [r22 addObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:r21]];
                    *(int8_t *)(r19 + 0x78) = 0x1;
            }
    }
    return;
}

-(void *)getOnDemandDownloadEntryWithFilename:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if (([r20 isEqualToString:r2] & 0x1) != 0x0) {
                    r0 = 0x0;
            }
            else {
                    r0 = [r19 getOnDemandDownloadEntryForKey:sub_1005de3e8(r20)];
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)promoteOnDemandDownloadEntryForKey:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
                    r0 = [r19 getOnDemandDownloadEntryForKey:r20 isTopPriority:&var_11];
                    if (r0 != 0x0) {
                            r20 = r0;
                            if ([r0 count] != 0x0) {
                                    asm { ccmp       w8, #0x0, #0x0, ne };
                            }
                            if (!CPU_FLAGS & NE) {
                                    [r20 retain];
                                    [*(r19 + 0x58) removeObject:r20];
                                    [*(r19 + 0x50) addObject:r20];
                                    [r20 release];
                                    [r20 removeObjectForKey:@"refCount"];
                                    *(int8_t *)(r19 + 0x78) = 0x1;
                            }
                    }
            }
    }
    return;
}

-(void)demoteOnDemandDownloadEntryForKey:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
                    r0 = [r19 getOnDemandDownloadEntryForKey:r20 isTopPriority:&var_11];
                    if (r0 != 0x0) {
                            r20 = r0;
                            if ([r0 count] != 0x0) {
                                    asm { ccmp       w8, #0x0, #0x4, ne };
                            }
                            if (!CPU_FLAGS & E) {
                                    [r20 retain];
                                    [*(r19 + 0x50) removeObject:r20];
                                    [*(r19 + 0x58) addObject:r20];
                                    [r20 release];
                                    [r20 removeObjectForKey:@"refCount"];
                                    *(int8_t *)(r19 + 0x78) = 0x1;
                            }
                    }
            }
    }
    return;
}

-(void)removeOnDemandDownloadEntryForKey:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
                    r0 = [r19 getOnDemandDownloadEntryForKey:r20 isTopPriority:&var_11];
                    if (r0 != 0x0) {
                            r20 = r0;
                            if ([r0 count] != 0x0) {
                                    r8 = 0x50;
                                    if (var_11 == 0x0) {
                                            if (!CPU_FLAGS & E) {
                                                    r8 = 0x50;
                                            }
                                            else {
                                                    r8 = 0x58;
                                            }
                                    }
                                    [*(r19 + r8) removeObject:r20];
                                    *(int8_t *)(r19 + 0x78) = 0x1;
                            }
                    }
            }
    }
    return;
}

-(void)removeOnDemandDownloadEntryWithFilename:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
                    [r19 removeOnDemandDownloadEntryForKey:sub_1005de3e8(r20)];
            }
    }
    return;
}

-(void)eraseOnDemandDownloadJobData {
    sub_1005d8f3c(@"onDemandDownloadJobData.plist", [self getTempOnDemandPath]);
    [*(self + 0x50) removeAllObjects];
    objc_msgSend(*(self + 0x58), r20);
    return;
}

-(void)saveOnDemandDownloadJobData {
    sub_1005d9880([NSDictionary dictionaryWithObjectsAndKeys:*(int128_t *)(self + 0x50)], [[self getTempOnDemandPath] stringByAppendingPathComponent:@"onDemandDownloadJobData.plist"], 0xc8, 0x0, 0x0);
    *(int8_t *)(self + 0x78) = 0x0;
    return;
}

-(void)cleanOnDemandDownloads {
    r31 = r31 - 0x120;
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
    [self eraseOnDemandDownloadJobData];
    var_100 = q0;
    r19 = *(self + 0x48);
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r23 = *var_100;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_100 != r23) {
                                    objc_enumerationMutation(r19);
                            }
                            [*(var_108 + r25 * 0x8) cancelDownload];
                            r25 = r25 + 0x1;
                    } while (r25 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)getTempOnDemandPath {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [sub_1005d8c80() stringByAppendingPathComponent:@"__TEMP_ON_DEMAND__"];
    if ((sub_1005d8da0() & 0x1) == 0x0) {
            sub_1005d8cfc(r19, 0x0);
    }
    r0 = r19;
    return r0;
}

-(void)loadOnDemandDownloadJobData {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1b0;
    r19 = self;
    r20 = sub_1005d9798([[self getTempOnDemandPath] stringByAppendingPathComponent:@"onDemandDownloadJobData.plist"], 0x0, 0x0);
    r0 = [NSDictionary class];
    r0 = sub_1005d8554(r20, r0, 0x0);
    r21 = @selector(objectForKey:);
    r22 = objc_msgSend(r0, r21);
    r0 = objc_msgSend(r0, r21);
    var_1F0 = r22;
    var_1E8 = r0;
    if (r22 != 0x0 && [var_1F0 count] != 0x0) {
            [*(r19 + 0x50) removeAllObjects];
            var_190 = q0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_1F8 = r1;
            r0 = objc_msgSend(var_1F0, r1);
            if (r0 != 0x0) {
                    r24 = r0;
                    r20 = *var_190;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_190 != r20) {
                                            objc_enumerationMutation(var_1F0);
                                    }
                                    r27 = @selector(removeObjectForKey:);
                                    r0 = [NSMutableDictionary dictionaryWithDictionary:*(var_198 + r22 * 0x8)];
                                    objc_msgSend(r0, r27);
                                    objc_msgSend(*(r19 + 0x50), r28);
                                    r22 = r22 + 0x1;
                            } while (r22 < r24);
                            r0 = objc_msgSend(var_1F0, var_1F8);
                            r24 = r0;
                    } while (r0 != 0x0);
            }
            [*(r19 + 0x58) removeAllObjects];
            var_1D0 = q0;
            r0 = objc_msgSend(var_1E8, var_1F8);
            if (r0 != 0x0) {
                    r23 = r0;
                    r20 = *var_1D0;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_1D0 != r20) {
                                            objc_enumerationMutation(var_1E8);
                                    }
                                    r25 = @selector(removeObjectForKey:);
                                    r0 = [NSMutableDictionary dictionaryWithDictionary:*(var_1D8 + r28 * 0x8)];
                                    objc_msgSend(r0, r25);
                                    objc_msgSend(*(r19 + 0x58), r26);
                                    r28 = r28 + 0x1;
                            } while (r28 < r23);
                            r0 = objc_msgSend(var_1E8, var_1F8);
                            r23 = r0;
                    } while (r0 != 0x0);
            }
            if (**___stack_chk_guard != **___stack_chk_guard) {
                    __stack_chk_fail();
            }
    }
    else {
            if (var_1E8 != 0x0 && [var_1E8 count] != 0x0) {
                    [*(r19 + 0x50) removeAllObjects];
                    var_190 = q0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_1F8 = r1;
                    r0 = objc_msgSend(var_1F0, r1);
                    if (r0 != 0x0) {
                            r24 = r0;
                            r20 = *var_190;
                            do {
                                    r22 = 0x0;
                                    do {
                                            if (*var_190 != r20) {
                                                    objc_enumerationMutation(var_1F0);
                                            }
                                            r27 = @selector(removeObjectForKey:);
                                            r0 = [NSMutableDictionary dictionaryWithDictionary:*(var_198 + r22 * 0x8)];
                                            objc_msgSend(r0, r27);
                                            objc_msgSend(*(r19 + 0x50), r28);
                                            r22 = r22 + 0x1;
                                    } while (r22 < r24);
                                    r0 = objc_msgSend(var_1F0, var_1F8);
                                    r24 = r0;
                            } while (r0 != 0x0);
                    }
                    [*(r19 + 0x58) removeAllObjects];
                    var_1D0 = q0;
                    r0 = objc_msgSend(var_1E8, var_1F8);
                    if (r0 != 0x0) {
                            r23 = r0;
                            r20 = *var_1D0;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_1D0 != r20) {
                                                    objc_enumerationMutation(var_1E8);
                                            }
                                            r25 = @selector(removeObjectForKey:);
                                            r0 = [NSMutableDictionary dictionaryWithDictionary:*(var_1D8 + r28 * 0x8)];
                                            objc_msgSend(r0, r25);
                                            objc_msgSend(*(r19 + 0x58), r26);
                                            r28 = r28 + 0x1;
                                    } while (r28 < r23);
                                    r0 = objc_msgSend(var_1E8, var_1F8);
                                    r23 = r0;
                            } while (r0 != 0x0);
                    }
                    if (**___stack_chk_guard != **___stack_chk_guard) {
                            __stack_chk_fail();
                    }
            }
            else {
                    if (**___stack_chk_guard == **___stack_chk_guard) {
                            [r19 eraseOnDemandDownloadJobData];
                    }
                    else {
                            __stack_chk_fail();
                    }
            }
    }
    return;
}

-(void)removeExtraDownloadersIfNeeded {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r19 = self;
    r0 = *(self + 0x48);
    r0 = [r0 count];
    r8 = *(r19 + 0x70);
    r28 = r0 - r8;
    if (r28 < 0x0) goto loc_1005df008;

loc_1005dee6c:
    var_190 = q0;
    r0 = *(r19 + 0x48);
    var_1E8 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1005def6c;

loc_1005deea0:
    r23 = r0;
    r21 = 0x0;
    r25 = *var_190;
    goto loc_1005deebc;

loc_1005deebc:
    r22 = 0x0;
    goto loc_1005deed0;

loc_1005deed0:
    if (*var_190 != r25) {
            objc_enumerationMutation(var_1E8);
    }
    if (r28 == 0x0) goto loc_1005def70;

loc_1005deeec:
    r27 = *(var_198 + r22 * 0x8);
    if (([r27 isDownloading] & 0x1) == 0x0) {
            if (r21 == 0x0) {
                    r21 = [NSMutableArray array];
            }
            [r21 addObject:r2];
            r28 = r28 - 0x1;
    }
    r22 = r22 + 0x1;
    if (r22 < r23) goto loc_1005deed0;

loc_1005def3c:
    r0 = [var_1E8 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r23 = r0;
    if (r0 != 0x0) goto loc_1005deebc;

loc_1005def70:
    var_1D0 = q0;
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r24 = *var_1D0;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_1D0 != r24) {
                                    objc_enumerationMutation(r21);
                            }
                            [*(r19 + 0x48) removeObject:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    goto loc_1005df008;

loc_1005df008:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1005def6c:
    r21 = 0x0;
    goto loc_1005def70;
}

-(bool)removeEntriesFromOnDemand:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x130;
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
            r19 = r2;
            r22 = r0;
            r0 = [r2 count];
            if (r0 != 0x0) {
                    var_110 = q0;
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r21 = r0;
                            r25 = *var_110;
                            r26 = r22 + 0x50;
                            r27 = r22 + 0x58;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_110 != r25) {
                                                    objc_enumerationMutation(r19);
                                            }
                                            r8 = var_118;
                                            r24 = *(r8 + r28 * 0x8);
                                            if ([*r26 containsObject:r24] != 0x0) {
                                                    if (!CPU_FLAGS & NE) {
                                                            r8 = r27;
                                                    }
                                                    else {
                                                            r8 = r26;
                                                    }
                                            }
                                            [*r8 removeObject:r2];
                                            r28 = r28 + 0x1;
                                    } while (r28 < r21);
                                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r21 = r0;
                            } while (r0 != 0x0);
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getOnDemandDownloadNotificationIdForFilename:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                    r0 = 0x0;
            }
            else {
                    r0 = [@"OnDemandDownloadNotification_" stringByAppendingString:r19];
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(int)getFileStateForFilename:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x120;
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
    if (r2 == 0x0) goto loc_1005dff6c;

loc_1005dfe00:
    r19 = r2;
    r20 = r0;
    if (([r19 isEqualToString:r2] & 0x1) != 0x0) goto loc_1005dff6c;

loc_1005dfe24:
    r0 = [r20 getOnDemandDownloadEntryForKey:r19];
    if (r0 == 0x0) goto loc_1005dfea0;

loc_1005dfe3c:
    r21 = r0;
    if ([r0 count] == 0x0) goto loc_1005dfea0;

loc_1005dfe50:
    r0 = [r21 objectForKey:r2];
    r0 = sub_1005d8370(r0, 0x0);
    if (r0 >= 0x3) goto loc_1005dfea0;

loc_1005dfe78:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = *(int32_t *)(0x100bf2e28 + r0 * 0x4);
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005dfea0:
    r0 = [r20 getPossibleDownloadFilenamesForFilename:r19];
    r19 = r0;
    var_100 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1005dff6c;

loc_1005dfee4:
    r21 = r0;
    r24 = *var_100;
    goto loc_1005dfef0;

loc_1005dfef0:
    r25 = 0x0;
    goto loc_1005dfef4;

loc_1005dfef4:
    if (*var_100 != r24) {
            objc_enumerationMutation(r19);
    }
    r23 = *(var_108 + r25 * 0x8);
    r0 = sub_1005d948c(r23, 0x1);
    r22 = 0x2;
    if ((r0 & 0x1) != 0x0) goto loc_1005dff70;

loc_1005dff28:
    r22 = 0x2;
    if ((sub_1005d948c(r23, 0x2) & 0x1) != 0x0) goto loc_1005dff70;

loc_1005dff38:
    r25 = r25 + 0x1;
    if (r25 < r21) goto loc_1005dfef4;

loc_1005dff44:
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r21 = r0;
    if (r0 != 0x0) goto loc_1005dfef0;

loc_1005dff68:
    r22 = 0x3;
    goto loc_1005dff70;

loc_1005dff70:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005dff6c:
    r22 = 0x3;
    goto loc_1005dff70;
}

-(void)sortOnDemandTopPriorityQueue {
    [*(self + 0x50) sortUsingFunction:0x1005e000c context:0x0];
    return;
}

-(void *)getPossibleDownloadFilenamesForFilename:(void *)arg2 {
    r31 = r31 - 0x1a0;
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
    r20 = arg2;
    var_180 = [NSMutableArray array];
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
            if (r20 != 0x0) {
                    r1 = [r20 UTF8String];
            }
            else {
                    r1 = "";
            }
            sub_1005ddf24(&var_110, r1);
            r0 = sub_10042ccfc(&var_110);
            if ((sign_extend_64(var_F9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_110);
            }
            sub_10042ccd8();
            r20 = var_110;
            r19 = stack[-280];
            if (r20 != r19) {
                    r23 = &var_128;
                    do {
                            r0 = sub_10098eefc(&var_F8, r20);
                            r9 = var_111;
                            r8 = sign_extend_64(r9);
                            r10 = var_120;
                            if (r8 < 0x0) {
                                    if (!CPU_FLAGS & L) {
                                            r9 = r9;
                                    }
                                    else {
                                            r9 = r10;
                                    }
                            }
                            if (r9 != 0x0) {
                                    r9 = var_128;
                                    [NSString stringWithUTF8String:r2];
                                    objc_msgSend(var_180, r22);
                                    r8 = var_111;
                            }
                            if ((sign_extend_64(r8) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_128);
                            }
                            r20 = r20 + 0x18;
                    } while (r19 != r20);
            }
            sub_10000e380(&var_110);
            if ((sign_extend_64(var_E1) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_F8);
            }
    }
    else {
            r19 = [[CCFileUtils sharedFileUtils] removeSuffixFromFile:r20];
            r20 = [[CCResourcePackManager sharedInstance] getSufixSearchOrder];
            r21 = [r19 stringByDeletingPathExtension];
            r22 = [r19 pathExtension];
            var_160 = q0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            r23 = r20;
            var_188 = r1;
            r0 = objc_msgSend(r20, r1);
            if (r0 != 0x0) {
                    r24 = r0;
                    r25 = *var_160;
                    do {
                            r20 = 0x0;
                            do {
                                    if (*var_160 != r25) {
                                            objc_enumerationMutation(r23);
                                    }
                                    r0 = [r21 stringByAppendingString:*(var_168 + r20 * 0x8)];
                                    r0 = [r0 stringByAppendingPathExtension:r22];
                                    if (r0 != 0x0) {
                                            r19 = r0;
                                            if (([r0 isEqualToString:@""] & 0x1) == 0x0) {
                                                    [var_180 addObject:r2];
                                            }
                                    }
                                    r20 = r20 + 0x1;
                            } while (r20 < r24);
                            r0 = objc_msgSend(r23, var_188);
                            r24 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = var_180;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)wipeData {
    sub_1005d8c80();
    sub_1005d90fc();
    return;
}

-(void)cancelOnDemandFileDownload:(void *)arg2 {
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
            r20 = r2;
            r19 = r0;
            if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
                    r0 = [r19 getOnDemandDownloadEntryForKey:r20];
                    if (r0 != 0x0) {
                            r21 = r0;
                            if ([r0 count] != 0x0 && sub_1005d8370([r21 objectForKey:r2], 0x0) < 0x1) {
                                    r0 = [r21 objectForKey:r2];
                                    r0 = sub_1005d83b0(r0, 0x0);
                                    if (r0 != 0x0) {
                                            [r21 setObject:[NSNumber numberWithUnsignedInt:r2] forKey:@"refCount"];
                                            [r19 sortOnDemandTopPriorityQueue];
                                    }
                                    else {
                                            [r19 demoteOnDemandDownloadEntryForKey:r20];
                                    }
                            }
                    }
            }
    }
    return;
}

-(bool)removeResourceAtPath:(void *)arg2 {
    r0 = sub_1005d8ea0();
    return r0;
}

-(bool)createPath:(void *)arg2 {
    r0 = sub_1005d8cfc(arg2, 0x1);
    return r0;
}

-(bool)pathExists:(void *)arg2 {
    r0 = [NSFileManager defaultManager];
    r0 = [r0 fileExistsAtPath:arg2];
    return r0;
}

-(bool)copyResourceFrom:(void *)arg2 to:(void *)arg3 deleteOriginal:(bool)arg4 allowOverrite:(bool)arg5 {
    r0 = sub_1005d9294(arg2, arg3, arg4, arg5);
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

-(void *)getPathForCache {
    r0 = sub_1005d8c80();
    r0 = [r0 stringByAppendingString:@"/"];
    return r0;
}

-(void *)getPathForMetadata {
    r0 = sub_1005d8c80();
    r0 = [r0 stringByAppendingString:@"/"];
    return r0;
}

-(int)onDemandFileDownload:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    if (r2 == 0x0) goto loc_1005e013c;

loc_1005e0118:
    r20 = r2;
    r19 = r0;
    if (([r20 isEqualToString:r2] & 0x1) == 0x0) goto loc_1005e017c;

loc_1005e013c:
    r22 = 0x3;
    goto loc_1005e0140;

loc_1005e0140:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005e017c:
    r0 = [r19 getOnDemandDownloadEntryForKey:r20 isTopPriority:&var_161];
    if (r0 == 0x0) goto loc_1005e0258;

loc_1005e019c:
    r21 = r0;
    if ([r0 count] == 0x0) goto loc_1005e0258;

loc_1005e01ac:
    r0 = [r21 objectForKey:r2];
    r0 = sub_1005d8370(r0, 0x0);
    r22 = r0;
    if (r0 != 0x0) {
            if (r22 != 0x2) {
                    if (r22 == 0x1) {
                            if (var_161 != 0x0) {
                                    sub_1005d83b0([r21 objectForKey:r2], 0x0) + 0x1;
                                    [r21 setObject:[NSNumber numberWithUnsignedInt:r2] forKey:@"refCount"];
                                    [r19 sortOnDemandTopPriorityQueue];
                            }
                            else {
                                    [r19 promoteOnDemandDownloadEntryForKey:r20];
                            }
                    }
                    else {
                            r22 = 0xffffffffffffffff;
                    }
            }
            else {
                    r22 = 0x1;
            }
    }
    else {
            if (var_161 != 0x0) {
                    sub_1005d83b0([r21 objectForKey:r2], 0x0) + 0x1;
                    [r21 setObject:[NSNumber numberWithUnsignedInt:r2] forKey:@"refCount"];
                    [r19 sortOnDemandTopPriorityQueue];
            }
            else {
                    [r19 promoteOnDemandDownloadEntryForKey:r20];
            }
    }
    goto loc_1005e0140;

loc_1005e0258:
    r0 = [r19 getPossibleDownloadFilenamesForFilename:r20];
    if (r0 == 0x0) goto loc_1005e013c;

loc_1005e0270:
    r21 = r0;
    if ([r0 count] == 0x0) goto loc_1005e013c;

loc_1005e0284:
    if (*(r19 + 0x10) == 0x0) goto loc_1005e03ac;

loc_1005e028c:
    r0 = *(r19 + 0x38);
    if (r0 == 0x0 || [r0 count] == 0x0) goto loc_1005e03ac;

loc_1005e02a0:
    r0 = [[[*(r19 + 0x10) bundleChecksums] allKeys] arrayByAddingObjectsFromArray:[*(r19 + 0x10) newFilesInNewBundle]];
    if (r0 == 0x0) goto loc_1005e013c;

loc_1005e02e8:
    r23 = r0;
    if ([r0 count] == 0x0) goto loc_1005e013c;

loc_1005e02f8:
    var_1E0 = q0;
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1005e013c;

loc_1005e0328:
    r26 = r0;
    r27 = *var_1E0;
    goto loc_1005e0338;

loc_1005e0338:
    r28 = 0x0;
    goto loc_1005e0340;

loc_1005e0340:
    if (*var_1E0 != r27) {
            objc_enumerationMutation(r21);
    }
    r22 = @selector(containsObject:);
    r25 = *(var_1E8 + r28 * 0x8);
    if (objc_msgSend(r23, r22) != 0x0) goto loc_1005e04a4;

loc_1005e0374:
    r28 = r28 + 0x1;
    if (r28 < r26) goto loc_1005e0340;

loc_1005e0380:
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r26 = r0;
    if (r0 != 0x0) goto loc_1005e0338;

loc_1005e03a8:
    r22 = 0x3;
    goto loc_1005e0140;

loc_1005e04a4:
    if ((sub_1005d948c(r25, 0x1) & 0x1) != 0x0) goto loc_1005e0524;

loc_1005e04b4:
    r22 = 0x2;
    if ((sub_1005d948c(r25, 0x2) & 0x1) != 0x0) goto loc_1005e0140;

loc_1005e04c8:
    r0 = *(r19 + 0x10);
    r0 = [r0 getNewResourcePath:r25];
    r22 = r0;
    if (r0 == 0x0) goto loc_1005e052c;

loc_1005e04e4:
    [r19 copyResourceFrom:r22 to:[[r19 getPathForCache] stringByAppendingPathComponent:r25] deleteOriginal:0x0 allowOverrite:0x1];
    goto loc_1005e0524;

loc_1005e0524:
    r22 = 0x2;
    goto loc_1005e0140;

loc_1005e052c:
    [r19 addOnDemandDownloadEntryForPossibleFilenames:r21 withKey:r20];
    goto loc_1005e0140;

loc_1005e03ac:
    var_1A0 = q0;
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1005e045c;

loc_1005e03dc:
    r24 = r0;
    r26 = *var_1A0;
    goto loc_1005e03ec;

loc_1005e03ec:
    r27 = 0x0;
    goto loc_1005e03f0;

loc_1005e03f0:
    if (*var_1A0 != r26) {
            objc_enumerationMutation(r21);
    }
    r25 = *(var_1A8 + r27 * 0x8);
    if ((sub_1005d948c(r25, 0x1) & 0x1) != 0x0) goto loc_1005e0524;

loc_1005e0420:
    r22 = 0x2;
    if ((sub_1005d948c(r25, 0x2) & 0x1) != 0x0) goto loc_1005e0140;

loc_1005e0430:
    r27 = r27 + 0x1;
    if (r27 < r24) goto loc_1005e03f0;

loc_1005e043c:
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r24 = r0;
    if (r0 != 0x0) goto loc_1005e03ec;

loc_1005e045c:
    [r19 addOnDemandDownloadEntryForPossibleFilenames:r21 withKey:r20];
    r22 = 0x0;
    goto loc_1005e0140;
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
    r0 = sub_1005d8bf8(arg2, 0x3);
    if (r0 != 0x0) goto loc_1005e0904;

loc_1005e08f4:
    if (sub_1005d8e20() == 0x0) goto loc_1005e0918;

loc_1005e0900:
    r0 = r19;
    goto loc_1005e0904;

loc_1005e0904:
    r0 = sub_1005d95f8(r0, 0x0, 0x0);
    return r0;

loc_1005e0918:
    r0 = 0x0;
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
    goto loc_1005e09c8;

loc_1005e09c8:
    r0 = [r21 bytes];
    r0 = fwrite(r0, 0x1, r23, r22);
    if (r0 == -0x1) goto loc_1005e0a00;

loc_1005e09ec:
    r23 = r23 - r0;
    if (r23 != 0x0) goto loc_1005e09c8;

loc_1005e09f4:
    fclose(r22);
    goto loc_1005e0a20;

loc_1005e0a20:
    r0 = sub_1005d8e20();
    return r0;

loc_1005e0a00:
    fclose(r22);
    if (r23 != 0x0) {
            [r20 removeResourceAtPath:r19];
    }
    goto loc_1005e0a20;
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

-(void)setDelegate:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)delegate {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)baseServerURL {
    r0 = *(self + 0x28);
    return r0;
}

-(bool)reloadConfigurationOnDownload {
    r0 = *(int8_t *)(self + 0x20) & 0x1;
    return r0;
}

-(void)updateOnDemandDownloads:(double)arg2 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x3e0;
    r19 = self;
    [self removeExtraDownloadersIfNeeded];
    r0 = *(r19 + 0x10);
    if (r0 == 0x0) goto loc_1005dfa24;

loc_1005df1f8:
    var_3A8 = r19;
    r8 = var_3A8;
    if (([r0 isDownloading] & 0x1) != 0x0) goto loc_1005df22c;

loc_1005df214:
    r0 = *(r8 + 0x10);
    r8 = var_3A8;
    if ([r0 isReadyToActivate] == 0x0) goto loc_1005dfa24;

loc_1005df22c:
    r0 = *(r8 + 0x38);
    if (r0 == 0x0) goto loc_1005dfa24;

loc_1005df234:
    r1 = @selector(count);
    var_380 = r1;
    r0 = objc_msgSend(r0, r1);
    r9 = var_3A8;
    if (r0 == 0x0) goto loc_1005dfa24;

loc_1005df24c:
    r20 = [NSMutableArray array];
    r0 = [NSArray arrayWithArray:*(r9 + 0x50)];
    r0 = [r0 arrayByAddingObjectsFromArray:*(r9 + 0x58)];
    var_2A0 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_378 = r0;
    var_388 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1005df71c;

loc_1005df2d0:
    r21 = r0;
    var_3E4 = 0x0;
    r27 = 0x0;
    r22 = *var_2A0;
    var_3C0 = r22;
    goto loc_1005df2f8;

loc_1005df2f8:
    r25 = 0x0;
    var_3B0 = r21;
    goto loc_1005df398;

loc_1005df398:
    if (*var_2A0 != r22) {
            objc_enumerationMutation(var_378);
    }
    r24 = *(var_2A8 + r25 * 0x8);
    if (sub_1005d8370([r24 objectForKey:@"state"], 0x0) != 0x0) goto loc_1005df5e4;

loc_1005df3d4:
    var_390 = r24;
    r0 = [r24 objectForKey:@"possibleFilenames"];
    if (r0 == 0x0) goto loc_1005df528;

loc_1005df3ec:
    r24 = r0;
    if (objc_msgSend(r0, var_380) == 0x0) goto loc_1005df528;

loc_1005df3fc:
    var_3A0 = r20;
    if (r27 == 0x0) {
            r21 = [*(var_3A8 + 0x10) newBundleChecksumsWithVersions];
            r0 = [NSDictionary class];
            r0 = sub_1005d8554(r21, r0, 0x0);
            r27 = r0;
            if (r0 == 0x0) {
                    r27 = [NSDictionary dictionary];
            }
    }
    var_2E0 = q0;
    r0 = objc_msgSend(r24, var_388);
    if (r0 == 0x0) goto loc_1005df5bc;

loc_1005df47c:
    r21 = r0;
    r22 = *var_2E0;
    goto loc_1005df488;

loc_1005df488:
    r20 = 0x0;
    goto loc_1005df494;

loc_1005df494:
    if (*var_2E0 != r22) {
            objc_enumerationMutation(r24);
    }
    r26 = @selector(class);
    r23 = *(var_2E8 + r20 * 0x8);
    r28 = [r27 objectForKey:r23];
    r0 = objc_msgSend(@class(NSDictionary), r26);
    r0 = sub_1005d8554(r28, r0, 0x0);
    if (r0 == 0x0 || objc_msgSend(r0, var_380) == 0x0) goto loc_1005df4f8;

loc_1005df550:
    if (r23 == 0x0 || [r23 isEqualToString:@""] != 0x0) goto loc_1005df5bc;

loc_1005df56c:
    r20 = var_3A8;
    r0 = *(r20 + 0x10);
    r0 = [r0 getNewResourcePath:r23];
    if (r0 == 0x0) goto loc_1005df5f4;

loc_1005df584:
    [r20 copyResourceFrom:r0 to:[[r20 getPathForCache] stringByAppendingPathComponent:r23] deleteOriginal:0x0 allowOverrite:0x1];
    goto loc_1005df5bc;

loc_1005df5bc:
    r20 = var_3A0;
    [r20 addObject:var_390];
    r21 = var_3B0;
    r22 = var_3C0;
    goto loc_1005df5e4;

loc_1005df5e4:
    r25 = r25 + 0x1;
    if (r25 < r21) goto loc_1005df398;

loc_1005df5f0:
    r0 = objc_msgSend(var_378, var_388);
    r21 = r0;
    if (r0 != 0x0) goto loc_1005df2f8;

loc_1005df720:
    r19 = var_3A8;
    if ([r19 removeEntriesFromOnDemand:r20] != 0x0) {
            var_378 = [[NSArray arrayWithArray:r2] arrayByAddingObjectsFromArray:r2];
            var_3E4 = 0x1;
    }
    if (*(r19 + 0x68) > 0x0) {
            asm { fcsel      d0, d1, d0, hi };
    }
    *(r19 + 0x68) = 0x0;
    r20 = @selector(isDownloading);
    if (0x0 > 0x0) goto loc_1005dfa24;

loc_1005df78c:
    var_320 = q0;
    r0 = *(r19 + 0x48);
    var_398 = r0;
    r0 = objc_msgSend(r0, var_388);
    if (r0 == 0x0) goto loc_1005dfa04;

loc_1005df7b8:
    r19 = r0;
    r21 = *var_320;
    var_3B0 = r21;
    goto loc_1005df7d8;

loc_1005df7d8:
    r22 = 0x0;
    var_3A0 = r19;
    goto loc_1005df81c;

loc_1005df81c:
    if (*var_320 != r21) {
            objc_enumerationMutation(var_398);
    }
    r25 = *(var_328 + r22 * 0x8);
    if ((objc_msgSend(r25, r20) & 0x1) != 0x0) goto loc_1005df9d8;

loc_1005df84c:
    var_360 = q0;
    r0 = objc_msgSend(var_378, var_388);
    if (r0 == 0x0) goto loc_1005df9d8;

loc_1005df874:
    r27 = r0;
    var_390 = r25;
    var_380 = r22;
    r22 = *var_360;
    goto loc_1005df888;

loc_1005df888:
    r25 = 0x0;
    goto loc_1005df89c;

loc_1005df89c:
    if (*var_360 != r22) {
            objc_enumerationMutation(var_378);
    }
    r20 = @selector(objectForKey:);
    r19 = *(var_368 + r25 * 0x8);
    if (sub_1005d8370(objc_msgSend(r19, r20), 0x0) != 0x1) goto loc_1005df938;

loc_1005df8dc:
    r0 = [r19 objectForKey:r2];
    if (r0 == 0x0) goto loc_1005df938;

loc_1005df8f0:
    r28 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) goto loc_1005df938;

loc_1005df908:
    r0 = [r19 objectForKey:r2];
    if (r0 == 0x0) goto loc_1005df938;

loc_1005df920:
    r26 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0) goto loc_1005df968;

loc_1005df938:
    r25 = r25 + 0x1;
    if (r25 < r27) goto loc_1005df89c;

loc_1005df944:
    r0 = objc_msgSend(var_378, var_388);
    r27 = r0;
    if (r0 != 0x0) goto loc_1005df888;

loc_1005df9cc:
    r20 = @selector(isDownloading);
    r21 = var_3B0;
    r19 = var_3A0;
    r22 = var_380;
    goto loc_1005df9d8;

loc_1005df9d8:
    r22 = r22 + 0x1;
    if (r22 < r19) goto loc_1005df81c;

loc_1005df9e4:
    r0 = objc_msgSend(var_398, var_388);
    r19 = r0;
    if (r0 != 0x0) goto loc_1005df7d8;

loc_1005dfa04:
    r0 = var_3A8;
    if ((var_3E4 & 0x1) != 0x0 || *(int8_t *)(r0 + 0x78) != 0x0) {
            [r0 saveOnDemandDownloadJobData];
    }
    goto loc_1005dfa24;

loc_1005dfa24:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1005df968:
    [var_390 downloadFile:r26 baseURL:r28 savePath:[[var_3A8 getTempOnDemandPath] stringByAppendingPathComponent:r26] useTempFile:0x0];
@(0x2);
    [r19 setObject:r2 forKey:r3];
    var_3E4 = 0x1;
    goto loc_1005df9cc;

loc_1005df5f4:
    r0 = [r27 objectForKey:r23];
    r0 = [r0 objectForKey:@"mostRecentVersion"];
    r0 = sub_1005d8370(r0, 0xffffffffffffffff);
    r22 = var_3C0;
    r28 = var_390;
    if (r0 == 0x0) goto loc_1005df654;

loc_1005df630:
    r21 = r0;
    r20 = var_3A0;
    if (r0 != -0x1) goto loc_1005df668;

loc_1005df640:
    [r20 addObject:r28];
    goto loc_1005df658;

loc_1005df658:
    r21 = var_3B0;
    goto loc_1005df5e4;

loc_1005df668:
    [r28 setObject:r23 forKey:@"filename"];
    [r28 setObject:[NSString stringWithFormat:*(var_3A8 + 0x28)] forKey:@"url"];
    var_3E4 = 0x1;
    [r28 setObject:[NSNumber numberWithInt:r2] forKey:@"state"];
    r21 = var_3B0;
    goto loc_1005df5e4;

loc_1005df654:
    r20 = var_3A0;
    goto loc_1005df658;

loc_1005df4f8:
    r20 = r20 + 0x1;
    if (r20 < r21) goto loc_1005df494;

loc_1005df504:
    r0 = objc_msgSend(r24, var_388);
    r21 = r0;
    if (r0 != 0x0) goto loc_1005df488;
    goto loc_1005df5bc;

loc_1005df528:
    if (r20 == 0x0) {
            r20 = [NSMutableArray array];
    }
    [r20 addObject:var_390];
    goto loc_1005df5e4;

loc_1005df71c:
    var_3E4 = 0x0;
    goto loc_1005df720;
}

-(void)setReloadConfigurationOnDownload:(bool)arg2 {
    *(int8_t *)(self + 0x20) = arg2;
    return;
}

-(unsigned long long)maxNumOnDemandParallelDownloads {
    r0 = *(self + 0x70);
    return r0;
}

-(double)maxRetryTime {
    r0 = self;
    return r0;
}

@end