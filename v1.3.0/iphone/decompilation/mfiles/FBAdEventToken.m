@implementation FBAdEventToken

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_token, 0x0);
    objc_storeStrong((int64_t *)&self->_tokenId, 0x0);
    return;
}

-(void *)initWithToken:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [NSUUID UUID];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_tokenId));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r21->_token, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)setTokenId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)tokenId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_tokenId)), 0x0);
    return r0;
}

-(void *)token {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_token)), 0x0);
    return r0;
}

-(void)setToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdEventToken");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

+(void *)deserializeFromSqlite:(struct sqlite3_stmt *)arg2 {
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
    r19 = arg2;
    if (*0x1011dd988 != -0x1) {
            dispatch_once_f(0x1011dd988, 0x1011c6d78, 0x100a3d91c);
    }
    r20 = (*0x1011dd990)(r19, 0x0);
    if (*0x1011dd988 != -0x1) {
            dispatch_once_f(0x1011dd988, 0x1011c6d78, 0x100a3d91c);
    }
    r21 = (*0x1011dd990)(r19, 0x1);
    if (r20 != 0x0 && r21 != 0x0) {
            r19 = [[NSString stringWithUTF8String:r21] retain];
            r0 = @class(NSString);
            r0 = [r0 stringWithUTF8String:r20];
            r29 = r29;
            r20 = [r0 retain];
            r21 = [[FBAdEventToken alloc] initWithToken:r19];
            r0 = [NSUUID alloc];
            r0 = [r0 initWithUUIDString:r20];
            r22 = r0;
            if (r0 != 0x0) {
                    [r21 setTokenId:r22];
            }
            else {
                    r23 = [[NSUUID UUID] retain];
                    [r21 setTokenId:r23];
                    [r23 release];
            }
            [r22 release];
            [r20 release];
    }
    else {
            r0 = [NSMutableDictionary new];
            r19 = r0;
            [r0 adnw_setNullStringIfNullCharPointer:r20 forKey:@"tokenId"];
            [r19 adnw_setNullStringIfNullCharPointer:r21 forKey:@"token"];
            [FBAdDebugLogging logDebugEventWithType:@"database" code:0x2 info:r19];
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

@end