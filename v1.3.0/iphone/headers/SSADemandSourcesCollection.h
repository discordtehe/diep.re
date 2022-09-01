// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSADEMANDSOURCESCOLLECTION_H
#define SSADEMANDSOURCESCOLLECTION_H


#import <Foundation/Foundation.h>

@class ISMutableOrderedDictionary;

@interface SSADemandSourcesCollection : NSObject

@property (retain) ISMutableOrderedDictionary *rewardedVideoDemandSources; // ivar: _rewardedVideoDemandSources
@property (retain) ISMutableOrderedDictionary *interstitialDemandSources; // ivar: _interstitialDemandSources
@property (retain) ISMutableOrderedDictionary *bannerDemandSources; // ivar: _bannerDemandSources


-(id)init;
-(id)demandSourcesForProductType:(NSUInteger)arg0 ;
-(id)demandSourceForProductType:(NSUInteger)arg0 demandSourceName:(id)arg1 ;
-(void)addDemandSourceWithProductType:(NSUInteger)arg0 withDemandSource:(id)arg1 ;
+(id)sharedInstance;


@end


#endif