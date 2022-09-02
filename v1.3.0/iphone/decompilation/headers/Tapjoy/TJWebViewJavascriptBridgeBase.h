// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJWEBVIEWJAVASCRIPTBRIDGEBASE_H
#define TJWEBVIEWJAVASCRIPTBRIDGEBASE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol TJWebViewJavascriptBridgeBaseDelegate;

@interface TJWebViewJavascriptBridgeBase : NSObject {
    id *_webViewDelegate;
    NSInteger _uniqueId;
}


@property (weak, nonatomic) NSObject<TJWebViewJavascriptBridgeBaseDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) NSMutableArray *startupMessageQueue; // ivar: _startupMessageQueue
@property (retain, nonatomic) NSMutableDictionary *responseCallbacks; // ivar: _responseCallbacks
@property (retain, nonatomic) NSMutableDictionary *messageHandlers; // ivar: _messageHandlers
@property (copy, nonatomic) id *messageHandler; // ivar: _messageHandler


-(id)init;
-(void)dealloc;
-(void)reset;
// -(void)sendData:(id)arg0 responseCallback:(id)arg1 handlerName:(unk)arg2  ;
-(void)flushMessageQueue:(id)arg0 ;
-(void)injectJavascriptFile;
-(void)flushStartupMessage;
-(BOOL)isWebViewJavascriptBridgeURL:(id)arg0 ;
-(BOOL)isSchemeMatch:(id)arg0 ;
-(BOOL)isQueueMessageURL:(id)arg0 ;
-(BOOL)isBridgeLoadedURL:(id)arg0 ;
-(void)logUnkownMessage:(id)arg0 ;
-(id)webViewJavascriptCheckCommand;
-(id)webViewJavascriptFetchQueyCommand;
-(void)disableJavscriptAlertBoxSafetyTimeout;
-(void)_evaluateJavascript:(id)arg0 ;
-(void)_queueMessage:(struct NSDictionary *)arg0 ;
-(void)_dispatchMessage:(struct NSDictionary *)arg0 ;
-(id)_serializeMessage:(id)arg0 pretty:(BOOL)arg1 ;
-(id)_deserializeMessageJSON:(id)arg0 ;
-(void)_log:(id)arg0 json:(id)arg1 ;
+(void)enableLogging;
+(void)setLogMaxLength:(int)arg0 ;


@end


#endif