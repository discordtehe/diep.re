// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBWATCHANDINSTALLACTIONCONTROLLER_H
#define FBWATCHANDINSTALLACTIONCONTROLLER_H


#import <Foundation/Foundation.h>
#import <StoreKit/StoreKit.h>
#import <UIKit/UIKit.h>

@class FBNativeAdDataModel;
@protocol SKStoreProductViewControllerDelegate;
@protocol FBWatchAndActionActionableController;
@protocol FBWatchAndActionActionableControllerDelegate;

@interface FBWatchAndInstallActionController : NSObject <SKStoreProductViewControllerDelegate, FBWatchAndActionActionableController>



@property (retain, nonatomic) FBNativeAdDataModel *dataModel; // ivar: _dataModel
@property (retain, nonatomic) SKStoreProductViewController *productVC; // ivar: _productVC
@property (weak, nonatomic) NSObject<FBWatchAndActionActionableControllerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIView *view;


-(id)initWithDataModel:(id)arg0 ;
-(void)preloadContent;
-(void)prepareForPresentation;
-(void)productViewControllerDidFinish:(id)arg0 ;
-(void)didFinishLoadWithResult:(BOOL)arg0 andError:(id)arg1 ;


@end


#endif