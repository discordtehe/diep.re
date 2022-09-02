@implementation UADSInAppPurchaseMetaData

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)setProductId:(void *)arg2 {
    [self set:@"productId" value:arg2];
    return;
}

-(void)setPrice:(void *)arg2 {
    [self set:@"price" value:arg2];
    return;
}

-(void)setCurrency:(void *)arg2 {
    [self set:@"currency" value:arg2];
    return;
}

-(void)setReceiptPurchaseData:(void *)arg2 {
    [self set:@"receiptPurchaseData" value:arg2];
    return;
}

-(void)setSignature:(void *)arg2 {
    [self set:@"signature" value:arg2];
    return;
}

-(bool)set:(void *)arg2 value:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [self setRaw:r21 value:arg3];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void)commit {
    r31 = r31 - 0x70;
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
    r23 = self;
    if ([USRVStorageManager init] != 0x0) {
            r19 = [[USRVStorageManager getStorage:0x1] retain];
            r0 = [r23 storageContents];
            r29 = r29;
            [[r0 retain] release];
            if (r19 != 0x0) {
                    asm { ccmp       x20, #0x0, #0x4, ne };
            }
            if (!CPU_FLAGS & NE) {
                    if ([USRVDeviceLog getLogLevel] >= 0x1) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads could not commit metadata due to storage error or the data is null", @selector(getLogLevel), 0x1, r3);
                    }
            }
            else {
                    r0 = [r19 getValueForKey:r2];
                    r29 = r29;
                    r20 = [r0 retain];
                    if (r20 != 0x0) {
                            r0 = [NSMutableArray arrayWithArray:r20];
                            r29 = r29;
                            r22 = [r0 retain];
                            if (r22 == 0x0) {
                                    r22 = [[NSMutableArray alloc] init];
                            }
                    }
                    else {
                            r22 = [[NSMutableArray alloc] init];
                    }
                    r2 = @"iap.purchases";
                    r21 = @selector(getValueForKey:);
                    r23 = [[r23 storageContents] retain];
                    r24 = @class(NSNumber);
                    r0 = [NSDate date];
                    r0 = [r0 retain];
                    r25 = r0;
                    [r0 timeIntervalSince1970];
                    asm { fcvtzs     x2, d0 };
                    r24 = [[r24 numberWithLongLong:r2] retain];
                    [r25 release];
                    [r23 setObject:r24 forKey:@"ts"];
                    [r24 release];
                    [r22 addObject:r23];
                    [r19 set:@"iap.purchases" value:r22];
                    [r19 writeStorage];
                    r21 = [objc_msgSend(r19, r21) retain];
                    [r19 sendEvent:@"SET" values:r21];
                    [r21 release];
                    [r23 release];
                    [r22 release];
                    [r20 release];
            }
            [r19 release];
    }
    return;
}

@end