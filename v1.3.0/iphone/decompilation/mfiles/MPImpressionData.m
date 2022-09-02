@implementation MPImpressionData

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r21 + 0x20, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)impressionID {
    r0 = [self nullableImpressionDataObjectForKey:*0x100e7f688];
    return r0;
}

-(void *)adUnitID {
    r0 = [self nullableImpressionDataObjectForKey:*0x100e7f690];
    return r0;
}

-(void *)adUnitName {
    r0 = [self nullableImpressionDataObjectForKey:*0x100e7f698];
    return r0;
}

-(void *)adUnitFormat {
    r0 = [self nullableImpressionDataObjectForKey:*0x100e7f6a0];
    return r0;
}

-(void *)adGroupID {
    r0 = [self nullableImpressionDataObjectForKey:*0x100e7f6a8];
    return r0;
}

-(void *)adGroupName {
    r0 = [self nullableImpressionDataObjectForKey:*0x100e7f6b0];
    return r0;
}

-(void *)adGroupType {
    r0 = [self nullableImpressionDataObjectForKey:*0x100e7f6b8];
    return r0;
}

-(void *)adGroupPriority {
    r0 = [self nullableImpressionDataObjectForKey:*0x100e7f6c0];
    return r0;
}

-(void *)country {
    r0 = [self nullableImpressionDataObjectForKey:*0x100e7f6d0];
    return r0;
}

-(void *)networkPlacementID {
    r0 = [self nullableImpressionDataObjectForKey:*0x100e7f6e0];
    return r0;
}

-(void *)currency {
    r0 = [self nullableImpressionDataObjectForKey:*0x100e7f6c8];
    return r0;
}

-(void *)networkName {
    r0 = [self nullableImpressionDataObjectForKey:*0x100e7f6d8];
    return r0;
}

-(void *)publisherRevenue {
    r0 = [self nullableImpressionDataObjectForKey:*0x100e7f6e8];
    return r0;
}

-(void *)nullableImpressionDataObjectForKey:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [self impressionDataDictionary];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:r21] retain];
    [r21 release];
    [r0 release];
    [NSNull class];
    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
            r20 = 0x0;
    }
    else {
            r20 = [r19 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)jsonRepresentation {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = *(self + 0x18);
    if (r0 != 0x0) {
            r19 = [r0 retain];
    }
    else {
            r22 = [[r19 impressionDataDictionary] retain];
            r0 = [NSJSONSerialization dataWithJSONObject:r22 options:0x0 error:&var_28];
            r20 = [r0 retain];
            r21 = [var_28 retain];
            [r22 release];
            if (r21 == 0x0) {
                    [r19 setJsonRepresentation:r20];
            }
            r19 = [*(r19 + 0x18) retain];
            [r20 release];
            [r21 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(long long)precision {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self isPrecisionSet] != 0x0) {
            r19 = *(r19 + 0x10);
    }
    else {
            [r19 setIsPrecisionSet:0x1];
            r0 = [r19 nullableImpressionDataObjectForKey:*0x100e7f6f0];
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    if ([r20 isEqualToString:r2] != 0x0) {
                            r0 = r19;
                    }
                    else {
                            if ([r20 isEqualToString:r2] != 0x0) {
                                    r0 = r19;
                            }
                            else {
                                    if ([r20 isEqualToString:r2] != 0x0) {
                                            r0 = r19;
                                    }
                                    else {
                                            if ([r20 isEqualToString:r2] != 0x0) {
                                                    r0 = r19;
                                            }
                                            else {
                                                    r0 = r19;
                                            }
                                    }
                            }
                    }
            }
            else {
                    r0 = r19;
            }
            [r0 setPrecision:r2];
            r19 = *(r19 + 0x10);
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)setPrecision:(long long)arg2 {
    *(self + 0x10) = arg2;
    return;
}

-(void)setJsonRepresentation:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)impressionDataDictionary {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void *)description {
    r31 = r31 - 0x160;
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
    r29 = &saved_fp;
    r20 = self;
    r8 = [self precision] - 0x1;
    if (r8 <= 0x3) {
            r0 = (0x10046946c + *(int8_t *)(0x100be3ea0 + r8) * 0x4)();
    }
    else {
            r21 = [[r20 jsonRepresentation] retain];
            var_70 = [[NSJSONSerialization JSONObjectWithData:r21 options:0x0 error:0x0] retain];
            [r21 release];
            var_88 = [[[r29 - 0x68 super] description] retain];
            var_90 = [[r20 impressionID] retain];
            var_98 = [[r20 publisherRevenue] retain];
            var_A0 = [[r20 currency] retain];
            var_A8 = [[r20 adUnitID] retain];
            r26 = [[r20 adUnitName] retain];
            r0 = [r20 adUnitFormat];
            r0 = [r0 retain];
            var_B0 = r0;
            r0 = [r20 adGroupID];
            r0 = [r0 retain];
            var_B8 = r0;
            r0 = [r20 adGroupName];
            r0 = [r0 retain];
            var_C0 = r0;
            r0 = [r20 adGroupType];
            r0 = [r0 retain];
            r27 = [[r20 adGroupPriority] retain];
            r23 = [[r20 country] retain];
            r25 = [[r20 networkName] retain];
            r20 = [[r20 networkPlacementID] retain];
            var_78 = [[NSString stringWithFormat:@"Impression Data %@:\n\nImpression ID: %@\nPublisher Revenue: %@\nCurrency: %@\nAd Unit ID: %@\nAd Unit Name: %@\nAd Unit Format: %@\nAd Group ID: %@\nAd Group Name: %@\nAd Group Type: %@\nAd Group Priority: %@\nPrecision: %@\nCountry: %@\nNetwork Name: %@\nNetwork Placem…"] retain];
            [r20 release];
            [r25 release];
            [r23 release];
            [r27 release];
            [r0 release];
            [var_C0 release];
            [var_B8 release];
            [var_B0 release];
            [r26 release];
            [var_A8 release];
            [var_A0 release];
            [var_98 release];
            [var_90 release];
            [var_88 release];
            [var_70 release];
            r0 = [var_78 autorelease];
    }
    return r0;
}

-(void)setImpressionDataDictionary:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isPrecisionSet {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setIsPrecisionSet:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    return;
}

@end