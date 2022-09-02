// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPADALERTMANAGER_H
#define MPADALERTMANAGER_H


#import <Foundation/Foundation.h>
#import <MessageUI/MessageUI.h>
#import <CoreLocation/CoreLocation.h>
#import <UIKit/UIKit.h>

@class MPAdAlertGestureRecognizer;
@class MPAdConfiguration;
@protocol UIGestureRecognizerDelegate;
@protocol MFMailComposeViewControllerDelegate;
@protocol MPAdAlertManagerProtocol;

@interface MPAdAlertManager : NSObject <UIGestureRecognizerDelegate, MFMailComposeViewControllerDelegate, MPAdAlertManagerProtocol>



@property (nonatomic) BOOL processedAlert; // ivar: _processedAlert
@property (retain, nonatomic) MPAdAlertGestureRecognizer *adAlertGestureRecognizer; // ivar: _adAlertGestureRecognizer
@property (retain, nonatomic) MFMailComposeViewController *currentOpenMailVC; // ivar: _currentOpenMailVC
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (retain, nonatomic) MPAdConfiguration *adConfiguration; // ivar: _adConfiguration
@property (copy, nonatomic) NSString *adUnitId; // ivar: _adUnitId
@property (copy, nonatomic) CLLocation *location; // ivar: _location
@property (weak, nonatomic) UIView *targetAdView; // ivar: _targetAdView
@property (weak, nonatomic) id *delegate; // ivar: _delegate


-(id)init;
-(void)dealloc;
-(void)processAdAlert;
-(void)handleAdAlertGesture;
-(void)processAdParams:(id)arg0 andScreenshot:(id)arg1 ;
-(id)stringFromDictionary:(id)arg0 ;
-(void)mailComposeController:(id)arg0 didFinishWithResult:(NSInteger)arg1 error:(id)arg2 ;
-(void)beginMonitoringAlerts;
-(void)endMonitoringAlerts;
-(void)processAdAlertOnce;
-(BOOL)gestureRecognizer:(id)arg0 shouldReceiveTouch:(id)arg1 ;
-(BOOL)gestureRecognizer:(id)arg0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg1 ;


@end


#endif