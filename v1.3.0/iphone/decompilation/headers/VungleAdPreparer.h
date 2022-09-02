// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEADPREPARER_H
#define VUNGLEADPREPARER_H


#import <Foundation/Foundation.h>

@class VNGOperationQueue;
@class VungleAd;

@interface VungleAdPreparer : NSObject

@property (readonly, nonatomic) VNGOperationQueue *queue; // ivar: _queue
@property (retain, nonatomic) VungleAd *adBeingPrepared; // ivar: _adBeingPrepared


-(id)init;
-(void)prepareAd:(id)arg0 placementID:(id)arg1 completion:(id)arg2 ;
+(id)buildErrorWithVungleMRAIDAd:(id)arg0 ;


@end


#endif