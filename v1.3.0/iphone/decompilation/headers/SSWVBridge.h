// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSWVBRIDGE_H
#define SSWVBRIDGE_H

@protocol SSWVJsInterfaceP, SSWVMessageParserP;

#import <Foundation/Foundation.h>

@protocol SSWVBridgeP;
@protocol SSWVWebViewP;

@interface SSWVBridge : NSObject <SSWVBridgeP>



@property (weak) NSObject<SSWVWebViewP> *webView; // ivar: _webView
@property (retain) NSString *messageHandlerName; // ivar: _messageHandlerName
@property (retain) NSObject<SSWVJsInterfaceP> *interface; // ivar: _interface
@property (retain) NSObject<SSWVMessageParserP> *parser; // ivar: _parser


-(id)initWithWebView:(id)arg0 connectivityConfiguration:(id)arg1 ;
-(void)sendMessageToWebView:(id)arg0 ;
-(void)sendMessageToJSInterface:(id)arg0 ;
-(void)postMessage:(id)arg0 ;
-(SEL)selFromMessageFunction:(id)arg0 ;
-(id)invocationToTargetFromMessageFunction:(id)arg0 target:(id)arg1 ;


@end


#endif