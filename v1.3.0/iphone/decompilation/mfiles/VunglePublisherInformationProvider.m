@implementation VunglePublisherInformationProvider

+(void *)sharedProvider {
    if (*qword_1011da968 != -0x1) {
            dispatch_once(0x1011da968, 0x100e89cd8);
    }
    r0 = *0x1011da960;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
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
            objc_storeStrong(r19 + 0x8, @"vungle.invalid.IFA");
            objc_storeStrong(r19 + 0x20, @"native");
            objc_storeStrong(r19 + 0x18, @"vungle.invalid.appID");
    }
    r0 = r19;
    return r0;
}

-(void *)toDictionary {
    r19 = [NSMutableDictionary new];
    r22 = [[self IFA] retain];
    [r19 setObject:r22 forKeyedSubscript:@"VunglePublisherInformationIfa"];
    [r22 release];
    r22 = [[self pluginName] retain];
    [r19 setObject:r22 forKeyedSubscript:@"VunglePublisherInformationPluginName"];
    [r22 release];
    r22 = [[self identifierForVendor] retain];
    [r19 setObject:r22 forKeyedSubscript:@"VunglePublisherInformationVendorIdentifier"];
    [r22 release];
    r20 = [[self appID] retain];
    [r19 setObject:r20 forKeyedSubscript:@"VunglePublisherInformationPublisherAppID"];
    [r20 release];
    r20 = [r19 copy];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setIFA:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x0) {
            r0 = [r2 copy];
            r8 = *(r19 + 0x8);
            *(r19 + 0x8) = r0;
            [r8 release];
    }
    else {
            objc_storeStrong(r19 + 0x8, @"vungle.invalid.IFA");
    }
    return;
}

-(void)setAppID:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x0) {
            r0 = [r2 copy];
            r8 = *(r19 + 0x18);
            *(r19 + 0x18) = r0;
            [r8 release];
    }
    else {
            objc_storeStrong(r19 + 0x18, @"vungle.invalid.appID");
    }
    return;
}

-(void)setPluginName:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x0) {
            r0 = [r2 copy];
            r8 = *(r19 + 0x20);
            *(r19 + 0x20) = r0;
            [r8 release];
    }
    else {
            objc_storeStrong(r19 + 0x20, @"native");
    }
    return;
}

-(void)setIdentifierForVendor:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            r19 = r0;
            r0 = [r2 copy];
            r8 = *(r19 + 0x10);
            *(r19 + 0x10) = r0;
            [r8 release];
    }
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r21 = [[[self class] alloc] init];
    r23 = [*(self + 0x8) copyWithZone:arg2];
    [r21 setIFA:r23];
    [r23 release];
    r23 = [*(self + 0x20) copyWithZone:arg2];
    [r21 setPluginName:r23];
    [r23 release];
    r23 = [*(self + 0x18) copyWithZone:arg2];
    [r21 setAppID:r23];
    [r23 release];
    r19 = [*(self + 0x10) copyWithZone:arg2];
    [r21 setIdentifierForVendor:r19];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)IFA {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x0);
    return r0;
}

-(void *)identifierForVendor {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(bool)isEqual:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == r21) goto loc_100664e34;

loc_100664d10:
    [VunglePublisherInformationProvider class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100664e3c;

loc_100664d3c:
    r0 = [r19 retain];
    r20 = r0;
    r0 = [r0 IFA];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_100664e44;

loc_100664d7c:
    [r23 release];
    goto loc_100664d84;

loc_100664d84:
    r22 = @selector(isEqualToString:);
    r0 = [r20 pluginName];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (objc_msgSend(r0, r22) == 0x0) goto loc_100664e70;

loc_100664db4:
    [r23 release];
    goto loc_100664dbc;

loc_100664dbc:
    r22 = @selector(isEqualToString:);
    r0 = [r20 appID];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (objc_msgSend(r0, r22) == 0x0) goto loc_100664e9c;

loc_100664dec:
    [r23 release];
    goto loc_100664df4;

loc_100664df4:
    r22 = @selector(isEqualToString:);
    r0 = [r20 identifierForVendor];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (objc_msgSend(r0, r22) == 0x0) goto loc_100664ec8;

loc_100664e24:
    [r23 release];
    r21 = 0x1;
    goto loc_100664ef0;

loc_100664ef0:
    [r20 release];
    goto loc_100664ef8;

loc_100664ef8:
    [r19 release];
    r0 = r21;
    return r0;

loc_100664ec8:
    r0 = [r20 identifierForVendor];
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100664f18;

loc_100664ee0:
    [r0 release];
    [r23 release];
    goto loc_100664eec;

loc_100664eec:
    r21 = 0x0;
    goto loc_100664ef0;

loc_100664f18:
    r21 = *(r21 + 0x10);
    [r23 release];
    if (r21 == 0x0) {
            r21 = 0x1;
    }
    else {
            r21 = 0x0;
    }
    goto loc_100664ef0;

loc_100664e9c:
    r0 = [r20 appID];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) goto loc_100664ee0;

loc_100664eb4:
    r24 = *(r21 + 0x18);
    [r23 release];
    if (r24 != 0x0) goto loc_100664eec;
    goto loc_100664df4;

loc_100664e70:
    r0 = [r20 pluginName];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) goto loc_100664ee0;

loc_100664e88:
    r24 = *(r21 + 0x20);
    [r23 release];
    if (r24 != 0x0) goto loc_100664eec;
    goto loc_100664dbc;

loc_100664e44:
    r0 = [r20 IFA];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) goto loc_100664ee0;

loc_100664e5c:
    r24 = *(r21 + 0x8);
    [r23 release];
    if (r24 != 0x0) goto loc_100664eec;
    goto loc_100664d84;

loc_100664e3c:
    r21 = 0x0;
    goto loc_100664ef8;

loc_100664e34:
    r21 = 0x1;
    goto loc_100664ef8;
}

-(void *)appID {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void *)pluginName {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end