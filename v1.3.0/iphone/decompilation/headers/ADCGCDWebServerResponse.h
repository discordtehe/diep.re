// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVERRESPONSE_H
#define ADCGCDWEBSERVERRESPONSE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol ADCGCDWebServerBodyReader;
@protocol ADCGCDWebServerBodyReader;

@interface ADCGCDWebServerResponse : NSObject <ADCGCDWebServerBodyReader>

 {
    BOOL _chunked;
    BOOL _opened;
    NSMutableArray *_encoders;
    id<ADCGCDWebServerBodyReader> *_reader;
}


@property (readonly, nonatomic) NSDictionary *additionalHeaders; // ivar: _headers
@property (readonly, nonatomic) BOOL usesChunkedTransferEncoding;
@property (copy, nonatomic) NSString *contentType; // ivar: _type
@property (nonatomic) NSUInteger contentLength; // ivar: _length
@property (nonatomic) NSInteger statusCode; // ivar: _status
@property (nonatomic) NSUInteger cacheControlMaxAge; // ivar: _maxAge
@property (retain, nonatomic) NSDate *lastModifiedDate; // ivar: _lastModified
@property (copy, nonatomic) NSString *eTag; // ivar: _eTag
@property (nonatomic, getter=isGZipContentEncodingEnabled) BOOL gzipContentEncodingEnabled; // ivar: _gzipped
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithStatusCode:(NSInteger)arg0 ;
-(id)initWithRedirect:(id)arg0 permanent:(BOOL)arg1 ;
-(id)init;
-(void)setValue:(id)arg0 forAdditionalHeader:(id)arg1 ;
-(BOOL)hasBody;
-(BOOL)open:(*id)arg0 ;
-(id)readData:(*id)arg0 ;
-(void)close;
-(void)prepareForReading;
-(BOOL)performOpen:(*id)arg0 ;
-(void)performReadDataWithCompletion:(id)arg0 ;
-(void)performClose;
+(id)responseWithStatusCode:(NSInteger)arg0 ;
+(id)responseWithRedirect:(id)arg0 permanent:(BOOL)arg1 ;
+(id)response;


@end


#endif