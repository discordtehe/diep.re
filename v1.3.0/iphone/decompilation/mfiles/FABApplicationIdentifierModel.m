@implementation FABApplicationIdentifierModel

-(void *)initWithInstallID:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0 && [r20 computeExecutableInfo] != 0x0) {
            if ([r20 computeInstanceIdentifier] != 0x0) {
                    r0 = [r19 copy];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_installID));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = sub_10009523c();
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_bundleIdentifier));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r21 = [r20 retain];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)minimumSDKString {
    r0 = loc_1000a31f0((int64_t *)&self->_minimumSDK, _cmd);
    return r0;
}

-(void *)builtSDKString {
    r0 = (int64_t *)&self->_builtSDK;
    if (r0 != 0x0) {
            r0 = [NSString stringWithFormat:@"%d.%d.%d"];
            r0 = [r0 retain];
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void *)icon {
    r0 = [FABAppIconUtility alloc];
    r0 = [r0 init];
    r20 = [[r0 applicationIcon] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)computeExecutableInfo {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = sub_1000a2ce4(&stack[-72]);
    if (r0 != 0x0) {
            [[[NSMutableDictionary dictionary] retain] retain];
            sub_1000a2e08(&stack[-72]);
            sub_1000a2dc4(&stack[-72]);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_architectureUUIDMap));
            r21 = *(r19 + r8);
            *(r19 + r8) = r20;
            r19 = [r20 retain];
            [r21 release];
            [r20 release];
            [r19 release];
            r0 = 0x1;
    }
    return r0;
}

-(void *)architectureUUIDMap {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_architectureUUIDMap)), 0x0);
    return r0;
}

-(bool)computeInstanceIdentifier {
    r31 = r31 - 0x140;
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
    r19 = self;
    r20 = [[NSMutableString string] retain];
    r0 = r19->_architectureUUIDMap;
    r0 = [r0 allKeys];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 sortedArrayUsingSelector:@selector(compare:)];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    var_120 = r21;
    r23 = objc_msgSend(r21, r1);
    if (r23 != 0x0) {
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_120);
                            }
                            r27 = *(0x0 + r21 * 0x8);
                            r0 = [r19 architectureUUIDMap];
                            r0 = [r0 retain];
                            r0 = [r0 objectForKey:r27];
                            r29 = r29;
                            [r0 retain];
                            [r20 appendString:r2];
                            [r27 release];
                            [r28 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r23);
                    r23 = objc_msgSend(var_120, var_128);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    r0 = [r20 dataUsingEncoding:0x4];
    r0 = [r0 retain];
    r21 = r0;
    r0 = sub_100096948(r0);
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_instanceIdentifier));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setArchitectureUUIDMap:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)installID {
    r0 = self->_installID;
    return r0;
}

-(void *)bundleIdentifier {
    r0 = self->_bundleIdentifier;
    return r0;
}

-(void *)instanceIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_instanceIdentifier)), 0x0);
    return r0;
}

-(void)setInstanceIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(union ?)builtSDK {
    r0 = self->_builtSDK;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_instanceIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_bundleIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_installID, 0x0);
    objc_storeStrong((int64_t *)&self->_architectureUUIDMap, 0x0);
    return;
}

-(union ?)minimumSDK {
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_minimumSDK)));
    return r0;
}

@end