// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNPRODUCTVIEWCONTROLLER_H
#define ISNPRODUCTVIEWCONTROLLER_H



@class ISAbstractViewController;
@class SupersonicAdsView;
@class ISNViewControllerPresentationConfiguration;

@interface ISNProductViewController : ISAbstractViewController

@property (retain, nonatomic) SupersonicAdsView *supersonicAdsView; // ivar: _supersonicAdsView
@property (nonatomic) BOOL applicationHasStatusBar; // ivar: _applicationHasStatusBar
@property (retain, nonatomic) ISNViewControllerPresentationConfiguration *configuration; // ivar: _configuration


-(id)init;
-(id)initWithConfiguration:(id)arg0 ;
-(BOOL)isPresented;
-(void)dealloc;
-(void)presentProductFromViewController:(id)arg0 productType:(NSUInteger)arg1 completionHandler:(id)arg2 ;
-(void)presentFromViewController:(id)arg0 completionHandler:(id)arg1 ;
-(void)hideStatusBarIfNeeded;
-(void)viewDidLoad;
-(void)SuperSonicViewControllerDidChangeOrientation;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)forceCloseTimer;
-(void)dismissWithCompletionHandler:(id)arg0 ;
-(void)viewDidDisappear:(BOOL)arg0 ;
-(BOOL)prefersStatusBarHidden;


@end


#endif