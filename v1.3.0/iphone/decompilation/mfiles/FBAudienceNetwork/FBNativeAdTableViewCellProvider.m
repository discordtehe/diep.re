@implementation FBNativeAdTableViewCellProvider

-(void *)initWithManager:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[FBNativeAdViewAttributes defaultAttributesForType:0x3] retain];
    r19 = [self initWithManager:r22 forType:0x3 forAttributes:r20];
    [r22 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)initWithManager:(void *)arg2 forType:(long long)arg3 {
    r23 = [arg2 retain];
    r21 = [[FBNativeAdViewAttributes defaultAttributesForType:arg3] retain];
    r19 = [self initWithManager:r23 forType:arg3 forAttributes:r21];
    [r23 release];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void *)initWithManager:(void *)arg2 forType:(long long)arg3 forAttributes:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r0 = [[&var_30 super] initWithManager:r22];
    r21 = r0;
    [r22 release];
    if (r21 != 0x0) {
            [r21 setType:r20];
            [r21 setAttributes:r19];
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(long long)tableView:(void *)arg2 numberOfRowsInSection:(long long)arg3 {
    r0 = [self manager];
    r0 = [r0 retain];
    r20 = [r0 uniqueNativeAdCount];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)tableView:(void *)arg2 cellForRowAtIndexPath:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 uniqueTableCellIdentifier];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [NSUUID UUID];
            r0 = [r0 retain];
            r24 = [[r0 UUIDString] retain];
            [r21 setUniqueTableCellIdentifier:r24];
            [r24 release];
            [r0 release];
            r24 = [r21 type];
            r25 = [[r21 attributes] retain];
            r23 = [FBNativeAdTableViewCell specializeCellForType:r24 forAttributes:r25];
            [r25 release];
            r0 = [r21 uniqueTableCellIdentifier];
            r29 = r29;
            r24 = [r0 retain];
            [r19 registerClass:r23 forCellReuseIdentifier:r24];
            [r24 release];
    }
    r22 = [[r21 uniqueTableCellIdentifier] retain];
    r23 = [[r19 dequeueReusableCellWithIdentifier:r22 forIndexPath:r20] retain];
    [r22 release];
    r21 = [[r21 tableView:r19 nativeAdForRowAtIndexPath:r20] retain];
    [r20 release];
    [r23 populate:r21];
    [r21 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(double)tableView:(void *)arg2 estimatedHeightForRowAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    [self tableView:r21 heightForRowAtIndexPath:arg3];
    r0 = [r21 release];
    return r0;
}

-(double)tableView:(void *)arg2 heightForRowAtIndexPath:(void *)arg3 {
    r31 = r31 - 0x60;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = _cmd;
    r22 = self;
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    if ([r22 type] == 0x7fffffff) {
            [r21 release];
            r0 = [r20 release];
    }
    else {
            r0 = [r22 type];
            if (r0 != 0x6 && r0 != 0x4) {
                    if (r0 == 0x3) {
                            [r21 release];
                            r0 = [r20 release];
                    }
                    else {
                            r21 = **_NSInternalInconsistencyException;
                            r22 = [NSStringFromClass([r22 class]) retain];
                            r19 = [NSStringFromSelector(r19) retain];
                            r23 = [[NSString stringWithFormat:@"[%@ %@:] not implemented."] retain];
                            r20 = [[[NSException exceptionWithName:r21 reason:r23 userInfo:0x0] retain] autorelease];
                            [r23 release];
                            [r19 release];
                            [r22 release];
                            r0 = objc_exception_throw(r20);
                    }
            }
            else {
                    [r21 release];
                    r0 = [r20 release];
            }
    }
    return r0;
}

-(void *)tableCellIdentifier {
    r0 = [self uniqueTableCellIdentifier];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_uniqueTableCellIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_attributes, 0x0);
    return;
}

-(long long)type {
    r0 = self->_type;
    return r0;
}

-(void)setType:(long long)arg2 {
    self->_type = arg2;
    return;
}

-(void *)attributes {
    r0 = self->_attributes;
    return r0;
}

-(void)setAttributes:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_attributes, arg2);
    return;
}

-(void)setUniqueTableCellIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)uniqueTableCellIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_uniqueTableCellIdentifier)), 0x0);
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
    r0 = objc_getClass("FBNativeAdTableViewCellProvider");
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