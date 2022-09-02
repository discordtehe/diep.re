// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVNATIVECALLBACK_H
#define USRVNATIVECALLBACK_H


#import <Foundation/Foundation.h>


@interface USRVNativeCallback : NSObject

@property (retain, nonatomic) NSString *callback; // ivar: _callback
@property (retain, nonatomic) NSString *callbackId; // ivar: _callbackId
@property (retain, nonatomic) NSString *receiverClass; // ivar: _receiverClass


-(id)initWithCallback:(id)arg0 receiverClass:(id)arg1 ;
-(void)invokeWithStatus:(id)arg0 params:(id)arg1 ;


@end


#endif