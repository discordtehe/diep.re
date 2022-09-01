// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADREWARDBASEDVIDEOADCONTROLLER_H
#define GADREWARDBASEDVIDEOADCONTROLLER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADRewardBasedVideoAdController : NSObject

@property (retain, nonatomic) NSDictionary *connectors; // ivar: _connectors


-(id)init;
-(void)createConnectorForAdapter:(id)arg0 withAdConfiguration:(struct NSDictionary *)arg1 renderer:(id)arg2 ;
-(void)removeConnectorForAdapterName:(id)arg0 ;
+(id)sharedInstance;


@end


#endif