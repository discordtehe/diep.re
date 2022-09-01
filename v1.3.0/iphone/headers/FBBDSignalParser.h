// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBBDSIGNALPARSER_H
#define FBBDSIGNALPARSER_H


#import <Foundation/Foundation.h>


@interface FBBDSignalParser : NSObject



+(void)initialize;
+(id)signalConfigTimestamp;
+(void)setSignalConfigTimestamp:(id)arg0 ;
+(id)bdDynamicSignals;
+(void)setBDDynamicSignals:(id)arg0 ;
+(id)bdStaticSignals;
+(void)setBDStaticSignals:(id)arg0 ;
+(id)bdBiometricSignals;
+(void)setBDBiometricSignals:(id)arg0 ;
+(void)initWithSignalConfig:(id)arg0 onSurface:(int)arg1 ;
+(void)generateSignalsFromSignalConfig:(id)arg0 onSurface:(int)arg1 ;


@end


#endif