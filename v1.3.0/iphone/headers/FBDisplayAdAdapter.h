// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBDISPLAYADADAPTER_H
#define FBDISPLAYADADAPTER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class FBAdDataModel;
@class FBNativeAdDataModel;
@protocol FBDisplayAdAdapterDelegate;

@interface FBDisplayAdAdapter : NSObject

@property (retain, nonatomic) UIView *adView; // ivar: _adView
@property (readonly, nonatomic) FBAdDataModel *adDataModel;
@property (retain, nonatomic) FBNativeAdDataModel *nativeAdData; // ivar: _nativeAdData
@property (readonly, nonatomic) ? duration;
@property (weak, nonatomic) NSObject<FBDisplayAdAdapterDelegate> *delegate; // ivar: _delegate


-(id)initWithDelegate:(id)arg0 ;
-(void)loadAdData:(id)arg0 forSize:(struct FBAdSize )arg1 forOrientation:(NSInteger)arg2 forPlacement:(id)arg3 placementDefinition:(id)arg4 dataModelType:(id)arg5 rewardData:(id)arg6 extraHint:(id)arg7 ;
-(BOOL)setRewardData:(id)arg0 ;
-(BOOL)startAdFromRootViewController:(id)arg0 ;
-(BOOL)startAdFromRootViewController:(id)arg0 animated:(BOOL)arg1 ;
-(void)registerViewForInteraction:(id)arg0 withViewController:(id)arg1 ;
-(void)unregisterView;
-(void)onImpressionWithExtraData:(id)arg0 withPostData:(id)arg1 ;
-(void)onImpressionMissWithExtraData:(id)arg0 withPostData:(id)arg1 ;
-(void)onClickForViewController:(id)arg0 withExtraData:(id)arg1 ;


@end


#endif