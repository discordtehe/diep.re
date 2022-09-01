// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJREQUESTFOROFFERWALLURL_H
#define TJREQUESTFOROFFERWALLURL_H


#import <Foundation/Foundation.h>

@protocol TJPlacementDelegate;

@interface TJRequestForOfferwallURL : NSObject <TJPlacementDelegate>



@property (copy, nonatomic) id *completion; // ivar: _completion
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)requestDidSucceed:(id)arg0 ;
-(void)requestDidFail:(id)arg0 error:(id)arg1 ;
+(id)requestsInProgress;
+(void)startWithPlacementName:(id)arg0 completion:(id)arg1 ;


@end


#endif