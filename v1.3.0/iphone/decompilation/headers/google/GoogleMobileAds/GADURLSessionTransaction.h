// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADURLSESSIONTRANSACTION_H
#define GADURLSESSIONTRANSACTION_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADEventContext;
@protocol GADEventContextSource;

@interface GADURLSessionTransaction : NSObject <GADEventContextSource>

 {
    CC_MD5state_st _responseDigestState;
    id *_completionHandler;
    NSURLResponse *_response;
    NSMutableData *_responseBody;
    NSInteger _responseLength;
    NSData *_responseDigest;
    NSError *_error;
    NSObject<OS_dispatch_queue> *_lockQueue;
}


@property (readonly, nonatomic) id *completionHandler;
@property (readonly, nonatomic) NSInteger notificationPolicy; // ivar: _notificationPolicy
@property (readonly, nonatomic) NSURLRequest *request; // ivar: _request
@property (readonly, copy, nonatomic) NSURLResponse *response;
@property (readonly, copy, nonatomic) NSURL *redirectURL; // ivar: _redirectURL
@property (readonly, copy, nonatomic) NSData *responseBody;
@property (readonly, nonatomic) NSInteger responseLength;
@property (readonly, copy, nonatomic) NSData *responseDigest;
@property (readonly, copy, nonatomic) NSError *error;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context; // ivar: _context


-(id)initWithURLRequest:(id)arg0 parentContext:(id)arg1 notificationPolicy:(NSInteger)arg2 completionHandler:(id)arg3 ;
-(id)init;
-(id)initWithURLRequest:(id)arg0 parentContext:(id)arg1 response:(id)arg2 responseBody:(id)arg3 requestError:(id)arg4 ;
-(id)successorWithURLRequest:(id)arg0 ;
-(void)willSendRequest;
-(void)didReceiveResponse:(id)arg0 ;
-(void)didReceiveData:(id)arg0 ;
-(void)willRedirectToURL:(id)arg0 ;
-(void)didCompleteWithError:(id)arg0 ;


@end


#endif