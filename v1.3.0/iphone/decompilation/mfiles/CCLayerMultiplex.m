@implementation CCLayerMultiplex

+(void *)layerWithArray:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithArray:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)layerWithLayers:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithLayers:arg2 vaList:&saved_fp + 0x10];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithArray:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 mutableCopy];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_layers));
            *(r19 + r8) = r0;
            *(int32_t *)(int64_t *)&r19->_enabledLayer = 0x0;
            [*(r19 + r8) objectAtIndex:0x0];
            [r19 addChild:r2];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [self->_layers release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithLayers:(void *)arg2 vaList:(char *)arg3 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    var_28 = arg3;
    r0 = [[&var_38 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSMutableArray arrayWithCapacity:0x5];
            r0 = [r0 retain];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_layers));
            *(r19 + r22) = r0;
            r1 = @selector(addObject:);
            do {
                    objc_msgSend(r0, r1);
                    r8 = var_28;
                    var_28 = r8 + 0x8;
                    if (*r8 == 0x0) {
                        break;
                    }
                    r21 = @selector(addObject:);
                    r0 = *(r19 + r22);
                    r1 = r21;
            } while (true);
            *(int32_t *)(int64_t *)&r19->_enabledLayer = 0x0;
            [*(r19 + r22) objectAtIndex:0x0];
            [r19 addChild:r2];
    }
    r0 = r19;
    return r0;
}

-(void)switchTo:(unsigned int)arg2 {
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_layers));
    r0 = *(self + r22);
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_enabledLayer));
    [self removeChild:[r0 objectAtIndex:*(int32_t *)(self + r23)] cleanup:0x1];
    *(int32_t *)(self + r23) = arg2;
    [*(self + r22) objectAtIndex:arg2];
    [self addChild:r2];
    return;
}

-(void)switchToAndReleaseMe:(unsigned int)arg2 {
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_layers));
    r0 = *(self + r24);
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_enabledLayer));
    [self removeChild:[r0 objectAtIndex:*(int32_t *)(self + r25)] cleanup:0x1];
    [*(self + r24) replaceObjectAtIndex:*(int32_t *)(self + r25) withObject:[NSNull null]];
    *(int32_t *)(self + r25) = arg2;
    [*(self + r24) objectAtIndex:arg2];
    [self addChild:r2];
    return;
}

@end