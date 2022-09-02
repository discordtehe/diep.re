// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSWVCONNECTIVITYCONFIGURATION_H
#define SSWVCONNECTIVITYCONFIGURATION_H

@protocol SSWVJsInterfaceP, SSWVMessageParserP;

#import <Foundation/Foundation.h>


@interface SSWVConnectivityConfiguration : NSObject

@property (retain, nonatomic) NSString *messageHandlerName; // ivar: _messageHandlerName
@property (retain, nonatomic) NSObject<SSWVJsInterfaceP> *interface; // ivar: _interface
@property (retain, nonatomic) NSObject<SSWVMessageParserP> *parser; // ivar: _parser




@end


#endif