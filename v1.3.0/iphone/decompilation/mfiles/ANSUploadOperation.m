@implementation ANSUploadOperation

-(void *)initWithUploader:(void *)arg2 answersURL:(void *)arg3 apiKey:(void *)arg4 multipartURL:(void *)arg5 multipartMimeBoundary:(void *)arg6 {
    r31 = r31 - 0x80;
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
    r21 = arg6;
    r23 = arg5;
    r24 = arg4;
    r27 = arg3;
    r19 = arg2;
    var_68 = [r19 retain];
    r20 = [r27 retain];
    r22 = [r24 retain];
    r25 = [r23 retain];
    r28 = [r21 retain];
    r0 = [[&var_60 super] init];
    r26 = r0;
    if (r26 != 0x0) {
            objc_storeStrong((int64_t *)&r26->_uploader, r19);
            objc_storeStrong((int64_t *)&r26->_answersURL, r27);
            objc_storeStrong((int64_t *)&r26->_apiKey, r24);
            objc_storeStrong((int64_t *)&r26->_multipartURL, r23);
            objc_storeStrong((int64_t *)&r26->_multipartMimeBoundary, r21);
    }
    [r28 release];
    [r25 release];
    [r22 release];
    [r20 release];
    [var_68 release];
    r0 = r26;
    return r0;
}

-(void *)uploader {
    r0 = self->_uploader;
    return r0;
}

-(void *)currentTimestampString {
    r19 = @class(NSNumber);
    r0 = [NSDate date];
    r0 = [r0 retain];
    r20 = r0;
    [r0 timeIntervalSince1970];
    r0 = [r19 numberWithDouble:r2];
    r0 = [r0 retain];
    r21 = [r0 longLongValue];
    [r0 release];
    [r20 release];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithLongLong:r21];
    r0 = [r0 retain];
    r20 = [[r0 stringValue] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)answersURL {
    r0 = self->_answersURL;
    return r0;
}

-(void)main {
    r21 = [[self multipartMimeBoundary] retain];
    r19 = [[FABMultipartMimeStreamEncoder contentTypeHTTPHeaderValueWithBoundary:r21] retain];
    [r21 release];
    r22 = [[self answersURL] retain];
    r21 = [[NSMutableURLRequest requestWithURL:r22] retain];
    [r22 release];
    [r21 setValue:r19 forHTTPHeaderField:@"Content-Type"];
    r25 = [[self multipartURL] retain];
    r0 = [ANSFileUtils fileSizeAtURL:r25];
    r0 = [r0 retain];
    r26 = [[r0 stringValue] retain];
    [r21 setValue:r26 forHTTPHeaderField:@"Content-Length"];
    [r26 release];
    [r0 release];
    [r25 release];
    r26 = [[NSString stringWithUTF8String:"Answers iOS SDK/1.4.0"] retain];
    [r21 setValue:r26 forHTTPHeaderField:@"User-Agent"];
    [r26 release];
    r24 = [[NSString stringWithUTF8String:"Answers iOS SDK/1.4.0"] retain];
    [r21 setValue:r24 forHTTPHeaderField:@"User-Agent"];
    [r24 release];
    [r21 setValue:@"77f0789d8e230eccdb4b99b82dccd78d47f9b604" forHTTPHeaderField:@"X-CRASHLYTICS-DEVELOPER-TOKEN"];
    [r21 setValue:@"Answers iOS SDK" forHTTPHeaderField:@"X-CRASHLYTICS-API-CLIENT-TYPE"];
    [r21 setValue:@"31" forHTTPHeaderField:@"X-CRASHLYTICS-API-CLIENT-VERSION"];
    [r21 setValue:@"1.4.0" forHTTPHeaderField:@"X-CRASHLYTICS-API-CLIENT-DISPLAY-VERSION"];
    [r21 setValue:@"31" forHTTPHeaderField:@"X-CRASHLYTICS-API-CLIENT-BUILD-VERSION"];
    r24 = [[self apiKey] retain];
    [r21 setValue:r24 forHTTPHeaderField:@"X-CRASHLYTICS-API-KEY"];
    [r24 release];
    r24 = [[self currentTimestampString] retain];
    [r21 setValue:r24 forHTTPHeaderField:@"X-Crashlytics-Api-Client-Packaged-Timestamp"];
    [r24 release];
    [r21 setHTTPMethod:@"POST"];
    r0 = [self multipartURL];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 lastPathComponent];
    r0 = [r0 retain];
    r23 = [[r0 stringByDeletingPathExtension] retain];
    [r0 release];
    [r24 release];
    r0 = [ANSLogger sharedLogger];
    r0 = [r0 retain];
    [r0 log:@"Transmitting packaged events for '%@'."];
    [r0 release];
    r24 = [[self uploader] retain];
    r0 = [self multipartURL];
    r0 = [r0 retain];
    r22 = [[r0 path] retain];
    [r24 startUploadRequest:r21 filePath:r22 uniqueName:r23];
    [r22 release];
    [r0 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r19 release];
    return;
}

-(void *)apiKey {
    r0 = self->_apiKey;
    return r0;
}

-(void *)multipartURL {
    r0 = self->_multipartURL;
    return r0;
}

-(void *)multipartMimeBoundary {
    r0 = self->_multipartMimeBoundary;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_multipartMimeBoundary, 0x0);
    objc_storeStrong((int64_t *)&self->_multipartURL, 0x0);
    objc_storeStrong((int64_t *)&self->_apiKey, 0x0);
    objc_storeStrong((int64_t *)&self->_answersURL, 0x0);
    objc_storeStrong((int64_t *)&self->_uploader, 0x0);
    return;
}

@end