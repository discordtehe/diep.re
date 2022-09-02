// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADFORMATMAPPER_H
#define FBADFORMATMAPPER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdFormatMapper : NSObject

@property (copy, nonatomic) NSDictionary *placementIdToAdFormatIdMap; // ivar: _placementIdToAdFormatIdMap


-(NSInteger)adFormatTypeNameForPlacementId:(id)arg0 ;
-(id)adFormatToIdMap;


@end


#endif