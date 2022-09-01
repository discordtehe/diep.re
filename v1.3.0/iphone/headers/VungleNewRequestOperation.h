// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLENEWREQUESTOPERATION_H
#define VUNGLENEWREQUESTOPERATION_H


#import <Foundation/Foundation.h>

@class VungleConcurrentOperation;
@class VungleNewRequestController;

@interface VungleNewRequestOperation : VungleConcurrentOperation

@property (weak, nonatomic) VungleNewRequestController *requestNewController; // ivar: _requestNewController
@property (retain, nonatomic) NSString *userAgent; // ivar: _userAgent


-(id)initWithNewRequestController:(id)arg0 userAgent:(id)arg1 resultBlock:(id)arg2 ;
-(void)start;


@end


#endif