// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCANDIDATE_H
#define FBADCANDIDATE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdCandidate : NSObject

@property (copy, nonatomic) NSString *dataModelType; // ivar: _dataModelType
@property (copy, nonatomic) NSDictionary *data; // ivar: _data
@property (retain, nonatomic) NSMutableDictionary *trackersByType; // ivar: _trackersByType
@property (retain, nonatomic) NSMutableSet *trackersFired; // ivar: _trackersFired


-(id)initWithData:(id)arg0 dataModelType:(id)arg1 trackers:(id)arg2 ;
-(void)fireTrackers:(NSInteger)arg0 withExtraData:(id)arg1 ;
+(void)initialize;
+(NSInteger)trackerTypeFromString:(id)arg0 ;


@end


#endif