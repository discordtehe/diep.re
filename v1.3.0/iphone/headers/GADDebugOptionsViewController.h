// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADDEBUGOPTIONSVIEWCONTROLLER_H
#define GADDEBUGOPTIONSVIEWCONTROLLER_H

@protocol GADDebugOptionsViewControllerDelegate;

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADAd;
@class GADEventContext;
@protocol UIAlertViewDelegate;
@protocol SFSafariViewControllerDelegate;

@interface GADDebugOptionsViewController : UIViewController <UIAlertViewDelegate, SFSafariViewControllerDelegate>

 {
    GADAd *_ad;
    GADEventContext *_context;
    NSString *_adDebugDialogString;
    UIAlertView *_creativeInformationAlertView;
    UIAlertView *_debugOptionsAlertView;
    UIAlertView *_statusAlertView;
    NSURL *_debugDeviceLinkingURL;
    UIButton *_closeButton;
    BOOL _debugSignalStatusFetchInProgress;
    BOOL _inAppPreviewTokenFetchInProgress;
    NSString *_adUnitID;
    BOOL _shouldEnableInAppPreview;
    BOOL _shouldEnableDebugSignal;
}


@property (weak, nonatomic) NSObject<GADDebugOptionsViewControllerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAd:(id)arg0 adUnitID:(id)arg1 debugDialogString:(id)arg2 ;
-(id)initWithNibName:(id)arg0 bundle:(id)arg1 ;
-(id)initWithCoder:(id)arg0 ;
-(id)init;
-(void)dealloc;
-(void)updateConfigurationFromSettings;
-(void)viewDidLoad;
-(void)showDebugOptionsAlertView;
-(void)showCreativeInformationAlertView;
-(void)alertView:(id)arg0 clickedButtonAtIndex:(NSInteger)arg1 ;
-(void)debugOptionsAlertViewClickedButtonAtIndex:(NSInteger)arg0 ;
-(void)creativeInfoAlertViewClickedButtonAtIndex:(NSInteger)arg0 ;
-(void)showFeatureNotEnabledAlertView;
-(id)debugDeviceQueryParameters;
-(id)debugURLRequestForString:(id)arg0 ;
-(void)linkDevice;
-(void)createDeviceIdentifierAndlinkDevice;
-(void)linkDebugSignal;
-(void)debugSignalStatusReceivedResponse:(id)arg0 data:(id)arg1 ;
-(void)linkInAppPreview;
-(void)inAppPreviewSignalStatusReceivedResponse:(id)arg0 data:(id)arg1 ;
-(void)showSystemErrorAlertView;
-(void)showAlertViewWithTitle:(id)arg0 ;
-(void)finishedDebugFlow;
-(void)closeButtonPressed:(id)arg0 ;
-(void)safariViewControllerDidFinish:(id)arg0 ;
+(id)debugOptionsViewControllerWithAdUnitID:(id)arg0 ;


@end


#endif