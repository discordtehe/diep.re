@implementation USRVInitializeStateLoadCache

-(void *)execute {
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
    r20 = self;
    r19 = [[USRVSdkProperties getLocalWebViewFile] retain];
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 fileExistsAtPath:r19];
    [r0 release];
    if ((r22 & 0x1) != 0x0) {
            r22 = [[NSData dataWithContentsOfFile:r19 options:0x2 error:0x0] retain];
            r23 = [NSString alloc];
            r0 = objc_retainAutorelease(r22);
            r22 = r0;
            r24 = [r0 bytes];
            r3 = [r22 length];
            r0 = [r23 initWithBytesNoCopy:r24 length:r3 encoding:0x4 freeWhenDone:0x0];
            r23 = r0;
            r0 = [r0 sha256];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 != 0x0) {
                    r25 = @selector(configuration);
                    r0 = objc_msgSend(r20, r25);
                    r0 = [r0 retain];
                    r26 = r0;
                    r0 = [r0 webViewHash];
                    r29 = r29;
                    r27 = [r0 retain];
                    r2 = r27;
                    r28 = [r24 isEqualToString:r2];
                    [r27 release];
                    [r26 release];
                    if (r28 != 0x0) {
                            if ([USRVDeviceLog getLogLevel] >= 0x3) {
                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads init: webapp loaded from local cache", @selector(getLogLevel), r2, r3);
                            }
                            r26 = [USRVInitializeStateCreate alloc];
                            r0 = [r20 configuration];
                            r29 = r29;
                            r27 = [r0 retain];
                            r25 = [r26 initWithConfiguration:r27 webViewData:r23];
                            [r27 release];
                            r26 = 0x0;
                    }
                    else {
                            r26 = 0x1;
                    }
            }
            else {
                    r26 = 0x1;
            }
            [r24 release];
            [r23 release];
            [r22 release];
            if (r26 != 0x0) {
                    r21 = [USRVInitializeStateLoadWeb alloc];
                    r20 = [[r20 configuration] retain];
                    r25 = [r21 initWithConfiguration:r20 retries:0x0 retryDelay:0x5];
                    [r20 release];
            }
    }
    else {
            r21 = [USRVInitializeStateLoadWeb alloc];
            r20 = [[r20 configuration] retain];
            r25 = [r21 initWithConfiguration:r20 retries:0x0 retryDelay:0x5];
            [r20 release];
    }
    [r19 release];
    r0 = [r25 autorelease];
    return r0;
}

@end