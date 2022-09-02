@implementation ANSMetadata

-(unsigned int)platformCode {
    return 0x1;
}

-(void *)unwrapBetaToken:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 componentsSeparatedByString:@":"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 count] == 0x2) {
            r0 = [r19 objectAtIndex:0x0];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isEqualToString:r2];
            [r0 release];
            r21 = 0x0;
            if (r22 != 0x0) {
                    r21 = [[r19 objectAtIndex:0x1] retain];
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(bool)computeIsJailbroken {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 fileExistsAtPath:r2];
    [r0 release];
    if ((r22 & 0x1) == 0x0) {
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 fileExistsAtPath:r2];
            [r0 release];
            if ((r22 & 0x1) == 0x0) {
                    r0 = [NSBundle mainBundle];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 objectForInfoDictionaryKey:@"SignerIdentity"];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r21 release];
                    if (r0 != 0x0) {
                            r0 = 0x1;
                    }
                    else {
                            r0 = [NSFileManager defaultManager];
                            r0 = [r0 retain];
                            r20 = [r0 fileExistsAtPath:r2];
                            [r0 release];
                            r0 = r20;
                    }
            }
            else {
                    r0 = 0x1;
            }
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void *)initWithFabric:(void *)arg2 betaToken:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [r19 APIKey];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_APIKey));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r21 unwrapBetaToken:r20];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_betaToken));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = sub_1000952d0();
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_buildVersion));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = sub_10009523c();
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_bundleIdentifier));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = sub_100095334();
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_displayVersion));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r19 executionIdentifier];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_executionIdentifier));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = sub_10009a270();
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_hostModel));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r19 installID];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_installationId));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r19 instanceIdentifier];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_instanceIdentifier));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r21->_isJailbroken = [r21 computeIsJailbroken];
            r0 = [NSLocale currentLocale];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 localeIdentifier];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_locale));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r22 release];
            r0 = [NSProcessInfo processInfo];
            r0 = [r0 retain];
            *(int32_t *)(int64_t *)&r21->_numberOfCores = [r0 processorCount];
            [r0 release];
            r0 = sub_10009a18c();
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_OSBuildVersion));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = sub_10009a224();
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_OSDisplayVersion));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [NSString stringWithUTF8String:"iOS"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_platform));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r22 = [r21 retain];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;
}

-(void *)eventName {
    objc_retainAutorelease(@"metadata");
    return @"metadata";
}

+(void *)ASManager {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = @class(NSString);
    r0 = [r0 stringWithFormat:@"%@%@%@"];
    r0 = [r0 retain];
    r19 = NSClassFromString(r0);
    [r0 release];
    r0 = @class(NSString);
    r0 = [r0 stringWithFormat:@"%@%@%@"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = NSSelectorFromString(r0);
    [r0 release];
    if ([r19 respondsToSelector:r2] != 0x0) {
            r0 = [r19 performSelector:r2];
            r0 = [r0 retain];
    }
    else {
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void)setValueInDictionary:(void *)arg2 withKey:(void *)arg3 toObject:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    if (r20 != 0x0) {
            [r19 setObject:r2 forKey:r3];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)APIKey {
    r0 = self->_APIKey;
    return r0;
}

-(void *)betaToken {
    r0 = self->_betaToken;
    return r0;
}

-(void *)buildVersion {
    r0 = self->_buildVersion;
    return r0;
}

-(void *)displayVersion {
    r0 = self->_displayVersion;
    return r0;
}

-(void *)bundleIdentifier {
    r0 = self->_bundleIdentifier;
    return r0;
}

-(void *)dictionaryRepresentationWithStartTime:(unsigned long long)arg2 {
    r20 = [[NSMutableDictionary dictionary] retain];
    r23 = [[NSString stringWithUTF8String:"Answers iOS SDK/1.4.0"] retain];
    [self setValueInDictionary:r20 withKey:@"generator" toObject:r23];
    [r23 release];
    r23 = [[self APIKey] retain];
    [self setValueInDictionary:r20 withKey:@"api_key" toObject:r23];
    [r23 release];
    r23 = [[self executionIdentifier] retain];
    [self setValueInDictionary:r20 withKey:@"session_id" toObject:r23];
    [r23 release];
    r22 = [[NSNumber numberWithUnsignedLongLong:arg2] retain];
    [self setValueInDictionary:r20 withKey:@"started_at" toObject:r22];
    [r22 release];
    r22 = [[self betaToken] retain];
    [self setValueInDictionary:r20 withKey:@"beta_tester_token" toObject:r22];
    [r22 release];
    r22 = [[self installationId] retain];
    [self setValueInDictionary:r20 withKey:@"install_id" toObject:r22];
    [r22 release];
    r23 = [[self hostModel] retain];
    [self setValueInDictionary:r20 withKey:@"model" toObject:r23];
    [r23 release];
    r22 = [[self hostModel] retain];
    [self setValueInDictionary:r20 withKey:@"machine" toObject:r22];
    [r22 release];
    r22 = [[self locale] retain];
    [self setValueInDictionary:r20 withKey:@"locale" toObject:r22];
    [r22 release];
    r22 = [[self OSBuildVersion] retain];
    [self setValueInDictionary:r20 withKey:@"os_build" toObject:r22];
    [r22 release];
    r22 = [[self OSDisplayVersion] retain];
    [self setValueInDictionary:r20 withKey:@"os_version" toObject:r22];
    [r22 release];
    r22 = [[self platform] retain];
    [self setValueInDictionary:r20 withKey:@"platform" toObject:r22];
    [r22 release];
    r22 = @class(NSNumber);
    r22 = [[r22 numberWithUnsignedInt:[self platformCode]] retain];
    [self setValueInDictionary:r20 withKey:@"platform_code" toObject:r22];
    [r22 release];
    r22 = @class(NSNumber);
    r22 = [[r22 numberWithUnsignedInt:[self numberOfCores]] retain];
    [self setValueInDictionary:r20 withKey:@"cores" toObject:r22];
    [r22 release];
    r22 = @class(NSNumber);
    r22 = [[r22 numberWithBool:[self isJailbroken]] retain];
    [self setValueInDictionary:r20 withKey:@"jailbroken" toObject:r22];
    [r22 release];
    r22 = [[self bundleIdentifier] retain];
    [self setValueInDictionary:r20 withKey:@"bundle_id" toObject:r22];
    [r22 release];
    r22 = [[self buildVersion] retain];
    [self setValueInDictionary:r20 withKey:@"bundle_version" toObject:r22];
    [r22 release];
    r22 = [[self displayVersion] retain];
    [self setValueInDictionary:r20 withKey:@"bundle_short_version" toObject:r22];
    [r22 release];
    r22 = [[self instanceIdentifier] retain];
    [self setValueInDictionary:r20 withKey:@"instance_id" toObject:r22];
    [r22 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)executionIdentifier {
    r0 = self->_executionIdentifier;
    return r0;
}

-(void *)installationId {
    r0 = self->_installationId;
    return r0;
}

-(void *)hostModel {
    r0 = self->_hostModel;
    return r0;
}

-(void *)instanceIdentifier {
    r0 = self->_instanceIdentifier;
    return r0;
}

-(bool)isJailbroken {
    r0 = *(int8_t *)(int64_t *)&self->_isJailbroken;
    return r0;
}

-(void *)locale {
    r0 = self->_locale;
    return r0;
}

-(unsigned int)numberOfCores {
    r0 = *(int32_t *)(int64_t *)&self->_numberOfCores;
    return r0;
}

-(void *)OSBuildVersion {
    r0 = self->_OSBuildVersion;
    return r0;
}

-(void *)OSDisplayVersion {
    r0 = self->_OSDisplayVersion;
    return r0;
}

-(void *)platform {
    r0 = self->_platform;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_platform, 0x0);
    objc_storeStrong((int64_t *)&self->_OSDisplayVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_OSBuildVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_locale, 0x0);
    objc_storeStrong((int64_t *)&self->_instanceIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_installationId, 0x0);
    objc_storeStrong((int64_t *)&self->_hostModel, 0x0);
    objc_storeStrong((int64_t *)&self->_executionIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_displayVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_bundleIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_buildVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_betaToken, 0x0);
    objc_storeStrong((int64_t *)&self->_APIKey, 0x0);
    return;
}

@end