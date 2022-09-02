// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJYMOATVIDEOUTIL_H
#define TJYMOATVIDEOUTIL_H


#import <Foundation/Foundation.h>


@interface TJYMoatVideoUtil : NSObject



+(float)getSystemVolume;
+(BOOL)isFinalEvent:(id)arg0 ;
+(BOOL)isSystemVersionLT:(id)arg0 ;
+(BOOL)isSystemVersionGTorEQ:(id)arg0 ;
+(BOOL)isValidOSVersion;
+(id)adIdsToJSONString:(id)arg0 ;


@end


#endif