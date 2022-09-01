// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBANINSTREAMADADAPTER_H
#define FBANINSTREAMADADAPTER_H


#import <Foundation/Foundation.h>

@class FBDisplayAdAdapter;
@class FBInstreamAdDataModel;
@class FBVideoAdController;
@class FBAdExtraHint;
@class FBVideoAdContentView;
@protocol FBVideoAdControllerDelegate;

@interface FBANInstreamAdAdapter : FBDisplayAdAdapter <FBVideoAdControllerDelegate>



@property (nonatomic) BOOL controllerStarted; // ivar: _controllerStarted
@property (retain, nonatomic) FBInstreamAdDataModel *dataModel; // ivar: _dataModel
@property (copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (readonly, nonatomic) FBVideoAdController *videoAdController; // ivar: _videoAdController
@property (retain, nonatomic) FBAdExtraHint *extraHint; // ivar: _extraHint
@property (readonly, nonatomic, getter=isAdValid) BOOL adValid;
@property (retain, nonatomic) FBVideoAdContentView *adView;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDelegate:(id)arg0 ;
-(void)loadAdData:(id)arg0 forSize:(struct FBAdSize )arg1 forOrientation:(NSInteger)arg2 forPlacement:(id)arg3 placementDefinition:(id)arg4 dataModelType:(id)arg5 rewardData:(id)arg6 extraHint:(id)arg7 ;
-(void)loadAdData:(id)arg0 placementDefinition:(id)arg1 ;
-(id)adDataModel;
-(BOOL)startAdFromRootViewController:(id)arg0 ;
-(BOOL)startAdFromRootViewController:(id)arg0 animated:(BOOL)arg1 ;
-(void)controllerDidLoad:(id)arg0 ;
-(void)controller:(id)arg0 didFailWithError:(id)arg1 ;
-(void)controllerWillRegisterViewableImpression:(id)arg0 ;
-(void)controllerDidClick:(id)arg0 ;
-(void)controllerDidUnload:(id)arg0 ;


@end


#endif