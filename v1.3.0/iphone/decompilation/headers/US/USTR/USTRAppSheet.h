// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USTRAPPSHEET_H
#define USTRAPPSHEET_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol SKStoreProductViewControllerDelegate;

@interface USTRAppSheet : NSObject <SKStoreProductViewControllerDelegate>



@property (retain) NSMutableDictionary *appSheetCache; // ivar: _appSheetCache
@property (retain) NSMutableSet *appSheetLoading; // ivar: _appSheetLoading
@property (retain) NSDictionary *presentingParameters; // ivar: _presentingParameters
@property (nonatomic) BOOL presentingAnimated; // ivar: _presentingAnimated
@property (nonatomic) BOOL canOpenAppSheet; // ivar: _canOpenAppSheet
@property (nonatomic) int prepareTimeoutInSeconds; // ivar: _prepareTimeoutInSeconds
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)prepareAppSheet:(id)arg0 prepareTimeoutInSeconds:(int)arg1 completionBlock:(id)arg2 ;
-(void)presentAppSheet:(id)arg0 animated:(BOOL)arg1 completionBlock:(id)arg2 ;
-(void)destroyAppSheet;
-(BOOL)destroyAppSheet:(id)arg0 ;
-(id)getItunesIdFromParameters:(id)arg0 ;
-(id)getCachedController:(id)arg0 ;
-(void)productViewControllerDidFinish:(id)arg0 ;


@end


#endif