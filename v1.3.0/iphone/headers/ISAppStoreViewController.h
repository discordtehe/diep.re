// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISAPPSTOREVIEWCONTROLLER_H
#define ISAPPSTOREVIEWCONTROLLER_H


#import <StoreKit/StoreKit.h>
#import <Foundation/Foundation.h>

@class ISAbstractView;

@interface ISAppStoreViewController : SKStoreProductViewController

@property (copy, nonatomic) NSString *appId; // ivar: _appId
@property (retain, nonatomic) ISAbstractView *baseViewContainer; // ivar: _baseViewContainer
@property (nonatomic) BOOL appPageLoaded; // ivar: _appPageLoaded
@property (nonatomic) BOOL storeKitDismissed; // ivar: _storeKitDismissed


-(id)initWithAbstractView:(id)arg0 ;
-(void)viewDidLoad;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)viewWillDisappear:(BOOL)arg0 ;
-(void)viewDidDisappear:(BOOL)arg0 ;
-(BOOL)isAppPageLoadedForAppId:(id)arg0 ;
-(void)loadProductWithParameters:(id)arg0 completionBlock:(id)arg1 ;
-(void)showForViewController:(id)arg0 completionHandler:(id)arg1 ;
-(NSUInteger)supportedInterfaceOrientations;
-(BOOL)prefersStatusBarHidden;
+(id)defaultAppStoreViewController;


@end


#endif