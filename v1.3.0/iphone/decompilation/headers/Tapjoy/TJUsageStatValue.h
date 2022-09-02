// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJUSAGESTATVALUE_H
#define TJUSAGESTATVALUE_H


#import <Foundation/Foundation.h>


@interface TJUsageStatValue : NSObject

@property (retain, nonatomic) NSString *name; // ivar: _name
@property (nonatomic) NSInteger count; // ivar: _count
@property (nonatomic) CGFloat avg; // ivar: _avg
@property (nonatomic) CGFloat max; // ivar: _max


-(id)initWithName:(id)arg0 value:(CGFloat)arg1 ;
-(void)addValue:(CGFloat)arg0 ;
-(id)dictionaryToSend;
-(id)dictionaryToStore;


@end


#endif