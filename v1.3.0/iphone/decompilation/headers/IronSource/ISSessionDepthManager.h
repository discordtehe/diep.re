// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISSESSIONDEPTHMANAGER_H
#define ISSESSIONDEPTHMANAGER_H


#import <Foundation/Foundation.h>


@interface ISSessionDepthManager : NSObject

@property (nonatomic) NSUInteger offerwallDepth; // ivar: _offerwallDepth
@property (nonatomic) NSUInteger rewardedVideoDepth; // ivar: _rewardedVideoDepth
@property (nonatomic) NSUInteger interstitialDepth; // ivar: _interstitialDepth
@property (nonatomic) NSUInteger bannerDepth; // ivar: _bannerDepth


-(id)init;
-(void)increaseSessionDepth:(NSInteger)arg0 ;
-(NSUInteger)getSessionDepth:(NSInteger)arg0 ;
+(id)sharedManager;


@end


#endif