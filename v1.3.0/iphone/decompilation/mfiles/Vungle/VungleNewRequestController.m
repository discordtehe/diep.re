@implementation VungleNewRequestController

-(void *)initWithUserDefaults:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeWeak(r20 + 0x8, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)sendNewRequestWithURL:(void *)arg2 publisherInformation:(void *)arg3 {
    [self sendNewRequest:0x0];
    return;
}

-(void)sendNewRequest:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r20 = [[VNGNetworkManager sharedManager] retain];
    r0 = [r21 userDefaults];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 boolForKey:@"vungle-app-installed"];
    [r0 release];
    if ((r23 & 0x1) != 0x0) {
            if (r19 != 0x0) {
                    (*(r19 + 0x10))(r19, 0x0);
            }
    }
    else {
            var_38 = [r19 retain];
            r0 = [r20 registerUserOperation:&var_60];
            r21 = [r0 retain];
            [r20 sendVungleOperation:r21];
            [r21 release];
            [var_38 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)handleNewRequestComplete:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([arg2 hasSuccessfulHTTPStatus] != 0x0) {
            r20 = objc_loadWeakRetained(r19 + 0x8);
            r21 = [@(YES) retain];
            [r20 setObject:r21 forKey:@"vungle-app-installed"];
            [r21 release];
            [r20 release];
            r0 = objc_loadWeakRetained(r19 + 0x8);
            [r0 synchronize];
            [r19 release];
    }
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak(self + 0x8);
    return;
}

-(void *)userDefaults {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setUserDefaults:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

@end