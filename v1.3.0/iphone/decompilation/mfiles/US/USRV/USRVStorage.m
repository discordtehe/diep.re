@implementation USRVStorage

-(void *)initWithLocation:(void *)arg2 type:(long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setTargetFileName:r20];
            [r21 setType:r19];
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)initStorage {
    [self readStorage];
    [self initData];
    return;
}

-(void)sendEvent:(void *)arg2 values:(void *)arg3 {
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [USRVWebViewApp getCurrentApp];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[NSMutableArray alloc] init];
            if ([r23 type] == 0x1) {
                    [r21 addObject:r2];
            }
            else {
                    if ([r23 type] == 0x2) {
                            [r21 addObject:r2];
                    }
            }
            [r21 addObject:r2];
            r0 = @class(USRVWebViewApp);
            r0 = [r0 getCurrentApp];
            r0 = [r0 retain];
            r2 = r19;
            r23 = [r0 sendEvent:r2 category:@"STORAGE" params:r21];
            [r0 release];
            if ((r23 & 0x1) == 0x0 && [USRVDeviceLog getLogLevel] >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Coudn't send storage event to WebApp!", @selector(getLogLevel), r2, @"STORAGE");
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(bool)writeStorage {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self storageContents];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[r19 storageContents] retain];
            r21 = [[NSJSONSerialization dataWithJSONObject:r20 options:0x0 error:0x0] retain];
            [r20 release];
            r19 = [[r19 targetFileName] retain];
            [r21 writeToFile:r19 options:0x1 error:&var_28];
            [r19 release];
            if (var_28 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r19 = 0x1;
                    }
            }
            [r21 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(bool)readStorage {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r22 = [[self targetFileName] retain];
    r0 = [NSData dataWithContentsOfFile:r22 options:0x2 error:&var_38];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [var_38 retain];
    [r22 release];
    if (r20 == 0x0) goto loc_1000e5e44;

loc_1000e5e3c:
    r21 = 0x0;
    goto loc_1000e5ed8;

loc_1000e5ed8:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_1000e5e44:
    r0 = [NSJSONSerialization JSONObjectWithData:r19 options:0x1 error:&var_40];
    r29 = r29;
    r23 = [r0 retain];
    r22 = [var_40 retain];
    if (r19 == 0x0) goto loc_1000e5f04;

loc_1000e5e84:
    r24 = [[NSMutableDictionary dictionaryWithDictionary:r23] retain];
    [r21 setStorageContents:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    r21 = 0x1;
    goto loc_1000e5ed8;

loc_1000e5f04:
    [r23 release];
    [r22 release];
    goto loc_1000e5e3c;
}

-(bool)clearStorage {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self clearData];
    r20 = [[NSFileManager defaultManager] retain];
    r19 = [[self targetFileName] retain];
    [r20 removeItemAtPath:r19 error:&var_28];
    [r19 release];
    if (var_28 == 0x0) {
            if (CPU_FLAGS & E) {
                    r19 = 0x1;
            }
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)storageFileExists {
    r20 = [[NSFileManager defaultManager] retain];
    r19 = [[self targetFileName] retain];
    r21 = [r20 fileExistsAtPath:r19];
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)setTargetFileName:(void *)arg2 {
    self->_targetFileName = arg2;
    return;
}

-(void *)targetFileName {
    r0 = self->_targetFileName;
    return r0;
}

-(void)setType:(long long)arg2 {
    self->_type = arg2;
    return;
}

-(long long)type {
    r0 = self->_type;
    return r0;
}

@end