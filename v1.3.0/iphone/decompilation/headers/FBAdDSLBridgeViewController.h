// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADDSLBRIDGEVIEWCONTROLLER_H
#define FBADDSLBRIDGEVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdDSLViewController;
@class FBAdReportingCoordinator;
@class FBNativeAdDataModel;
@protocol FBAdReportingCoordinatorDelegate;
@protocol FBAdDSLViewControllerDelegate;
@protocol FBAdDSLBridgeDelegate;

@interface FBAdDSLBridgeViewController : UIViewController <FBAdReportingCoordinatorDelegate, FBAdDSLViewControllerDelegate>



@property (retain, nonatomic) FBAdDSLViewController *dynamicViewController; // ivar: _dynamicViewController
@property (retain, nonatomic) FBAdReportingCoordinator *reportingCoordinator; // ivar: _reportingCoordinator
@property (copy, nonatomic) FBNativeAdDataModel *model; // ivar: _model
@property (weak, nonatomic) NSObject<FBAdDSLBridgeDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAdData:(id)arg0 withNativeAdDataModel:(id)arg1 ;
-(void)viewDidLoad;
-(BOOL)prefersStatusBarHidden;
-(void)dealloc;
-(void)setupNotifications;
-(void)dynamicAdViewControllerDidLoad;
-(void)dynamicAdViewControllerDidFailWithError:(id)arg0 ;
-(void)assetForURL:(id)arg0 type:(NSUInteger)arg1 block:(id)arg2 ;
-(void)CTATappedFromController:(id)arg0 ;
-(void)reportFlowStartedFromController:(id)arg0 ;
-(void)closeButtonTappedFromController:(id)arg0 ;
-(void)didReceivedLogEventFromController:(id)arg0 withData:(id)arg1 ;
-(void)didReceiveErrorFromController:(id)arg0 withData:(id)arg1 ;
-(void)didReceivedDebugEventFromController:(id)arg0 withData:(id)arg1 ;
-(void)adReportingCoordinatorDidCompleteFlow:(id)arg0 reason:(id)arg1 flowType:(NSInteger)arg2 ;
-(void)adReportingCoordinatorDidCloseWhyAmISeeingThis:(id)arg0 ;
-(void)adReportingCoordinatorDidCancelFlow:(id)arg0 ;


@end


#endif