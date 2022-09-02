// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TREVENT_H
#define TREVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface TREvent : NSObject

@property (readonly, nonatomic) NSInteger eventType;
@property (retain, nonatomic) NSMutableDictionary *messageDictionary; // ivar: _messageDictionary


-(id)initWithName:(id)arg0 ;
-(id)initWithName:(id)arg0 content:(id)arg1 ;
-(NSInteger)eventType:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;


@end


#endif