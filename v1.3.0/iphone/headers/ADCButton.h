// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCBUTTON_H
#define ADCBUTTON_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class ADCViewContext;
@class ADCWebViewModule;
@protocol ADCWebViewModuleDelegate;

@interface ADCButton : UIButton <ADCWebViewModuleDelegate>



@property (nonatomic) BOOL ready; // ivar: _ready
@property (retain, nonatomic) ADCViewContext *context; // ivar: _context
@property (retain, nonatomic) ADCWebViewModule *webView; // ivar: _webView
@property (copy, nonatomic) id *buttonHandler; // ivar: _buttonHandler
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithContext:(id)arg0 ;
-(void)buttonPushed;
-(void)onWebViewLoad:(id)arg0 ;
-(void)onWebViewError:(id)arg0 ;


@end


#endif