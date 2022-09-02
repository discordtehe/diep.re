// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_AFHTTPREQUESTSERIALIZER_H
#define TR_AFHTTPREQUESTSERIALIZER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol AFURLRequestSerialization;

@interface TR_AFHTTPRequestSerializer : NSObject <AFURLRequestSerialization>



@property (retain, nonatomic) NSMutableSet *mutableObservedChangedKeyPaths; // ivar: _mutableObservedChangedKeyPaths
@property (retain, nonatomic) NSMutableDictionary *mutableHTTPRequestHeaders; // ivar: _mutableHTTPRequestHeaders
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *requestHeaderModificationQueue; // ivar: _requestHeaderModificationQueue
@property (nonatomic) NSUInteger queryStringSerializationStyle; // ivar: _queryStringSerializationStyle
@property (copy, nonatomic) id *queryStringSerialization; // ivar: _queryStringSerialization
@property (nonatomic) NSUInteger stringEncoding; // ivar: _stringEncoding
@property (nonatomic) BOOL allowsCellularAccess; // ivar: _allowsCellularAccess
@property (nonatomic) NSUInteger cachePolicy; // ivar: _cachePolicy
@property (nonatomic) BOOL HTTPShouldHandleCookies; // ivar: _HTTPShouldHandleCookies
@property (nonatomic) BOOL HTTPShouldUsePipelining; // ivar: _HTTPShouldUsePipelining
@property (nonatomic) NSUInteger networkServiceType; // ivar: _networkServiceType
@property (nonatomic) CGFloat timeoutInterval; // ivar: _timeoutInterval
@property (readonly, nonatomic) NSDictionary *HTTPRequestHeaders;
@property (retain, nonatomic) NSSet *HTTPMethodsEncodingParametersInURI; // ivar: _HTTPMethodsEncodingParametersInURI
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(void)setValue:(id)arg0 forHTTPHeaderField:(id)arg1 ;
-(id)valueForHTTPHeaderField:(id)arg0 ;
-(void)setAuthorizationHeaderFieldWithUsername:(id)arg0 password:(id)arg1 ;
-(void)clearAuthorizationHeader;
-(id)requestWithMethod:(id)arg0 URLString:(id)arg1 parameters:(id)arg2 error:(*id)arg3 ;
// -(id)multipartFormRequestWithMethod:(id)arg0 URLString:(id)arg1 parameters:(id)arg2 constructingBodyWithBlock:(id)arg3 error:(unk)arg4  ;
-(id)requestWithMultipartFormRequest:(id)arg0 writingStreamContentsToFile:(id)arg1 completionHandler:(id)arg2 ;
-(id)requestBySerializingRequest:(id)arg0 withParameters:(id)arg1 error:(*id)arg2 ;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)serializer;
+(BOOL)automaticallyNotifiesObserversForKey:(id)arg0 ;
+(BOOL)supportsSecureCoding;


@end


#endif