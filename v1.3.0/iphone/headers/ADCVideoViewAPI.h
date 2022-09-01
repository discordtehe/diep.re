// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCVIDEOVIEWAPI_H
#define ADCVIDEOVIEWAPI_H


#import <Foundation/Foundation.h>


@interface ADCVideoViewAPI : NSObject



+(BOOL)createWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)setBoundsWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)setVisibleWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)setVolumeWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)playWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)pauseWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(id)seekWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;
+(BOOL)destroyWithDict:(id)arg0 andModuleID:(NSUInteger)arg1 ;


@end


#endif