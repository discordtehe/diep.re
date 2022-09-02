@implementation MPXMLParser

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSMutableArray array];
            r0 = [r0 retain];
            r8 = *(r19 + 0x8);
            *(r19 + 0x8) = r0;
            [r8 release];
            r20 = *(r19 + 0x8);
            r21 = [[NSMutableDictionary dictionary] retain];
            [r20 addObject:r21];
            [r21 release];
            r0 = [NSMutableString string];
            r0 = [r0 retain];
            r8 = *(r19 + 0x10);
            *(r19 + 0x10) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)dictionaryWithData:(void *)arg2 error:(void * *)arg3 {
    r21 = [arg2 retain];
    r20 = [objc_alloc() initWithData:r21];
    [r21 release];
    [r20 setDelegate:self];
    [r20 parse];
    r0 = [self elementStack];
    r0 = [r0 retain];
    r21 = [[r0 objectAtIndexedSubscript:0x0] retain];
    [r0 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)parser:(void *)arg2 parseErrorOccurred:(void *)arg3 {
    [self setParseError:arg3];
    return;
}

-(void)parser:(void *)arg2 foundCharacters:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self currentTextContent];
    r0 = [r0 retain];
    [r0 appendString:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)parser:(void *)arg2 didEndElement:(void *)arg3 namespaceURI:(void *)arg4 qualifiedName:(void *)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self elementStack];
    r0 = [r0 retain];
    r21 = [[r0 lastObject] retain];
    [r0 release];
    r23 = [[r19 currentTextContent] retain];
    r24 = [[NSCharacterSet whitespaceAndNewlineCharacterSet] retain];
    r0 = [r23 stringByTrimmingCharactersInSet:r24];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    [r23 release];
    if ([r22 length] != 0x0) {
            [r21 setObject:r22 forKeyedSubscript:@"text"];
    }
    r23 = [[NSMutableString string] retain];
    [r19 setCurrentTextContent:r23];
    [r23 release];
    r0 = [r19 elementStack];
    r0 = [r0 retain];
    [r0 removeLastObject];
    [r0 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)parser:(void *)arg2 didStartElement:(void *)arg3 namespaceURI:(void *)arg4 qualifiedName:(void *)arg5 attributes:(void *)arg6 {
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
    r20 = self;
    r19 = [arg3 retain];
    r24 = [arg6 retain];
    r0 = [r20 elementStack];
    r0 = [r0 retain];
    r22 = [[r0 lastObject] retain];
    [r0 release];
    r0 = [NSMutableDictionary dictionary];
    r0 = [r0 retain];
    r23 = r0;
    [r0 addEntriesFromDictionary:r24];
    [r24 release];
    r0 = [r22 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 != 0x0) {
            r0 = [r22 objectForKeyedSubscript:r2];
            r29 = r29;
            r27 = [r0 retain];
            [NSArray class];
            r26 = [r27 isKindOfClass:r2];
            [r27 release];
    }
    else {
            r26 = 0x0;
    }
    [r25 release];
    r0 = [r22 objectForKeyedSubscript:r2];
    r29 = r29;
    r25 = [r0 retain];
    if (r26 == 0x0) goto loc_1004df5cc;

loc_1004df5b0:
    r24 = @selector(addObject:);
    objc_msgSend(r25, r24);
    goto loc_1004df658;

loc_1004df658:
    [r25 release];
    goto loc_1004df684;

loc_1004df684:
    r0 = [r20 elementStack];
    r0 = [r0 retain];
    objc_msgSend(r0, r24);
    [r20 release];
    [r23 release];
    [r22 release];
    [r19 release];
    return;

loc_1004df5cc:
    [r25 release];
    if (r25 == 0x0) goto loc_1004df664;

loc_1004df5d8:
    r25 = [[r22 objectForKeyedSubscript:r2] retain];
    r0 = [NSMutableArray array];
    r29 = r29;
    r0 = [r0 retain];
    r24 = @selector(addObject:);
    objc_msgSend(r0, r24);
    objc_msgSend(r26, r24);
    [r22 setObject:r26 forKeyedSubscript:r19];
    [r26 release];
    goto loc_1004df658;

loc_1004df664:
    [r22 setObject:r23 forKeyedSubscript:r19];
    r24 = @selector(addObject:);
    goto loc_1004df684;
}

-(void *)elementStack {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setElementStack:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)currentTextContent {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setCurrentTextContent:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)parseError {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setParseError:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end