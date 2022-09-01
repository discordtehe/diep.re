// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDLOGGERINFORMATION_H
#define TR_DDLOGGERINFORMATION_H


#import <Foundation/Foundation.h>

@protocol DDLogger;

@interface TR_DDLoggerInformation : NSObject

@property (readonly, nonatomic) NSObject<DDLogger> *logger; // ivar: _logger
@property (readonly, nonatomic) NSUInteger level; // ivar: _level


-(id)initWithLogger:(id)arg0 andLevel:(NSUInteger)arg1 ;
+(id)informationWithLogger:(id)arg0 andLevel:(NSUInteger)arg1 ;


@end


#endif