// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJUSAGETRACKER_H
#define TJUSAGETRACKER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface TJUsageTracker : NSObject

@property (retain, nonatomic) NSString *name; // ivar: _name
@property (retain, nonatomic) NSMutableDictionary *dimensions; // ivar: _dimensions
@property (retain, nonatomic) NSMutableDictionary *values; // ivar: _values
@property (nonatomic) CGFloat startTime; // ivar: _startTime


-(id)initWithName:(id)arg0 startTime:(CGFloat)arg1 ;
-(id)addDimensions:(id)arg0 ;
-(id)addDimensionName:(id)arg0 value:(id)arg1 ;
-(id)addValues:(id)arg0 ;
-(id)add:(id)arg0 value:(id)arg1 ;
-(id)addSpentTime:(CGFloat)arg0 ;
-(id)end;
-(id)addResult:(id)arg0 ;
-(id)addFailure:(id)arg0 ;
-(id)addMisuse:(id)arg0 ;
-(void)track;


@end


#endif