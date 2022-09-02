// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISHTTPREQUESTSDISPATCHER_H
#define ISHTTPREQUESTSDISPATCHER_H


#import <Foundation/Foundation.h>

@protocol NSURLSessionDataDelegate;
@protocol NSURLSessionDelegate;
@protocol NSURLSessionTaskDelegate;

@interface ISHTTPRequestsDispatcher : NSObject <NSURLSessionDataDelegate, NSURLSessionDelegate, NSURLSessionTaskDelegate>



@property (retain, nonatomic) NSURLSession *httpSession; // ivar: _httpSession
@property NSUInteger backgroundTaskIdentifier; // ivar: _backgroundTaskIdentifier
@property (retain) NSString *failedRequestsKey; // ivar: _failedRequestsKey
@property NSUInteger limitEntries; // ivar: _limitEntries
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)sendHTTPRequest:(id)arg0 isbackground:(BOOL)arg1 retries:(NSInteger)arg2 completion:(id)arg3 ;
-(void)cancelRequest:(id)arg0 ;
-(void)cancelRequests;
-(id)pendingRequests;
-(id)createSession;
-(BOOL)isvValidRequestScheme:(id)arg0 ;


@end


#endif