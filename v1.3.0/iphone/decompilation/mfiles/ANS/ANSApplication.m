@implementation ANSApplication

+(void *)hostApplication {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r21 = [[r0 infoDictionary] retain];
    [r0 release];
    r19 = [[[self class] alloc] initWithInfoPlistDictionary:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithInfoPlistDictionary:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_infoPlistDict, r21);
            r21 = [r20 retain];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)bundleVersion {
    r0 = [self infoPlistDict];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:**_kCFBundleVersionKey] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)bundleIdentifier {
    r0 = [self infoPlistDict];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:**_kCFBundleIdentifierKey] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)shortVersionString {
    r0 = [self infoPlistDict];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"CFBundleShortVersionString"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)extensionDefinitionDictionary {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self infoPlistDict];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:@"NSExtension"] retain];
    [r0 release];
    if (r19 == 0x0) goto loc_1001326f8;

loc_1001326ac:
    [NSDictionary class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1001326e8;

loc_1001326d8:
    r20 = [r19 retain];
    goto loc_1001326fc;

loc_1001326fc:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_1001326e8:
    NSLog(@"Error: NSExtension Info.plist entry is mal-formed %@\n", @selector(isKindOfClass:));
    goto loc_1001326f8;

loc_1001326f8:
    r20 = 0x0;
    goto loc_1001326fc;
}

-(bool)isExtension {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self extensionPointIdentifier];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(void *)extensionPointIdentifier {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self extensionDefinitionDictionary];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r20 = [[r19 objectForKeyedSubscript:@"NSExtensionPointIdentifier"] retain];
            [NSString class];
            if (([r20 isKindOfClass:r2] & 0x1) != 0x0) {
                    r21 = [r20 retain];
            }
            else {
                    NSLog(@"Error: NSExtensionPointIdentifier Info.plist entry is mal-formed\n");
                    r21 = 0x0;
            }
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)appSharedInstance {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r29 = &saved_fp;
    if (([self isExtension] & 0x1) != 0x0) {
            r0 = 0x0;
    }
    else {
            r0 = [UIApplication class];
            r0 = [r0 performSelector:r2];
            r0 = [r0 retain];
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void *)infoPlistDict {
    r0 = self->_infoPlistDict;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_infoPlistDict, 0x0);
    return;
}

@end