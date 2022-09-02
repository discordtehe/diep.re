@implementation ANSPredefinedEvent

-(void *)name {
    objc_retainAutorelease(@"predefined");
    return @"predefined";
}

-(void *)dictionaryRepresentation {
    r31 = r31 - 0xa0;
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
    var_48 = **___stack_chk_guard;
    r19 = [[self identifier] retain];
    r20 = [[self predefinedEventName] retain];
    r0 = [self customAttributes];
    r0 = [r0 retain];
    r21 = r0;
    r24 = [[r0 dictionaryRepresentation] retain];
    r0 = [self predefinedAttributes];
    r0 = [r0 retain];
    r25 = r0;
    r23 = [[r0 dictionaryRepresentation] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_88 count:0x4];
    r22 = [r0 retain];
    [r23 release];
    [r25 release];
    [r24 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)description {
    [self class];
    r22 = [[self predefinedEventName] retain];
    r23 = [[self predefinedAttributes] retain];
    r19 = [[self customAttributes] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r19 release];
    [r23 release];
    [r22 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)signUpEventWithMethod:(void *)arg2 success:(void *)arg3 customAttributes:(void *)arg4 {
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r25 = [arg4 retain];
    r0 = [ANSPredefinedEvent alloc];
    r0 = [r0 init];
    r20 = r0;
    [r0 setPredefinedEventName:@"sign_up"];
    r26 = [[ANSAttributeDictionary alloc] initWithDictionary:r25];
    [r25 release];
    [r20 setCustomAttributes:r26];
    [r26 release];
    r23 = [[ANSAttributeDictionary alloc] init];
    [r20 setPredefinedAttributes:r23];
    [r23 release];
    r0 = [r20 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg2 forKey:@"method"];
    [r22 release];
    [r0 release];
    r0 = [r20 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addBooleanAttribute:r19 forKey:@"success"];
    [r19 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)loginEventWithMethod:(void *)arg2 success:(void *)arg3 customAttributes:(void *)arg4 {
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r25 = [arg4 retain];
    r0 = [ANSPredefinedEvent alloc];
    r0 = [r0 init];
    r20 = r0;
    [r0 setPredefinedEventName:@"login"];
    r26 = [[ANSAttributeDictionary alloc] initWithDictionary:r25];
    [r25 release];
    [r20 setCustomAttributes:r26];
    [r26 release];
    r23 = [[ANSAttributeDictionary alloc] init];
    [r20 setPredefinedAttributes:r23];
    [r23 release];
    r0 = [r20 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg2 forKey:@"method"];
    [r22 release];
    [r0 release];
    r0 = [r20 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addBooleanAttribute:r19 forKey:@"success"];
    [r19 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)inviteEventWithMethod:(void *)arg2 customAttributes:(void *)arg3 {
    r20 = [arg2 retain];
    r24 = [arg3 retain];
    r0 = [ANSPredefinedEvent alloc];
    r0 = [r0 init];
    r21 = r0;
    [r0 setPredefinedEventName:@"invite"];
    r25 = [[ANSAttributeDictionary alloc] initWithDictionary:r24];
    [r24 release];
    [r21 setCustomAttributes:r25];
    [r25 release];
    r22 = [[ANSAttributeDictionary alloc] init];
    [r21 setPredefinedAttributes:r22];
    [r22 release];
    r0 = [r21 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg2 forKey:@"method"];
    [r20 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)shareEventWithMethod:(void *)arg2 contentName:(void *)arg3 contentType:(void *)arg4 contentId:(void *)arg5 customAttributes:(void *)arg6 {
    r27 = [arg2 retain];
    var_70 = [arg3 retain];
    var_68 = [arg4 retain];
    var_58 = [arg5 retain];
    r23 = [arg6 retain];
    r0 = [ANSPredefinedEvent alloc];
    r0 = [r0 init];
    r22 = r0;
    [r0 setPredefinedEventName:@"share"];
    r25 = [[ANSAttributeDictionary alloc] initWithDictionary:r23];
    [r23 release];
    [r22 setCustomAttributes:r25];
    [r25 release];
    r20 = [[ANSAttributeDictionary alloc] init];
    [r22 setPredefinedAttributes:r20];
    [r20 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg2 forKey:@"method"];
    [r27 release];
    [r0 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg3 forKey:@"content_name"];
    [var_70 release];
    [r0 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg4 forKey:@"content_type"];
    [var_68 release];
    [r0 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg5 forKey:@"content_id"];
    [var_58 release];
    [r0 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)levelStartEventWithLevelName:(void *)arg2 customAttributes:(void *)arg3 {
    r20 = [arg2 retain];
    r24 = [arg3 retain];
    r0 = [ANSPredefinedEvent alloc];
    r0 = [r0 init];
    r21 = r0;
    [r0 setPredefinedEventName:@"level_start"];
    r25 = [[ANSAttributeDictionary alloc] initWithDictionary:r24];
    [r24 release];
    [r21 setCustomAttributes:r25];
    [r25 release];
    r22 = [[ANSAttributeDictionary alloc] init];
    [r21 setPredefinedAttributes:r22];
    [r22 release];
    r0 = [r21 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg2 forKey:@"level_name"];
    [r20 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)purchaseEventWithPrice:(void *)arg2 currency:(void *)arg3 success:(void *)arg4 itemName:(void *)arg5 itemType:(void *)arg6 itemId:(void *)arg7 customAttributes:(void *)arg8 {
    r23 = [arg2 retain];
    var_80 = [arg3 retain];
    r26 = [arg4 retain];
    var_78 = [arg5 retain];
    var_68 = [arg6 retain];
    var_58 = [arg7 retain];
    r19 = [arg8 retain];
    r0 = [ANSPredefinedEvent alloc];
    r0 = [r0 init];
    r22 = r0;
    [r0 setPredefinedEventName:@"purchase"];
    r20 = [[ANSAttributeDictionary alloc] initWithDictionary:r19];
    [r19 release];
    [r22 setCustomAttributes:r20];
    [r20 release];
    r19 = [[ANSAttributeDictionary alloc] init];
    [r22 setPredefinedAttributes:r19];
    [r19 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addPriceAttribute:r23 forKey:@"item_price"];
    [r23 release];
    [r0 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg3 forKey:@"currency"];
    [var_80 release];
    [r0 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addBooleanAttribute:r26 forKey:@"success"];
    [r26 release];
    [r0 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg5 forKey:@"item_name"];
    [var_78 release];
    [r0 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg6 forKey:@"item_type"];
    [var_68 release];
    [r0 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg7 forKey:@"item_id"];
    [var_58 release];
    [r0 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)levelEndEventWithLevelName:(void *)arg2 score:(void *)arg3 success:(void *)arg4 customAttributes:(void *)arg5 {
    r24 = [arg2 retain];
    var_58 = [arg3 retain];
    r19 = [arg4 retain];
    r27 = [arg5 retain];
    r0 = [ANSPredefinedEvent alloc];
    r0 = [r0 init];
    r20 = r0;
    [r0 setPredefinedEventName:@"level_end"];
    r28 = [[ANSAttributeDictionary alloc] initWithDictionary:r27];
    [r27 release];
    [r20 setCustomAttributes:r28];
    [r28 release];
    r25 = [[ANSAttributeDictionary alloc] init];
    [r20 setPredefinedAttributes:r25];
    [r25 release];
    r0 = [r20 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg2 forKey:@"level_name"];
    [r24 release];
    [r0 release];
    r0 = [r20 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg3 forKey:@"score"];
    [var_58 release];
    [r0 release];
    r0 = [r20 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addBooleanAttribute:r19 forKey:@"success"];
    [r19 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)startCheckoutEventWithPrice:(void *)arg2 currency:(void *)arg3 itemCount:(void *)arg4 customAttributes:(void *)arg5 {
    r24 = [arg2 retain];
    r23 = [arg3 retain];
    var_58 = [arg4 retain];
    r27 = [arg5 retain];
    r0 = [ANSPredefinedEvent alloc];
    r0 = [r0 init];
    r21 = r0;
    [r0 setPredefinedEventName:@"start_checkout"];
    r28 = [[ANSAttributeDictionary alloc] initWithDictionary:r27];
    [r27 release];
    [r21 setCustomAttributes:r28];
    [r28 release];
    r25 = [[ANSAttributeDictionary alloc] init];
    [r21 setPredefinedAttributes:r25];
    [r25 release];
    r0 = [r21 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addPriceAttribute:r24 forKey:@"total_price"];
    [r24 release];
    [r0 release];
    r0 = [r21 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg3 forKey:@"currency"];
    [r23 release];
    [r0 release];
    r0 = [r21 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg4 forKey:@"item_count"];
    [var_58 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)addToCartEventWithPrice:(void *)arg2 currency:(void *)arg3 itemName:(void *)arg4 itemType:(void *)arg5 itemId:(void *)arg6 customAttributes:(void *)arg7 {
    r28 = [arg2 retain];
    var_78 = [arg3 retain];
    var_70 = [arg4 retain];
    var_68 = [arg5 retain];
    var_58 = [arg6 retain];
    r25 = [arg7 retain];
    r0 = [ANSPredefinedEvent alloc];
    r0 = [r0 init];
    r22 = r0;
    [r0 setPredefinedEventName:@"add_to_cart"];
    r19 = [[ANSAttributeDictionary alloc] initWithDictionary:r25];
    [r25 release];
    [r22 setCustomAttributes:r19];
    [r19 release];
    r19 = [[ANSAttributeDictionary alloc] init];
    [r22 setPredefinedAttributes:r19];
    [r19 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addPriceAttribute:r28 forKey:@"item_price"];
    [r28 release];
    [r0 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg3 forKey:@"currency"];
    [var_78 release];
    [r0 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg4 forKey:@"item_name"];
    [var_70 release];
    [r0 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg5 forKey:@"item_type"];
    [var_68 release];
    [r0 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg6 forKey:@"item_id"];
    [var_58 release];
    [r0 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)ratingEventWithRating:(void *)arg2 contentName:(void *)arg3 contentType:(void *)arg4 contentId:(void *)arg5 customAttributes:(void *)arg6 {
    var_78 = [arg2 retain];
    var_70 = [arg3 retain];
    var_68 = [arg4 retain];
    var_58 = [arg5 retain];
    r28 = [arg6 retain];
    r0 = [ANSPredefinedEvent alloc];
    r0 = [r0 init];
    r22 = r0;
    [r0 setPredefinedEventName:@"rating"];
    r19 = [[ANSAttributeDictionary alloc] initWithDictionary:r28];
    [r28 release];
    [r22 setCustomAttributes:r19];
    [r19 release];
    r19 = [[ANSAttributeDictionary alloc] init];
    [r22 setPredefinedAttributes:r19];
    [r19 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg2 forKey:@"rating"];
    [var_78 release];
    [r0 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg3 forKey:@"content_name"];
    [var_70 release];
    [r0 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg4 forKey:@"content_type"];
    [var_68 release];
    [r0 release];
    r0 = [r22 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg5 forKey:@"content_id"];
    [var_58 release];
    [r0 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)contentViewEventWithName:(void *)arg2 contentType:(void *)arg3 contentId:(void *)arg4 customAttributes:(void *)arg5 {
    r25 = [arg2 retain];
    var_60 = [arg3 retain];
    var_58 = [arg4 retain];
    r28 = [arg5 retain];
    r0 = [ANSPredefinedEvent alloc];
    r0 = [r0 init];
    r21 = r0;
    [r0 setPredefinedEventName:@"content_view"];
    r20 = [[ANSAttributeDictionary alloc] initWithDictionary:r28];
    [r28 release];
    [r21 setCustomAttributes:r20];
    [r20 release];
    r20 = [[ANSAttributeDictionary alloc] init];
    [r21 setPredefinedAttributes:r20];
    [r20 release];
    r0 = [r21 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg2 forKey:@"content_name"];
    [r25 release];
    [r0 release];
    r0 = [r21 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg3 forKey:@"content_type"];
    [var_60 release];
    [r0 release];
    r0 = [r21 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg4 forKey:@"content_id"];
    [var_58 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)searchEventWithQuery:(void *)arg2 customAttributes:(void *)arg3 {
    r20 = [arg2 retain];
    r24 = [arg3 retain];
    r0 = [ANSPredefinedEvent alloc];
    r0 = [r0 init];
    r21 = r0;
    [r0 setPredefinedEventName:@"search"];
    r25 = [[ANSAttributeDictionary alloc] initWithDictionary:r24];
    [r24 release];
    [r21 setCustomAttributes:r25];
    [r25 release];
    r22 = [[ANSAttributeDictionary alloc] init];
    [r21 setPredefinedAttributes:r22];
    [r22 release];
    r0 = [r21 predefinedAttributes];
    r0 = [r0 retain];
    [r0 addAttribute:arg2 forKey:@"query"];
    [r20 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)predefinedEventName {
    r0 = self->_predefinedEventName;
    return r0;
}

-(void)setPredefinedEventName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_predefinedEventName, arg2);
    return;
}

-(void *)predefinedAttributes {
    r0 = self->_predefinedAttributes;
    return r0;
}

-(void)setPredefinedAttributes:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_predefinedAttributes, arg2);
    return;
}

-(void *)customAttributes {
    r0 = self->_customAttributes;
    return r0;
}

-(void)setCustomAttributes:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_customAttributes, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_customAttributes, 0x0);
    objc_storeStrong((int64_t *)&self->_predefinedAttributes, 0x0);
    objc_storeStrong((int64_t *)&self->_predefinedEventName, 0x0);
    return;
}

@end