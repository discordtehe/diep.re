// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPHTTPNETWORKSESSION_H
#define MPHTTPNETWORKSESSION_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSURLSessionDataDelegate;

@interface MPHTTPNetworkSession : NSObject <NSURLSessionDataDelegate>



@property (retain, nonatomic) NSURLSession *sharedSession; // ivar: _sharedSession
@property (retain, nonatomic) NSMutableDictionary *sessions; // ivar: _sessions
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *sessionsQueue; // ivar: _sessionsQueue
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)setSessionData:(id)arg0 forTask:(id)arg1 ;
-(id)sessionDataForTask:(id)arg0 ;
-(void)appendData:(id)arg0 toSessionDataForTask:(id)arg1 ;
-(void)URLSession:(id)arg0 dataTask:(id)arg1 didReceiveResponse:(id)arg2 completionHandler:(id)arg3 ;
-(void)URLSession:(id)arg0 dataTask:(id)arg1 didReceiveData:(id)arg2 ;
-(void)URLSession:(id)arg0 task:(id)arg1 willPerformHTTPRedirection:(id)arg2 newRequest:(id)arg3 completionHandler:(id)arg4 ;
-(void)URLSession:(id)arg0 task:(id)arg1 didCompleteWithError:(id)arg2 ;
+(id)sharedInstance;
// +(id)taskWithHttpRequest:(id)arg0 responseHandler:(id)arg1 errorHandler:(unk)arg2 shouldRedirectWithNewRequest:(id)arg3  ;
+(id)startTaskWithHttpRequest:(id)arg0 ;
// +(id)startTaskWithHttpRequest:(id)arg0 responseHandler:(id)arg1 errorHandler:(unk)arg2  ;
// +(id)startTaskWithHttpRequest:(id)arg0 responseHandler:(id)arg1 errorHandler:(unk)arg2 shouldRedirectWithNewRequest:(id)arg3  ;


@end


#endif