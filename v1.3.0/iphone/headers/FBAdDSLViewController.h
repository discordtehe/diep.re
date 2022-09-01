// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADDSLVIEWCONTROLLER_H
#define FBADDSLVIEWCONTROLLER_H


#import <UIKit/UIKit.h>

@class FBAdDSLFullScreenAdViewController;
@class FBAdDSLDataLoader;
@protocol FBAdDSLDataLoaderDelegate;
@protocol FBAdDSLFullScreenAdViewControllerDelegate;
@protocol FBAdDSLViewControllerDelegate;

@interface FBAdDSLViewController : UIViewController <FBAdDSLDataLoaderDelegate, FBAdDSLFullScreenAdViewControllerDelegate>



@property (retain, nonatomic) FBAdDSLFullScreenAdViewController *fullScreenWebView; // ivar: _fullScreenWebView
@property (retain, nonatomic) FBAdDSLDataLoader *dataLoader; // ivar: _dataLoader
@property (weak, nonatomic) NSObject<FBAdDSLViewControllerDelegate> *delegate; // ivar: _delegate


-(id)initWithDelegateHandler:(id)arg0 withAdData:(id)arg1 withSandboxAddress:(id)arg2 ;
-(void)viewDidLoad;
-(void)viewDidAppear:(BOOL)arg0 ;
-(BOOL)prefersStatusBarHidden;
-(void)notifyAdReportFlowStarted;
-(void)notifyAdReportFlowFinished;
-(void)notifyAppActive;
-(void)notifyAppInactive;
-(void)notifyAppBackground;
-(void)notifyAppSuspended;
-(void)didFailToLoadAssets;
-(void)handleEvent:(NSUInteger)arg0 ;
-(void)logErrorWithData:(id)arg0 ;
-(void)logWithData:(id)arg0 ;
-(void)printDebugWithInfo:(id)arg0 ;
-(void)didFailToLoadModel:(id)arg0 withError:(id)arg1 ;
-(void)didLoadModel:(id)arg0 ;
-(void)assetForURL:(id)arg0 withType:(NSUInteger)arg1 withBlock:(id)arg2 ;


@end


#endif