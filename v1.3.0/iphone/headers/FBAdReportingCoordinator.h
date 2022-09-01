// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADREPORTINGCOORDINATOR_H
#define FBADREPORTINGCOORDINATOR_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBAdReportingConfig;
@class FBAdImage;
@class FBAdChoicesViewController;
@class FBAdReportingOptionsViewController;
@class FBAdHiddenViewController;
@class FBAdFunnelLogger;
@protocol FBAdSafariViewControllerDelegate;
@protocol FBAdReportingCoordinatorDelegate;

@interface FBAdReportingCoordinator : NSObject <FBAdSafariViewControllerDelegate>



@property (readonly, copy, nonatomic) NSString *inlineClientToken; // ivar: _inlineClientToken
@property (readonly, weak, nonatomic) UIViewController *viewController; // ivar: _viewController
@property (retain, nonatomic) UIView *coverView; // ivar: _coverView
@property (retain, nonatomic) FBAdReportingConfig *adReportingConfig; // ivar: _adReportingConfig
@property (retain, nonatomic) FBAdImage *logoImage; // ivar: _logoImage
@property (copy, nonatomic) NSArray *previousItems; // ivar: _previousItems
@property (copy, nonatomic) NSString *previousHeading; // ivar: _previousHeading
@property (nonatomic) NSInteger flowType; // ivar: _flowType
@property (retain, nonatomic) NSURL *adChoicesURL; // ivar: _adChoicesURL
@property (retain, nonatomic) NSMutableArray *userJourney; // ivar: _userJourney
@property (retain, nonatomic) NSMutableArray *selectedOptions; // ivar: _selectedOptions
@property (nonatomic) NSInteger currentStep; // ivar: _currentStep
@property (retain, nonatomic) FBAdChoicesViewController *adChoicesViewController; // ivar: _adChoicesViewController
@property (retain, nonatomic) FBAdReportingOptionsViewController *reportingOptionsViewController; // ivar: _reportingOptionsViewController
@property (retain, nonatomic) FBAdHiddenViewController *adHiddenViewController; // ivar: _adHiddenViewController
@property (retain, nonatomic) NSMutableArray *flowViews; // ivar: _flowViews
@property (nonatomic) NSInteger layoutType; // ivar: _layoutType
@property (weak, nonatomic) FBAdFunnelLogger *funnelLogger; // ivar: _funnelLogger
@property (weak, nonatomic) NSObject<FBAdReportingCoordinatorDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithData:(id)arg0 viewController:(id)arg1 ;
-(void)startAdReportingFlowInView:(id)arg0 layoutType:(NSInteger)arg1 ;
-(void)startAdReportingFlow;
-(void)stopAdReportingFlow;
-(void)clearReport;
-(void)notifyDelegateAboutFlowCancelation;
-(void)logReport;
-(id)adReportingExtraData;
-(void)presentAdHiddenViewControllerWithReason:(id)arg0 inView:(id)arg1 ;
-(void)presentReportingOptionsViewControllerWithTitle:(id)arg0 heading:(id)arg1 items:(id)arg2 ;
-(void)presentReportingOptionsViewControllerWithTitle:(id)arg0 heading:(id)arg1 items:(id)arg2 inView:(id)arg3 ;
-(void)presentManageAdPreferencesViewController;
-(void)presentWhyAmISeeingThisViewController;
-(void)registerOptionsStepForFlowType:(NSInteger)arg0 ;
-(void)viewControllerDismissed:(id)arg0 ;
-(void)funnelLogWhySeeingThisSelected;
-(void)funnelLogManagePrefsSelected;
-(void)funnelLogAdReported;
+(BOOL)canPresentInView:(id)arg0 layoutType:(NSInteger)arg1 ;


@end


#endif