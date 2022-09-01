// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPTELEPHONECONFIRMATIONCONTROLLER_H
#define MPTELEPHONECONFIRMATIONCONTROLLER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol UIAlertViewDelegate;

@interface MPTelephoneConfirmationController : NSObject <UIAlertViewDelegate>



@property (retain, nonatomic) UIAlertView *alertView; // ivar: _alertView
@property (retain, nonatomic) NSURL *telephoneURL; // ivar: _telephoneURL
@property (copy, nonatomic) id *clickHandler; // ivar: _clickHandler
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithURL:(id)arg0 clickHandler:(id)arg1 ;
-(void)dealloc;
-(void)show;
-(void)alertView:(id)arg0 clickedButtonAtIndex:(NSInteger)arg1 ;


@end


#endif