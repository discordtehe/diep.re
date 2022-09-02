// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJSESSIONPARAMETERS_H
#define ADJSESSIONPARAMETERS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCopying;

@interface ADJSessionParameters : NSObject <NSCopying>



@property (retain, nonatomic) NSMutableDictionary *callbackParameters; // ivar: _callbackParameters
@property (retain, nonatomic) NSMutableDictionary *partnerParameters; // ivar: _partnerParameters


-(id)copyWithZone:(struct _NSZone *)arg0 ;


@end


#endif