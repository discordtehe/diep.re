// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNETWORKUTILIZATIONSTATISTICS_H
#define GADNETWORKUTILIZATIONSTATISTICS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADNetworkUtilizationStatistics : NSObject

@property (readonly, nonatomic) NSDictionary *transmittedByteCounts; // ivar: _transmittedByteCounts
@property (readonly, nonatomic) NSDictionary *receivedByteCounts; // ivar: _receivedByteCounts


-(id)initWithTransmittedByteCounts:(struct NSDictionary *)arg0 receivedByteCounts:(struct NSDictionary *)arg1 ;
-(id)init;
-(id)updatedStatistics;
-(id)plusStatistics:(id)arg0 ;
-(id)minusStatistics:(id)arg0 ;
+(id)currentStatistics;


@end


#endif