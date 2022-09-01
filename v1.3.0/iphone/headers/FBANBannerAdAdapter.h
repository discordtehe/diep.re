// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBANBANNERADADAPTER_H
#define FBANBANNERADADAPTER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class FBDisplayAdAdapter;
@class FBAdViewInternal;
@protocol FBAdViewDelegate;

@interface FBANBannerAdAdapter : FBDisplayAdAdapter <FBAdViewDelegate>



@property (retain, nonatomic) FBAdViewInternal *adView;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIViewController *viewControllerForPresentingModalView;


-(void)loadAdData:(id)arg0 forSize:(struct FBAdSize )arg1 forOrientation:(NSInteger)arg2 forPlacement:(id)arg3 placementDefinition:(id)arg4 dataModelType:(id)arg5 rewardData:(id)arg6 extraHint:(id)arg7 ;
-(id)adDataModel;
-(BOOL)startAdFromRootViewController:(id)arg0 ;
-(BOOL)startAdFromRootViewController:(id)arg0 animated:(BOOL)arg1 ;
-(void)adViewDidClick:(id)arg0 ;
-(void)adViewDidFinishHandlingClick:(id)arg0 ;
-(void)adViewDidLoad:(id)arg0 ;
-(void)adView:(id)arg0 didFailWithError:(id)arg1 ;
-(void)adViewWillLogImpression:(id)arg0 ;
+(void)initialize;


@end


#endif