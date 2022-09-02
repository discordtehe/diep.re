@implementation GADOMIDDictionaryUtil

+(void)state:(void *)arg2 addFriendlyObstructionForSessions:(void *)arg3 {
    objc_storeStrong(&var_18, arg2);
    objc_storeStrong(&var_20, arg3);
    [var_18 setObject:var_20 forKey:@"isFriendlyObstructionFor"];
    objc_storeStrong(&var_20, 0x0);
    objc_storeStrong(&var_18, 0x0);
    return;
}

+(void *)stateWithFrame:(struct CGRect)arg2 clipsToBounds:(bool)arg3 {
    memcpy(&r2, &arg2, 0x8);
    var_40 = [[NSMutableDictionary dictionary] retain];
    var_60 = [[NSNumber numberWithDouble:r2] retain];
    [var_40 setObject:var_60 forKey:@"x"];
    [var_60 release];
    var_78 = [[NSNumber numberWithDouble:r2] retain];
    [var_40 setObject:r2 forKey:r3];
    [var_78 release];
    var_88 = [[NSNumber numberWithDouble:r2] retain];
    [var_40 setObject:r2 forKey:r3];
    [var_88 release];
    var_98 = [[NSNumber numberWithDouble:r2] retain];
    [var_40 setObject:r2 forKey:r3];
    [var_98 release];
    var_A8 = [[NSNumber numberWithBool:r2 & 0x1 & 0x1] retain];
    [var_40 setObject:r2 forKey:r3];
    [var_A8 release];
    var_B0 = [var_40 retain];
    objc_storeStrong(&saved_fp - 0x40, 0x0);
    r0 = [var_B0 autorelease];
    return r0;
}

+(void)state:(void *)arg2 addSessionId:(void *)arg3 {
    objc_storeStrong(&var_18, arg2);
    objc_storeStrong(&var_20, arg3);
    [var_18 setObject:var_20 forKey:@"adSessionId"];
    objc_storeStrong(&var_20, 0x0);
    objc_storeStrong(&var_18, 0x0);
    return;
}

+(void)state:(void *)arg2 addChildState:(void *)arg3 {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    objc_storeStrong(&saved_fp - 0x18, arg2);
    r0 = objc_storeStrong(&var_20, arg3);
    r0 = [0x0 objectForKey:@"childViews"];
    r29 = &saved_fp;
    var_28 = [r0 retain];
    if (var_28 == 0x0) {
            r8 = var_28;
            var_28 = [NSMutableArray new];
            [r8 release];
            [0x0 setObject:var_28 forKey:@"childViews"];
    }
    [var_28 addObject:var_20];
    objc_storeStrong(&var_28, 0x0);
    objc_storeStrong(&var_20, 0x0);
    objc_storeStrong(r29 - 0x18, 0x0);
    return;
}

+(bool)state:(void *)arg2 isEqualToState:(void *)arg3 {
    objc_storeStrong(&saved_fp - 0x18, arg2);
    objc_storeStrong(&var_20, arg3);
    var_34 = [0x0 isEqual:var_20];
    objc_storeStrong(&var_20, 0x0);
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    r0 = var_34 & 0x1;
    return r0;
}

+(void *)emptyState {
    r0 = [self stateWithFrame:0x1 clipsToBounds:r3];
    return r0;
}

+(void *)stringFromJSON:(void *)arg2 {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x20, arg2);
    if (([NSJSONSerialization isValidJSONObject:0x0] & 0x1) == 0x0) {
            var_8 = 0x0;
    }
    else {
            r0 = [NSJSONSerialization dataWithJSONObject:0x0 options:0x0 error:&var_40];
            r29 = r29;
            var_48 = [r0 retain];
            objc_storeStrong(&var_30, var_40);
            var_38 = var_48;
            if (var_38 == 0x0) {
                    var_8 = 0x0;
            }
            else {
                    var_8 = [[NSString alloc] initWithData:var_38 encoding:0x4];
            }
            objc_storeStrong(&var_38, 0x0);
            objc_storeStrong(&var_30, 0x0);
    }
    objc_storeStrong(r29 - 0x20, 0x0);
    r0 = [var_8 autorelease];
    return r0;
}

@end