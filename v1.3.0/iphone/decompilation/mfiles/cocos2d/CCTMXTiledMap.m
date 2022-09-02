@implementation CCTMXTiledMap

+(void *)tiledMapWithTMXFile:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithTMXFile:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)tiledMapWithXML:(void *)arg2 resourcePath:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithXML:arg2 resourcePath:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithXML:(void *)arg2 resourcePath:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = arg2;
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setContentSize:r2];
            [r20 buildWithMapInfo:[CCTMXMapInfo formatWithXML:r21 resourcePath:r19]];
    }
    r0 = r20;
    return r0;
}

-(void *)initWithTMXFile:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setContentSize:r2];
            [r20 buildWithMapInfo:[CCTMXMapInfo formatWithTMXFile:r19]];
    }
    r0 = r20;
    return r0;
}

-(void)buildWithMapInfo:(void *)arg2 {
    r31 = r31 - 0x160;
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
    r20 = self;
    [arg2 mapSize];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mapSize));
    *(r20 + r8) = d0;
    *(0x8 + r20 + r8) = d1;
    [arg2 tileSize];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_tileSize));
    *(r20 + r8) = d0;
    *(0x8 + r20 + r8) = d1;
    *(int32_t *)(int64_t *)&r20->_mapOrientation = [arg2 orientation];
    r20->_objectGroups = [[arg2 objectGroups] retain];
    r20->_properties = [[arg2 properties] retain];
    r20->_tileProperties = [[arg2 tileProperties] retain];
    var_120 = q0;
    var_148 = arg2;
    r0 = [arg2 layers];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r0;
    var_150 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r19 = 0x0;
            r21 = *var_120;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_120 != r21) {
                                    objc_enumerationMutation(var_138);
                            }
                            r22 = *(var_128 + r25 * 0x8);
                            if ([r22 visible] != 0x0) {
                                    r26 = @selector(addChild:z:tag:);
                                    [r20 parseLayer:r22 map:var_148];
                                    asm { sxtw       x3, w19 };
                                    objc_msgSend(r20, r26);
                                    objc_msgSend(r22, r27);
                                    objc_msgSend(r20, r27);
                                    if (d0 > d8) {
                                            asm { fcsel      d0, d0, d8, gt };
                                    }
                                    if (d1 > d9) {
                                            asm { fcsel      d1, d1, d9, gt };
                                    }
                                    [r20 setContentSize:r2];
                                    r19 = r19 + 0x1;
                            }
                            r25 = r25 + 0x1;
                    } while (r25 < r23);
                    r0 = objc_msgSend(var_138, var_150);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)dealloc {
    [self->_objectGroups release];
    [self->_properties release];
    [self->_tileProperties release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)parseLayer:(void *)arg2 map:(void *)arg3 {
    r19 = [CCTMXLayer layerWithTilesetInfo:[self tilesetForLayer:r2 map:r3] layerInfo:arg2 mapInfo:arg3];
    [arg2 setOwnTiles:0x0];
    [r19 setupTiles];
    r0 = r19;
    return r0;
}

-(void *)propertyNamed:(void *)arg2 {
    r0 = self->_properties;
    r0 = [r0 valueForKey:arg2];
    return r0;
}

-(void *)layerNamed:(void *)arg2 {
    r2 = arg2;
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    r8 = *(self + r8);
    if (r8 == 0x0) goto loc_1002e32d4;

loc_1002e3234:
    r8 = r8->data;
    r9 = *r8;
    if (r9 == 0x0) goto loc_1002e32d4;

loc_1002e324c:
    r25 = *(r8 + 0x10);
    r26 = r25 + r9 * 0x8 - 0x8;
    if (r25 > r26) goto loc_1002e32d4;

loc_1002e3260:
    r19 = r2;
    goto loc_1002e3288;

loc_1002e3288:
    r23 = *r25;
    if ([r23 isKindOfClass:[CCTMXLayer class]] == 0x0 || ([[r23 layerName] isEqual:r2] & 0x1) == 0x0) goto loc_1002e32c8;

loc_1002e32d8:
    r0 = r23;
    return r0;

loc_1002e32c8:
    r25 = r25 + 0x8;
    if (r25 < r26) goto loc_1002e3288;

loc_1002e32d4:
    r23 = 0x0;
    goto loc_1002e32d8;
}

-(void *)objectGroupNamed:(void *)arg2 {
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
    r19 = arg2;
    var_110 = q0;
    r20 = self->_objectGroups;
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1002e33fc;

loc_1002e3368:
    r22 = r0;
    r26 = *var_110;
    r8 = 0x101137000;
    goto loc_1002e337c;

loc_1002e337c:
    r27 = 0x0;
    r28 = r8;
    r24 = *(r8 + 0x990);
    goto loc_1002e338c;

loc_1002e338c:
    if (*var_110 != r26) {
            objc_enumerationMutation(r20);
    }
    r25 = *(var_118 + r27 * 0x8);
    if ((objc_msgSend([r25 groupName], r24) & 0x1) != 0x0) goto loc_1002e3400;

loc_1002e33c8:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_1002e338c;

loc_1002e33d4:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    r8 = r28;
    if (r0 != 0x0) goto loc_1002e337c;

loc_1002e33fc:
    r25 = 0x0;
    goto loc_1002e3400;

loc_1002e3400:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r25;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)tilesetForLayer:(void *)arg2 map:(void *)arg3 {
    r31 = r31 - 0x160;
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
    r19 = arg2;
    [arg2 layerSize];
    r20 = [[arg3 tilesets] reverseObjectEnumerator];
    var_130 = q0;
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1002e31b8;

loc_1002e30c4:
    r22 = r0;
    var_150 = @selector(countByEnumeratingWithState:objects:count:);
    var_148 = *var_130;
    goto loc_1002e30d4;

loc_1002e30d4:
    r27 = 0x0;
    goto loc_1002e30d8;

loc_1002e30d8:
    if (*var_130 != var_148) {
            objc_enumerationMutation(r20);
    }
    if (d9 <= 0x0) goto loc_1002e3184;

loc_1002e30fc:
    r28 = 0x0;
    r23 = *(var_138 + r27 * 0x8);
    d0 = 0x0;
    goto loc_1002e3114;

loc_1002e3114:
    if (d8 <= 0x0) goto loc_1002e3174;

loc_1002e311c:
    d10 = d8 * d0;
    d0 = 0x0;
    r21 = 0x1;
    goto loc_1002e3130;

loc_1002e3130:
    r24 = @selector(tiles);
    d0 = d10 + d0;
    asm { fcvtzu     w26, d0 };
    r8 = *(int32_t *)(objc_msgSend(r19, r24) + r26 * 0x4);
    if (r8 == 0x0) goto loc_1002e3164;

loc_1002e314c:
    r26 = r8 & 0x1fffffff;
    if (r26 >= [r23 firstGid]) goto loc_1002e31bc;

loc_1002e3164:
    asm { ucvtf      d0, w21 };
    r21 = r21 + 0x1;
    if (d8 > d0) goto loc_1002e3130;

loc_1002e3174:
    r28 = r28 + 0x1;
    asm { ucvtf      d0, w28 };
    if (d9 > d0) goto loc_1002e3114;

loc_1002e3184:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_1002e30d8;

loc_1002e3190:
    r0 = objc_msgSend(r20, var_150);
    r22 = r0;
    if (r0 != 0x0) goto loc_1002e30d4;

loc_1002e31b4:
    r23 = 0x0;
    goto loc_1002e31bc;

loc_1002e31bc:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1002e31b8:
    r23 = 0x0;
    goto loc_1002e31bc;
}

-(void *)propertiesForGID:(unsigned int)arg2 {
    r19 = self->_tileProperties;
    [NSNumber numberWithInt:arg2];
    r0 = [r19 objectForKey:r2];
    return r0;
}

-(struct CGSize)mapSize {
    r0 = self;
    return r0;
}

-(struct CGSize)tileSize {
    r0 = self;
    return r0;
}

-(int)mapOrientation {
    r0 = *(int32_t *)(int64_t *)&self->_mapOrientation;
    return r0;
}

-(void)setObjectGroups:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)objectGroups {
    r0 = self->_objectGroups;
    return r0;
}

-(void *)properties {
    r0 = self->_properties;
    return r0;
}

-(void)setProperties:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end