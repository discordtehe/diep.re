// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSIGNALDATA_H
#define GADSIGNALDATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADSignalData : NSObject

@property (readonly, nonatomic) NSDictionary *signalDictionary; // ivar: _signalDictionary
@property (readonly, copy, nonatomic) NSString *signals; // ivar: _signals
@property (readonly, copy, nonatomic) NSString *requestIdentifier; // ivar: _requestIdentifier


-(id)initWithSignalString:(id)arg0 signalDictionary:(id)arg1 ;
-(id)init;
-(id)copyWithZone:(struct _NSZone *)arg0 ;


@end


#endif