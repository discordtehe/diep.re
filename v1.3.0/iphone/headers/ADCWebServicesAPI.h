// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCWEBSERVICESAPI_H
#define ADCWEBSERVICESAPI_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSURLSessionTaskDelegate;

@interface ADCWebServicesAPI : NSObject <NSURLSessionTaskDelegate>

 {
    NSMutableArray *_downloaders;
    NSMutableArray *_getRequests;
    NSMutableArray *_postRequests;
}


@property (readonly) NSURLSession *httpSession; // ivar: _httpSession
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)URLSession:(id)arg0 task:(id)arg1 willPerformHTTPRedirection:(id)arg2 newRequest:(id)arg3 completionHandler:(id)arg4 ;
+(id)userAgent;
+(id)sharedAPI;
+(void)downloadWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 completion:(id)arg2 ;
+(void)getWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 completion:(id)arg2 ;
+(void)postWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 completion:(id)arg2 ;


@end


#endif