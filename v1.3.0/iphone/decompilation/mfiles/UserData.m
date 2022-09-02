@implementation UserData

+(void *)userData {
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [*(self + 0x8) release];
    [*(r19 + 0x10) release];
    [*(r19 + 0x18) release];
    [*(r19 + 0x20) release];
    [*(r19 + 0x28) release];
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
    [[&var_20 super] dealloc];
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x40) = 0x0;
            *(r19 + 0x20) = [[UserWallet userWallet] retain];
            *(r19 + 0x10) = [[UserInfo userInfo] retain];
            *(r19 + 0x8) = [[Account account] retain];
            *(r19 + 0x18) = [[UserStats userStats] retain];
            *(r19 + 0x28) = [[UserSettings userSettings] retain];
            sub_1005d83f0([r19 userDefaultsObjectForKey:@"userData_score"]);
            *(int32_t *)(r19 + 0x38) = 0x0;
            *(r19 + 0x30) = [@"" retain];
            [*(r19 + 0x8) setUserId:[[[UIDevice currentDevice] identifierForVendor] UUIDString]];
            [r19 generateNewSessionToken];
    }
    r0 = r19;
    return r0;
}

-(void)generateNewSessionToken {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x40);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x40) = 0x0;
    }
    sub_1005cbb90();
    time(0x0);
    *(r19 + 0x40) = [[NSString stringWithFormat:r2] retain];
    return;
}

-(void)setUserDefaultsObject:(void *)arg2 forKey:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r3 != 0x0) {
            r19 = r3;
            r20 = r2;
            if (([r3 isEqualToString:r2] & 0x1) == 0x0) {
                    r21 = [NSUserDefaults standardUserDefaults];
                    if (r20 != 0x0) {
                            [r21 setObject:r2 forKey:r3];
                    }
                    else {
                            [r21 removeObjectForKey:r2];
                    }
                    [r21 synchronize];
            }
    }
    return;
}

-(void)setScore:(float)arg2 {
    *(int32_t *)(self + 0x38) = s0;
    [NSNumber numberWithFloat:arg2];
    [self setUserDefaultsObject:r2 forKey:r3];
    return;
}

-(void *)userDefaultsObjectForKey:(void *)arg2 {
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
                    r0 = [NSUserDefaults standardUserDefaults];
                    r0 = [r0 objectForKey:r2];
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)setNickname:(void *)arg2 {
    [arg2 retain];
    [*(self + 0x30) release];
    *(self + 0x30) = arg2;
    [*(self + 0x8) userId];
    [NSString stringWithFormat:@"userData_name%@"];
    [self setUserDefaultsObject:r2 forKey:r3];
    return;
}

-(void)loadNickName {
    [*(self + 0x8) userId];
    [NSString stringWithFormat:@"userData_name%@"];
    *(self + 0x30) = [sub_1005d85d8([self userDefaultsObjectForKey:r2], @"") retain];
    return;
}

-(void *)account {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)info {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)stats {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)settings {
    r0 = *(self + 0x28);
    return r0;
}

-(void *)wallet {
    r0 = *(self + 0x20);
    return r0;
}

-(void *)nickname {
    r0 = *(self + 0x30);
    return r0;
}

-(float)score {
    r0 = self;
    return r0;
}

-(void)setSessionToken:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)sessionToken {
    r0 = *(self + 0x40);
    return r0;
}

@end