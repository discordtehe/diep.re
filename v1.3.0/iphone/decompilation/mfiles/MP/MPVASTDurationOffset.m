@implementation MPVASTDurationOffset

-(double)timeIntervalForVideoWithDuration:(double)arg2 {
    r0 = self;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (d0 >= 0x0) {
            r19 = r0;
            if ([r0 type] != 0x0) {
                    r0 = [r19 type];
                    if (r0 == 0x1) {
                            r19 = [[r19 offset] retain];
                            [MPVASTStringUtilities percentageFromString:r19];
                            r0 = [r19 release];
                            asm { scvtf      d0, x20 };
                            asm { fdiv       d9, d0, d1 };
                    }
            }
            else {
                    r19 = [[r19 offset] retain];
                    [MPVASTStringUtilities timeIntervalFromString:r19];
                    r0 = [r19 release];
            }
    }
    return r0;
}

-(unsigned long long)type {
    r0 = self->_type;
    return r0;
}

-(void *)offset {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_offset)), 0x0);
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [[&var_40 super] initWithDictionary:r19];
    r20 = r0;
    if (r0 == 0x0) goto loc_10050af64;

loc_10050ae88:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r2 = @"offset";
            r24 = 0x0;
            r23 = r21;
    }
    else {
            r2 = @"skipoffset";
            r23 = [[r19 objectForKeyedSubscript:r2] retain];
            r24 = 0x1;
    }
    r22 = (int64_t *)&r20->_offset;
    objc_storeStrong(r22, r23);
    if (r24 != 0x0) {
            [r23 release];
    }
    [r21 release];
    if (*r22 == 0x0) goto loc_10050af4c;

loc_10050af18:
    r21 = [MPVASTStringUtilities stringRepresentsNonNegativePercentage:r2];
    r0 = @class(MPVASTStringUtilities);
    r0 = [r0 stringRepresentsNonNegativeDuration:*r22];
    if ((r21 & 0x1) != 0x0 || r0 != 0x0) goto loc_10050af54;

loc_10050af4c:
    r21 = 0x0;
    goto loc_10050af70;

loc_10050af70:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_10050af54:
    r20->_type = r0 ^ 0x1;
    goto loc_10050af64;

loc_10050af64:
    r21 = [r20 retain];
    goto loc_10050af70;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_offset, 0x0);
    return;
}

@end