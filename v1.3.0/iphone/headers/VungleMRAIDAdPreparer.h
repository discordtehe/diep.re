// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEMRAIDADPREPARER_H
#define VUNGLEMRAIDADPREPARER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleAdPreparer;
@class VungleInternalMRAIDAd;

@interface VungleMRAIDAdPreparer : VungleAdPreparer

@property (retain, nonatomic) VungleInternalMRAIDAd *ad; // ivar: _ad
@property (copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (retain, nonatomic) NSMutableSet *errors; // ivar: _errors
@property (copy, nonatomic) id *completionBlock; // ivar: _completionBlock


-(void)prepareAd:(id)arg0 placementID:(id)arg1 completion:(id)arg2 ;
-(void)prepareMRAIDAd:(id)arg0 completionHandler:(id)arg1 ;
-(void)downloadTemplateForAd:(id)arg0 ;
-(void)downloadAssetsForAd:(id)arg0 ;
-(void)finishAssets:(id)arg0 operations:(id)arg1 ;
-(void)operationDidFinish:(id)arg0 withErrors:(id)arg1 ;


@end


#endif