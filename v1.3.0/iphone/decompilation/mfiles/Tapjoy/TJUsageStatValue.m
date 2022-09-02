@implementation TJUsageStatValue

-(void *)initWithName:(void *)arg2 value:(double)arg3 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setName:r19];
            [r20 setCount:0x1];
            [r20 setAvg:0x1];
            [r20 setMax:0x1];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)addValue:(double)arg2 {
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = self;
    r2 = [self count] + 0x1;
    [r19 setCount:r2];
    [r19 avg];
    [r19 avg];
    [r19 count];
    asm { scvtf      d0, x0 };
    asm { fdiv       d0, d10, d0 };
    [r19 setAvg:r2];
    [r19 max];
    if (d9 + d0 < d8) {
            [r19 setMax:r2];
    }
    return;
}

-(void *)name {
    r0 = self->_name;
    return r0;
}

-(void *)dictionaryToStore {
    r19 = [[NSMutableDictionary dictionary] retain];
    r21 = @class(NSNumber);
    [self avg];
    r23 = [[r21 numberWithDouble:r2] retain];
    r2 = r23;
    [r19 setObject:r2 forKey:@"avg"];
    [r23 release];
    r23 = @class(NSNumber);
    [self max];
    r22 = [[r23 numberWithDouble:r2] retain];
    [r19 setObject:r22 forKey:@"max"];
    [r22 release];
    r20 = [[NSNumber numberWithInteger:[self count]] retain];
    [r19 setObject:r20 forKey:@"count"];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)dictionaryToSend {
    r20 = self;
    r0 = [NSMutableDictionary dictionary];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r21 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
    [r20 avg];
    asm { frintm     d0, d0 };
    [[r21 numberWithDouble:r2] retain];
    r0 = [r20 name];
    [r0 retain];
    [r19 setObject:r2 forKey:r3];
    [r25 release];
    [r23 release];
    r23 = *(r26 + 0xfc0);
    [r20 max];
    asm { frintm     d0, d0 };
    [objc_msgSend(r23, r22) retain];
    [objc_msgSend(r20, r24) retain];
    [[NSString stringWithFormat:r2] retain];
    objc_msgSend(r19, r21);
    [r23 release];
    [r20 release];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(long long)count {
    r0 = self->_count;
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_name, arg2);
    return;
}

-(void)setCount:(long long)arg2 {
    self->_count = arg2;
    return;
}

-(double)avg {
    r0 = self;
    return r0;
}

-(void)setAvg:(double)arg2 {
    self->_avg = d0;
    return;
}

-(double)max {
    r0 = self;
    return r0;
}

-(void)setMax:(double)arg2 {
    self->_max = d0;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    return;
}

@end