@implementation FBAdCandidate

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_trackersFired, 0x0);
    objc_storeStrong((int64_t *)&self->_trackersByType, 0x0);
    objc_storeStrong((int64_t *)&self->_data, 0x0);
    objc_storeStrong((int64_t *)&self->_dataModelType, 0x0);
    return;
}

-(void *)dataModelType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_dataModelType)), 0x0);
    return r0;
}

-(void)setDataModelType:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)initWithData:(void *)arg2 dataModelType:(void *)arg3 trackers:(void *)arg4 {
    r31 = r31 - 0x1b0;
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
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = [arg4 retain];
    r0 = [[&var_F0 super] init];
    var_150 = r0;
    if (r0 != 0x0) {
            var_188 = r22;
            [var_150 setData:r22];
            var_190 = r20;
            [var_150 setDataModelType:r20];
            r19 = [[NSMutableDictionary dictionary] retain];
            [var_150 setTrackersByType:r19];
            [r19 release];
            r0 = [NSMutableSet set];
            r29 = r29;
            r19 = [r0 retain];
            [var_150 setTrackersFired:r19];
            [r19 release];
            var_120 = q0;
            var_198 = r23;
            r0 = [r23 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_168 = r0;
            var_180 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r25 = r0;
                    var_138 = *var_120;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_120 != var_138) {
                                            objc_enumerationMutation(var_168);
                                    }
                                    r21 = *(var_128 + r22 * 0x8);
                                    r26 = [[r21 stringForKeyOrNil:@"type"] retain];
                                    r0 = [r21 stringForKeyOrNil:@"url"];
                                    r29 = r29;
                                    r27 = [r0 retain];
                                    r0 = [FBAdCandidate trackerTypeFromString:r26];
                                    if (r0 != 0x0) {
                                            r21 = r0;
                                            r23 = [[var_150 trackersByType] retain];
                                            r20 = [[NSNumber numberWithInteger:r21] retain];
                                            r0 = [r23 objectForKeyedSubscript:r20];
                                            r29 = r29;
                                            r24 = [r0 retain];
                                            [r20 release];
                                            [r23 release];
                                            if (r24 == 0x0) {
                                                    r20 = [[var_150 trackersByType] retain];
                                                    r0 = [NSNumber numberWithInteger:r21];
                                                    r29 = r29;
                                                    r21 = [r0 retain];
                                                    r24 = [NSMutableArray new];
                                                    [r20 setObject:r24 forKeyedSubscript:r21];
                                                    [r21 release];
                                                    [r20 release];
                                            }
                                            [r24 addObject:r2];
                                            [r24 release];
                                    }
                                    [r27 release];
                                    [r26 release];
                                    r22 = r22 + 0x1;
                            } while (r22 < r25);
                            r0 = objc_msgSend(var_168, var_180);
                            r25 = r0;
                    } while (r0 != 0x0);
            }
            [var_168 release];
            r20 = var_190;
            r22 = var_188;
            r23 = var_198;
    }
    var_60 = **___stack_chk_guard;
    [r23 release];
    [r20 release];
    [r22 release];
    if (**___stack_chk_guard == var_60) {
            r0 = var_150;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)fireTrackers:(long long)arg2 withExtraData:(void *)arg3 {
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
    r20 = arg2;
    r21 = self;
    r19 = [arg3 retain];
    r22 = [[r21 trackersFired] retain];
    r0 = [NSNumber numberWithInteger:r20];
    r29 = &saved_fp;
    r24 = [r0 retain];
    r25 = [r22 containsObject:r2];
    [r24 release];
    [r22 release];
    if ((r25 & 0x1) == 0x0) {
            r26 = @selector(numberWithInteger:);
            r23 = @selector(trackersFired);
            r22 = [[r21 trackersByType] retain];
            r24 = [objc_msgSend(@class(NSNumber), r26) retain];
            r0 = [r22 arrayForKeyOrNil:r24];
            r29 = r29;
            r25 = [r0 retain];
            [r24 release];
            [r22 release];
            if (r25 != 0x0) {
                    var_138 = r21;
                    stack[-320] = r20;
                    var_110 = q0;
                    var_150 = r25;
                    r0 = [r25 retain];
                    r25 = r0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_128 = r1;
                    r0 = objc_msgSend(r0, r1);
                    if (r0 != 0x0) {
                            r27 = r0;
                            r20 = *var_110;
                            do {
                                    r26 = 0x0;
                                    do {
                                            if (*var_110 != r20) {
                                                    objc_enumerationMutation(r25);
                                            }
                                            r0 = [NSURL URLWithString:*(var_118 + r26 * 0x8)];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r22 = r0;
                                            if (r0 != 0x0) {
                                                    [FBAdUtility logTracker:r2 withExtraData:r3];
                                            }
                                            [r22 release];
                                            r26 = r26 + 0x1;
                                    } while (r26 < r27);
                                    r0 = objc_msgSend(r25, var_128);
                                    r27 = r0;
                            } while (r0 != 0x0);
                    }
                    [r25 release];
                    r21 = var_138;
                    r20 = stack[-320];
                    r26 = @selector(numberWithInteger:);
                    r23 = @selector(trackersFired);
                    r25 = var_150;
            }
            r21 = [objc_msgSend(r21, r23) retain];
            [objc_msgSend(@class(NSNumber), r26) retain];
            [r21 addObject:r2];
            [r20 release];
            [r21 release];
            [r25 release];
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void *)data {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_data)), 0x0);
    return r0;
}

-(void)setData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)trackersByType {
    r0 = self->_trackersByType;
    return r0;
}

-(void)setTrackersByType:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_trackersByType, arg2);
    return;
}

-(void *)trackersFired {
    r0 = self->_trackersFired;
    return r0;
}

-(void)setTrackersFired:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_trackersFired, arg2);
    return;
}

+(long long)trackerTypeFromString:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                    r20 = 0x2;
            }
            else {
                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                            r20 = 0x3;
                    }
                    else {
                            [FBAdLogger logAtLevel:0x3 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/dto/FBAdCandidate.m" lineNumber:0x65 format:@"Unexpected tracker type: %@"];
                            r20 = 0x0;
                    }
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
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
    r0 = objc_getClass("FBAdCandidate");
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

@end