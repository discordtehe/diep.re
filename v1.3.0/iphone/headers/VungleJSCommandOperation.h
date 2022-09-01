// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEJSCOMMANDOPERATION_H
#define VUNGLEJSCOMMANDOPERATION_H

@protocol VungleJSCommandDelegate><VungleMRAIDCommandDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleOperation;
@class VungleWebViewFacade;

@interface VungleJSCommandOperation : VungleOperation

@property (retain, nonatomic) NSString *command; // ivar: _command
@property (retain, nonatomic) NSDictionary *parameters; // ivar: _parameters
@property (retain, nonatomic) VungleWebViewFacade *webViewFacade; // ivar: _webViewFacade
@property (weak, nonatomic) NSObject<VungleJSCommandDelegate><VungleMRAIDCommandDelegate> *delegate; // ivar: _delegate
@property (copy, nonatomic) id *resultBlock; // ivar: _resultBlock
@property (nonatomic) BOOL isArbitraryJavascript; // ivar: _isArbitraryJavascript


-(id)initWithCommand:(id)arg0 parameters:(id)arg1 webViewFacade:(id)arg2 ;
-(id)initWithCommand:(id)arg0 parameters:(id)arg1 webViewFacade:(id)arg2 resultBlock:(id)arg3 ;
-(void)finishWithErrors:(id)arg0 ;
-(void)execute;
-(id)constructJavascriptExpression;


@end


#endif