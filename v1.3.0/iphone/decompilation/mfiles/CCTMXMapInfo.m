@implementation CCTMXMapInfo

+(void *)formatWithTMXFile:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithTMXFile:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)formatWithXML:(void *)arg2 resourcePath:(void *)arg3 {
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
    r20 = arg3;
    r19 = arg2;
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 internalInit:0x0 resourcePath:r20];
            [r21 parseXMLString:r19];
    }
    r0 = r21;
    return r0;
}

-(void)internalInit:(void *)arg2 resourcePath:(void *)arg3 {
    [self setTilesets:[NSMutableArray arrayWithCapacity:0x4]];
    [self setLayers:[NSMutableArray arrayWithCapacity:0x4]];
    [self setFilename:arg2];
    [self setResources:arg3];
    [self setObjectGroups:[NSMutableArray arrayWithCapacity:0x4]];
    [self setProperties:[NSMutableDictionary dictionaryWithCapacity:0x5]];
    [self setTileProperties:[NSMutableDictionary dictionaryWithCapacity:0x5]];
    *(self + 0x8) = [[NSMutableString alloc] initWithCapacity:0x400];
    *(int8_t *)(self + 0x10) = 0x0;
    *(self + 0x14) = *0x100b9ce60;
    *(int32_t *)(self + 0x20) = 0x0;
    return;
}

-(void *)initWithTMXFile:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 internalInit:r20 resourcePath:0x0];
            [r19 parseXMLFile:*(r19 + 0x28)];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [*(self + 0x68) release];
    [*(self + 0x60) release];
    [*(self + 0x28) release];
    [*(self + 0x30) release];
    [*(self + 0x8) release];
    [*(self + 0x70) release];
    [*(self + 0x78) release];
    [*(self + 0x80) release];
    [[&var_20 super] dealloc];
    return;
}

-(void)parseXMLData:(void *)arg2 {
    r0 = [NSXMLParser alloc];
    r0 = [r0 initWithData:arg2];
    r0 = [r0 autorelease];
    [r0 setDelegate:self];
    [r0 setShouldProcessNamespaces:0x0];
    [r0 setShouldReportNamespacePrefixes:0x0];
    [r0 setShouldResolveExternalEntities:0x0];
    [r0 parse];
    return;
}

-(void)parseXMLString:(void *)arg2 {
    [self parseXMLData:[arg2 dataUsingEncoding:0x4]];
    return;
}

-(void)parseXMLFile:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
            sub_1009d0950(r29 - 0x40);
            if (r20 != 0x0) {
                    r1 = [r20 UTF8String];
            }
            else {
                    r1 = "";
            }
            sub_1002e4080(&var_88, r1);
            r0 = sub_10042ccfc(&var_88);
            if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_88);
            }
            r0 = sub_10042cbac(&var_70, r29 - 0x40, &var_58);
            if (r0 != 0x0 && var_38 != 0x0 && var_30 != 0x0) {
                    r20 = [NSData dataWithBytesNoCopy:r2 length:r3];
            }
            else {
                    r20 = 0x0;
            }
            if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_70);
            }
            if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                    operator delete(0x0);
            }
            sub_1009d0b44(r29 - 0x40);
    }
    else {
            r20 = [NSData dataWithContentsOfURL:[NSURL fileURLWithPath:[[CCFileUtils sharedFileUtils] fullPathForFilename:r20]]];
    }
    [r19 parseXMLData:r20];
    return;
}

-(void)parser:(void *)arg2 foundCharacters:(void *)arg3 {
    r3 = arg3;
    r0 = self;
    if (*(int8_t *)(r0 + 0x10) != 0x0) {
            [*(r0 + 0x8) appendString:r3];
    }
    return;
}

-(void)parser:(void *)arg2 didEndElement:(void *)arg3 namespaceURI:(void *)arg4 qualifiedName:(void *)arg5 {
    r3 = arg3;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r3;
    r19 = self;
    if ([r3 isEqualToString:r2] != 0x0 && (*(int8_t *)(r19 + 0x14) & 0x2) != 0x0) {
            *(int8_t *)(r19 + 0x10) = 0x0;
            r20 = [*(r19 + 0x60) lastObject];
            r21 = [*(r19 + 0x8) UTF8String];
            r0 = *(r19 + 0x8);
            r0 = [r0 length];
            r0 = sub_100316af0(r21, r0, &var_28);
            if (var_28 != 0x0) {
                    if ((*(int8_t *)(r19 + 0x14) & 0xc) != 0x0) {
                            r21 = r0;
                            [r20 layerSize];
                            asm { fcvtzs     w3, d0, #0x2 };
                            sub_100318cc0(var_28, r21, &var_30, r3);
                            free(var_28);
                            if (var_30 != 0x0) {
                                    [r20 setTiles:@"data"];
                                    [*(r19 + 0x8) setString:r2];
                            }
                    }
                    else {
                            [r20 setTiles:@"data"];
                            [*(r19 + 0x8) setString:r2];
                    }
            }
    }
    else {
            if (([r20 isEqualToString:r2] & 0x1) == 0x0 && ([r20 isEqualToString:r2] & 0x1) == 0x0) {
                    if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
                            if ([r20 isEqualToString:r2] != 0x0) {
                                    *(int32_t *)(r19 + 0x18) = 0x0;
                            }
                    }
                    else {
                            *(int32_t *)(r19 + 0x18) = 0x0;
                    }
            }
            else {
                    *(int32_t *)(r19 + 0x18) = 0x0;
            }
    }
    return;
}

-(void)parser:(void *)arg2 parseErrorOccurred:(void *)arg3 {
    return;
}

-(int)orientation {
    r0 = *(int32_t *)(self + 0x38);
    return r0;
}

-(void)setOrientation:(int)arg2 {
    *(int32_t *)(self + 0x38) = arg2;
    return;
}

-(struct CGSize)mapSize {
    r0 = self;
    return r0;
}

-(void)setMapSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x40) = d0;
    *(self + 0x48) = d1;
    return;
}

-(void *)layers {
    r0 = *(self + 0x60);
    return r0;
}

-(void)setLayers:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)tilesets {
    r0 = *(self + 0x68);
    return r0;
}

-(struct CGSize)tileSize {
    r0 = self;
    return r0;
}

-(void)setTilesets:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setTileSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x50) = d0;
    *(self + 0x58) = d1;
    return;
}

-(void *)filename {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setFilename:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)resources {
    r0 = *(self + 0x30);
    return r0;
}

-(void *)objectGroups {
    r0 = *(self + 0x70);
    return r0;
}

-(void)setResources:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setObjectGroups:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)properties {
    r0 = *(self + 0x78);
    return r0;
}

-(void)setProperties:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)tileProperties {
    r0 = *(self + 0x80);
    return r0;
}

-(void)setTileProperties:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)parser:(void *)arg2 didStartElement:(void *)arg3 namespaceURI:(void *)arg4 qualifiedName:(void *)arg5 attributes:(void *)arg6 {
    r31 = r31 - 0x180;
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
    r20 = arg6;
    r22 = arg3;
    r19 = self;
    if ([arg3 isEqualToString:r2] == 0x0) goto loc_1002e41dc;

loc_1002e417c:
    [[r20 objectForKey:r2] isEqualToString:r2];
    r0 = objc_msgSend(r20, r22);
    r23 = r0;
    if (objc_msgSend(r0, r21) == 0x0) goto loc_1002e42b4;

loc_1002e41d4:
    r8 = 0x0;
    goto loc_1002e43bc;

loc_1002e43bc:
    *(int32_t *)(r19 + 0x38) = r8;
    goto loc_1002e43c0;

loc_1002e43c0:
    [[r20 objectForKey:r2] intValue];
    asm { scvtf      d0, w0 };
    *(r19 + 0x40) = d0;
    objc_msgSend(objc_msgSend(r20, r22), r21);
    asm { scvtf      d0, w0 };
    *(r19 + 0x48) = d0;
    objc_msgSend(objc_msgSend(r20, r22), r21);
    asm { scvtf      d0, w0 };
    *(r19 + 0x50) = d0;
    objc_msgSend(objc_msgSend(r20, r22), r21);
    asm { scvtf      d0, w0 };
    *(r19 + 0x58) = d0;
    r8 = 0x1;
    goto loc_1002e445c;

loc_1002e445c:
    *(int32_t *)(r19 + 0x18) = r8;
    goto loc_1002e4460;

loc_1002e4460:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1002e42b4:
    if ([r23 isEqualToString:r2] == 0x0) goto loc_1002e43a0;

loc_1002e42cc:
    r8 = 0x2;
    goto loc_1002e43bc;

loc_1002e43a0:
    if ([r23 isEqualToString:r2] == 0x0) goto loc_1002e43c0;

loc_1002e43b8:
    r8 = 0x1;
    goto loc_1002e43bc;

loc_1002e41dc:
    if ([r22 isEqualToString:r2] == 0x0) goto loc_1002e42d4;

loc_1002e41f4:
    r0 = [r20 objectForKey:r2];
    if (r0 == 0x0) goto loc_1002e455c;

loc_1002e4214:
    r22 = r0;
    r0 = *(r19 + 0x28);
    r0 = [r0 stringByDeletingLastPathComponent];
    if (r0 == 0x0) {
            r0 = *(r19 + 0x30);
    }
    var_70 = **___stack_chk_guard;
    r21 = @selector(objectForKey:);
    r22 = [r0 stringByAppendingPathComponent:r22];
    *(int32_t *)(r19 + 0x20) = [objc_msgSend(r20, r21) intValue];
    if (**___stack_chk_guard != var_70) goto loc_1002e50fc;

loc_1002e4280:
    r1 = @selector(parseXMLFile:);
    r0 = r19;
    goto loc_1002e4290;

loc_1002e4290:
    objc_msgSend(r0, r1);
    return;

loc_1002e50fc:
    __stack_chk_fail();
    return;

loc_1002e455c:
    r21 = @selector(objectForKey:);
    r22 = [CCTMXTilesetInfo new];
    [r22 setName:objc_msgSend(r20, r21)];
    if (*(int32_t *)(r19 + 0x20) != 0x0) {
            [r22 setFirstGid:@"name"];
            *(int32_t *)(r19 + 0x20) = 0x0;
            r23 = @selector(intValue);
    }
    else {
            r0 = [r20 objectForKey:r2];
            r23 = @selector(intValue);
            [r22 setFirstGid:objc_msgSend(r0, r23)];
    }
    var_70 = **___stack_chk_guard;
    r21 = @selector(objectForKey:);
    [r22 setSpacing:objc_msgSend(objc_msgSend(r20, r21), r23)];
    [r22 setMargin:objc_msgSend(objc_msgSend(r20, r21), r23)];
    objc_msgSend(objc_msgSend(r20, r21), r23);
    asm { scvtf      d8, w0 };
    objc_msgSend(objc_msgSend(r20, r21), r23);
    asm { scvtf      d1, w0 };
    [r22 setTileSize:r2];
    [r22 setTileOffset:r2];
    [*(r19 + 0x68) addObject:r22];
    if (**___stack_chk_guard == var_70) {
            [r22 release];
    }
    else {
            __stack_chk_fail();
    }
    return;

loc_1002e42d4:
    if ([r22 isEqualToString:r2] == 0x0) goto loc_1002e449c;

loc_1002e42ec:
    var_70 = **___stack_chk_guard;
    r19 = [*(r19 + 0x68) lastObject];
    [[r20 objectForKey:@"x"] floatValue];
    [[r20 objectForKey:@"y"] floatValue];
    if (**___stack_chk_guard == var_70) {
            r2 = @"y";
            asm { fcvt       d2, s8 };
            asm { fcvt       d1, s0 };
            [r19 setTileOffset:r2];
    }
    else {
            __stack_chk_fail();
    }
    return;

loc_1002e449c:
    if ([r22 isEqualToString:r2] == 0x0) goto loc_1002e45c4;

loc_1002e44b4:
    r21 = [*(r19 + 0x68) lastObject];
    r22 = [NSMutableDictionary dictionaryWithCapacity:0x3];
    *(int32_t *)(r19 + 0x1c) = [[r20 objectForKey:@"id"] intValue] + [r21 firstGid];
    [*(r19 + 0x80) setObject:r22 forKey:[NSNumber numberWithInt:@"id"]];
    r8 = 0x5;
    goto loc_1002e445c;

loc_1002e45c4:
    if ([r22 isEqualToString:r2] == 0x0) goto loc_1002e4868;

loc_1002e45dc:
    r22 = [CCTMXLayerInfo new];
    [r22 setName:[r20 objectForKey:r2]];
    [[r20 objectForKey:r2] intValue];
    asm { scvtf      d8, w0 };
    objc_msgSend(objc_msgSend(r20, r23), r24);
    asm { scvtf      d1, w0 };
    [r22 setLayerSize:r2];
    objc_msgSend(objc_msgSend(r20, r23), r21) ^ 0x1;
    [r22 setVisible:r2];
    if (objc_msgSend(r20, r23) != 0x0) {
            r2 = @"opacity";
            [[r20 objectForKey:@"opacity"] floatValue];
            asm { fcvtzs     w2, s0 };
    }
    else {
            r2 = 0xff;
    }
    [r22 setOpacity:r2];
    [[r20 objectForKey:@"x"] intValue];
    r2 = @"y";
    [[r20 objectForKey:r2] intValue];
    asm { scvtf      d0, w21 };
    asm { scvtf      d1, w0 };
    [r22 setOffset:r2];
    [*(r19 + 0x60) addObject:r22];
    [r22 release];
    r8 = 0x2;
    goto loc_1002e445c;

loc_1002e4868:
    if ([r22 isEqualToString:r2] == 0x0) goto loc_1002e496c;

loc_1002e4880:
    [[[CCTMXObjectGroup alloc] init] setGroupName:[r20 objectForKey:r2]];
    [[r20 objectForKey:r2] intValue];
    asm { scvtf      d0, w0 };
    objc_msgSend(objc_msgSend(r20, r22), r23);
    asm { scvtf      d0, w0 };
    [r21 setPositionOffset:r2];
    [*(r19 + 0x70) addObject:r21];
    [r21 release];
    r8 = 0x3;
    goto loc_1002e445c;

loc_1002e496c:
    if ([r22 isEqualToString:r2] == 0x0) goto loc_1002e4a9c;

loc_1002e4984:
    r21 = [*(r19 + 0x68) lastObject];
    r20 = [r20 objectForKey:@"source"];
    r0 = *(r19 + 0x28);
    r0 = [r0 stringByDeletingLastPathComponent];
    if (r0 == 0x0) {
            r0 = *(r19 + 0x30);
    }
    var_70 = **___stack_chk_guard;
    r0 = [r0 stringByAppendingPathComponent:r20];
    if (**___stack_chk_guard != var_70) goto loc_1002e50fc;

loc_1002e49f4:
    r1 = @selector(setSourceImage:);
    r0 = r21;
    goto loc_1002e4290;

loc_1002e4a9c:
    if ([r22 isEqualToString:r2] == 0x0) goto loc_1002e4b3c;

loc_1002e4ab4:
    r21 = @selector(isEqualToString:);
    r22 = @selector(objectForKey:);
    r23 = objc_msgSend(r20, r22);
    r20 = objc_msgSend(r20, r22);
    if (objc_msgSend(r23, r21) == 0x0) goto loc_1002e4460;

loc_1002e4b04:
    r21 = @selector(isEqualToString:);
    *(int32_t *)(r19 + 0x14) = *(int32_t *)(r19 + 0x14) | 0x2;
    *(int8_t *)(r19 + 0x10) = 0x1;
    if (objc_msgSend(r20, r21) == 0x0) goto loc_1002e4e40;

loc_1002e4b30:
    r8 = *(int32_t *)(r19 + 0x14);
    r8 = r8 | 0x4;
    goto loc_1002e4e60;

loc_1002e4e60:
    *(int32_t *)(r19 + 0x14) = r8;
    goto loc_1002e4460;

loc_1002e4e40:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_1002e4460;

loc_1002e4e58:
    r8 = *(int32_t *)(r19 + 0x14);
    r8 = r8 | 0x8;
    goto loc_1002e4e60;

loc_1002e4b3c:
    if ([r22 isEqualToString:r2] == 0x0) goto loc_1002e4df8;

loc_1002e4b54:
    var_140 = [*(r19 + 0x70) lastObject];
    r22 = [[NSMutableDictionary alloc] initWithCapacity:0xa];
    r0 = [NSArray arrayWithObjects:@"name"];
    r23 = r0;
    var_120 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r25 = r0;
            r21 = *var_120;
            do {
                    r24 = 0x0;
                    do {
                            if (*var_120 != r21) {
                                    objc_enumerationMutation(r23);
                            }
                            r26 = @selector(objectForKey:);
                            r28 = *(var_128 + r24 * 0x8);
                            r0 = objc_msgSend(r20, r26);
                            if (r0 != 0x0) {
                                    [r22 setObject:r2 forKey:r3];
                            }
                            r24 = r24 + 0x1;
                    } while (r24 < r25);
                    r0 = objc_msgSend(r23, var_138);
                    r25 = r0;
            } while (r0 != 0x0);
    }
    r0 = [r20 objectForKey:r2];
    r25 = var_140;
    if (r0 != 0x0) {
            [r0 intValue];
            asm { scvtf      d8, w0 };
            objc_msgSend(r25, *(r21 + 0xf50));
            asm { fcvtzs     w2, d0 };
            [NSNumber numberWithInt:r2];
            [r22 setObject:r2 forKey:r3];
    }
    r0 = [r20 objectForKey:r2];
    if (r0 != 0x0) {
            [r0 intValue];
            asm { scvtf      d8, w0 };
            objc_msgSend(r25, *(r21 + 0xf50));
            asm { fcvtzs     w8, d0 };
            d0 = *(r19 + 0x48);
            d1 = *(r19 + 0x58);
            d0 = d0 * d1;
            asm { scvtf      d1, w8 };
            objc_msgSend(objc_msgSend(r20, r23), r24);
            asm { scvtf      d0, w0 };
            asm { fcvtzs     w2, d0 };
            [NSNumber numberWithInt:r2];
            [r22 setObject:r2 forKey:r3];
    }
    [[r25 objects] addObject:r22];
    [r22 release];
    r8 = 0x4;
    goto loc_1002e445c;

loc_1002e4df8:
    if ([r22 isEqualToString:r2] != 0x0) {
            r8 = *(int32_t *)(r19 + 0x18);
            r8 = r8 - 0x1;
            if (r8 <= 0x4) {
                    (0x1002e4e38 + *(int8_t *)(0x100ba62b8 + r8) * 0x4)();
            }
            else {
                    if (**___stack_chk_guard != **___stack_chk_guard) {
                            __stack_chk_fail();
                    }
            }
    }
    else {
            if ([r22 isEqualToString:r2] != 0x0) {
                    var_70 = **___stack_chk_guard;
                    r19 = [[[*(r19 + 0x70) lastObject] objects] lastObject];
                    r0 = [r20 objectForKey:@"points"];
                    if (**___stack_chk_guard == var_70) {
                            r0 = r19;
                            [r0 setObject:r2 forKey:r3];
                    }
                    else {
                            __stack_chk_fail();
                    }
            }
            else {
                    if ([r22 isEqualToString:r2] != 0x0) {
                            var_70 = **___stack_chk_guard;
                            r19 = [[[*(r19 + 0x70) lastObject] objects] lastObject];
                            r0 = [r20 objectForKey:@"points"];
                            if (**___stack_chk_guard == var_70) {
                                    r0 = r19;
                                    [r0 setObject:r2 forKey:r3];
                            }
                            else {
                                    __stack_chk_fail();
                            }
                    }
                    else {
                            if (**___stack_chk_guard != **___stack_chk_guard) {
                                    __stack_chk_fail();
                            }
                    }
            }
    }
    return;
}

@end