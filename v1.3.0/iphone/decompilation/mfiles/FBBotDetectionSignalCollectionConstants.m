@implementation FBBotDetectionSignalCollectionConstants

+(void *)productNameForProductType:(unsigned long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 <= 0x1) goto loc_100b7db58;

loc_100b7db34:
    if (r2 == 0x2) goto loc_100b7db70;

loc_100b7db3c:
    if (r2 == 0x3) goto loc_100b7db7c;

loc_100b7db44:
    if (r2 != 0x4) goto loc_100b7db98;

loc_100b7db4c:
    r19 = @"IOS_GAMESHOW";
    goto loc_100b7db90;

loc_100b7db90:
    [r19 retain];
    goto loc_100b7db98;

loc_100b7db98:
    [r19 autorelease];
    r0 = r19;
    return r0;

loc_100b7db7c:
    r19 = @"AN_IOS";
    goto loc_100b7db90;

loc_100b7db70:
    r19 = @"IOS_AD_BREAKS";
    goto loc_100b7db90;

loc_100b7db58:
    if (r2 == 0x0) goto loc_100b7db88;

loc_100b7db5c:
    if (r2 != 0x1) goto loc_100b7db98;

loc_100b7db64:
    r19 = @"IOS_FEED_ADS";
    goto loc_100b7db90;

loc_100b7db88:
    r19 = @"IOS_INSTANT_ARTICLES";
    goto loc_100b7db90;
}

@end