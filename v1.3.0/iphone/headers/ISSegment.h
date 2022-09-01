// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISSEGMENT_H
#define ISSEGMENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ISSegment : NSObject

@property (retain, nonatomic) NSString *isUserPaying; // ivar: _isUserPaying
@property (nonatomic) int age; // ivar: _age
@property (nonatomic) int level; // ivar: _level
@property (nonatomic) CGFloat iapTotal; // ivar: _iapTotal
@property (nonatomic) BOOL paying; // ivar: _paying
@property (nonatomic) NSInteger gender; // ivar: _gender
@property (retain, nonatomic) NSDate *userCreationDate; // ivar: _userCreationDate
@property (retain, nonatomic) NSString *segmentName; // ivar: _segmentName
@property (readonly, nonatomic) NSDictionary *customKeys; // ivar: _customKeys


-(id)init;
-(BOOL)isValueValid:(id)arg0 ;
-(void)setCustomValue:(id)arg0 forKey:(id)arg1 ;


@end


#endif