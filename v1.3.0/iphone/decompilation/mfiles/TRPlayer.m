@implementation TRPlayer

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setDevicePlayerId:0x0];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithTRPlayerDictionary:(void *)arg2 {
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
    if (r20 != 0x0) {
            r22 = [[r19 notNullObjectForKey:@"message_hash"] retain];
            [r20 setMessageDictionary:r22];
            [r22 release];
            r0 = [r19 notNullObjectForKey:@"id"];
            r0 = [r0 retain];
            [r20 setDevicePlayerId:[r0 longValue]];
            [r0 release];
            r22 = [[TRSessionManager sharedManager] retain];
            r0 = [r19 notNullObjectForKey:@"server_to_server"];
            r0 = [r0 retain];
            [r22 setIsServerToServer:[r0 boolValue]];
            [r0 release];
            [r22 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)idfa {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [ASIdentifierManager sharedManager];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 advertisingIdentifier];
    r0 = [r0 retain];
    r21 = [[r0 UUIDString] retain];
    [r0 release];
    r0 = [r19 release];
    if (r21 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r21;
            }
            else {
                    r0 = *0x100e7d730;
            }
    }
    r19 = objc_retainAutoreleaseReturnValue(r0);
    [r21 release];
    r0 = r19;
    return r0;
}

-(void *)defaultMessageDictionary {
    r31 = r31 - 0xa0;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObjects:&var_48 forKeys:&var_88 count:0x8];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)messageForKey:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 messageDictionary];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 notNullObjectForKey:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r22 == 0x0) {
            r0 = [r20 defaultMessageDictionary];
            r0 = [r0 retain];
            r22 = [[r0 notNullObjectForKey:r2] retain];
            [r0 release];
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
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
    if (r20 != 0x0) {
            r21 = [[r19 decodeObjectForKey:@"TR Player Message Dictionary"] retain];
            [r20 setMessageDictionary:r21];
            [r21 release];
            [r20 setDevicePlayerId:[r19 decodeIntegerForKey:@"TR Player Player ID"]];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(long long)devicePlayerId {
    r0 = self->_devicePlayerId;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r22 = [arg2 retain];
    r21 = [[self messageDictionary] retain];
    [arg2 encodeObject:r21 forKey:@"TR Player Message Dictionary"];
    [r21 release];
    [arg2 encodeInteger:[self devicePlayerId] forKey:@"TR Player Player ID"];
    [r22 release];
    return;
}

-(void)setDevicePlayerId:(long long)arg2 {
    self->_devicePlayerId = arg2;
    return;
}

-(void *)messageDictionary {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_messageDictionary)), 0x0);
    return r0;
}

-(void *)offersDictionary {
    r0 = self->_offersDictionary;
    return r0;
}

-(void)setMessageDictionary:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setOffersDictionary:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_offersDictionary, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_offersDictionary, 0x0);
    objc_storeStrong((int64_t *)&self->_messageDictionary, 0x0);
    return;
}

@end