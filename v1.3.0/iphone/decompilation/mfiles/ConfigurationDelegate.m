@implementation ConfigurationDelegate

-(void *)init {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_38 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [[ConfigurationDownloader sharedConfigurationDownloader] setDelegate:r19];
            *(r19 + 0x10) = [[NSArray arrayWithObjects:&var_28 count:0x2] retain];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setCryptoPassword:0x0];
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)configurationMandatoryFiles {
    r0 = *(self + 0x10);
    return r0;
}

-(void)configurationLoadedWithDownloadInProgress:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if (sub_1005d93d8(@"ValueMap.plist", arg2) != 0x0) {
            [[MCConfigurationData sharedMCConfigurationData] mergeValueMap:sub_1005d9798([r19 stringByAppendingPathComponent:@"ValueMap.plist"], 0x1, [r20 cryptoPassword])];
    }
    [[Application sharedApplication] fileDownloadComplete:r19];
    return;
}

-(void)configurationLoaded {
    r22 = [sub_1005d980c(@"ValueMap.plist", 0x3, 0x1, [self cryptoPassword]) objectForKey:@"valueMap"];
    r19 = [sub_1005d980c(@"GameConfiguration.plist", 0x3, 0x1, [self cryptoPassword]) objectForKey:@"gameConfig"];
    [[MCConfigurationData sharedMCConfigurationData] setValueMap:r22];
    [[MCConfigurationData sharedMCConfigurationData] setConfiguration:r19];
    [[Application sharedApplication] configurationLoaded];
    return;
}

-(void)fileDownloadComplete:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if ([[arg2 lastPathComponent] isEqualToString:r2] != 0x0) {
            r20 = [r20 stringByDeletingLastPathComponent];
            if (sub_1005d93d8(@"ValueMap.plist", r20) != 0x0) {
                    [[MCConfigurationData sharedMCConfigurationData] mergeValueMap:sub_1005d9798([r20 stringByAppendingPathComponent:@"ValueMap.plist"], 0x1, [r19 cryptoPassword])];
            }
    }
    return;
}

-(void)throttleDownConfigurationDownloads {
    return;
}

-(void *)cryptoPassword {
    r0 = *(self + 0x8);
    return r0;
}

-(void)throttleToDefaultConfigurationDownloadSpeed {
    return;
}

-(void)setCryptoPassword:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end