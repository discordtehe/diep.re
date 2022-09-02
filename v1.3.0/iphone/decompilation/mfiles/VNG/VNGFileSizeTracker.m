@implementation VNGFileSizeTracker

+(void *)sharedInstance {
    if (*qword_1011da870 != -0x1) {
            dispatch_once(0x1011da870, 0x100e88ca8);
    }
    r0 = *0x1011da878;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *0x1011da880 = 0x0;
    }
    return r0;
}

-(unsigned long long)getTotalFileSize {
    return *0x1011da880;
}

-(void)resetTotalFileSize {
    *0x1011da880 = 0x0;
    return;
}

-(void)accumulateDownloadFileSize:(unsigned long long)arg2 {
    *0x1011da880 = *0x1011da880 + arg2;
    [self logTotalFileSizeToLogger];
    return;
}

-(void)logTotalFileSizeToLogger {
    r19 = [[NSString stringWithFormat:r2] retain];
    r0 = [VungleLogger sharedLogger];
    r0 = [r0 retain];
    [r0 logMessage:r19 level:0xf4241 context:@"SDK Download File Size"];
    [r0 release];
    [r19 release];
    return;
}

@end