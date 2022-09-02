@implementation ADCAudioPlayerContext

-(void *)session {
    r0 = self->_session;
    return r0;
}

-(void *)playerID {
    r0 = self->_playerID;
    return r0;
}

-(void *)initWithMessage:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_50 super] initWithMessage:r19];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [ADCMessage numberValueFromMessage:r19 withKey:@"ad_session_id"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 == 0x0) {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAudioPlayerContext initWithMessage:]" line:0x31 withFormat:@"Tried obtain a container, but an invalid session id was passed"];
            }
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 sessionFromID];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r24 = r0;
            r29 = r29;
            r22 = [r0 retain];
            [r26 release];
            [r25 release];
            if (r22 != 0x0) {
                    objc_storeStrong((int64_t *)&r20->_session, r24);
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAudioPlayerContext initWithMessage:]" line:0x35 withFormat:@"No session with the given id has been registered"];
            }
            r0 = [r19 dict];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r24 = r0;
            r29 = r29;
            r23 = [r0 retain];
            [r25 release];
            if (r23 != 0x0) {
                    objc_storeStrong((int64_t *)&r20->_playerID, r24);
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAudioPlayerContext initWithMessage:]" line:0x3c withFormat:@"No audio player id found in message"];
            }
            r0 = [r20->_session objectForIdentifier:[r23 unsignedIntegerValue]];
            r24 = r0;
            r25 = [r0 retain];
            if (r25 != 0x0) {
                    objc_storeStrong((int64_t *)&r20->_player, r24);
            }
            [r25 release];
            [r23 release];
            [r22 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isValid:(bool)arg2 {
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = r0;
    if (arg2 == 0x0) goto loc_1001ddf28;

loc_1001ddefc:
    if (r21->_session == 0x0 || r21->_playerID == 0x0) goto loc_1001de0b8;

loc_1001ddf1c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_player));
    goto loc_1001ddf54;

loc_1001ddf54:
    if (*(r21 + r8) != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;

loc_1001de0b8:
    r0 = 0x0;
    return r0;

loc_1001ddf28:
    r0 = [r21 isPathAllowed];
    if ((r0 & 0x1) == 0x0) goto loc_1001ddf64;

loc_1001ddf3c:
    if (r21->_session == 0x0) goto loc_1001de0b8;

loc_1001ddf4c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerID));
    goto loc_1001ddf54;

loc_1001ddf64:
    r0 = [r21 filepath];
    r29 = r29;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r21 filepath];
            r29 = r29;
            r22 = [r0 retain];
            [NSString class];
            if (([r22 isKindOfClass:r2] & 0x1) != 0x0) {
                    r21 = [[r21 filepath] retain];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAudioPlayerContext isValid:]" line:0x51 withFormat:@"Invalid filepath supplied to AudioPlayer.create, it is not within the AdColony media or data directories: (%@)"];
                    [r21 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAudioPlayerContext isValid:]" line:0x51 withFormat:@"Invalid filepath supplied to AudioPlayer.create, it is not within the AdColony media or data directories: (%@)"];
            }
            [r22 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAudioPlayerContext isValid:]" line:0x51 withFormat:@"Invalid filepath supplied to AudioPlayer.create, it is not within the AdColony media or data directories: (%@)"];
    }
    [r19 release];
    goto loc_1001de0b8;
}

-(void *)player {
    r0 = self->_player;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_player, 0x0);
    objc_storeStrong((int64_t *)&self->_playerID, 0x0);
    objc_storeStrong((int64_t *)&self->_session, 0x0);
    return;
}

@end