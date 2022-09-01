// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef DATEPICKERINPUT_H
#define DATEPICKERINPUT_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>


@interface DatePickerInput : NSObject {
    UIButton *mDismissButton;
    UIButton *mConfirmButton;
    UIDatePicker *mDatePicker;
    id *mTarget;
    SEL mUpdatedCallback;
    SEL mEnteredCallback;
    NSDate *mDate;
}


@property (nonatomic) BOOL dismissButtonEnabled; // ivar: mDismissButtonEnabled


-(id)init;
-(void)cleanUp;
-(void)show:(id)arg0 minDate:(id)arg1 maxDate:(id)arg2 target:(id)arg3 updatedCallback:(SEL)arg4 enteredCallback:(SEL)arg5 confirmButton:(id)arg6 confirmButtonText:(id)arg7 confirmButtonBMFont:(id)arg8 ;
-(void)hide;
-(void)pickerChanged:(id)arg0 ;
-(void)pickerChangedNotifcation:(id)arg0 ;
-(void)pickerClosedNotifcation:(id)arg0 ;
-(void)dismissButtonPressed:(id)arg0 ;
-(void)confirmButtonPressed:(id)arg0 ;
-(void)dealloc;
+(id)sharedDatePickerInput;
+(BOOL)isDatePickerInputInitialized;
+(void)releaseSharedDatePickerInput;


@end


#endif