// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADDATA_H
#define GADADDATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADSignalData;

@interface GADAdData : NSObject {
    GADSignalData *_signalData;
}


@property (readonly, copy, nonatomic) NSDictionary *signals; // ivar: _signals
@property (readonly, copy, nonatomic) NSString *adString; // ivar: _adString


-(id)initWithSignalData:(id)arg0 adString:(id)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;


@end


#endif