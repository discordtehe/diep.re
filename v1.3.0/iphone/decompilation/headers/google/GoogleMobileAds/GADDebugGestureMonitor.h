// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADDEBUGGESTUREMONITOR_H
#define GADDEBUGGESTUREMONITOR_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADAd;
@protocol UIGestureRecognizerDelegate;

@interface GADDebugGestureMonitor : NSObject <UIGestureRecognizerDelegate>

 {
    UIView *_view;
    GADAd *_ad;
    NSString *_adUnitID;
    NSString *_debugDialogString;
    UIGestureRecognizer *_gestureRecognizer;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAd:(id)arg0 adView:(id)arg1 adUnitID:(id)arg2 debugDialogString:(id)arg3 ;
-(void)setView:(id)arg0 ;
-(void)presentDebugDialog;
-(BOOL)gestureRecognizer:(id)arg0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg1 ;
+(void)addMonitorToAd:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 view:(id)arg2 ;


@end


#endif