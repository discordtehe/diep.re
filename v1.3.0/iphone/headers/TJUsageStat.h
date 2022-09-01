// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJUSAGESTAT_H
#define TJUSAGESTAT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface TJUsageStat : NSObject

@property (retain, nonatomic) NSString *name; // ivar: _name
@property (retain, nonatomic) NSDictionary *dimensions; // ivar: _dimensions
@property (nonatomic) NSInteger count; // ivar: _count
@property (nonatomic) NSInteger firstTime; // ivar: _firstTime
@property (nonatomic) NSInteger lastTime; // ivar: _lastTime
@property (retain, nonatomic) NSMutableDictionary *values; // ivar: _values
@property (retain, nonatomic) NSString *filename; // ivar: _filename


-(id)initWithName:(id)arg0 dimensions:(id)arg1 firstTime:(CGFloat)arg2 lastTime:(CGFloat)arg3 ;
-(void)addStatWithTime:(CGFloat)arg0 ;
-(void)addStatValue:(id)arg0 withName:(id)arg1 ;
-(id)dictionary;
-(id)dictionaryToSend;
-(id)dictionaryToStore;
-(void)writeToDir:(id)arg0 filename:(id)arg1 ;
+(id)loadFromDir:(id)arg0 filename:(id)arg1 ;


@end


#endif