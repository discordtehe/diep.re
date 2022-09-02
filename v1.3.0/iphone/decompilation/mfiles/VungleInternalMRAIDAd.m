@implementation VungleInternalMRAIDAd

-(void *)assets {
    r0 = self->_privateAssets;
    r0 = [r0 copy];
    r0 = [r0 autorelease];
    return r0;
}

-(void)appendAsset:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_privateAssets));
    r0 = *(r20 + r21);
    if (r0 == 0x0) {
            r0 = [NSMutableSet new];
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            r0 = *(r20 + r21);
    }
    [r0 addObject:r2];
    [r19 release];
    return;
}

-(void)appendAssets:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_privateAssets));
    r21 = *(r20 + r22);
    if (r21 == 0x0) {
            r0 = [NSMutableSet new];
            r8 = *(r20 + r22);
            *(r20 + r22) = r0;
            [r8 release];
            r21 = *(r20 + r22);
    }
    r20 = [[r19 allObjects] retain];
    [r21 addObjectsFromArray:r20];
    [r20 release];
    [r19 release];
    return;
}

-(void)addTemplateAsset:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = r0;
    [r0 setType:0x1];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_templateAsset));
    r0 = *(self + r8);
    *(self + r8) = r20;
    [r0 release];
    return;
}

-(void *)initWithDictionary:(void *)arg2 {
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
    r0 = [[&var_50 super] initWithDictionary:r19];
    r20 = r0;
    if (r0 == 0x0) goto loc_10061a870;

loc_10061a514:
    r23 = [[r19 objectForKeyedSubscript:@"templateURL"] retain];
    r0 = [NSURL URLWithString:r23];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_templateURL));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [r23 release];
    r0 = [r19 objectForKeyedSubscript:@"templateId"];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_templateID));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [r22 release];
    r0 = [r19 objectForKeyedSubscript:@"template_type"];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 copy];
    [r0 release];
    if ([r22 isEqualToString:r2] == 0x0) goto loc_10061a634;

loc_10061a624:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_templateType));
    goto loc_10061a62c;

loc_10061a62c:
    *(r20 + r8) = 0x0;
    goto loc_10061a6ac;

loc_10061a6ac:
    r0 = [r19 objectForKeyedSubscript:@"templateSettings"];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 objectForKeyedSubscript:@"normal_replacements"];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_templateReplacements));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [r26 release];
    [r25 release];
    r0 = [r19 objectForKeyedSubscript:@"templateSettings"];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:@"cacheable_replacements"];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_cacheableTemplateReplacements));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [r25 release];
    [r24 release];
    r23 = [[r19 objectForKeyedSubscript:@"tpat"] retain];
    r1 = @selector(buildDictionaryFromTPAT:);
    r0 = objc_msgSend(r20, r1);
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    r8 = *___NSDictionary0__;
    r8 = *r8;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r1 = r0;
            }
            else {
                    r1 = r8;
            }
    }
    objc_storeStrong((int64_t *)&r20->_TPAT, r1);
    [r24 release];
    [r23 release];
    if ([VungleUtil validateTPAT:r20->_TPAT] != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"templateURL"];
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = r20;
            }
            else {
                    r0 = r20;
            }
    }
    else {
            r0 = r20;
    }
    [r0 setState:r2];
    [r22 release];
    goto loc_10061a870;

loc_10061a870:
    [r19 release];
    r0 = r20;
    return r0;

loc_10061a634:
    if ([r22 isEqualToString:r2] == 0x0) goto loc_10061a65c;

loc_10061a64c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_templateType));
    r9 = 0x1;
    goto loc_10061a6a8;

loc_10061a6a8:
    *(r20 + r8) = r9;
    goto loc_10061a6ac;

loc_10061a65c:
    if ([r22 isEqualToString:r2] == 0x0) goto loc_10061a684;

loc_10061a674:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_templateType));
    r9 = 0x2;
    goto loc_10061a6a8;

loc_10061a684:
    r0 = [r22 isEqualToString:r2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_templateType));
    if (r0 == 0x0) goto loc_10061a62c;

loc_10061a6a4:
    r9 = 0x3;
    goto loc_10061a6a8;
}

-(void)encodeWithCoder:(void *)arg2 {
    r21 = [arg2 retain];
    [[&var_40 super] encodeWithCoder:r21];
    [arg2 encodeObject:self->_templateURL forKey:@"templateURL"];
    [arg2 encodeInteger:self->_templateType forKey:@"template_type"];
    [arg2 encodeObject:self->_templateID forKey:@"templateId"];
    [arg2 encodeObject:self->_templateReplacements forKey:@"normal_replacements"];
    [arg2 encodeObject:self->_cacheableTemplateReplacements forKey:@"cacheable_replacements"];
    [arg2 encodeObject:self->_TPAT forKey:@"tpat"];
    [arg2 encodeObject:self->_privateAssets forKey:@"assets"];
    r23 = [[self expectedLocalTemplateURL] retain];
    [arg2 encodeObject:r23 forKey:@"expectedLocalTemplateURL"];
    [r23 release];
    [arg2 encodeObject:self->_templateAsset forKey:@"Vungle Template Asset"];
    [r21 release];
    return;
}

-(bool)isEqual:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != r20) {
            if ([r19 templateType] == [r20 templateType]) {
                    [VungleInternalMRAIDAd class];
                    if ([r19 isKindOfClass:r2] != 0x0) {
                            r0 = [[&var_30 super] isEqual:r2];
                            if (r0 != 0x0) {
                                    r20 = [r20 isEqualToVungleMRAIDAd:r19];
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
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
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
    r0 = [[&var_30 super] initWithCoder:r19];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 decodeObjectForKey:@"templateURL"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_templateURL));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r20->_templateType = [r19 decodeIntegerForKey:@"template_type"];
            r0 = [r19 decodeObjectForKey:@"templateId"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_templateID));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"normal_replacements"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_templateReplacements));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"cacheable_replacements"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_cacheableTemplateReplacements));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"tpat"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_TPAT));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"assets"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_privateAssets));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r22 = [[r19 decodeObjectForKey:@"expectedLocalTemplateURL"] retain];
            [r20 setExpectedLocalTemplateURL:r22];
            [r22 release];
            r0 = [r19 decodeObjectForKey:@"Vungle Template Asset"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_templateAsset));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)buildDictionaryFromTPAT:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [NSMutableDictionary new];
    r21 = [r0 retain];
    [arg2 enumerateKeysAndObjectsUsingBlock:&var_48];
    [r22 release];
    r19 = [r21 copy];
    [r0 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)templateID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_templateID)), 0x0);
    return r0;
}

-(void)setTemplateID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isEqualToVungleMRAIDAd:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_templateURL));
    r24 = *(r20 + r25);
    r0 = [r0 templateURL];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if ([r24 isEqual:r2] == 0x0) goto loc_10061b18c;

loc_10061af7c:
    [r22 release];
    goto loc_10061af84;

loc_10061af84:
    r22 = r20->_templateID;
    r0 = [r19 templateID];
    r29 = r29;
    r23 = [r0 retain];
    r22 = [r22 isEqualToString:r2];
    [r23 release];
    if ((r22 & 0x1) != 0x0) goto loc_10061b240;

loc_10061afd0:
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_templateReplacements));
    r25 = *(r20 + r26);
    r0 = [r19 templateReplacements];
    r29 = r29;
    r23 = [r0 retain];
    if ([r25 isEqualToDictionary:r2] == 0x0) goto loc_10061b1c8;

loc_10061b018:
    [r23 release];
    goto loc_10061b020;

loc_10061b020:
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_cacheableTemplateReplacements));
    r25 = *(r20 + r26);
    r0 = [r19 cacheableTemplateReplacements];
    r29 = r29;
    r23 = [r0 retain];
    if ([r25 isEqualToDictionary:r2] == 0x0) goto loc_10061b1fc;

loc_10061b060:
    [r23 release];
    goto loc_10061b068;

loc_10061b068:
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_TPAT));
    r25 = *(r20 + r26);
    r0 = [r19 TPAT];
    r29 = r29;
    r23 = [r0 retain];
    if (([r25 isEqualToDictionary:r2] & 0x1) == 0x0) goto loc_10061b230;

loc_10061b0a8:
    [r23 release];
    goto loc_10061b0b0;

loc_10061b0b0:
    if ([r20 state] != [r19 state]) goto loc_10061b240;

loc_10061b0dc:
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_privateAssets));
    r24 = *(r20 + r25);
    r0 = [r19 assets];
    r29 = r29;
    r22 = [r0 retain];
    if (([r24 isEqualToSet:r22] & 0x1) == 0x0) goto loc_10061b294;

loc_10061b120:
    [r22 release];
    goto loc_10061b128;

loc_10061b128:
    r21 = @selector(isEqual:);
    r22 = [[r20 expectedLocalTemplateURL] retain];
    r0 = [r19 expectedLocalTemplateURL];
    r29 = r29;
    r24 = [r0 retain];
    if (objc_msgSend(r22, r21) == 0x0) goto loc_10061b2c8;

loc_10061b174:
    [r24 release];
    [r22 release];
    r20 = 0x1;
    goto loc_10061b244;

loc_10061b244:
    [r19 release];
    r0 = r20;
    return r0;

loc_10061b2c8:
    r0 = [r20 expectedLocalTemplateURL];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_10061b2f0;

loc_10061b2e0:
    [r0 release];
    [r24 release];
    goto loc_10061b194;

loc_10061b194:
    r0 = r22;
    goto loc_10061b23c;

loc_10061b23c:
    [r0 release];
    goto loc_10061b240;

loc_10061b240:
    r20 = 0x0;
    goto loc_10061b244;

loc_10061b2f0:
    r0 = [r19 expectedLocalTemplateURL];
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r22 release];
    if (r0 == 0x0) {
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    goto loc_10061b244;

loc_10061b294:
    if (*(r20 + r25) != 0x0) goto loc_10061b194;

loc_10061b29c:
    r0 = [r19 assets];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 != 0x0) goto loc_10061b240;
    goto loc_10061b128;

loc_10061b230:
    if (*(r20 + r26) == 0x0) goto loc_10061b268;

loc_10061b238:
    r0 = r23;
    goto loc_10061b23c;

loc_10061b268:
    r0 = [r19 TPAT];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) goto loc_10061b240;
    goto loc_10061b0b0;

loc_10061b1fc:
    if (*(r20 + r26) != 0x0) goto loc_10061b238;

loc_10061b204:
    r0 = [r19 cacheableTemplateReplacements];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) goto loc_10061b240;
    goto loc_10061b068;

loc_10061b1c8:
    if (*(r20 + r26) != 0x0) goto loc_10061b238;

loc_10061b1d0:
    r0 = [r19 templateReplacements];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) goto loc_10061b240;
    goto loc_10061b020;

loc_10061b18c:
    if (*(r20 + r25) == 0x0) goto loc_10061b19c;
    goto loc_10061b194;

loc_10061b19c:
    r0 = [r19 templateURL];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 != 0x0) goto loc_10061b240;
}

-(void *)templateURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_templateURL)), 0x0);
    return r0;
}

-(void *)description {
    r0 = self;
    r31 = r31 - 0xf0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = r0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_type));
    r8 = *(r0 + r8);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r8;
            }
            else {
                    r8 = @"(null)";
            }
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_templateURL));
    r8 = *(r0 + r8);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r8;
            }
            else {
                    r8 = @"(null)";
            }
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_templateReplacements));
    r8 = *(r0 + r8);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r8;
            }
            else {
                    r8 = @"(null)";
            }
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_cacheableTemplateReplacements));
    r8 = *(r0 + r8);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r8;
            }
            else {
                    r8 = @"(null)";
            }
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_TPAT));
    r8 = *(r0 + r8);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r8;
            }
            else {
                    r8 = @"(null)";
            }
    }
    r20 = [[NSNumber numberWithInteger:[r0 state]] retain];
    r8 = &@selector(clearTempLog:WithCompletionBlock:);
    r0 = objc_msgSend(r19, *(r8 + 0x1b0));
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r0;
            }
            else {
                    r8 = @"(null)";
            }
    }
    r8 = &@selector(initWithReportInfo:publisherInformation:);
    r0 = objc_msgSend(r19, *(r8 + 0x930));
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r0;
            }
            else {
                    r8 = @"(null)";
            }
    }
    var_38 = **___stack_chk_guard;
    r23 = [[NSDictionary dictionaryWithObjects:&var_78 forKeys:&var_C0 count:0x8] retain];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 class];
    r19 = [[NSString stringWithFormat:@"<%@: 0x%lx%@>"] retain];
    [r23 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setTemplateURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setTemplateReplacements:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)templateReplacements {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_templateReplacements)), 0x0);
    return r0;
}

-(void *)cacheableTemplateReplacements {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_cacheableTemplateReplacements)), 0x0);
    return r0;
}

-(void)setCacheableTemplateReplacements:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)templateAsset {
    r0 = self->_templateAsset;
    return r0;
}

-(void *)TPAT {
    r0 = self->_TPAT;
    return r0;
}

-(void)setTemplateAsset:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_templateAsset, arg2);
    return;
}

-(long long)templateType {
    r0 = self->_templateType;
    return r0;
}

-(void)setTemplateType:(long long)arg2 {
    self->_templateType = arg2;
    return;
}

-(void *)privateAssets {
    r0 = self->_privateAssets;
    return r0;
}

-(void)setPrivateAssets:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_privateAssets, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_privateAssets, 0x0);
    objc_storeStrong((int64_t *)&self->_templateAsset, 0x0);
    objc_storeStrong((int64_t *)&self->_TPAT, 0x0);
    objc_storeStrong((int64_t *)&self->_cacheableTemplateReplacements, 0x0);
    objc_storeStrong((int64_t *)&self->_templateReplacements, 0x0);
    objc_storeStrong((int64_t *)&self->_templateURL, 0x0);
    objc_storeStrong((int64_t *)&self->_templateID, 0x0);
    return;
}

-(void *)buildAssets {
    r20 = [NSMutableSet new];
    r21 = [[self cacheableTemplateReplacements] retain];
    r0 = [r20 retain];
    [r21 enumerateKeysAndObjectsUsingBlock:&var_50];
    [r21 release];
    r19 = objc_retainAutoreleaseReturnValue(r0);
    [r0 release];
    [r19 release];
    r0 = r19;
    return r0;
}

-(void *)buildNonCacheableReplacementsDictionary {
    r0 = [self templateReplacements];
    r0 = [r0 retain];
    r20 = [r0 copy];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)buildCacheableReplacementsDictionary {
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
    r19 = objc_alloc();
    r0 = [self cacheableTemplateReplacements];
    r0 = [r0 retain];
    var_140 = [r19 initWithCapacity:[r0 count]];
    [r0 release];
    var_110 = q0;
    r0 = [self assets];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_150 = r1;
    var_148 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r25 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(var_148);
                            }
                            r28 = *(var_118 + r27 * 0x8);
                            r0 = [r28 replacementKey];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = [r28 expectedLocalCacheURL];
                                    r0 = [r0 retain];
                                    r0 = [r0 path];
                                    r0 = [r0 retain];
                                    [r0 copy];
                                    r0 = [r28 replacementKey];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 copy];
                                    [var_140 setObject:r2 forKeyedSubscript:r3];
                                    [r24 release];
                                    [r28 release];
                                    [r19 release];
                                    [r20 release];
                                    [r21 release];
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r0 = objc_msgSend(var_148, var_150);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_148 release];
    r20 = [var_140 copy];
    [var_140 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)TPATForKey:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r23 = [arg2 retain];
    r19 = [NSMutableArray new];
    var_110 = q0;
    r0 = [self TPAT];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:arg2] retain];
    [r23 release];
    [r0 release];
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r26 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r26) {
                                    objc_enumerationMutation(r20);
                            }
                            r24 = @selector(addObject:);
                            r25 = *(var_118 + r28 * 0x8);
                            [objc_alloc() initWithURLString:r25];
                            objc_msgSend(r19, r24);
                            [r25 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    r20 = [r19 copy];
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)updateWithRequestAdBody:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r22 = @class(NSDate);
    r21 = @selector(objectForKeyedSubscript:);
    r2 = @"expiry";
    r0 = objc_msgSend(r0, r21);
    r0 = [r0 retain];
    r23 = r0;
    [r0 longLongValue];
    asm { scvtf      d0, x0 };
    r0 = [r22 dateWithTimeIntervalSince1970:r2];
    r24 = r0;
    r22 = [r0 retain];
    [r23 release];
    r0 = objc_msgSend(r19, r21);
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_campaign));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    objc_storeStrong((int64_t *)&r20->_expireDate, r24);
    r0 = objc_msgSend(r19, r21);
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_appId));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [r20 setIncentivized:0x0];
    r0 = objc_msgSend(r19, r21);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"viewed"];
            r29 = r29;
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r20->_viewed = [r0 boolValue];
            [r0 release];
    }
    r0 = [r19 objectForKeyedSubscript:@"user"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_user));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [r22 release];
    [r19 release];
    return;
}

-(void *)updateNonCacheableReplacements:(void *)arg2 withIncentivizedTexts:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[NSMutableDictionary dictionaryWithDictionary:r22] retain];
    [r22 release];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r24 = [r0 retain];
            [r21 setObject:r24 forKeyedSubscript:@"INCENTIVIZED_TITLE_TEXT"];
            [r24 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r24 = [r0 retain];
            [r21 setObject:r24 forKeyedSubscript:@"INCENTIVIZED_BODY_TEXT"];
            [r24 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r24 = [r0 retain];
            [r21 setObject:r24 forKeyedSubscript:@"INCENTIVIZED_CLOSE_TEXT"];
            [r24 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r22 = [r0 retain];
            [r21 setObject:r22 forKeyedSubscript:@"INCENTIVIZED_CONTINUE_TEXT"];
            [r22 release];
    }
    r20 = [[NSDictionary dictionaryWithDictionary:r21] retain];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)updateNonCacheableReplacements:(void *)arg2 withStartMutedStatus:(bool)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[NSMutableDictionary dictionaryWithDictionary:arg2] retain];
    if (arg3 != 0x0) {
            [r19 setObject:@"true" forKeyedSubscript:@"START_MUTED"];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(bool)isValid {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self state] == 0x4) {
            r0 = [r19 isExpired];
            if ((r0 & 0x1) != 0x0) {
                    r0 = 0x0;
            }
            else {
                    if (r19->_campaign != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r0 = 0x1;
                            }
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)isDownloaded {
    r31 = r31 - 0x130;
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
    var_110 = q0;
    r0 = [self assets];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_10063cc84;

loc_10063cc14:
    r22 = r0;
    r24 = *var_110;
    goto loc_10063cc24;

loc_10063cc24:
    r26 = 0x0;
    goto loc_10063cc2c;

loc_10063cc2c:
    if (*var_110 != r24) {
            objc_enumerationMutation(r20);
    }
    if ([*(var_118 + r26 * 0x8) isCached] == 0x0) goto loc_10063ccc4;

loc_10063cc58:
    r26 = r26 + 0x1;
    if (r26 < r22) goto loc_10063cc2c;

loc_10063cc64:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_10063cc24;

loc_10063cc84:
    [r20 release];
    r0 = [r19 templateAsset];
    r0 = [r0 retain];
    r19 = [r0 isCached];
    [r0 release];
    goto loc_10063ccd0;

loc_10063ccd0:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10063ccc4:
    [r20 release];
    r19 = 0x0;
    goto loc_10063ccd0;
}

@end