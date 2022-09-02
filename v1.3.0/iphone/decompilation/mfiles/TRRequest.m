@implementation TRRequest

-(void)addRealtimeParameters {
    return;
}

-(void)buildPersistedPayload {
    [self addVersion];
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = [[NSMutableDictionary dictionary] retain];
            [r19 setRequestPayload:r20];
            [r20 release];
            [r19 setHttpType:0x1];
            [r19 setCanQueue:0x1];
            [r19 setShouldLog:0x1];
            [r19 buildPersistedPayload];
    }
    r0 = r19;
    return r0;
}

-(bool)shouldForceRemoveFromQueue {
    return 0x0;
}

-(void)handleResponseObject:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r22 = self;
    r0 = [arg2 notNullObjectForKey:@"response_payload"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 == 0x0) goto loc_100422b5c;

loc_100422a08:
    r20 = [[NSData alloc] initWithBase64EncodedString:r19 options:0x0];
    r0 = [TR_RNDecryptor decryptData:r20 withPassword:*0x100e7d668 error:&var_48];
    r29 = r29;
    r21 = [r0 retain];
    r23 = [var_48 retain];
    if (r23 == 0x0) goto loc_100422afc;

loc_100422a7c:
    if ((*0x100be01b0 & 0x1) == 0x0) goto loc_100422b44;

loc_100422a8c:
    r25 = [[r23 localizedDescription] retain];
    [TR_DDLog log:0x0 level:*0x100be01b0 flag:0x1 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/Models/Requests/TRRequest.m" function:"-[TRRequest handleResponseObject:]" line:0x56 tag:0x0 format:@"Decryption Error: %@"];
    r0 = r25;
    goto loc_100422b40;

loc_100422b40:
    [r0 release];
    goto loc_100422b44;

loc_100422b44:
    [r21 release];
    [r23 release];
    [r20 release];
    goto loc_100422b5c;

loc_100422b5c:
    [r19 release];
    return;

loc_100422afc:
    r24 = [[NSJSONSerialization JSONObjectWithData:r21 options:0x0 error:0x0] retain];
    [r22 setResponsePayload:r24];
    r0 = r24;
    goto loc_100422b40;
}

-(void)addDevicePlayerId {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self requestPayload];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 == 0x0) {
            r19 = [[r19 requestPayload] retain];
            r0 = [TRSessionManager sharedManager];
            r0 = [r0 retain];
            r0 = [r0 player];
            r0 = [r0 retain];
            [[NSNumber numberWithLong:[r0 devicePlayerId]] retain];
            [r19 setObject:r2 forKey:r3];
            [r20 release];
            [r22 release];
            [r21 release];
            [r19 release];
    }
    return;
}

-(void *)encryptedPayload {
    r31 = r31 - 0x100;
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
    [self addRealtimeParameters];
    r21 = [[self requestPayload] retain];
    r19 = [[NSMutableDictionary dictionaryWithDictionary:r21] retain];
    [r21 release];
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    r20 = [[NSNumber numberWithDouble:r21] retain];
    [r19 setObject:r20 forKey:@"timestamp"];
    [r20 release];
    [r0 release];
    r20 = [[NSJSONSerialization dataWithJSONObject:r19 options:0x0 error:0x0] retain];
    memcpy(&stack[-216], 0x100be0140, 0x68);
    r0 = [TR_RNEncryptor encryptData:r20 withSettings:&stack[-216] password:*0x100e7d668 error:&saved_fp - 0x60];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r22 = [0x0 retain];
    if (r22 != 0x0) {
            if ((*0x100be01b0 & 0x1) != 0x0) {
                    r25 = [[r22 localizedDescription] retain];
                    [TR_DDLog log:0x0 level:*0x100be01b0 flag:0x1 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/Models/Requests/TRRequest.m" function:"-[TRRequest encryptedPayload]" line:0x42 tag:0x0 format:@"Encryption Error: %@"];
                    [r25 release];
            }
            r23 = 0x0;
    }
    else {
            r24 = [[r21 base64EncodedStringWithOptions:0x0] retain];
            r23 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            [r24 release];
    }
    var_48 = **___stack_chk_guard;
    [r21 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r23 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)addAppSessionID {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self requestPayload];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 == 0x0) {
            r19 = [[r19 requestPayload] retain];
            r0 = [TRSessionManager sharedManager];
            r0 = [r0 retain];
            r0 = [r0 appSession];
            r0 = [r0 retain];
            [[NSNumber numberWithLong:[r0 appSessionID]] retain];
            [r19 setObject:r2 forKey:r3];
            [r20 release];
            [r22 release];
            [r21 release];
            [r19 release];
    }
    return;
}

-(void)addUserIdentifier {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r0 = [TRSessionManager sharedManager];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 userIdentifier];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r23 release];
    if (r19 != 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0) {
            r0 = [r22 requestPayload];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r24 release];
            if (r0 == 0x0) {
                    r22 = [[r22 requestPayload] retain];
                    r0 = @class(TRSessionManager);
                    r0 = [r0 sharedManager];
                    r0 = [r0 retain];
                    [[r0 userIdentifier] retain];
                    [r22 setObject:r2 forKey:r3];
                    [r21 release];
                    [r20 release];
                    [r22 release];
            }
    }
    [r19 release];
    return;
}

-(void)addTriggeredAt {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self requestPayload];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 == 0x0) {
            r19 = [[r19 requestPayload] retain];
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [[NSNumber numberWithDouble:@"triggered_at"] retain];
            [r19 setObject:r2 forKey:r3];
            [r20 release];
            [r21 release];
            [r19 release];
    }
    return;
}

-(void)addVersion {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self requestPayload];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 == 0x0) {
            r0 = [r19 requestPayload];
            r0 = [r0 retain];
            [r0 setObject:r2 forKey:r3];
            [r19 release];
    }
    return;
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
            r22 = [[r19 decodeObjectForKey:@"TR Request Name"] retain];
            [r20 setName:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"TR Request Relative URL Key"] retain];
            [r20 setRelativeURL:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"TR Request Meta Dict Key"] retain];
            [r20 setRequestPayload:r22];
            [r22 release];
            r2 = @"TR Request HTTP Type";
            r0 = [r19 decodeObjectForKey:r2];
            r0 = [r0 retain];
            r21 = r0;
            [r0 intValue];
            asm { sxtw       x2, w0 };
            [r20 setHttpType:r2];
            [r21 release];
            [r20 setCanQueue:[r19 decodeBoolForKey:@"TR Request Can Queue"]];
            [r20 setShouldLog:[r19 decodeBoolForKey:@"TR Request Should Log"]];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)name {
    r0 = self->_name;
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_name, arg2);
    return;
}

-(void *)relativeURL {
    r0 = self->_relativeURL;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    r23 = [[self name] retain];
    [arg2 encodeObject:r23 forKey:@"TR Request Name"];
    [r23 release];
    r23 = [[self relativeURL] retain];
    [arg2 encodeObject:r23 forKey:@"TR Request Relative URL Key"];
    [r23 release];
    r23 = [[self requestPayload] retain];
    [arg2 encodeObject:r23 forKey:@"TR Request Meta Dict Key"];
    [r23 release];
    r23 = [[NSNumber numberWithInteger:[self httpType]] retain];
    [arg2 encodeObject:r23 forKey:@"TR Request HTTP Type"];
    [r23 release];
    [arg2 encodeBool:[self canQueue] forKey:@"TR Request Can Queue"];
    [arg2 encodeBool:[self shouldLog] forKey:@"TR Request Should Log"];
    [r20 release];
    return;
}

-(void)setRelativeURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_relativeURL, arg2);
    return;
}

-(void *)requestPayload {
    r0 = self->_requestPayload;
    return r0;
}

-(void)setRequestPayload:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_requestPayload, arg2);
    return;
}

-(long long)httpType {
    r0 = self->_httpType;
    return r0;
}

-(void)setHttpType:(long long)arg2 {
    self->_httpType = arg2;
    return;
}

-(void *)responsePayload {
    r0 = self->_responsePayload;
    return r0;
}

-(void)setResponsePayload:(void *)arg2 {
    self->_responsePayload = arg2;
    return;
}

-(bool)canQueue {
    r0 = *(int8_t *)(int64_t *)&self->_canQueue;
    return r0;
}

-(void)setCanQueue:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_canQueue = arg2;
    return;
}

-(void)setShouldLog:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldLog = arg2;
    return;
}

-(bool)shouldLog {
    r0 = *(int8_t *)(int64_t *)&self->_shouldLog;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_requestPayload, 0x0);
    objc_storeStrong((int64_t *)&self->_relativeURL, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    return;
}

@end