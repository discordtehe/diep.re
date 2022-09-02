@implementation MCConfigurationData

+(bool)isMCConfigurationDataInitialized {
    r0 = self;
    if (*qword_1011da360 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void *)sharedMCConfigurationData {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011da360;
    if (r0 == 0x0) {
            r0 = [MCConfigurationData alloc];
            r0 = [r0 init];
            *0x1011da360 = r0;
    }
    return r0;
}

-(void)setDefaultABTestGroup:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = *(self + 0x120);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x120) = 0x0;
    }
    if (r20 == 0x0 || [r20 isEqualToString:r2] != 0x0) {
            r20 = @"default";
    }
    *(r19 + 0x120) = [r20 retain];
    return;
}

-(void)setRecordABTestNameTag:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = *(self + 0x118);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x118) = 0x0;
    }
    if (r20 == 0x0 || [r20 isEqualToString:r2] != 0x0) {
            r20 = @"testId";
    }
    *(r19 + 0x118) = [r20 retain];
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
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x70) = [[NSMutableDictionary dictionaryWithCapacity:0xa] retain];
            *(r19 + 0x30) = [[NSMutableDictionary dictionaryWithCapacity:0xa] retain];
            *(r19 + 0x20) = [[NSMutableArray arrayWithCapacity:0x3e8] retain];
            *(r19 + 0x28) = [[NSMutableDictionary dictionaryWithCapacity:0xc8] retain];
            *(r19 + 0x58) = [[NSMutableArray arrayWithCapacity:0x3e8] retain];
            *(r19 + 0x60) = [[NSMutableDictionary dictionaryWithCapacity:0xc8] retain];
            *(r19 + 0x38) = [[NSMutableDictionary dictionaryWithCapacity:0xc8] retain];
            *(r19 + 0x40) = [[NSMutableDictionary dictionaryWithCapacity:0xc8] retain];
            *(r19 + 0x48) = [[NSMutableDictionary dictionaryWithCapacity:0xc8] retain];
            *(r19 + 0x50) = [[NSMutableDictionary dictionaryWithCapacity:0xc8] retain];
            [r19 setValueMapSetNotification:@"MCCfgData_ValueMapSetNotification"];
            [r19 setValueMapMergedNotification:@"MCCfgData_ValueMapMergedNotification"];
            [r19 setValueMapClearedNotification:@"MCCfgData_ValueMapClearedNotification"];
            [r19 setValueMapChangedNotification:@"MCCfgData_ValueMapChangedNotification"];
            [r19 setConfigurationSetNotification:@"MCCfgData_ConfigurationSetNotification"];
            [r19 setConfigurationMergedNotification:@"MCCfgData_ConfigurationMergedNotification"];
            [r19 setConfigurationClearedNotification:@"MCCfgData_ConfigurationClearedNotification"];
            [r19 setConfigurationChangedNotification:@"MCCfgData_ConfigurationChangedNotification"];
            [r19 setIndexMetadataSetNotification:@"MCCfgData_IndexMetadataSetNotification"];
            [r19 setIndexMetadataMergedNotification:@"MCCfgData_IndexMetadataMergedNotification"];
            [r19 setIndexMetadataClearedNotification:@"MCCfgData_IndexMetadataClearedNotification"];
            [r19 setIndexMetadataChangedNotification:@"MCCfgData_IndexMetadataChangedNotification"];
            [r19 setUserGroupsSetNotification:@"MCCfgData_UserGroupsSetNotification"];
            [r19 setUserGroupsClearedNotification:@"MCCfgData_UserGroupsClearedNotification"];
            [r19 setUserGroupsChangedNotification:@"MCCfgData_UserGroupsChangedNotification"];
            [r19 setFieldValueTag:@"_value"];
            [r19 setFieldValueMapKeyTag:@"_key"];
            [r19 setFieldABTestNameTag:@"name"];
            [r19 setRecordABTestFieldTag:@"abTest"];
            [r19 setRecordABTestUserGroupTag:@"userGroup"];
            [r19 setRecordABTestNameTag:@"testId"];
            [r19 setDefaultABTestGroup:@"default"];
            [r19 setIndexMetadataSheetIndexTag:@"sheetIndex"];
            [r19 setIndexMetadataColumnsTag:@"columns"];
    }
    r0 = r19;
    return r0;
}

+(void)releaseSharedMCConfigurationData {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011da360 != 0x0) {
            [*0x1011da360 release];
            *0x1011da360 = 0x0;
    }
    return;
}

-(void)setRecordABTestUserGroupTag:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = *(self + 0x110);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x110) = 0x0;
    }
    if (r20 == 0x0 || [r20 isEqualToString:r2] != 0x0) {
            r20 = @"userGroup";
    }
    *(r19 + 0x110) = [r20 retain];
    return;
}

-(void)setIndexMetadataSheetIndexTag:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = *(self + 0x128);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x128) = 0x0;
    }
    if (r20 == 0x0 || [r20 isEqualToString:r2] != 0x0) {
            r20 = @"default";
    }
    *(r19 + 0x128) = [r20 retain];
    return;
}

-(void)setIndexMetadataColumnsTag:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = *(self + 0x130);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x130) = 0x0;
    }
    if (r20 == 0x0 || [r20 isEqualToString:r2] != 0x0) {
            r20 = @"default";
    }
    *(r19 + 0x130) = [r20 retain];
    return;
}

-(void)sendNotification:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                    [[NSNotificationCenter defaultCenter] postNotificationName:r2 object:r3];
            }
    }
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setValueMapSetNotification:0x0];
    [r19 setValueMapMergedNotification:0x0];
    [r19 setValueMapClearedNotification:0x0];
    [r19 setValueMapChangedNotification:0x0];
    [r19 setConfigurationSetNotification:0x0];
    [r19 setConfigurationMergedNotification:0x0];
    [r19 setConfigurationClearedNotification:0x0];
    [r19 setConfigurationChangedNotification:0x0];
    [r19 setUserGroupsSetNotification:0x0];
    [r19 setUserGroupsClearedNotification:0x0];
    [r19 setUserGroupsChangedNotification:0x0];
    [r19 setFieldValueTag:0x0];
    [r19 setFieldValueMapKeyTag:0x0];
    [r19 setFieldABTestNameTag:0x0];
    [r19 setRecordABTestFieldTag:0x0];
    [r19 setIndexMetadataSheetIndexTag:0x0];
    [r19 setIndexMetadataColumnsTag:0x0];
    r0 = *(r19 + 0x120);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x120) = 0x0;
    }
    r0 = *(r19 + 0x118);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x118) = 0x0;
    }
    r0 = *(r19 + 0x110);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x110) = 0x0;
    }
    r0 = *(r19 + 0x30);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x30) = 0x0;
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
    r0 = *(r19 + 0x58);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x58) = 0x0;
    }
    r0 = *(r19 + 0x60);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x60) = 0x0;
    }
    r0 = *(r19 + 0x38);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x38) = 0x0;
    }
    r0 = *(r19 + 0x40);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x40) = 0x0;
    }
    r0 = *(r19 + 0x48);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x48) = 0x0;
    }
    r0 = *(r19 + 0x50);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x50) = 0x0;
    }
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x70);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x70) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)processData {
    r0 = self;
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x68) != 0x0) {
            r19 = r0;
            r0 = *(r0 + 0x108);
            if (r0 != 0x0) {
                    r21 = [r0 isEqualToString:r2] ^ 0x1;
            }
            else {
                    r21 = 0x0;
            }
            [*(r19 + 0x38) removeAllObjects];
            objc_msgSend(*(r19 + 0x40), r20);
            objc_msgSend(*(r19 + 0x48), r20);
            objc_msgSend(*(r19 + 0x50), r20);
            r0 = *(r19 + 0x18);
            if (r0 != 0x0) {
                    r8 = 0x101137000;
                    if (objc_msgSend(r0, *(r8 + 0x410)) != 0x0) {
                            r8 = 0x101137000;
                            if (CPU_FLAGS & NE) {
                                    r8 = 0x1;
                            }
                    }
            }
            else {
                    r8 = 0x0;
            }
            [*(r19 + 0x8) enumerateKeysAndObjectsUsingBlock:&var_50];
            *(int8_t *)(r19 + 0x68) = 0x0;
    }
    return;
}

-(void)setValueMap:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if ([r2 count] != 0x0) {
                    r0 = *(r19 + 0x10);
                    if (r0 != 0x0) {
                            [r0 release];
                            *(r19 + 0x10) = 0x0;
                    }
                    *(r19 + 0x10) = [r20 retain];
                    [r19 sendNotification:*(r19 + 0x78)];
                    [r19 sendNotification:*(r19 + 0x90)];
                    *(int8_t *)(r19 + 0x68) = 0x1;
            }
    }
    return;
}

-(void)mergeValueMap:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if ([r2 count] != 0x0) {
                    r0 = *(r19 + 0x10);
                    if (r0 != 0x0) {
                            r20 = [r0 dictionaryByMergingWithDictionary:r20];
                            r0 = *(r19 + 0x10);
                            if (r0 != 0x0) {
                                    [r0 release];
                                    *(r19 + 0x10) = 0x0;
                            }
                    }
                    *(r19 + 0x10) = [r20 retain];
                    [r19 sendNotification:*(r19 + 0x80)];
                    [r19 sendNotification:*(r19 + 0x90)];
                    *(int8_t *)(r19 + 0x68) = 0x1;
            }
    }
    return;
}

-(void)cleanValueMap {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x10);
    if (r0 != 0x0 && [r0 count] != 0x0) {
            r0 = *(r19 + 0x10);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r19 + 0x10) = 0x0;
            }
            [r19 sendNotification:*(r19 + 0x88)];
            [r19 sendNotification:*(r19 + 0x90)];
            *(int8_t *)(r19 + 0x68) = 0x1;
    }
    return;
}

-(void)setConfiguration:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if ([r2 count] != 0x0) {
                    r0 = *(r19 + 0x8);
                    if (r0 != 0x0) {
                            [r0 release];
                            *(r19 + 0x8) = 0x0;
                    }
                    *(r19 + 0x8) = [r20 retain];
                    [r19 sendNotification:*(r19 + 0x98)];
                    [r19 sendNotification:*(r19 + 0xb0)];
                    *(int8_t *)(r19 + 0x68) = 0x1;
            }
    }
    return;
}

-(void)mergeConfiguration:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if ([r2 count] != 0x0) {
                    r0 = *(r19 + 0x8);
                    if (r0 != 0x0) {
                            r20 = [r0 dictionaryByMergingWithDictionary:r20];
                            r0 = *(r19 + 0x8);
                            if (r0 != 0x0) {
                                    [r0 release];
                                    *(r19 + 0x8) = 0x0;
                            }
                    }
                    *(r19 + 0x8) = [r20 retain];
                    [r19 sendNotification:*(r19 + 0xa0)];
                    [r19 sendNotification:*(r19 + 0xb0)];
                    *(int8_t *)(r19 + 0x68) = 0x1;
            }
    }
    return;
}

-(void)cleanConfiguration {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0 && [r0 count] != 0x0) {
            r0 = *(r19 + 0x8);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r19 + 0x8) = 0x0;
            }
            [r19 sendNotification:*(r19 + 0xa8)];
            [r19 sendNotification:*(r19 + 0xb0)];
            *(int8_t *)(r19 + 0x68) = 0x1;
    }
    return;
}

-(void)setIndexMetadata:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if ([r2 count] != 0x0) {
                    r0 = *(r19 + 0x18);
                    if (r0 != 0x0) {
                            [r0 release];
                            *(r19 + 0x18) = 0x0;
                    }
                    *(r19 + 0x18) = [r20 retain];
                    [r19 sendNotification:*(r19 + 0xb8)];
                    [r19 sendNotification:*(r19 + 0xd0)];
                    *(int8_t *)(r19 + 0x68) = 0x1;
            }
    }
    return;
}

-(void)mergeIndexMetadata:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if ([r2 count] != 0x0) {
                    r0 = *(r19 + 0x18);
                    if (r0 != 0x0) {
                            r20 = [r0 dictionaryByMergingWithDictionary:r20];
                            r0 = *(r19 + 0x18);
                            if (r0 != 0x0) {
                                    [r0 release];
                                    *(r19 + 0x18) = 0x0;
                            }
                    }
                    *(r19 + 0x18) = [r20 retain];
                    [r19 sendNotification:*(r19 + 0xc0)];
                    [r19 sendNotification:*(r19 + 0xd0)];
                    *(int8_t *)(r19 + 0x68) = 0x1;
            }
    }
    return;
}

-(void)cleanIndexMetadata {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x18);
    if (r0 != 0x0 && [r0 count] != 0x0) {
            r0 = *(r19 + 0x18);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r19 + 0x18) = 0x0;
            }
            [r19 sendNotification:*(r19 + 0xc8)];
            [r19 sendNotification:*(r19 + 0xd0)];
            *(int8_t *)(r19 + 0x68) = 0x1;
    }
    return;
}

-(void *)valueForField:(void *)arg2 atTable:(void *)arg3 searchByField:(void *)arg4 withValue:(void *)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg5;
    r20 = arg4;
    r21 = arg3;
    r22 = arg2;
    r23 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r23 processData];
    }
    r0 = sub_1005e95c8(r22, r21, r20, r19, *(r23 + 0x38));
    return r0;
}

-(void *)valueForField:(void *)arg2 atTable:(void *)arg3 searchByField:(void *)arg4 withValue:(void *)arg5 ignoreRecordFilters:(bool)arg6 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r24 = arg6;
    r19 = arg5;
    r20 = arg4;
    r21 = arg3;
    r22 = arg2;
    r23 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r23 processData];
    }
    r8 = 0x38;
    if (r24 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x38;
            }
            else {
                    r8 = 0x40;
            }
    }
    r0 = sub_1005e95c8(r22, r21, r20, r19, *(r23 + r8));
    return r0;
}

-(void *)valueForField:(void *)arg2 atTable:(void *)arg3 atIndex:(unsigned long long)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r22 processData];
    }
    r0 = sub_1005e9658(r21, r20, r19, *(r22 + 0x38));
    return r0;
}

-(void *)valueForField:(void *)arg2 atTable:(void *)arg3 atIndex:(unsigned long long)arg4 ignoreRecordFilters:(bool)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg5;
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r22 processData];
    }
    r8 = 0x38;
    if (r23 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x38;
            }
            else {
                    r8 = 0x40;
            }
    }
    r0 = sub_1005e9658(r21, r20, r19, *(r22 + r8));
    return r0;
}

-(void *)valueForFieldWithIndex:(unsigned long long)arg2 atTableWithIndex:(unsigned long long)arg3 searchByFieldIndex:(unsigned long long)arg4 withValue:(void *)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg5;
    r21 = arg4;
    r22 = arg3;
    r19 = arg2;
    r23 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r23 processData];
    }
    r20 = sub_1005e93f8(r22, r21, r20, *(r23 + 0x48));
    [NSNumber numberWithUnsignedInteger:r19];
    r0 = [r20 objectForKey:r2];
    return r0;
}

-(void *)valueForFieldWithIndex:(unsigned long long)arg2 atTableWithIndex:(unsigned long long)arg3 atIndex:(unsigned long long)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r21 = arg3;
    r19 = arg2;
    r22 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r22 processData];
    }
    r20 = sub_1005e956c(r21, r20, *(r22 + 0x48));
    [NSNumber numberWithUnsignedInteger:r19];
    r0 = [r20 objectForKey:r2];
    return r0;
}

-(void *)valueForFieldWithIndex:(unsigned long long)arg2 atTableWithIndex:(unsigned long long)arg3 searchByFieldIndex:(unsigned long long)arg4 withValue:(void *)arg5 ignoreRecordFilters:(bool)arg6 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r24 = arg6;
    r20 = arg5;
    r21 = arg4;
    r22 = arg3;
    r19 = arg2;
    r23 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r23 processData];
    }
    r8 = 0x48;
    if (r24 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x48;
            }
            else {
                    r8 = 0x50;
            }
    }
    r20 = sub_1005e93f8(r22, r21, r20, *(r23 + r8));
    [NSNumber numberWithUnsignedInteger:r19];
    r0 = [r20 objectForKey:r2];
    return r0;
}

-(void *)valueForFieldWithIndex:(unsigned long long)arg2 atTableWithIndex:(unsigned long long)arg3 atIndex:(unsigned long long)arg4 ignoreRecordFilters:(bool)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg5;
    r20 = arg4;
    r21 = arg3;
    r19 = arg2;
    r22 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r22 processData];
    }
    r8 = 0x48;
    if (r23 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x48;
            }
            else {
                    r8 = 0x50;
            }
    }
    r20 = sub_1005e956c(r21, r20, *(r22 + r8));
    [NSNumber numberWithUnsignedInteger:r19];
    r0 = [r20 objectForKey:r2];
    return r0;
}

-(void *)recordFromTable:(void *)arg2 searchByField:(void *)arg3 withValue:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r22 processData];
    }
    r0 = sub_1005e9218(r21, r20, r19, *(r22 + 0x38));
    return r0;
}

-(void *)recordFromTable:(void *)arg2 searchByField:(void *)arg3 withValue:(void *)arg4 ignoreRecordFilters:(bool)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg5;
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r22 processData];
    }
    r8 = 0x38;
    if (r23 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x38;
            }
            else {
                    r8 = 0x40;
            }
    }
    r0 = sub_1005e9218(r21, r20, r19, *(r22 + r8));
    return r0;
}

-(void *)recordFromTable:(void *)arg2 atIndex:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r21 processData];
    }
    r0 = sub_1005e939c(r20, r19, *(r21 + 0x38));
    return r0;
}

-(void *)recordFromTable:(void *)arg2 atIndex:(unsigned long long)arg3 ignoreRecordFilters:(bool)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg4;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r21 processData];
    }
    r8 = 0x38;
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x38;
            }
            else {
                    r8 = 0x40;
            }
    }
    r0 = sub_1005e939c(r20, r19, *(r21 + r8));
    return r0;
}

-(void *)recordFromTableWithIndex:(unsigned long long)arg2 searchByFieldIndex:(unsigned long long)arg3 withValue:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r22 processData];
    }
    r0 = sub_1005e93f8(r21, r20, r19, *(r22 + 0x48));
    return r0;
}

-(void *)recordFromTableWithIndex:(unsigned long long)arg2 searchByFieldIndex:(unsigned long long)arg3 withValue:(void *)arg4 ignoreRecordFilters:(bool)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg5;
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r22 processData];
    }
    r8 = 0x48;
    if (r23 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x48;
            }
            else {
                    r8 = 0x50;
            }
    }
    r0 = sub_1005e93f8(r21, r20, r19, *(r22 + r8));
    return r0;
}

-(void *)recordFromTableWithIndex:(unsigned long long)arg2 atIndex:(unsigned long long)arg3 ignoreRecordFilters:(bool)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg4;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r21 processData];
    }
    r8 = 0x48;
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x48;
            }
            else {
                    r8 = 0x50;
            }
    }
    r0 = sub_1005e956c(r20, r19, *(r21 + r8));
    return r0;
}

-(void *)recordFromTableWithIndex:(unsigned long long)arg2 atIndex:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r21 processData];
    }
    r0 = sub_1005e956c(r20, r19, *(r21 + 0x48));
    return r0;
}

-(void *)tableWithId:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r20 processData];
    }
    r0 = sub_1005e9134(r19, *(r20 + 0x38));
    return r0;
}

-(void *)tableWithId:(void *)arg2 ignoreRecordFilters:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = arg2;
    r20 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r20 processData];
    }
    r8 = 0x38;
    if (r21 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x38;
            }
            else {
                    r8 = 0x40;
            }
    }
    r0 = sub_1005e9134(r19, *(r20 + r8));
    return r0;
}

-(void *)tableWithIndex:(unsigned long long)arg2 ignoreRecordFilters:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = arg2;
    r20 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r20 processData];
    }
    r8 = 0x48;
    if (r21 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x48;
            }
            else {
                    r8 = 0x50;
            }
    }
    r0 = sub_1005e91a8(r19);
    return r0;
}

-(void *)tableWithIndex:(unsigned long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r20 processData];
    }
    r0 = sub_1005e91a8(r19);
    return r0;
}

-(void *)userGroupForABTest:(void *)arg2 {
    r0 = sub_1005e74c8(arg2, *(self + 0x70), *(self + 0x120));
    return r0;
}

-(void)setUserGroup:(void *)arg2 forABTest:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r3 == 0x0) goto .l1;

loc_1005ea204:
    r20 = r3;
    r21 = r2;
    r19 = r0;
    if (([r3 isEqualToString:r2] & 0x1) != 0x0) goto .l1;

loc_1005ea230:
    r23 = sub_1005d85d8([*(r19 + 0x70) objectForKey:r2], 0x0);
    if ([r21 isEqualToString:r2] != 0x0 || r21 == 0x0 || ([r21 isEqualToString:r2] & 0x1) != 0x0) goto loc_1005ea280;

loc_1005ea2b4:
    if (([r21 isEqualToString:r2] & 0x1) != 0x0) goto .l1;

loc_1005ea2c8:
    [*(r19 + 0x70) setObject:r2 forKey:r3];
    goto loc_1005ea2e0;

loc_1005ea2e0:
    [r19 sendNotification:*(r19 + 0xd8)];
    [r19 sendNotification:*(r19 + 0xe8)];
    *(int8_t *)(r19 + 0x68) = 0x1;
    return;

.l1:
    return;

loc_1005ea280:
    if (r23 == 0x0 || ([r23 isEqualToString:r2] & 0x1) != 0x0) goto .l1;

loc_1005ea29c:
    [*(r19 + 0x70) removeObjectForKey:r2];
    goto loc_1005ea2e0;
}

-(void)cleanUserGroups {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x70);
    if (r0 != 0x0 && [r0 count] != 0x0) {
            [*(r19 + 0x70) removeAllObjects];
            [r19 sendNotification:*(r19 + 0xe0)];
            [r19 sendNotification:*(r19 + 0xe8)];
            *(int8_t *)(r19 + 0x68) = 0x1;
    }
    return;
}

-(bool)isField:(void *)arg2 presentOnAllRecordsFromTable:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r21 processData];
    }
    r0 = sub_1005e96d4(r20, r19, *(r21 + 0x38));
    return r0;
}

-(bool)isFieldWithIndex:(unsigned long long)arg2 presentOnAllRecordsFromTable:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r21 processData];
    }
    r0 = sub_1005e9844(r20, r19, *(r21 + 0x48));
    return r0;
}

-(bool)isField:(void *)arg2 presentOnAllRecordsFromTable:(void *)arg3 ignoreRecordFilters:(bool)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg4;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r21 processData];
    }
    r8 = 0x38;
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x38;
            }
            else {
                    r8 = 0x40;
            }
    }
    r0 = sub_1005e96d4(r20, r19, *(r21 + r8));
    return r0;
}

-(void *)valueMapSetNotification {
    r0 = *(self + 0x78);
    return r0;
}

-(void)setValueMapSetNotification:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(bool)isFieldWithIndex:(unsigned long long)arg2 presentOnAllRecordsFromTable:(unsigned long long)arg3 ignoreRecordFilters:(bool)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg4;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if (*(int8_t *)(self + 0x68) != 0x0) {
            [r21 processData];
    }
    r8 = 0x48;
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x48;
            }
            else {
                    r8 = 0x50;
            }
    }
    r0 = sub_1005e9844(r20, r19, *(r21 + r8));
    return r0;
}

-(void *)valueMapMergedNotification {
    r0 = *(self + 0x80);
    return r0;
}

-(void *)valueMapClearedNotification {
    r0 = *(self + 0x88);
    return r0;
}

-(void)setValueMapMergedNotification:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)valueMapChangedNotification {
    r0 = *(self + 0x90);
    return r0;
}

-(void)setValueMapClearedNotification:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setValueMapChangedNotification:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)configurationSetNotification {
    r0 = *(self + 0x98);
    return r0;
}

-(void *)configurationMergedNotification {
    r0 = *(self + 0xa0);
    return r0;
}

-(void)setConfigurationSetNotification:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setConfigurationMergedNotification:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setConfigurationClearedNotification:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)configurationClearedNotification {
    r0 = *(self + 0xa8);
    return r0;
}

-(void *)configurationChangedNotification {
    r0 = *(self + 0xb0);
    return r0;
}

-(void)setConfigurationChangedNotification:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)indexMetadataSetNotification {
    r0 = *(self + 0xb8);
    return r0;
}

-(void *)indexMetadataMergedNotification {
    r0 = *(self + 0xc0);
    return r0;
}

-(void)setIndexMetadataSetNotification:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setIndexMetadataMergedNotification:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setIndexMetadataChangedNotification:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)userGroupsSetNotification {
    r0 = *(self + 0xd8);
    return r0;
}

-(void)setUserGroupsSetNotification:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)indexMetadataChangedNotification {
    r0 = *(self + 0xd0);
    return r0;
}

-(void)setIndexMetadataClearedNotification:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)indexMetadataClearedNotification {
    r0 = *(self + 0xc8);
    return r0;
}

-(void)setUserGroupsClearedNotification:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)userGroupsChangedNotification {
    r0 = *(self + 0xe8);
    return r0;
}

-(void *)userGroupsClearedNotification {
    r0 = *(self + 0xe0);
    return r0;
}

-(void)setUserGroupsChangedNotification:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)fieldValueTag {
    r0 = *(self + 0xf8);
    return r0;
}

-(void)setFieldValueMapKeyTag:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)fieldValueMapKeyTag {
    r0 = *(self + 0xf0);
    return r0;
}

-(void)setFieldValueTag:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)fieldABTestNameTag {
    r0 = *(self + 0x100);
    return r0;
}

-(void)setRecordABTestFieldTag:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setFieldABTestNameTag:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)recordABTestFieldTag {
    r0 = *(self + 0x108);
    return r0;
}

-(void *)recordABTestUserGroupTag {
    r0 = *(self + 0x110);
    return r0;
}

-(void *)recordABTestNameTag {
    r0 = *(self + 0x118);
    return r0;
}

-(void *)indexMetadataSheetIndexTag {
    r0 = *(self + 0x128);
    return r0;
}

-(void *)defaultABTestGroup {
    r0 = *(self + 0x120);
    return r0;
}

-(void *)indexMetadataColumnsTag {
    r0 = *(self + 0x130);
    return r0;
}

@end