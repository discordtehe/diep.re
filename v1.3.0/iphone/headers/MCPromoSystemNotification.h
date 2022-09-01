// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOSYSTEMNOTIFICATION_H
#define MCPROMOSYSTEMNOTIFICATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCPromoSystemNotification : NSObject

@property (readonly, nonatomic) NSString *offerId; // ivar: _offerId
@property (readonly, nonatomic) NSString *message; // ivar: _message
@property (readonly, nonatomic) NSDate *date; // ivar: _date
@property (readonly, nonatomic) int type; // ivar: _type


-(id)initWithOffer:(id)arg0 withMessage:(id)arg1 withType:(int)arg2 onDate:(id)arg3 ;
-(void)dealloc;
+(id)getNotificationWithOffer:(id)arg0 withMessage:(id)arg1 withType:(int)arg2 onDate:(id)arg3 ;


@end


#endif