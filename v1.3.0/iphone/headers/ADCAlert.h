// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCALERT_H
#define ADCALERT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@protocol UIAlertViewDelegate;

@interface ADCAlert : NSObject <UIAlertViewDelegate>

 {
    NSString *_title;
    NSString *_message;
    NSMutableArray *_actions;
    UIAlertView *_alertView;
    id *_alertCompletion;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithTitle:(id)arg0 message:(id)arg1 ;
-(void)addActionWithTitle:(id)arg0 completionHandler:(id)arg1 ;
-(void)show:(id)arg0 completionHandler:(id)arg1 ;
-(void)alertView:(id)arg0 didDismissWithButtonIndex:(NSInteger)arg1 ;


@end


#endif