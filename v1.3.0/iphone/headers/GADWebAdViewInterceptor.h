// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADWEBADVIEWINTERCEPTOR_H
#define GADWEBADVIEWINTERCEPTOR_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADURLSessionTransaction;
@protocol NSURLConnectionDelegate;

@interface GADWebAdViewInterceptor : NSURLProtocol <NSURLConnectionDelegate>

 {
    NSURL *_substituteURL;
    NSURLConnection *_connection;
    GADURLSessionTransaction *_interceptedTransaction;
    NSThread *_clientThread;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithRequest:(id)arg0 cachedResponse:(id)arg1 client:(id)arg2 ;
-(void)startLoading;
-(void)stopLoading;
-(void)connection:(id)arg0 didFailWithError:(id)arg1 ;
-(void)connection:(id)arg0 didReceiveData:(id)arg1 ;
-(void)connectionDidFinishLoading:(id)arg0 ;
-(void)connection:(id)arg0 didReceiveResponse:(id)arg1 ;
-(id)connection:(id)arg0 willSendRequest:(id)arg1 redirectResponse:(id)arg2 ;
+(BOOL)canInitWithRequest:(id)arg0 ;
+(id)canonicalRequestForRequest:(id)arg0 ;


@end


#endif