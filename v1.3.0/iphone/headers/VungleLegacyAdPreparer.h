// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLELEGACYADPREPARER_H
#define VUNGLELEGACYADPREPARER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleAdPreparer;
@class VungleAdLegacy;

@interface VungleLegacyAdPreparer : VungleAdPreparer

@property (nonatomic) NSInteger networkRequestCount; // ivar: _networkRequestCount
@property (copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (retain, nonatomic) VungleAdLegacy *ad; // ivar: _ad
@property (retain, nonatomic) NSMutableSet *errors; // ivar: _errors
@property (copy, nonatomic) id *completionHandler; // ivar: _completionHandler


-(void)prepareAd:(id)arg0 placementID:(id)arg1 completion:(id)arg2 ;
-(void)prepareAd:(id)arg0 placementID:(id)arg1 completionHandler:(id)arg2 ;


@end


#endif