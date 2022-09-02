@implementation ISError

+(void *)createError:(unsigned long long)arg2 {
    r0 = [self createError:arg2 withParams:0x0];
    return r0;
}

+(unsigned long long)getCode:(unsigned long long)arg2 {
    r0 = [NSNumber numberWithInt:arg2];
    r0 = [r0 retain];
    r20 = [r0 integerValue];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void *)createError:(unsigned long long)arg2 withParams:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r22 = self;
    r19 = [arg3 retain];
    [ISError initErrors];
    r21 = *0x1011dab60;
    r23 = [[NSNumber numberWithInt:r20] retain];
    r0 = [r21 objectForKey:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    if (r19 != 0x0) {
            r0 = [r22 replaceParams:r21 withParams:r19];
            r29 = r29;
            r22 = [r0 retain];
            [r21 release];
            r21 = r22;
    }
    r22 = [[NSDictionary dictionaryWithObject:r21 forKey:**_NSLocalizedDescriptionKey] retain];
    r20 = [[NSError alloc] initWithDomain:@"Supersonic.com" code:r20 userInfo:r22];
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)createError:(unsigned long long)arg2 withMessage:(void *)arg3 {
    r23 = [arg3 retain];
    [ISError initErrors];
    r19 = [[NSDictionary dictionaryWithObject:arg3 forKey:**_NSLocalizedDescriptionKey] retain];
    [r23 release];
    r20 = [[NSError alloc] initWithDomain:@"Supersonic.com" code:arg2 userInfo:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)appendError:(void *)arg2 withPrefix:(void *)arg3 {
    r19 = [arg2 retain];
    r24 = [arg3 retain];
    r23 = [[arg2 localizedDescription] retain];
    r21 = [[arg3 stringByAppendingString:r23] retain];
    [r24 release];
    r22 = [[NSDictionary dictionaryWithObject:r21 forKey:**_NSLocalizedDescriptionKey] retain];
    [r21 release];
    [r23 release];
    r21 = [NSError alloc];
    r20 = [arg2 code];
    [r19 release];
    r19 = [r21 initWithDomain:@"Supersonic.com" code:r20 userInfo:r22];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)appendError:(void *)arg2 withSuffix:(void *)arg3 {
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [arg2 localizedDescription];
    r0 = [r0 retain];
    r24 = [[r0 stringByAppendingString:r21] retain];
    [r21 release];
    r21 = [[NSDictionary dictionaryWithObject:r24 forKey:**_NSLocalizedDescriptionKey] retain];
    [r24 release];
    [r0 release];
    r22 = [NSError alloc];
    r20 = [arg2 code];
    [r19 release];
    r19 = [r22 initWithDomain:@"Supersonic.com" code:r20 userInfo:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void)initErrors {
    if (*qword_1011dab68 != -0x1) {
            dispatch_once(0x1011dab68, 0x100e8b290);
    }
    return;
}

-(void *)initWithDomain:(void *)arg2 code:(long long)arg3 userInfo:(void *)arg4 {
    r22 = [arg2 retain];
    r0 = [[&var_30 super] initWithDomain:r22 code:arg3 userInfo:arg4];
    [r22 release];
    r0 = r0;
    return r0;
}

+(void *)appendWithPrefix:(void *)arg2 {
    r0 = [ISError appendError:self withPrefix:arg2];
    return r0;
}

+(void *)appendWithSuffix:(void *)arg2 {
    r0 = [ISError appendError:self withSuffix:arg2];
    return r0;
}

+(void *)replaceParams:(void *)arg2 withParams:(void *)arg3 {
    r31 = r31 - 0x70;
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
    r27 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = 0x0;
    r22 = 0x0;
    do {
            r25 = @selector(count);
            var_60 = @selector(rangeOfString:options:range:);
            r24 = @selector(stringByReplacingCharactersInRange:withString:);
            r23 = @selector(objectAtIndexedSubscript:);
            r21 = r27;
            [r21 length];
            asm { sxtw       x4, w22 };
            asm { sxtw       x5, w8 };
            r28 = objc_msgSend(r21, var_60);
            r26 = var_60;
            r22 = [objc_msgSend(r19, r23) retain];
            r0 = objc_msgSend(r21, r24);
            r29 = r29;
            r27 = [r0 retain];
            [r21 release];
            [r22 release];
            if (objc_msgSend(r19, r25) - 0x1 <= r20) {
                break;
            }
            r20 = r20 + 0x1;
            r22 = r28 + r26;
    } while (true);
    [r19 release];
    r0 = [r27 autorelease];
    return r0;
}

-(void *)prefix {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_prefix)), 0x1);
    return r0;
}

-(void *)suffix {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_suffix)), 0x1);
    return r0;
}

-(void)setPrefix:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setSuffix:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_suffix, 0x0);
    objc_storeStrong((int64_t *)&self->_prefix, 0x0);
    return;
}

@end