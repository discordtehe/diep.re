@implementation ISHelpers

+(void *)deviceType {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 model];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1006aeaf8;

loc_1006aeaec:
    r20 = @"iphone";
    goto loc_1006aeb18;

loc_1006aeb18:
    [r20 retain];
    [r19 release];
    r19 = r20;
    goto loc_1006aeb2c;

loc_1006aeb2c:
    r20 = [[r19 lowercaseString] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_1006aeaf8:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1006aeb2c;

loc_1006aeb10:
    r20 = @"ipad";
    goto loc_1006aeb18;
}

+(void *)platformString {
    sysctlbyname("hw.machine", 0x0, &var_18, 0x0, 0x0);
    sysctlbyname("hw.machine", malloc(var_18), &var_18, 0x0, 0x0);
    [[NSString stringWithCString:r20 encoding:0x4] retain];
    free(r20);
    r0 = [r19 autorelease];
    return r0;
}

+(void *)getMACAddress {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (if_nametoindex("en0") == 0x0) goto loc_1006aecfc;

loc_1006aec4c:
    r0 = sysctl(r29 - 0x30, 0x6, 0x0, &var_38, 0x0, 0x0);
    if ((r0 & 0xffffffff80000000) != 0x0) goto loc_1006aed08;

loc_1006aec6c:
    r19 = malloc(var_38);
    if (r19 == 0x0) goto loc_1006aed20;

loc_1006aec7c:
    r0 = sysctl(r29 - 0x30, 0x6, r19, &var_38, 0x0, 0x0);
    if ((r0 & 0xffffffff80000000) != 0x0) goto loc_1006aed2c;

loc_1006aec9c:
    r8 = *(int8_t *)(r19 + 0x75);
    r20 = [[NSString stringWithFormat:r2] retain];
    free(r19);
    goto loc_1006aed50;

loc_1006aed50:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006aed2c:
    r20 = @"sysctl msgBuffer failure";
    goto loc_1006aed34;

loc_1006aed34:
    [r20 retain];
    goto loc_1006aed3c;

loc_1006aed3c:
    free(r19);
    [r20 release];
    r20 = 0x0;
    goto loc_1006aed50;

loc_1006aed20:
    r20 = @"buffer allocation failure";
    goto loc_1006aed34;

loc_1006aed08:
    r20 = @"sysctl mgmtInfoBase failure";
    goto loc_1006aed10;

loc_1006aed10:
    [r20 retain];
    r19 = 0x0;
    goto loc_1006aed3c;

loc_1006aecfc:
    r20 = @"if_nametoindex failure";
    goto loc_1006aed10;
}

@end