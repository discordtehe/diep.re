@implementation FRCreativeMapping

+(void *)objectWithDictionary:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[FRCreativeMapping alloc] initWithDictionary:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(struct CGRect)rect {
    r0 = objc_copyStruct(&var_20, (int64_t *)&self->_rect, 0x20, 0x1, 0x0);
    return r0;
}

-(void)setRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_rect, &var_20, 0x20, 0x1, 0x0);
    return;
}

-(void *)link {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_link)), 0x1);
    return r0;
}

-(void)setLink:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)redirectURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_redirectURL)), 0x1);
    return r0;
}

-(void)setRedirectURL:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)adContent {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adContent)), 0x1);
    return r0;
}

-(void)setAdContent:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)name {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_name)), 0x1);
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(bool)bDismiss {
    r0 = *(int8_t *)(int64_t *)&self->_bDismiss & 0x1;
    return r0;
}

-(void)setBDismiss:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_bDismiss = arg2;
    return;
}

-(void *)purchaseRequest {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_purchaseRequest)), 0x1);
    return r0;
}

-(void)setPurchaseRequest:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)initWithDictionary:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_80 super] init];
    r20 = r0;
    if (r20 == 0x0) goto loc_100914c10;

loc_100914278:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r23 = [[r19 valueForKey:r2] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            [r22 release];
            if (r23 != r0) {
                    r0 = [r19 valueForKey:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if ([r0 count] == 0x4) {
                            r0 = [r22 objectAtIndex:0x0];
                            r0 = [r0 retain];
                            [r0 floatValue];
                            [r0 release];
                            r0 = [r22 objectAtIndex:0x1];
                            r0 = [r0 retain];
                            [r0 floatValue];
                            [r0 release];
                            r0 = [r22 objectAtIndex:0x2];
                            r0 = [r0 retain];
                            [r0 floatValue];
                            [r0 release];
                            r2 = 0x3;
                            r0 = [r22 objectAtIndex:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 floatValue];
                            [r0 release];
                            asm { fcvt       d0, s8 };
                            asm { fcvt       d1, s9 };
                            asm { fcvt       d2, s2 };
                            asm { fcvt       d3, s3 };
                            [r20 setRect:r2];
                    }
                    [r22 release];
            }
    }
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1009145bc;

loc_100914458:
    r23 = [[r19 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r23 == r24) goto loc_10091454c;

loc_1009144a0:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r25 = [r0 retain];
    [NSString class];
    if ([r25 isKindOfClass:r2] == 0x0) goto loc_100914560;

loc_1009144ec:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 length];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    if (r27 != 0x0) goto loc_100914580;

loc_1009145bc:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r23 = [[r19 valueForKey:r2] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            [r22 release];
            if (r23 != r0) {
                    r0 = [r19 valueForKey:r2];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r20 setRedirectURL:r22];
                    [r22 release];
            }
    }
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r23 = [[r19 valueForKey:r2] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            [r22 release];
            if (r23 != r0) {
                    r0 = [r19 valueForKey:r2];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r20 setAdContent:r22];
                    [r22 release];
            }
    }
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1009148bc;

loc_100914758:
    r23 = [[r19 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r23 == r24) goto loc_10091484c;

loc_1009147a0:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r25 = [r0 retain];
    [NSString class];
    if ([r25 isKindOfClass:r2] == 0x0) goto loc_100914860;

loc_1009147ec:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 length];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    if (r27 != 0x0) goto loc_100914880;

loc_1009148bc:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_100914a50;

loc_1009148e0:
    r23 = [[r19 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r23 == r24) goto loc_1009149d4;

loc_100914928:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r25 = [r0 retain];
    [NSString class];
    if ([r25 isKindOfClass:r2] == 0x0) goto loc_1009149e8;

loc_100914974:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 length];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    if (r27 != 0x0) goto loc_100914a08;

loc_100914a50:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_100914b24;

loc_100914a74:
    r23 = [[r19 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    [r22 release];
    if (r23 == r0) goto loc_100914b24;

loc_100914ad0:
    r21 = [[r19 valueForKey:r2] retain];
    r22 = [[FRRewardRequest objectWithDictionary:r21] retain];
    r1 = @selector(setRewardRequest:);
    goto loc_100914bf4;

loc_100914bf4:
    objc_msgSend(r20, r1);
    [r22 release];
    [r21 release];
    goto loc_100914c10;

loc_100914c10:
    [r19 release];
    r0 = r20;
    return r0;

loc_100914b24:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_100914c10;

loc_100914b48:
    r23 = [[r19 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    [r22 release];
    if (r23 == r0) goto loc_100914c10;

loc_100914ba4:
    r21 = [[r19 valueForKey:r2] retain];
    r22 = [[FRPurchaseRequest objectWithDictionary:r21] retain];
    r1 = @selector(setPurchaseRequest:);
    goto loc_100914bf4;

loc_100914a08:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    [r20 setBDismiss:[r0 boolValue]];
    goto loc_100914a48;

loc_100914a48:
    [r22 release];
    goto loc_100914a50;

loc_1009149e8:
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    goto loc_100914a08;

loc_1009149d4:
    [r23 release];
    [r23 release];
    goto loc_100914a48;

loc_100914880:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    [r20 setName:r22];
    goto loc_1009148b4;

loc_1009148b4:
    [r22 release];
    goto loc_1009148bc;

loc_100914860:
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    goto loc_100914880;

loc_10091484c:
    [r23 release];
    [r23 release];
    goto loc_1009148b4;

loc_100914580:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    [r20 setLink:r22];
    goto loc_1009145b4;

loc_1009145b4:
    [r22 release];
    goto loc_1009145bc;

loc_100914560:
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    goto loc_100914580;

loc_10091454c:
    [r23 release];
    [r23 release];
    goto loc_1009145b4;
}

-(void *)rewardRequest {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_rewardRequest)), 0x1);
    return r0;
}

-(void)setRewardRequest:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rewardRequest, 0x0);
    objc_storeStrong((int64_t *)&self->_purchaseRequest, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    objc_storeStrong((int64_t *)&self->_adContent, 0x0);
    objc_storeStrong((int64_t *)&self->_redirectURL, 0x0);
    objc_storeStrong((int64_t *)&self->_link, 0x0);
    return;
}

@end