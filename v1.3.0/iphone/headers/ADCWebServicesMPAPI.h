// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCWEBSERVICESMPAPI_H
#define ADCWEBSERVICESMPAPI_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSURLSessionTaskDelegate;

@interface ADCWebServicesMPAPI : NSObject <NSURLSessionTaskDelegate>

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
-(void)download:(struct ? )arg0 ;
-(void)get:(struct ? )arg0 ;
-(void)post:(struct ? )arg0 ;
-(void)URLSession:(id)arg0 task:(id)arg1 willPerformHTTPRedirection:(id)arg2 newRequest:(id)arg3 completionHandler:(id)arg4 ;
-(void)registerHandlers;


@end


#endif