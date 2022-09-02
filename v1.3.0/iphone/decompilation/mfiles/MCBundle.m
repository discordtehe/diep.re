@implementation MCBundle

-(void *)initWithPersistencyDelegate:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            if (r19 == 0x0) {
                    [NSException raise:@"MCBundle: nil persistency delegate" format:@"A valid persistency delegate must be provided"];
            }
            *(r20 + 0x8) = [r19 retain];
    }
    r0 = r20;
    return r0;
}

+(void *)bundleWithPersistencyDelegate:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithPersistencyDelegate:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDeviceSuffix:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = *(self + 0x40);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x40) = 0x0;
    }
    *(r19 + 0x40) = [r20 retain];
    return;
}

-(void)dealloc {
    [self detach];
    [[&var_20 super] dealloc];
    return;
}

-(void)addNewFile:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = *(self + 0x38);
    if (r0 == 0x0) {
            r0 = [NSMutableArray alloc];
            r0 = [r0 initWithCapacity:0x1];
            *(r20 + 0x38) = r0;
    }
    [r0 addObject:r2];
    return;
}

-(bool)isUsingIncrementalBundles:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            if ([r2 count] != 0x0) {
                    r19 = [[r19 allValues] objectAtIndex:0x0];
                    [NSDictionary class];
                    r0 = [r19 isKindOfClass:r2];
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)detach {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x30);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x30) = 0x0;
    }
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x28) = 0x0;
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
    return;
}

-(void *)addChecksumFile:(void *)arg2 {
    r0 = [self addChecksumFile:arg2 fromDirectory:@""];
    return r0;
}

-(void *)checksumForFile:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            r0 = *(r0 + 0x10);
            r0 = [r0 objectForKey:r2];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)difWithBundle:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if (arg2 == 0x0) {
            [NSException raise:@"MCBundle: Cannot compare to nil bundle" format:@"A valid bundle must be provided"];
    }
    r0 = *(r20 + 0x10);
    r0 = sub_100280138(r0, *(r19 + 0x10));
    return r0;
}

-(void *)addChecksumFile:(void *)arg2 fromDirectory:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = arg2;
    r19 = self;
    if (*(self + 0x30) == 0x0) {
            *(r19 + 0x30) = [[NSMutableArray alloc] initWithCapacity:0x1];
    }
    r22 = [r20 stringByAppendingPathComponent:r21];
    r0 = *(r19 + 0x8);
    r0 = [r0 loadDataAtPath:r22];
    if (r0 == 0x0) goto loc_100281184;

loc_10028111c:
    r0 = [NSPropertyListSerialization propertyListFromData:r0 mutabilityOption:0x0 format:0x0 errorDescription:&var_38];
    if (var_38 == 0x0) goto loc_100281204;

loc_10028114c:
    r2 = [NSString stringWithFormat:@"checksum file %@ is not a valid plist"];
    r0 = @class(NSDictionary);
    goto loc_100281318;

loc_100281318:
    r0 = [NSError errorWithDomain:@"BundleErrorDomain" code:0x2 userInfo:[r0 dictionaryWithObject:r2 forKey:**_NSLocalizedDescriptionKey]];
    return r0;

loc_100281204:
    r20 = r0;
    [NSDictionary class];
    if (([r20 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1002812e8;

loc_100281234:
    [*(r19 + 0x30) addObject:r21];
    if ([r19 isUsingIncrementalBundles:r20] != 0x0) {
            r0 = *(r19 + 0x18);
            r0 = [r0 retain];
            *(r19 + 0x18) = [sub_1002806e8(r0, r20) retain];
            [r0 release];
            r0 = *(r19 + 0x10);
            r0 = [r0 retain];
            *(r19 + 0x10) = [sub_1002808a8(r0) retain];
            [r0 release];
            [r19 addPatchesInfo:r20];
    }
    else {
            r0 = *(r19 + 0x10);
            r0 = [r0 retain];
            *(r19 + 0x10) = [sub_100280a84(r0) retain];
            [r0 release];
    }
    r0 = 0x0;
    return r0;

loc_1002812e8:
    r2 = [NSString stringWithFormat:@"checksum file %@ is not a dictionary"];
    r0 = @class(NSDictionary);
    goto loc_100281318;

loc_100281184:
    r0 = [NSError errorWithDomain:@"BundleErrorDomain" code:0x1 userInfo:[NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"could not read checksum file %@"] forKey:**_NSLocalizedDescriptionKey]];
    return r0;
}

-(void *)bundleVersionFile {
    r0 = *(self + 0x8);
    r0 = [r0 getPathForMetadata];
    r0 = [r0 stringByAppendingPathComponent:@"__bundleVersion__.plist"];
    return r0;
}

-(void *)bundleVersion {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [*(self + 0x8) loadDataAtPath:[self bundleVersionFile]];
    if (r0 != 0x0) {
            r0 = [NSPropertyListSerialization propertyListFromData:r0 mutabilityOption:0x0 format:0x0 errorDescription:&var_18];
            if (r0 != 0x0) {
                    r19 = r0;
                    [NSDictionary class];
                    if ([r19 isKindOfClass:r2] != 0x0) {
                            r0 = [r19 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r0 = [r0 description];
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
            }
    }
    return r0;
}

-(void)addPatchesInfo:(void *)arg2 {
    return;
}

-(void *)checksumsWithVersions {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)checksums {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)bundleNewFiles {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setBundleNewFiles:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)auxiliaryCache {
    r0 = *(self + 0x48);
    return r0;
}

-(void)setAuxiliaryCache:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end