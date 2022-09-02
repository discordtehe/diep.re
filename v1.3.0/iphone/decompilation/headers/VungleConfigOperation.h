// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLECONFIGOPERATION_H
#define VUNGLECONFIGOPERATION_H


#import <Foundation/Foundation.h>

@class VungleConcurrentOperation;
@class VungleConfigController;

@interface VungleConfigOperation : VungleConcurrentOperation

@property (weak, nonatomic) VungleConfigController *configController; // ivar: _configController
@property (retain, nonatomic) NSString *userAgent; // ivar: _userAgent
@property (nonatomic) BOOL backgroundInit; // ivar: _backgroundInit


-(id)initWithConfigController:(id)arg0 userAgent:(id)arg1 backgroundInit:(BOOL)arg2 resultBlock:(id)arg3 ;
-(void)start;


@end


#endif