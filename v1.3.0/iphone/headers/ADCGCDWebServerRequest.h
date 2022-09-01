// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVERREQUEST_H
#define ADCGCDWEBSERVERREQUEST_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol ADCGCDWebServerBodyWriter;
@protocol ADCGCDWebServerBodyWriter;

@interface ADCGCDWebServerRequest : NSObject <ADCGCDWebServerBodyWriter>

 {
    BOOL _opened;
    NSMutableArray *_decoders;
    NSMutableDictionary *_attributes;
    id<ADCGCDWebServerBodyWriter> *_writer;
}


@property (readonly, nonatomic) BOOL usesChunkedTransferEncoding; // ivar: _chunked
@property (retain, nonatomic) NSData *localAddressData; // ivar: _localAddress
@property (retain, nonatomic) NSData *remoteAddressData; // ivar: _remoteAddress
@property (readonly, nonatomic) NSString *method; // ivar: _method
@property (readonly, nonatomic) NSURL *URL; // ivar: _url
@property (readonly, nonatomic) NSDictionary *headers; // ivar: _headers
@property (readonly, nonatomic) NSString *path; // ivar: _path
@property (readonly, nonatomic) NSDictionary *query; // ivar: _query
@property (readonly, nonatomic) NSString *contentType; // ivar: _type
@property (readonly, nonatomic) NSUInteger contentLength; // ivar: _length
@property (readonly, nonatomic) NSDate *ifModifiedSince; // ivar: _modifiedSince
@property (readonly, nonatomic) NSString *ifNoneMatch; // ivar: _noneMatch
@property (readonly, nonatomic) _NSRange byteRange; // ivar: _range
@property (readonly, nonatomic) BOOL acceptsGzipContentEncoding; // ivar: _gzipAccepted
@property (readonly, nonatomic) NSString *localAddressString;
@property (readonly, nonatomic) NSString *remoteAddressString;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithMethod:(id)arg0 url:(id)arg1 headers:(id)arg2 path:(id)arg3 query:(id)arg4 ;
-(BOOL)hasBody;
-(BOOL)hasByteRange;
-(id)attributeForKey:(id)arg0 ;
-(BOOL)open:(*id)arg0 ;
-(BOOL)writeData:(id)arg0 error:(*id)arg1 ;
-(BOOL)close:(*id)arg0 ;
-(void)prepareForWriting;
-(BOOL)performOpen:(*id)arg0 ;
-(BOOL)performWriteData:(id)arg0 error:(*id)arg1 ;
-(BOOL)performClose:(*id)arg0 ;
-(void)setAttribute:(id)arg0 forKey:(id)arg1 ;


@end


#endif