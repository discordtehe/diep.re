// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGMOATCONFIG_H
#define VNGMOATCONFIG_H


#import <Foundation/Foundation.h>


@interface VNGMoatConfig : NSObject

@property (nonatomic) BOOL isOn; // ivar: _isOn
@property (nonatomic) BOOL isDebug; // ivar: _isDebug
@property (nonatomic) int vwIntervalMillis; // ivar: _vwIntervalMillis
@property (nonatomic) NSInteger samplingRate; // ivar: _samplingRate


-(id)initWithResponse:(id)arg0 ;
-(void)parseConfig:(id)arg0 ;
-(BOOL)isOSBlacklisted:(id)arg0 ;
-(BOOL)isAppBlacklisted:(id)arg0 ;
+(id)configWithResponse:(id)arg0 ;


@end


#endif