// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISPLACEMENTSREPOSITORY_H
#define ISPLACEMENTSREPOSITORY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ISPlacement;

@interface ISPlacementsRepository : NSObject

@property (retain, nonatomic) NSArray *placements; // ivar: _placements
@property (retain, nonatomic) ISPlacement *defaultPlacement; // ivar: _defaultPlacement


-(id)getDefaultPlacementWithArray:(id)arg0 ;
-(id)initWithArray:(id)arg0 ;
-(id)placementForName:(id)arg0 ;


@end


#endif