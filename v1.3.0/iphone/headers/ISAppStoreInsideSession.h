// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISAPPSTOREINSIDESESSION_H
#define ISAPPSTOREINSIDESESSION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@protocol SKStoreProductViewControllerDelegate;
@protocol ISAppStoreInsideSessionDelegate;

@interface ISAppStoreInsideSession : NSObject <SKStoreProductViewControllerDelegate>



@property (retain, nonatomic) NSTimer *loadingTimer; // ivar: _loadingTimer
@property (retain, nonatomic) NSMutableDictionary *appStoreDictionary; // ivar: _appStoreDictionary
@property (weak, nonatomic) UIViewController *viewControllerToPresentFrom; // ivar: _viewControllerToPresentFrom
@property (weak, nonatomic) NSObject<ISAppStoreInsideSessionDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) NSString *extraDataToReports; // ivar: _extraDataToReports
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)cleanupForViewUniqueId:(id)arg0 ;
-(void)loadStoreWithAppId:(id)arg0 viewUniqueId:(id)arg1 showIfSuccess:(BOOL)arg2 ;
-(void)showStoreForUniqueId:(id)arg0 ;
-(BOOL)isStorePresented:(id)arg0 ;
-(BOOL)hasAppStorePageForViewUniqueId:(id)arg0 ;
-(id)getAppStoreViewCtrlByViewUniqueId:(id)arg0 ;
-(void)cancelLoading:(id)arg0 ;
-(void)showStore:(id)arg0 ;
-(void)loadStore:(id)arg0 ;
-(BOOL)isAppStoreVisible:(id)arg0 ;
-(void)executeTimeoutTasks:(id)arg0 ;
-(void)cancelAppstorePageLoading:(id)arg0 ;
-(BOOL)isAppStoreLoaded:(id)arg0 ;
-(id)appStoreObjectForViewUniqueId:(id)arg0 ;
-(void)productViewControllerDidFinish:(id)arg0 ;
+(id)sharedInstance;


@end


#endif