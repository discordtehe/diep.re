@implementation VungleTPATURL

-(void *)initWithURLString:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r8 = *(r20 + 0x8);
            *(r20 + 0x8) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)URL {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = *(self + 0x10);
    if (r0 == 0x0) {
            r0 = [r19 performReplacementsWithURLString:*(r19 + 0x8)];
            r0 = [r0 retain];
            r8 = *(r19 + 0x10);
            *(r19 + 0x10) = r0;
            [r8 release];
            r0 = *(r19 + 0x10);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)isEqual:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r20 != r0) {
            if (r19 != 0x0) {
                    [VungleTPATURL class];
                    if ([r19 isKindOfClass:r2] != 0x0) {
                            r20 = [r20 isEqualToTPATURL:r19];
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)performReplacementsWithURLString:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    lround([r0 timeIntervalSince1970]);
    [r0 release];
    r21 = [[NSString stringWithFormat:@"%ld"] retain];
    r20 = [[arg2 stringByReplacingOccurrencesOfString:@"%timestamp%" withString:r21] retain];
    [r19 release];
    [r21 release];
    r19 = [[NSURL URLWithString:r2] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    [arg2 encodeObject:*(self + 0x8) forKey:@"URLString"];
    return;
}

-(bool)isEqualToTPATURL:(void *)arg2 {
    r0 = [arg2 URLString];
    r0 = [r0 retain];
    r19 = [r0 isEqualToString:r2];
    [r0 release];
    r0 = r19;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r20 = [[arg2 decodeObjectForKey:@"URLString"] retain];
    r19 = [self initWithURLString:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r20 = [*(self + 0x8) copyWithZone:arg2];
    r19 = [[[self class] alloc] initWithURLString:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)URLString {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x0);
    return r0;
}

-(void *)description {
    r0 = self;
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = r0;
    r8 = *(r0 + 0x8);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r8;
            }
            else {
                    r8 = @"(null)";
            }
    }
    r8 = *(r0 + 0x10);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r8;
            }
            else {
                    r8 = @"(null)";
            }
    }
    var_28 = **___stack_chk_guard;
    r20 = [[NSDictionary dictionaryWithObjects:&var_38 forKeys:&var_50 count:0x2] retain];
    [r19 class];
    r19 = [[NSString stringWithFormat:@"<%@: 0x%lx %@> "] retain];
    [r20 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)internalURL {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setInternalURL:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end