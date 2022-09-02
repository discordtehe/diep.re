@implementation SSADataManager

-(void)getURL:(void *)arg2 timeout:(double)arg3 numOfRetries:(int)arg4 completionHandler:(void *)arg5 fail:(void *)arg6 {
    r25 = [arg2 retain];
    r24 = [arg4 retain];
    r21 = [arg5 retain];
    r20 = [[NSURL URLWithString:r25] retain];
    r26 = [[NSURLRequest requestWithURL:r20 cachePolicy:0x1 timeoutInterval:r4] retain];
    r27 = [[NSOperationQueue mainQueue] retain];
    r22 = [r25 retain];
    r23 = [r24 retain];
    var_78 = r21;
    r21 = [r21 retain];
    [NSURLConnection sendAsynchronousRequest:r26 queue:r27 completionHandler:&var_B0];
    [r27 release];
    [r26 release];
    [r20 release];
    [var_78 release];
    [r24 release];
    [r25 release];
    [r21 release];
    [r23 release];
    [r22 release];
    return;
}

-(void)getURL:(void *)arg2 timeout:(double)arg3 completionHandler:(void *)arg4 fail:(void *)arg5 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [r22 settings];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [r22 settings];
            r0 = [r0 retain];
            [r22 getURL:r19 timeout:[r0 connectionRetries] numOfRetries:r20 completionHandler:r21 fail:r6];
            [r0 release];
    }
    else {
            [r22 getURL:r19 timeout:0x2 numOfRetries:r20 completionHandler:r21 fail:r6];
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)downloadMgr {
    r0 = self->_downloadMgr;
    return r0;
}

-(void)setDownloadMgr:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_downloadMgr, arg2);
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
    r29 = &saved_fp;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [SSADownloadManager alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_downloadMgr));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r22 release];
            if (r0 == 0x0) {
                    r22 = [[NSUserDefaults standardUserDefaults] retain];
                    r23 = [@(YES) retain];
                    [r22 setObject:r23 forKey:@"shouldGatherInformationAndSendReportsToController"];
                    [r23 release];
                    [r22 release];
                    r0 = @class(NSUserDefaults);
                    r0 = [r0 standardUserDefaults];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 synchronize];
                    [r22 release];
            }
            r21 = @selector(objectForKey:);
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            r22 = r0;
            r0 = objc_msgSend(r0, r21);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r22 release];
            if (r0 == 0x0) {
                    r21 = [[NSUserDefaults standardUserDefaults] retain];
                    r22 = [[NSMutableArray array] retain];
                    [r21 setObject:r22 forKey:@"inAppPurchasesArray"];
                    [r22 release];
                    [r21 release];
                    r0 = @class(NSUserDefaults);
                    r0 = [r0 standardUserDefaults];
                    r0 = [r0 retain];
                    [r0 synchronize];
                    [r20 release];
            }
    }
    r0 = r19;
    return r0;
}

-(void *)settings {
    r0 = self->_settings;
    return r0;
}

-(void)setSettings:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_settings, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_settings, 0x0);
    objc_storeStrong((int64_t *)&self->_downloadMgr, 0x0);
    return;
}

@end