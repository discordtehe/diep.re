@implementation ADCMessage

-(void *)initFromDict:(void *)arg2 typeOverride:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [self initFromDict:r21];
    [r21 release];
    if (r20 != 0x0) {
            [r20 setType:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initFromDict:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            [NSDictionary class];
            if ([r19 isKindOfClass:r2] != 0x0 && ([NSJSONSerialization isValidJSONObject:r19] & 0x1) == 0x0) {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCMessage initFromDict:]" line:0x29 withFormat:@"ADCMessage dictionaries must only contain NSString, NSNumber, NSArray, NSDictionary, or NSNull; received dictionary: %@"];
                    r21 = 0x0;
            }
            else {
                    r20 = [[r20 initFromSafeDict:r19] retain];
                    r21 = r20;
            }
    }
    else {
            r20 = [[r20 initFromSafeDict:r19] retain];
            r21 = r20;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)messageReplyWithDict:(void *)arg2 {
    r0 = [arg2 mutableCopy];
    [r0 setObject:@"reply" forKeyedSubscript:@"m_type"];
    r23 = @class(NSNumber);
    r23 = [[r23 numberWithInt:[self target]] retain];
    [r0 setObject:r23 forKeyedSubscript:@"m_origin"];
    [r23 release];
    r23 = @class(NSNumber);
    r23 = [[r23 numberWithInt:[self origin]] retain];
    [r0 setObject:r23 forKeyedSubscript:@"m_target"];
    [r23 release];
    r21 = [[NSNumber numberWithInt:[self identifier]] retain];
    [r0 setObject:r21 forKeyedSubscript:@"m_id"];
    [r21 release];
    r20 = [[ADCMessage alloc] initFromDict:r0];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)initFromJSONObjectString:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r23 = [[r0 dataUsingEncoding:0x4] retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r23 options:0x0 error:&var_38];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r22 = [var_38 retain];
    [r23 release];
    if (r21 != 0x0) {
            asm { ccmp       x22, #0x0, #0x0, ne };
    }
    if (CPU_FLAGS & E) goto loc_1002001a0;

loc_10020013c:
    r24 = [[r22 localizedDescription] retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCMessage initFromJSONObjectString:]" line:0x3f withFormat:@"Input string resulted in JSON parse error: %@; received string: %@"];
    [r24 release];
    goto loc_100200218;

loc_100200218:
    r23 = 0x0;
    r24 = 0x0;
    goto loc_100200220;

loc_100200220:
    [r21 release];
    [r22 release];
    if (r24 != 0x0) {
            r20 = [[r20 initFromSafeDict:r23] retain];
            r21 = r20;
    }
    else {
            r21 = 0x0;
    }
    [r23 release];
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_1002001a0:
    [NSDictionary class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_1002001e0;

loc_1002001cc:
    r23 = [r21 retain];
    r24 = 0x1;
    goto loc_100200220;

loc_1002001e0:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCMessage initFromJSONObjectString:]" line:0x44 withFormat:@"Input string must represent a JSON object, not array or anything else; received string: %@"];
    goto loc_100200218;
}

+(void *)nativeMessageWithType:(void *)arg2 contents:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r20 = [[self nativeMessageWithType:r21 identifier:[r0 nextNativeMessageID] contents:r19] retain];
    [r19 release];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)nativeMessageWithType:(void *)arg2 identifier:(unsigned long long)arg3 contents:(void *)arg4 {
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
    r19 = [arg2 retain];
    r0 = [arg4 mutableCopy];
    r20 = r0;
    [r0 setObject:r19 forKeyedSubscript:@"m_type"];
    r24 = [@(0x0) retain];
    [r20 setObject:r24 forKeyedSubscript:@"m_origin"];
    [r24 release];
    r23 = [[NSNumber numberWithUnsignedInteger:arg3] retain];
    [r20 setObject:r23 forKeyedSubscript:@"m_id"];
    [r23 release];
    r0 = [r20 objectForKeyedSubscript:@"m_target"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r22 = [@(0x1) retain];
            [r20 setObject:r22 forKeyedSubscript:@"m_target"];
            [r22 release];
    }
    r21 = [[ADCMessage alloc] initFromDict:r20 typeOverride:r19];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)controllerCustomMessageWithContent:(void *)arg2 {
    r0 = [self controllerMessageWithType:@"CustomMessage.controller_send" contents:arg2];
    return r0;
}

+(void *)controllerMessageWithType:(void *)arg2 contents:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r20 = [[self controllerMessageWithType:r21 identifier:[r0 nextNativeMessageID] contents:r19] retain];
    [r19 release];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)nativeCustomMessageWithContent:(void *)arg2 {
    r0 = [self controllerMessageWithType:@"CustomMessage.native_send" contents:arg2];
    return r0;
}

-(void)send {
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    [r0 sendMessage:self];
    [r0 release];
    return;
}

+(void *)controllerMessageWithType:(void *)arg2 identifier:(unsigned long long)arg3 contents:(void *)arg4 {
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
    r19 = [arg2 retain];
    r0 = [arg4 mutableCopy];
    r20 = r0;
    [r0 setObject:r19 forKeyedSubscript:@"m_type"];
    r24 = [@(0x1) retain];
    [r20 setObject:r24 forKeyedSubscript:@"m_origin"];
    [r24 release];
    r23 = [[NSNumber numberWithUnsignedInteger:arg3] retain];
    [r20 setObject:r23 forKeyedSubscript:@"m_id"];
    [r23 release];
    r0 = [r20 objectForKeyedSubscript:@"m_target"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r22 = [@(0x0) retain];
            [r20 setObject:r22 forKeyedSubscript:@"m_target"];
            [r22 release];
    }
    r21 = [[ADCMessage alloc] initFromDict:r20 typeOverride:r19];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)messagesFromJSONArray:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = [[NSMutableArray arrayWithCapacity:[r0 count]] retain];
    r0 = [r0 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r26 = *(0x0 + r21 * 0x8);
                            r26 = [[ADCMessage alloc] initFromDict:r26];
                            if (r26 != 0x0) {
                                    [r19 addObject:r2];
                            }
                            [r26 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r22);
                    r22 = objc_msgSend(r20, var_120);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)messageFromIncomingDict:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[ADCMessage alloc] initFromDict:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)messagesFromJSONArrayString:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_100200c98;

loc_100200bc0:
    r23 = [[r19 dataUsingEncoding:0x4] retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r23 options:0x0 error:&var_40];
    r29 = r29;
    r21 = [r0 retain];
    r22 = [var_40 retain];
    [r23 release];
    if (r21 != 0x0) {
            asm { ccmp       x22, #0x0, #0x0, ne };
    }
    if (CPU_FLAGS & E) goto loc_100200cc4;

loc_100200c34:
    r0 = [r22 localizedDescription];
    r29 = r29;
    r24 = [r0 retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"+[ADCMessage messagesFromJSONArrayString:]" line:0xa9 withFormat:@"Invalid input string: resulted in JSON parse error: %@"];
    [r24 release];
    goto loc_100200d3c;

loc_100200d3c:
    r23 = 0x0;
    r24 = 0x0;
    goto loc_100200d44;

loc_100200d44:
    [r21 release];
    [r22 release];
    if (r24 != 0x0) {
            r20 = [[r20 messagesFromJSONArray:r23] retain];
    }
    else {
            r20 = 0x0;
    }
    [r23 release];
    goto loc_100200df0;

loc_100200df0:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_100200cc4:
    [NSArray class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_100200d04;

loc_100200cf0:
    r23 = [r21 retain];
    r24 = 0x1;
    goto loc_100200d44;

loc_100200d04:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"+[ADCMessage messagesFromJSONArrayString:]" line:0xae withFormat:@"Input string must represent a JSON array, not an object or anything else; received string: %@"];
    goto loc_100200d3c;

loc_100200c98:
    r0 = [NSArray arrayWithObjects:&stack[-72] count:0x0];
    r20 = [r0 retain];
    goto loc_100200df0;
}

+(void *)dictionaryFromMessage:(void *)arg2 {
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
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [r19 dict];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [r19 dict];
                    r29 = r29;
                    r23 = [r0 retain];
                    r22 = [NSJSONSerialization isValidJSONObject:r23];
                    [r23 release];
                    [r21 release];
                    if (r22 != 0x0) {
                            r20 = [[r19 dict] retain];
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
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)arrayFromMessages:(void *)arg2 {
    r31 = r31 - 0x160;
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
    r21 = [arg2 retain];
    r0 = [NSArray arrayWithObjects:&stack[-240] count:0x0];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r0 = [r21 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r0;
    var_140 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_128);
                            }
                            r25 = *(0x0 + r28 * 0x8);
                            r0 = [r19 dictionaryFromMessage:r25];
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 != 0x0) {
                                    r0 = [r20 arrayByAddingObject:r2];
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    [r20 release];
                                    r20 = r25;
                            }
                            else {
                                    r0 = [r25 dict];
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"+[ADCMessage arrayFromMessages:]" line:0xcc withFormat:@"Tried to parse invalid JSON: %@"];
                                    [r25 release];
                            }
                            [r24 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r23 = objc_msgSend(var_128, var_140);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_128 release];
    [var_128 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)stringValueFromMessage:(void *)arg2 withKey:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [[arg2 dict] retain];
    [r21 release];
    r19 = [[r20 objectForKeyedSubscript:arg3] retain];
    [r23 release];
    [r20 release];
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r19 retain];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)stringFromMessages:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self arrayFromMessages:r19];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (([NSJSONSerialization isValidJSONObject:r21] & 0x1) == 0x0) goto loc_1002012b4;

loc_1002011ec:
    r0 = [NSJSONSerialization dataWithJSONObject:r21 options:0x0 error:&var_38];
    r29 = r29;
    r20 = [r0 retain];
    r22 = [var_38 retain];
    if (r20 != 0x0) {
            asm { ccmp       x22, #0x0, #0x0, ne };
    }
    if (CPU_FLAGS & E) goto loc_100201304;

loc_100201234:
    r24 = [[r22 localizedDescription] retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"+[ADCMessage stringFromMessages:]" line:0xe0 withFormat:@"Invalid input array: %@ resulted in serialization error: %@"];
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    r22 = 0x0;
    goto loc_100201348;

loc_100201348:
    [r19 release];
    r0 = [r22 autorelease];
    return r0;

loc_100201304:
    [r22 release];
    [r21 release];
    r22 = [[NSString alloc] initWithData:r20 encoding:0x4];
    r0 = r20;
    goto loc_100201344;

loc_100201344:
    [r0 release];
    goto loc_100201348;

loc_1002012b4:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"+[ADCMessage stringFromMessages:]" line:0xd9 withFormat:@"Tried to parse invalid JSON: %@"];
    r22 = @"";
    [r22 retain];
    r0 = r21;
    goto loc_100201344;
}

-(void *)initFromSafeDict:(void *)arg2 {
    r31 = r31 - 0xb0;
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
    r29 = &saved_fp;
    r21 = [arg2 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r20 == 0x0) goto loc_1001ffe6c;

loc_1001ff5b8:
    r0 = [NSDictionary alloc];
    var_70 = r21;
    r19 = [r0 initWithDictionary:r21 copyItems:0x1];
    [r20 setDict:r19];
    [r19 release];
    r0 = [r20 dict];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r20 dict];
            r29 = r29;
            r23 = [r0 retain];
            [NSDictionary class];
            if (([r23 isKindOfClass:r2] & 0x1) != 0x0) {
                    r0 = [r20 dict];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r25 = [r0 retain];
                    if (r25 != 0x0) {
                            r27 = @selector(isKindOfClass:);
                            r0 = [r20 dict];
                            r0 = [r0 retain];
                            var_68 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r26 = [r0 retain];
                            [NSString class];
                            if (objc_msgSend(r26, r27) != 0x0) {
                                    r0 = [r20 dict];
                                    r0 = [r0 retain];
                                    r19 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r27 = [r0 retain];
                                    [r20 setType:r27];
                                    [r27 release];
                                    [r19 release];
                            }
                            else {
                                    r19 = @selector(class);
                                    [r20 setType:@""];
                            }
                            [r26 release];
                            [var_68 release];
                            [r25 release];
                    }
                    else {
                            r19 = @selector(class);
                            [r20 setType:@""];
                    }
                    [r24 release];
            }
            else {
                    r19 = @selector(class);
                    [r20 setType:@""];
            }
            [r23 release];
    }
    else {
            [r20 setType:@""];
    }
    [r22 release];
    r0 = [r20 dict];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1001ff958;

loc_1001ff820:
    r0 = [r20 dict];
    r29 = r29;
    r24 = [r0 retain];
    [NSDictionary class];
    r0 = [r24 isKindOfClass:r2];
    var_78 = r24;
    if (r0 == 0x0) goto loc_1001ff968;

loc_1001ff86c:
    r0 = [r20 dict];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    var_80 = r25;
    if (r0 == 0x0) goto loc_1001ffebc;

loc_1001ff8ac:
    r22 = @selector(isKindOfClass:);
    var_88 = r0;
    r0 = [r20 dict];
    r0 = [r0 retain];
    var_90 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r24 = [r0 retain];
    [NSNumber class];
    var_98 = r24;
    if (objc_msgSend(r24, r22) == 0x0) goto loc_1001ffef8;

loc_1001ff90c:
    r0 = [r20 dict];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r27 = [r0 retain];
    r24 = 0x0;
    r25 = 0x1;
    r28 = 0x1;
    r26 = 0x1;
    r22 = 0x1;
    goto loc_1001ff9a0;

loc_1001ff9a0:
    [r27 intValue];
    [r20 setTarget:r2];
    if (r24 == 0x0) {
            if (r22 == 0x0) {
                    if (r26 == 0x0) {
                            if (r28 == 0x0) {
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                            else {
                                    [var_88 release];
                                    [var_80 release];
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                    }
                    else {
                            [var_98 release];
                            [var_90 release];
                            if (r28 != 0x0) {
                                    [var_88 release];
                                    [var_80 release];
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                            else {
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                    }
            }
            else {
                    [r27 release];
                    [r19 release];
                    if (r26 != 0x0) {
                            [var_98 release];
                            [var_90 release];
                            if (r28 != 0x0) {
                                    [var_88 release];
                                    [var_80 release];
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                            else {
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                    }
                    else {
                            if (r28 == 0x0) {
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                            else {
                                    [var_88 release];
                                    [var_80 release];
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                    }
            }
    }
    else {
            [r27 release];
            if (r22 != 0x0) {
                    [r27 release];
                    [r19 release];
                    if (r26 != 0x0) {
                            [var_98 release];
                            [var_90 release];
                            if (r28 != 0x0) {
                                    [var_88 release];
                                    [var_80 release];
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                            else {
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                    }
                    else {
                            if (r28 == 0x0) {
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                            else {
                                    [var_88 release];
                                    [var_80 release];
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                    }
            }
            else {
                    if (r26 == 0x0) {
                            if (r28 == 0x0) {
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                            else {
                                    [var_88 release];
                                    [var_80 release];
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                    }
                    else {
                            [var_98 release];
                            [var_90 release];
                            if (r28 != 0x0) {
                                    [var_88 release];
                                    [var_80 release];
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                            else {
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                    }
            }
    }
    [r23 release];
    r0 = [r20 dict];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1001ffb90;

loc_1001ffa08:
    r0 = [r20 dict];
    r29 = r29;
    r22 = [r0 retain];
    [NSDictionary class];
    r0 = [r22 isKindOfClass:r2];
    var_78 = r22;
    if (r0 == 0x0) goto loc_1001ffba0;

loc_1001ffa58:
    r0 = [r20 dict];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    var_80 = r24;
    if (r0 == 0x0) goto loc_1001ffed0;

loc_1001ffa98:
    r27 = @selector(isKindOfClass:);
    var_88 = r0;
    r0 = [r20 dict];
    r0 = [r0 retain];
    var_90 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r22 = [r0 retain];
    [NSNumber class];
    var_98 = r22;
    if (objc_msgSend(r22, r27) == 0x0) goto loc_1001fff08;

loc_1001ffaf8:
    r0 = [r20 dict];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r27 = [r0 retain];
    r24 = 0x0;
    r25 = 0x1;
    r28 = 0x1;
    r26 = 0x1;
    r22 = 0x1;
    goto loc_1001ffbd8;

loc_1001ffbd8:
    [r20 setOrigin:[r27 intValue]];
    if (r24 == 0x0) {
            if (r22 == 0x0) {
                    if (r26 == 0x0) {
                            if (r28 == 0x0) {
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                            else {
                                    [var_88 release];
                                    [var_80 release];
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                    }
                    else {
                            [var_98 release];
                            [var_90 release];
                            if (r28 != 0x0) {
                                    [var_88 release];
                                    [var_80 release];
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                            else {
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                    }
            }
            else {
                    [r27 release];
                    [r19 release];
                    if (r26 != 0x0) {
                            [var_98 release];
                            [var_90 release];
                            if (r28 != 0x0) {
                                    [var_88 release];
                                    [var_80 release];
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                            else {
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                    }
                    else {
                            if (r28 == 0x0) {
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                            else {
                                    [var_88 release];
                                    [var_80 release];
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                    }
            }
    }
    else {
            [r27 release];
            if (r22 != 0x0) {
                    [r27 release];
                    [r19 release];
                    if (r26 != 0x0) {
                            [var_98 release];
                            [var_90 release];
                            if (r28 != 0x0) {
                                    [var_88 release];
                                    [var_80 release];
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                            else {
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                    }
                    else {
                            if (r28 == 0x0) {
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                            else {
                                    [var_88 release];
                                    [var_80 release];
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                    }
            }
            else {
                    if (r26 == 0x0) {
                            if (r28 == 0x0) {
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                            else {
                                    [var_88 release];
                                    [var_80 release];
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                    }
                    else {
                            [var_98 release];
                            [var_90 release];
                            if (r28 != 0x0) {
                                    [var_88 release];
                                    [var_80 release];
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                            else {
                                    if (r25 != 0x0) {
                                            [var_78 release];
                                    }
                            }
                    }
            }
    }
    [r23 release];
    r0 = [r20 dict];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1001ffdbc;

loc_1001ffc38:
    r0 = [r20 dict];
    r29 = r29;
    r24 = [r0 retain];
    [NSDictionary class];
    if ([r24 isKindOfClass:r2] == 0x0) goto loc_1001ffdcc;

loc_1001ffc84:
    r0 = [r20 dict];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    var_78 = r22;
    if (r0 == 0x0) goto loc_1001ffee4;

loc_1001ffcc4:
    r27 = @selector(isKindOfClass:);
    var_80 = r0;
    r0 = [r20 dict];
    r0 = [r0 retain];
    var_88 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r22 = [r0 retain];
    [NSNumber class];
    var_90 = r22;
    if (objc_msgSend(r22, r27) == 0x0) goto loc_1001fff18;

loc_1001ffd24:
    r0 = [r20 dict];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [[r0 objectForKeyedSubscript:r2] retain];
    r26 = 0x0;
    r25 = 0x1;
    r27 = 0x1;
    r28 = 0x1;
    r22 = 0x1;
    goto loc_1001ffe04;

loc_1001ffe04:
    [r20 setIdentifier:[r21 intValue]];
    if (r26 == 0x0) {
            if (r22 == 0x0) {
                    if (r28 != 0x0) {
                            [var_90 release];
                            [var_88 release];
                    }
            }
            else {
                    [r21 release];
                    [r19 release];
                    if (r28 != 0x0) {
                            [var_90 release];
                            [var_88 release];
                    }
            }
    }
    else {
            [r21 release];
            if (r22 != 0x0) {
                    [r21 release];
                    [r19 release];
                    if (r28 != 0x0) {
                            [var_90 release];
                            [var_88 release];
                    }
            }
            else {
                    if (r28 != 0x0) {
                            [var_90 release];
                            [var_88 release];
                    }
            }
    }
    r21 = var_70;
    if (r27 != 0x0) {
            [var_80 release];
            [var_78 release];
    }
    if (r25 != 0x0) {
            [r24 release];
    }
    [r23 release];
    goto loc_1001ffe6c;

loc_1001ffe6c:
    [r21 release];
    r0 = r20;
    return r0;

loc_1001fff18:
    r19 = @selector(class);
    r25 = 0x1;
    r27 = 0x1;
    r28 = 0x1;
    goto loc_1001ffdd8;

loc_1001ffdd8:
    r21 = [[NSNumber numberWithInt:r2] retain];
    r22 = 0x0;
    r26 = 0x1;
    goto loc_1001ffe04;

loc_1001ffee4:
    r19 = @selector(class);
    var_80 = 0x0;
    r28 = 0x0;
    r25 = 0x1;
    r27 = 0x1;
    goto loc_1001ffdd8;

loc_1001ffdcc:
    r19 = @selector(class);
    r27 = 0x0;
    r28 = 0x0;
    r25 = 0x1;
    goto loc_1001ffdd8;

loc_1001ffdbc:
    r25 = 0x0;
    r27 = 0x0;
    r28 = 0x0;
    goto loc_1001ffdd8;

loc_1001fff08:
    r19 = @selector(class);
    r25 = 0x1;
    r28 = 0x1;
    r26 = 0x1;
    goto loc_1001ffbac;

loc_1001ffbac:
    r0 = [NSNumber numberWithInt:r2];
    r29 = r29;
    r27 = [r0 retain];
    r22 = 0x0;
    r24 = 0x1;
    goto loc_1001ffbd8;

loc_1001ffed0:
    r19 = @selector(class);
    var_88 = 0x0;
    r26 = 0x0;
    r25 = 0x1;
    r28 = 0x1;
    goto loc_1001ffbac;

loc_1001ffba0:
    r19 = @selector(class);
    r28 = 0x0;
    r26 = 0x0;
    r25 = 0x1;
    goto loc_1001ffbac;

loc_1001ffb90:
    r25 = 0x0;
    r28 = 0x0;
    r26 = 0x0;
    goto loc_1001ffbac;

loc_1001ffef8:
    r19 = @selector(class);
    r25 = 0x1;
    r28 = 0x1;
    r26 = 0x1;
    goto loc_1001ff974;

loc_1001ff974:
    r0 = [NSNumber numberWithInt:r2];
    r29 = r29;
    r27 = [r0 retain];
    r22 = 0x0;
    r24 = 0x1;
    goto loc_1001ff9a0;

loc_1001ffebc:
    r19 = @selector(class);
    var_88 = 0x0;
    r26 = 0x0;
    r25 = 0x1;
    r28 = 0x1;
    goto loc_1001ff974;

loc_1001ff968:
    r19 = @selector(class);
    r28 = 0x0;
    r26 = 0x0;
    r25 = 0x1;
    goto loc_1001ff974;

loc_1001ff958:
    r25 = 0x0;
    r28 = 0x0;
    r26 = 0x0;
    goto loc_1001ff974;
}

+(void *)numberValueFromMessage:(void *)arg2 withKey:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [[arg2 dict] retain];
    [r21 release];
    r19 = [[r20 objectForKeyedSubscript:arg3] retain];
    [r23 release];
    [r20 release];
    if (r19 != 0x0) {
            [NSNumber class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r19 retain];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)arrayValueFromMessage:(void *)arg2 withKey:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [[arg2 dict] retain];
    [r21 release];
    r19 = [[r20 objectForKeyedSubscript:arg3] retain];
    [r23 release];
    [r20 release];
    if (r19 != 0x0) {
            [NSArray class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r19 retain];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)dictionaryValueFromMessage:(void *)arg2 withKey:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [[arg2 dict] retain];
    [r21 release];
    r19 = [[r20 objectForKeyedSubscript:arg3] retain];
    [r23 release];
    [r20 release];
    if (r19 != 0x0) {
            [NSDictionary class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r19 retain];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)description {
    r21 = [[self type] retain];
    [self target];
    [self origin];
    [self identifier];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)dict {
    r0 = self->_dict;
    return r0;
}

-(void)setDict:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dict, arg2);
    return;
}

+(struct CGRect)rectValueFromMessage:(void *)arg2 {
    r31 = r31 - 0x90;
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 dict];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            [r20 integerValue];
            r0 = [r19 dict];
            r0 = [r0 retain];
            r26 = r0;
            r0 = objc_msgSend(r0, r23);
            r29 = r29;
            r21 = [r0 retain];
            [r26 release];
            if (r21 != 0x0) {
                    r26 = [r21 integerValue];
                    r0 = [r19 dict];
                    r0 = [r0 retain];
                    r27 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r27 release];
                    if (r25 != 0x0) {
                            var_78 = r26;
                            [r25 unsignedIntegerValue];
                            r0 = [r19 dict];
                            r0 = [r0 retain];
                            r22 = [[r0 objectForKeyedSubscript:r2] retain];
                            [r0 release];
                            if (r22 != 0x0) {
                                    [r22 unsignedIntegerValue];
                                    asm { scvtf      d8, x24 };
                                    asm { scvtf      d9, x8 };
                                    asm { ucvtf      d10, x28 };
                                    asm { ucvtf      d11, x0 };
                            }
                            [r22 release];
                    }
                    [r25 release];
            }
            [r21 release];
    }
    [r20 release];
    r0 = [r19 release];
    return r0;
}

-(void *)type {
    r0 = self->_type;
    return r0;
}

-(void)setType:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_type, arg2);
    return;
}

-(int)target {
    r0 = *(int32_t *)(int64_t *)&self->_target;
    return r0;
}

-(void)setTarget:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_target = arg2;
    return;
}

-(int)origin {
    r0 = *(int32_t *)(int64_t *)&self->_origin;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_type, 0x0);
    objc_storeStrong((int64_t *)&self->_dict, 0x0);
    return;
}

-(void)setOrigin:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_origin = arg2;
    return;
}

-(int)identifier {
    r0 = *(int32_t *)(int64_t *)&self->_identifier;
    return r0;
}

-(void)setIdentifier:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_identifier = arg2;
    return;
}

@end